# Remove compatibility check

At first start and once per day the application asks the Dexcom server for compatibility of the used device. The following modifications remove this behaviour from the application.


## Disable compatibility webservice

The file `/src/smali/com/android/databinding/library/baseAdapters/c.smali` implements the compatibility check. The function `performAppCompatibilityServerIO` initiates the request to the Dexcom server and looks somewhat like that:

```java
public class c implements b {

  // some code before...

  public void performAppCompatibilityServerIO(AppRuntimeInfo var1, String var2, com.dexcom.cgm.appcompatability.a var3) {
    this.m_validityResult = this.checkValidity(var1);
    if (!Objects.equals(this.m_validityResult.getMessageId(), "00000000-0000-0000-0000-000000000000")) {
       this.m_getMessageResult = this.getMessage(UUID.fromString(this.m_validityResult.getMessageId()), var2);
    }
  
    if (var3 != null) {
       var3.serverCallFinished();
    } else {
       throw new IllegalArgumentException("AppCompatCompleteListener was null when server call was complete");
    }
  }

  // some code after...

}
```

This modification removes the request and just returns a successful response:

```java
public class c implements b {

  // some code before...

  public void performAppCompatibilityServerIO(AppRuntimeInfo var1, String var2, com.dexcom.cgm.appcompatability.a var3) {
    this.m_validityResult = new ValidityResult();
    this.m_validityResult.setValidity("ValidEnvironment");
    this.m_validityResult.setMessageId("00000000-0000-0000-0000-000000000000");
    if (var3 != null) {
       var3.serverCallFinished();
    } else {
       throw new IllegalArgumentException("AppCompatCompleteListener was null when server call was complete");
    }
  }    

  // some code after...

}
```

The modification translated into smali code looks like this:

```smali
.method public performAppCompatibilityServerIO(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;Lcom/dexcom/cgm/appcompatability/a;)V
    .locals 2

    new-instance v0, Lcom/dexcom/cgm/model/ValidityResult;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/ValidityResult;-><init>()V

    iput-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    iget-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    const-string v1, "ValidEnvironment"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/ValidityResult;->setValidity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/ValidityResult;->setMessageId(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/dexcom/cgm/appcompatability/a;->serverCallFinished()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompatCompleteListener was null when server call was complete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
```


## Redirect from compatibility view

The file `/src/smali/com/dexcom/cgm/activities/AppCompatabilityActivity.smali` implements the compatibility screen. It shows an error message in case the Dexcom server denied compatibility for the device.

The function `serverCallFinished` is executed after the application received a response from the Dexcom server. It looks somewhat like that:

```java
public class AppCompatabilityActivity extends DexBaseActivity implements OnAppInitListener, a {

  // some code before...

  public void serverCallFinished() {
    this.setNextCheckTimeToTomorrow();
    if (Objects.equals(this.getAppCompatibilityService().getValidity().getMessageId(), "00000000-0000-0000-0000-000000000000")) {
       this.goDirectlyToNextActivity();
    } else {
       this.m_validityResult = this.getAppCompatibilityService().getValidity();
       this.m_getMessageResult = this.getAppCompatibilityService().getMessageResult();
       this.processNewAppCompatability();
       this.m_isFreshInstall = false;
    }
  }

  // some code after...

}
```

This modification ignores the response and redirects to the next view:

```java
public class AppCompatabilityActivity extends DexBaseActivity implements OnAppInitListener, a {

  // some code before...

  public void serverCallFinished() {
    this.setNextCheckTimeToTomorrow();
    this.goDirectlyToNextActivity();
  }

  // some code after...

}
```

The modification translated into smali code looks like this:

```smali
.method public serverCallFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setNextCheckTimeToTomorrow()V

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    return-void
.end method
```
