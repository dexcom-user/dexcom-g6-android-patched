.class public Lcom/android/databinding/library/baseAdapters/c;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lcom/dexcom/cgm/appcompatability/b;


# instance fields
.field private m_disableAppCompatibility:Z

.field private m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

.field private m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

.field private m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/ServerConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_disableAppCompatibility:Z

    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/b;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/b;-><init>(Lcom/dexcom/cgm/model/ServerConfiguration;)V

    iput-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    return-void
.end method

.method private checkValidity(Lcom/dexcom/cgm/model/AppRuntimeInfo;)Lcom/dexcom/cgm/model/ValidityResult;
    .locals 1

    iget-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/a;->checkValidity(Lcom/dexcom/cgm/model/AppRuntimeInfo;)Lcom/dexcom/cgm/model/ValidityResult;

    move-result-object p1

    return-object p1
.end method

.method private getMessage(Ljava/util/UUID;Ljava/lang/String;)Lcom/dexcom/cgm/model/GetMessageResult;
    .locals 1

    iget-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/appcompatability/webservice/a;->getMessage(Ljava/util/UUID;Ljava/lang/String;)Lcom/dexcom/cgm/model/GetMessageResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public disableAppCompatibility()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_disableAppCompatibility:Z

    return-void
.end method

.method public getMessageResult()Lcom/dexcom/cgm/model/GetMessageResult;
    .locals 1

    iget-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    return-object v0
.end method

.method public getValidity()Lcom/dexcom/cgm/model/ValidityResult;
    .locals 2

    iget-boolean v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_disableAppCompatibility:Z

    if-eqz v0, :cond_0

    const-string v0, "ValidEnvironment"

    new-instance v1, Lcom/dexcom/cgm/model/ValidityResult;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/ValidityResult;-><init>()V

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/ValidityResult;->setValidity(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    return-object v0
.end method

.method public getWebservice()Lcom/dexcom/cgm/appcompatability/webservice/a;
    .locals 1

    iget-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    return-object v0
.end method

.method public isAppInvalid()Z
    .locals 2

    iget-object v0, p0, Lcom/android/databinding/library/baseAdapters/c;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/ValidityResult;->getValidity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "InvalidUnsupportedEnvironment"

    iget-object v1, p0, Lcom/android/databinding/library/baseAdapters/c;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/ValidityResult;->getValidity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

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

.method public setWebservice(Lcom/dexcom/cgm/appcompatability/webservice/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/databinding/library/baseAdapters/c;->m_webservice:Lcom/dexcom/cgm/appcompatability/webservice/a;

    return-void
.end method
