.class public Lcom/dexcom/cgm/activities/AppCompatabilityActivity;
.super Lcom/dexcom/cgm/activities/DexBaseActivity;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/AppInitializationMonitor$OnAppInitListener;
.implements Lcom/dexcom/cgm/appcompatability/a;


# static fields
.field public static final DISMISS_SPLASH_SCREEN_EVENT:Ljava/lang/String; = "dismiss_splash_screen"

.field public static final INTERNALCHECK:Ljava/lang/String; = "INTERNALCHECK"

.field private static final INVALID_UNSUPPORTED_ENV:Ljava/lang/String; = "INVALIDUNSUPPORTEDENVIRONMENT"

.field private static final NULL_GUID:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"

.field private static final SECONDS_24_HOURS:J

.field public static final SHOW_SPLASH_SCREEN_MODE:Ljava/lang/String; = "splash_screen_mode"

.field public static final STARTEDBYTRENDACTIVITY:Ljava/lang/String; = "STARTEDBYTRENDACTIVITY"

.field private static final UNSUPPORTED_ENV:Ljava/lang/String; = "UNSUPPORTEDENVIRONMENT"

.field private static final VALID_ENV:Ljava/lang/String; = "VALIDENVIRONMENT"

.field private static final VALID_ENV_WARN:Ljava/lang/String; = "VALIDENVIRONMENTWARN"

.field private static s_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

.field private static s_isDatabaseInitError:Z

.field private static s_locale:Ljava/lang/String;


# instance fields
.field private m_appCompatCompareString:Ljava/lang/String;

.field private m_appUpgradeURL:Ljava/lang/String;

.field private m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

.field private m_googlePlayServicesDialog:Landroid/app/Dialog;

.field private m_handler:Landroid/os/Handler;

.field private m_isFreshInstall:Z

.field private m_isInternalCheck:Z

.field private m_isStartedByTrendActivity:Z

.field private m_isWarningDialogDisplayed:Z

.field private m_isWebPageLoaded:Z

.field private m_messageReceiver:Landroid/content/BroadcastReceiver;

.field private m_moreInfoURL:Ljava/lang/String;

.field private m_previousAppCompatCompareString:Ljava/lang/String;

.field private m_splashScreenTestMode:Z

.field private m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->SECONDS_24_HOURS:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_isDatabaseInitError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/DexBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_splashScreenTestMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_splashScreenTestMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setupCompatabilityScreen()V

    return-void
.end method

.method private animateTransitionToNextActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/dexcom/cgm/activities/setupwizard/WelcomeScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$YrGOdIlFTVOd5BDURDg5ASBycBg;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$YrGOdIlFTVOd5BDURDg5ASBycBg;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sget p1, Lcom/dexcom/cgm/activities/R$id;->welcome_title:I

    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->makeInvisible(I)V

    sget p1, Lcom/dexcom/cgm/activities/R$id;->dexcom_logo:I

    sget v0, Lcom/dexcom/cgm/activities/R$anim;->slide_out_top:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->assignAndStartAnimation(IILjava/lang/Class;)V

    sget p1, Lcom/dexcom/cgm/activities/R$id;->splash_background:I

    sget v0, Lcom/dexcom/cgm/activities/R$anim;->welcome_screen_out_bottom:I

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->assignAndStartAnimation(IILjava/lang/Class;)V

    return-void
.end method

