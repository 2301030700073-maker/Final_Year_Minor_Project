.class public final synthetic Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/app/common/feature/MessageListLauncher;

.field public final synthetic f$1:Landroidx/activity/ComponentActivity;

.field public final synthetic f$2:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lnet/thunderbird/app/common/feature/MessageListLauncher;Landroidx/activity/ComponentActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$2:Landroidx/navigation/NavHostController;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 10
    .line 11
    iput-object p3, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$1:Landroidx/activity/ComponentActivity;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/app/common/feature/MessageListLauncher;Landroidx/activity/ComponentActivity;Landroidx/navigation/NavHostController;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/app/common/feature/MessageListLauncher;

    iput-object p2, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$1:Landroidx/activity/ComponentActivity;

    iput-object p3, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$2:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$1:Landroidx/activity/ComponentActivity;

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 8
    .line 9
    iget-object p0, p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->f$2:Landroidx/navigation/NavHostController;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    instance-of v0, p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of p0, p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$AccountSetup;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    check-cast p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$AccountSetup;

    .line 34
    .line 35
    iget-object p0, p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$AccountSetup;->accountId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, p0}, Lnet/thunderbird/app/common/feature/MessageListLauncher;->launch(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of p0, p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    check-cast p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions;

    .line 46
    .line 47
    iget-object p0, p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions;->accountId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Lnet/thunderbird/app/common/feature/MessageListLauncher;->launch(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-object v1

    .line 56
    :pswitch_0
    check-cast p1, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    instance-of v0, p1, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    check-cast p1, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;

    .line 66
    .line 67
    iget-object p0, p1, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;->accountId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, p0}, Lnet/thunderbird/app/common/feature/MessageListLauncher;->launch(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    instance-of v0, p1, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$ThundermailScanQrCode;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    sget-object p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;

    .line 81
    .line 82
    invoke-static {p0, p1}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    instance-of p1, p1, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$ThundermailSignIn;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    sget-object p1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;

    .line 91
    .line 92
    invoke-static {p0, p1}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_1
    return-object v1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