.method private assignAndStartAnimation(IILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    new-instance v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$2;

    invoke-direct {v0, p0, p3}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$2;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private checkGooglePlayServices()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic_x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_googlePlayServicesDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_googlePlayServicesDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_googlePlayServicesDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$gVCC8PDwvstFRv6Moixllh1AFr4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$gVCC8PDwvstFRv6Moixllh1AFr4;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_googlePlayServicesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method private compatValuesChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appCompatCompareString:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_previousAppCompatCompareString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private configureButtons(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "INVALIDUNSUPPORTEDENVIRONMENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_moreInfoURL:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appUpgradeURL:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    sget v0, Lcom/dexcom/cgm/activities/R$id;->appUpgradeButton:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v3, Lcom/dexcom/cgm/activities/-$$Lambda$SyHQ29wG9K3cJE0nikvofwtdG1Y;

    invoke-direct {v3, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$SyHQ29wG9K3cJE0nikvofwtdG1Y;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v1, :cond_3

    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_warning_more_information:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Lcom/dexcom/cgm/activities/-$$Lambda$I2ezftWY-jX9iTZL5367q0wfg9s;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$I2ezftWY-jX9iTZL5367q0wfg9s;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    sget p1, Lcom/dexcom/cgm/activities/R$id;->id_warning_continue_to_app:I

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/dexcom/cgm/activities/-$$Lambda$GRSF9FD6qScGYPbE4uc_a4IrfWE;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$GRSF9FD6qScGYPbE4uc_a4IrfWE;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private doAppCompatabilityLogic()V
    .locals 3

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setCurrentAppInfo()V

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->checkGooglePlayServices()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isWebPageLoaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->serverIOTask()V

    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isWebPageLoaded:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$UpdateUITask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$UpdateUITask;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isWebPageLoaded:Z

    :cond_2
    return-void
.end method

.method private getAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$dvpGM1DZSi9ly0lv02u5IGEMEY4;

    invoke-direct {v1, p0, p1, p2}, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$dvpGM1DZSi9ly0lv02u5IGEMEY4;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getAppCompatibilityService()Lcom/dexcom/cgm/appcompatability/b;
    .locals 1

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getAppCompatibilityService()Lcom/dexcom/cgm/appcompatability/b;

    move-result-object v0

    return-object v0
.end method

.method private getNextActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/e/j;->hasCompletedInitialSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/dexcom/cgm/activities/TrendActivity;

    return-object v0

    :cond_0
    const-class v0, Lcom/dexcom/cgm/activities/setupwizard/WelcomeScreen;

    return-object v0
.end method

.method private goDirectlyToNextActivity()V
    .locals 3

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_googlePlayServicesDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_googlePlayServicesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isInternalCheck:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isStartedByTrendActivity:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$_oorMlh_Lfniiper5D2SLA5qJqM;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$_oorMlh_Lfniiper5D2SLA5qJqM;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isInternalCheck:Z

    if-eqz v1, :cond_3

    const-string v1, "INTERNALCHECK"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private static isDatabaseError()Z
    .locals 1

    sget-boolean v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_isDatabaseInitError:Z

    return v0
.end method

.method private isFirstInstall()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    return v0

    :cond_0
    return v3

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Package info not found"

    invoke-static {v1, v2}, Lcom/dexcom/cgm/i/b;->e(Ljava/lang/String;Ljava/lang/Object;)I

    return v0
.end method

.method public static synthetic lambda$animateTransitionToNextActivity$7(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 3

    sget v0, Lcom/dexcom/cgm/activities/R$id;->dexcom_logo:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->splash_title_up1:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->assignAndStartAnimation(IILjava/lang/Class;)V

    sget v0, Lcom/dexcom/cgm/activities/R$id;->welcome_title:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_out_bottom:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->assignAndStartAnimation(IILjava/lang/Class;)V

    sget v0, Lcom/dexcom/cgm/activities/R$id;->splash_background:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->welcome_screen_out_bottom:I

    const-class v2, Lcom/dexcom/cgm/activities/setupwizard/WelcomeScreen;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->assignAndStartAnimation(IILjava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$checkGooglePlayServices$0(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->checkGooglePlayServices()Z

    return-void
.end method

.method public static synthetic lambda$getAppCompatability$5(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/e/j;->hasCompletedInitialSetupWizard()Z

    move-result v0

    :try_start_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setCurrentAppInfo()V

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getAppCompatibilityService()Lcom/dexcom/cgm/appcompatability/b;

    move-result-object v1

    invoke-interface {v1, p1, p2, p0}, Lcom/dexcom/cgm/appcompatability/b;->performAppCompatibilityServerIO(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;Lcom/dexcom/cgm/appcompatability/a;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/appcompatability/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/appcompatability/a/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/appcompatability/a/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setNextCheckTimeToTomorrow()V

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->stuffDefaultValues()V

    sget p1, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down_title:I

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down:I

    invoke-virtual {p0, p2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showDialogWithStringThenExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setNextCheckTimeToTomorrow()V

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->stuffDefaultValues()V

    const/4 p1, 0x0

    sget p2, Lcom/dexcom/cgm/activities/R$string;->dex_general_no_internet:I

    invoke-virtual {p0, p2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showDialogWithStringThenExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$goDirectlyToNextActivity$6(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getNextActivity()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->navigateToNextActivity(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$null$1(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isWarningDialogDisplayed:Z

    sget-object p1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    sget-object v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_locale:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$2(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static synthetic lambda$performAppValidity$4(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 2

    sget-object v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    sget-object v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_locale:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$showDialogWithStringThenExit$3(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isWarningDialogDisplayed:Z

    new-instance v0, Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;->setContentText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_retry:I

    new-instance v2, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$rDi44blYbaccDyrtAa2AVhF86Po;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$rDi44blYbaccDyrtAa2AVhF86Po;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_text_exit_app:I

    sget-object v2, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$ugV18QabPBO_DOtWTGpVqL7ECZ0;->INSTANCE:Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$ugV18QabPBO_DOtWTGpVqL7ECZ0;

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/controls/DexDialogBuilder;->show()Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$u4JjNK7mgA3Z7oJ4Ig9RfGpzGjk(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->performAppValidity()V

    return-void
.end method

.method private makeInvisible(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private navigateToNextActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_splashScreenTestMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->animateTransitionToNextActivity(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private performAppValidity()V
    .locals 5

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v0

    invoke-static {}, Lcom/dexcom/cgm/l/a;->currentTimeSeconds()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v3

    invoke-interface {v3}, Lcom/dexcom/cgm/e/j;->getNextAppCompatibilityCheck()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->compatValuesChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/e/j;->getAppCompatibilityCount()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$UpdateUITask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$UpdateUITask;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    return-void

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isInternalCheck:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$iflM8dyiA7rXZ0xlagfOcxx5XDU;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$iflM8dyiA7rXZ0xlagfOcxx5XDU;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    sget-object v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    sget-object v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_locale:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    return-void
.end method

.method private processNewAppCompatability()V
    .locals 4

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setNextCheckTimeToTomorrow()V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appCompatCompareString:Ljava/lang/String;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_previousAppCompatCompareString:Ljava/lang/String;

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/ValidityResult;->getValidity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setAppCompatibilityValidity(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_previousAppCompatCompareString:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setPreviousAppCompatCompare(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/GetMessageResult;->getMaxMessageDisplays()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setAppCompatibilityCount(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/GetMessageResult;->getMessageDisplayFrequency()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setAppCompatibilityFrequency(I)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/GetMessageResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setAppCompatibilityMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/GetMessageResult;->getMoreInfoURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setAppCompatibilityMoreInfoURL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/GetMessageResult;->getAppUpgradeURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setAppCompatibilityAppUpgradeURL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$UpdateUITask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$UpdateUITask;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down_title:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showDialogWithStringThenExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private serverIOTask()V
    .locals 1

    new-instance v0, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$u4JjNK7mgA3Z7oJ4Ig9RfGpzGjk;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$u4JjNK7mgA3Z7oJ4Ig9RfGpzGjk;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    sget-object p1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->compareValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appCompatCompareString:Ljava/lang/String;

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/dexcom/cgm/e/j;->getPreviousAppCompatCompare()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_previousAppCompatCompareString:Ljava/lang/String;

    iget-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_previousAppCompatCompareString:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appCompatCompareString:Ljava/lang/String;

    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_previousAppCompatCompareString:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isFreshInstall:Z

    :cond_1
    sput-object p2, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_locale:Ljava/lang/String;

    return-void
.end method

.method private setCurrentAppInfo()V
    .locals 4

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;

    invoke-direct {v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;->build()Lcom/dexcom/cgm/model/AppRuntimeInfo;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->app_name:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setAppName(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/e/j;->getSoftwareNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setAppNumber(Ljava/lang/String;)V

    invoke-static {}, Lcom/dexcom/cgm/activities/AppVersion;->getShortVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setAppVersion(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setDeviceManufacturer(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setDeviceModel(Ljava/lang/String;)V

    sget v0, Lcom/dexcom/cgm/activities/R$string;->device_os_name:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setDeviceOsName(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setDeviceOsVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/e/j;->getValidCultureCodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/activities/LocationUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/LocationUtil;->getCultureCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static setDatabaseError(Z)V
    .locals 0

    sput-boolean p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_isDatabaseInitError:Z

    return-void
.end method

.method private setNextCheckTimeToTomorrow()V
    .locals 5

    invoke-static {}, Lcom/dexcom/cgm/l/h;->getCurrentSystemTime()Lcom/dexcom/cgm/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/l/h;->getTimeInSeconds()J

    move-result-wide v0

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v2

    sget-wide v3, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->SECONDS_24_HOURS:J

    add-long/2addr v0, v3

    invoke-interface {v2, v0, v1}, Lcom/dexcom/cgm/e/j;->setNextAppCompatibilityCheck(J)V

    return-void
.end method

.method private setupCompatabilityScreen()V
    .locals 7

    invoke-static {}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isDatabaseCorrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->activity_application_compatability:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setContentView(I)V

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/e/j;->getAppCompatibilityValidity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v3

    invoke-interface {v3}, Lcom/dexcom/cgm/e/j;->getAppCompatibilityMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/dexcom/cgm/e/j;->getAppCompatibilityMoreInfoURL()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_moreInfoURL:Ljava/lang/String;

    invoke-interface {v1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/e/j;->getAppCompatibilityAppUpgradeURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appUpgradeURL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "VALIDENVIRONMENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    return-void

    :cond_2
    if-nez v3, :cond_3

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "INVALIDUNSUPPORTEDENVIRONMENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_text_invalid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    sget v1, Lcom/dexcom/cgm/activities/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/activities/view/ui/common/DexToolbar;

    if-eqz v1, :cond_a

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/dexcom/cgm/activities/view/ui/common/DexToolbar;->setVisibility(I)V

    sget v5, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_incompatible_device:I

    invoke-virtual {p0, v5}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setupToolbar(I)Lcom/dexcom/cgm/activities/view/ui/common/DexToolbar;

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->configureButtons(Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VALIDENVIRONMENTWARN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appUpgradeURL:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_5

    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_update:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/view/ui/common/DexToolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_warning:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/view/ui/common/DexToolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNSUPPORTEDENVIRONMENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVALIDUNSUPPORTEDENVIRONMENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    :cond_7
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "VALIDENVIRONMENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_notice:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/view/ui/common/DexToolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    :goto_0
    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_incompatible_device:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/view/ui/common/DexToolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_warning_attention_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method private showDialogWithStringThenExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$DOPHVFECiZLFYYVIty2sL2RyNCA;

    invoke-direct {v0, p0, p2, p1}, Lcom/dexcom/cgm/activities/-$$Lambda$AppCompatabilityActivity$DOPHVFECiZLFYYVIty2sL2RyNCA;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->finish()V

    return-void
.end method

.method private stuffDefaultValues()V
    .locals 4

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isFreshInstall:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_text_server_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/model/ValidityResult;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/ValidityResult;-><init>()V

    iput-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    const-string v2, "INVALIDUNSUPPORTEDENVIRONMENT"

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/ValidityResult;->setValidity(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/ValidityResult;->setMessageId(Ljava/lang/String;)V

    new-instance v1, Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/GetMessageResult;-><init>()V

    iput-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/GetMessageResult;->setAppUpgradeURL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/GetMessageResult;->setCulture(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/model/GetMessageResult;->setMaxMessageDisplays(I)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/model/GetMessageResult;->setMessageDisplayFrequency(I)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/GetMessageResult;->setMoreInfoURL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/GetMessageResult;->setMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAppInit()V
    .locals 0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->doAppCompatabilityLogic()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->finish()V

    return-void
.end method

.method public onClickContinueToApp(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/dexcom/cgm/l/a;->currentTimeSeconds()J

    move-result-wide v0

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/e/j;->getNextAppCompatibilityFrequency()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    invoke-interface {p1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/e/j;->getAppCompatibilityCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/dexcom/cgm/e/j;->setAppCompatibilityCount(I)V

    invoke-interface {p1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/e/j;->getAppCompatibilityFrequency()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-interface {p1}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/dexcom/cgm/e/j;->setNextAppCompatibilityFrequency(J)V

    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    return-void
.end method

.method public onClickMoreInformation(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isWebPageLoaded:Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_moreInfoURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget v0, Lcom/dexcom/cgm/activities/R$anim;->slide_in_bottom:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->finish()V

    return-void
.end method

.method public onClickUpdateApp(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appUpgradeURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isWebPageLoaded:Z

    sget v0, Lcom/dexcom/cgm/activities/R$anim;->slide_in_bottom:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/DexBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/dexcom/cgm/activities/R$layout;->activity_splash:I

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "splash_screen_mode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_splashScreenTestMode:Z

    :cond_0
    sget p1, Lcom/dexcom/cgm/activities/R$id;->splash_version:I

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    sget-object p1, Lcom/dexcom/cgm/activities/ActivitiesConfig;->IS_G6_OUS_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    sget p1, Lcom/dexcom/cgm/activities/R$id;->id_ous_markings:I

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/dexcom/cgm/activities/RootChecker;->doRootCheck()V

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "INTERNALCHECK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isInternalCheck:Z

    const-string v0, "STARTEDBYTRENDACTIVITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isStartedByTrendActivity:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_handler:Landroid/os/Handler;

    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->isDatabaseError()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isInternalCheck:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isStartedByTrendActivity:Z

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setCurrentAppInfo()V

    :cond_4
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->hide()V

    :cond_5
    new-instance p1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;

    invoke-direct {p1, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_messageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/dexcom/cgm/activities/DexBaseActivity;->onPause()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isWarningDialogDisplayed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/dexcom/cgm/activities/DexBaseActivity;->onResume()V

    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->isDatabaseError()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogHelper;->createAlertDialog(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_isInternalCheck:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setCurrentAppInfo()V

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->serverIOTask()V

    return-void

    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/AppInitializationMonitor;->instance()Lcom/dexcom/cgm/activities/AppInitializationMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dexcom/cgm/activities/AppInitializationMonitor;->register(Lcom/dexcom/cgm/activities/AppInitializationMonitor$OnAppInitListener;)V

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/dexcom/cgm/activities/R$id;->welcome_title:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCGMProvider()Lcom/dexcom/cgm/c/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/c/f;->getKeyValues()Lcom/dexcom/cgm/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/e/j;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1.7.0.3"

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setAppVersion(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->isFirstInstall()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setHasShownWhatsNewInfo(Z)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/dexcom/cgm/e/j;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.7.0.3"

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_6

    :cond_5
    const-string v1, "1.7.0.3"

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/j;->setAppVersion(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/dexcom/cgm/e/j;->setHasShownWhatsNewInfo(Z)V

    :cond_6
    :goto_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_messageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "dismiss_splash_screen"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public serverCallFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setNextCheckTimeToTomorrow()V

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    return-void
.end method
