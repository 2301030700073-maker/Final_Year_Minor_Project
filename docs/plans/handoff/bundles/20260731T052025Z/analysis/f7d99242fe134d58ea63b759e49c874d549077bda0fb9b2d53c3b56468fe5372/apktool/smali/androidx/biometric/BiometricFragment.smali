.class public Landroidx/biometric/BiometricFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mViewModel:Landroidx/biometric/BiometricViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final cancelAuthentication(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 5
    .line 6
    iget-boolean v0, v0, Landroidx/biometric/BiometricViewModel;->mIsIgnoringCancel:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 20
    .line 21
    iput p1, v0, Landroidx/biometric/BiometricViewModel;->mCanceledFrom:I

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, v1, p1}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/BiometricPrompt;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    new-instance p1, Landroidx/biometric/BiometricPrompt;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Landroidx/biometric/BiometricPrompt;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/BiometricPrompt;

    .line 49
    .line 50
    :cond_2
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/BiometricPrompt;

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Landroid/os/CancellationSignal;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    :try_start_0
    invoke-static {p1}, Landroidx/biometric/CancellationSignalProvider$Api16Impl;->cancel(Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    const-string v0, "Got NPE while canceling biometric authentication."

    .line 64
    .line 65
    const-string v1, "CancelSignalProvider"

    .line 66
    .line 67
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 72
    .line 73
    :cond_3
    :goto_1
    return-void
.end method

.method public final dismiss()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->mIsPromptShowing:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismissFingerprintDialog()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/biometric/BiometricViewModel;->mIsConfirmingDeviceCredential:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(ZZ)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 44
    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v5, 0x1d

    .line 48
    .line 49
    if-eq v4, v5, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-nez v3, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v4, 0x7f030011

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    array-length v4, v0

    .line 67
    move v5, v1

    .line 68
    :goto_0
    if-ge v5, v4, :cond_4

    .line 69
    .line 70
    aget-object v6, v0, v5

    .line 71
    .line 72
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 79
    .line 80
    iput-boolean v2, v0, Landroidx/biometric/BiometricViewModel;->mIsDelayingPrompt:Z

    .line 81
    .line 82
    new-instance v2, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;

    .line 83
    .line 84
    invoke-direct {v2, v0, v1}, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;-><init>(Landroidx/biometric/BiometricViewModel;I)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v0, 0x258

    .line 88
    .line 89
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    :goto_1
    return-void
.end method

.method public final dismissFingerprintDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->mIsPromptShowing:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "androidx.biometric.FingerprintDialogFragment"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/biometric/FingerprintDialogFragment;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    invoke-virtual {v1, p0, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(ZZ)I

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final isManagingDeviceCredentialButton()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->isDeviceCredentialAllowed(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final isUsingFingerprintDialog()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x1c

    .line 5
    .line 6
    if-lt v0, v2, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Landroidx/biometric/PackageUtils$Api23Impl;->hasSystemFeatureFingerprint(Landroid/content/pm/PackageManager;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    return v3

    .line 47
    :cond_1
    return v1

    .line 48
    :cond_2
    return v3

    .line 49
    :cond_3
    return v1
.end method

.method public final launchConfirmCredentialActivity()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "BiometricFragment"

    .line 8
    .line 9
    const-string v0, "Failed to check device credential. Client FragmentActivity not found."

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v0}, Landroidx/biometric/KeyguardUtils$Api23Impl;->getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const v0, 0x7f120334

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v1, 0xc

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 35
    .line 36
    iget-object v2, v1, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/cardview/widget/CardView$1;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v4, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Ljava/lang/CharSequence;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v4, v3

    .line 47
    :goto_0
    if-eqz v2, :cond_3

    .line 48
    .line 49
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Ljava/lang/CharSequence;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v2, v3

    .line 55
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    move-object v3, v2

    .line 61
    :cond_4
    invoke-static {v0, v4, v3}, Landroidx/biometric/BiometricFragment$Api21Impl;->createConfirmDeviceCredentialIntent(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    const v0, 0x7f120333

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/16 v1, 0xe

    .line 75
    .line 76
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    iput-boolean v2, v1, Landroidx/biometric/BiometricViewModel;->mIsConfirmingDeviceCredential:Z

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismissFingerprintDialog()V

    .line 92
    .line 93
    .line 94
    :cond_6
    const/high16 v1, 0x8080000

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    if-ne p1, p3, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    iput-boolean p3, p1, Landroidx/biometric/BiometricViewModel;->mIsConfirmingDeviceCredential:Z

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const p1, 0x7f120335

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 p2, 0xa

    .line 32
    .line 33
    invoke-virtual {p0, p2, p1}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v2, Lokhttp3/Dispatcher;

    .line 34
    .line 35
    invoke-direct {v2, v0, v1, p1}, Lokhttp3/Dispatcher;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 36
    .line 37
    .line 38
    const-class p1, Landroidx/biometric/BiometricViewModel;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_7

    .line 49
    .line 50
    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v2, v0, p1}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroidx/biometric/BiometricViewModel;

    .line 61
    .line 62
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 63
    .line 64
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    :cond_1
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationResult:Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    new-instance v0, Landroidx/biometric/BiometricFragment$1;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-direct {v0, p0, v1}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 87
    .line 88
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 93
    .line 94
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    .line 98
    .line 99
    :cond_2
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationError:Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    new-instance v0, Landroidx/biometric/BiometricFragment$1;

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-direct {v0, p0, v1}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 111
    .line 112
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    .line 113
    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 117
    .line 118
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    :cond_3
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->mAuthenticationHelpMessage:Landroidx/lifecycle/MutableLiveData;

    .line 124
    .line 125
    new-instance v0, Landroidx/biometric/BiometricFragment$1;

    .line 126
    .line 127
    const/4 v1, 0x2

    .line 128
    invoke-direct {v0, p0, v1}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 135
    .line 136
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    .line 137
    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 141
    .line 142
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    .line 146
    .line 147
    :cond_4
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->mIsAuthenticationFailurePending:Landroidx/lifecycle/MutableLiveData;

    .line 148
    .line 149
    new-instance v0, Landroidx/biometric/BiometricFragment$1;

    .line 150
    .line 151
    const/4 v1, 0x3

    .line 152
    invoke-direct {v0, p0, v1}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 159
    .line 160
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    .line 161
    .line 162
    if-nez v0, :cond_5

    .line 163
    .line 164
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 165
    .line 166
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    .line 170
    .line 171
    :cond_5
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->mIsNegativeButtonPressPending:Landroidx/lifecycle/MutableLiveData;

    .line 172
    .line 173
    new-instance v0, Landroidx/biometric/BiometricFragment$1;

    .line 174
    .line 175
    const/4 v1, 0x4

    .line 176
    invoke-direct {v0, p0, v1}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 183
    .line 184
    iget-object v0, p1, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    .line 185
    .line 186
    if-nez v0, :cond_6

    .line 187
    .line 188
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 189
    .line 190
    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object v0, p1, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    .line 194
    .line 195
    :cond_6
    iget-object p1, p1, Landroidx/biometric/BiometricViewModel;->mIsFingerprintDialogCancelPending:Landroidx/lifecycle/MutableLiveData;

    .line 196
    .line 197
    new-instance v0, Landroidx/biometric/BiometricFragment$1;

    .line 198
    .line 199
    const/4 v1, 0x5

    .line 200
    invoke-direct {v0, p0, v1}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_7
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 208
    .line 209
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x1d

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->isDeviceCredentialAllowed(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 23
    .line 24
    iput-boolean v0, v1, Landroidx/biometric/BiometricViewModel;->mIsIgnoringCancel:Z

    .line 25
    .line 26
    new-instance v0, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/biometric/BiometricFragment$StopDelayingPromptRunnable;-><init>(Landroidx/biometric/BiometricViewModel;I)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v1, 0xfa

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 11
    .line 12
    iget-boolean v0, v0, Landroidx/biometric/BiometricViewModel;->mIsConfirmingDeviceCredential:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->cancelAuthentication(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendErrorAndDismiss(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->sendErrorToClient(ILjava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final sendErrorToClient(ILjava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->mIsConfirmingDeviceCredential:Z

    .line 4
    .line 5
    const-string v2, "BiometricFragment"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p0, "Error not sent to client. User is confirming their device credential."

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->mIsAwaitingResult:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string p0, "Error not sent to client. Client is not awaiting a result."

    .line 20
    .line 21
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->mIsAwaitingResult:Z

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance v0, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/core/os/ExecutorCompat$HandlerExecutor;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance v1, Landroidx/biometric/BiometricFragment$8;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/biometric/BiometricFragment$8;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final sendSuccessAndDismiss(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->mIsAwaitingResult:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string p1, "BiometricFragment"

    .line 8
    .line 9
    const-string v0, "Success not sent to client. Client is not awaiting a result."

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Landroidx/biometric/BiometricViewModel;->mIsAwaitingResult:Z

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/biometric/BiometricViewModel;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/core/os/ExecutorCompat$HandlerExecutor;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    new-instance v2, Landroidx/core/app/ActivityRecreator$1;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-direct {v2, v3, p0, p1, v1}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final showFingerprintErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const p1, 0x7f120286

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogState(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->setFingerprintDialogHelpMessage(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final showPromptForAuthentication()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/biometric/BiometricViewModel;->mIsPromptShowing:Z

    .line 4
    .line 5
    if-nez v0, :cond_13

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "BiometricFragment"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Not showing biometric prompt. Context is null."

    .line 16
    .line 17
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, v0, Landroidx/biometric/BiometricViewModel;->mIsPromptShowing:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Landroidx/biometric/BiometricViewModel;->mIsAwaitingResult:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isUsingFingerprintDialog()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/16 v1, 0xc

    .line 43
    .line 44
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->createPromptBuilder(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 65
    .line 66
    iget-object v3, v3, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/cardview/widget/CardView$1;

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget-object v5, v3, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v5, Ljava/lang/CharSequence;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v5, v4

    .line 77
    :goto_0
    if-eqz v3, :cond_3

    .line 78
    .line 79
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Ljava/lang/CharSequence;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object v3, v4

    .line 85
    :goto_1
    if-eqz v5, :cond_4

    .line 86
    .line 87
    invoke-static {v0, v5}, Landroidx/biometric/BiometricFragment$Api28Impl;->setTitle(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    if-eqz v3, :cond_5

    .line 91
    .line 92
    invoke-static {v0, v3}, Landroidx/biometric/BiometricFragment$Api28Impl;->setSubtitle(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 96
    .line 97
    iget-object v5, v3, Landroidx/biometric/BiometricViewModel;->mNegativeButtonTextOverride:Ljava/lang/String;

    .line 98
    .line 99
    const-string v6, ""

    .line 100
    .line 101
    if-eqz v5, :cond_6

    .line 102
    .line 103
    move-object v4, v5

    .line 104
    goto :goto_2

    .line 105
    :cond_6
    iget-object v3, v3, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/cardview/widget/CardView$1;

    .line 106
    .line 107
    if-eqz v3, :cond_7

    .line 108
    .line 109
    move-object v4, v6

    .line 110
    :cond_7
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_a

    .line 115
    .line 116
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 117
    .line 118
    iget-object v3, v3, Landroidx/biometric/BiometricViewModel;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 119
    .line 120
    if-eqz v3, :cond_8

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_8
    new-instance v3, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 124
    .line 125
    invoke-direct {v3}, Landroidx/core/os/ExecutorCompat$HandlerExecutor;-><init>()V

    .line 126
    .line 127
    .line 128
    :goto_3
    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 129
    .line 130
    iget-object v7, v5, Landroidx/biometric/BiometricViewModel;->mNegativeButtonListener:Landroidx/biometric/FingerprintDialogFragment$2;

    .line 131
    .line 132
    if-nez v7, :cond_9

    .line 133
    .line 134
    new-instance v7, Landroidx/biometric/FingerprintDialogFragment$2;

    .line 135
    .line 136
    invoke-direct {v7, v5}, Landroidx/biometric/FingerprintDialogFragment$2;-><init>(Landroidx/biometric/BiometricViewModel;)V

    .line 137
    .line 138
    .line 139
    iput-object v7, v5, Landroidx/biometric/BiometricViewModel;->mNegativeButtonListener:Landroidx/biometric/FingerprintDialogFragment$2;

    .line 140
    .line 141
    :cond_9
    iget-object v5, v5, Landroidx/biometric/BiometricViewModel;->mNegativeButtonListener:Landroidx/biometric/FingerprintDialogFragment$2;

    .line 142
    .line 143
    invoke-static {v0, v4, v3, v5}, Landroidx/biometric/BiometricFragment$Api28Impl;->setNegativeButton(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    :cond_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    .line 148
    const/16 v4, 0x1d

    .line 149
    .line 150
    if-lt v3, v4, :cond_b

    .line 151
    .line 152
    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 153
    .line 154
    iget-object v5, v5, Landroidx/biometric/BiometricViewModel;->mPromptInfo:Landroidx/cardview/widget/CardView$1;

    .line 155
    .line 156
    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$Api29Impl;->setConfirmationRequired(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 157
    .line 158
    .line 159
    :cond_b
    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 160
    .line 161
    invoke-virtual {v5}, Landroidx/biometric/BiometricViewModel;->getAllowedAuthenticators()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    const/16 v7, 0x1e

    .line 166
    .line 167
    if-lt v3, v7, :cond_c

    .line 168
    .line 169
    invoke-static {v0, v5}, Landroidx/biometric/BiometricFragment$Api30Impl;->setAllowedAuthenticators(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_c
    if-lt v3, v4, :cond_d

    .line 174
    .line 175
    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->isDeviceCredentialAllowed(I)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-static {v0, v3}, Landroidx/biometric/BiometricFragment$Api29Impl;->setDeviceCredentialAllowed(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    .line 180
    .line 181
    .line 182
    :cond_d
    :goto_4
    invoke-static {v0}, Landroidx/biometric/BiometricFragment$Api28Impl;->buildPrompt(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 196
    .line 197
    iget-object v5, v4, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/BiometricPrompt;

    .line 198
    .line 199
    if-nez v5, :cond_e

    .line 200
    .line 201
    new-instance v5, Landroidx/biometric/BiometricPrompt;

    .line 202
    .line 203
    const/16 v7, 0xa

    .line 204
    .line 205
    invoke-direct {v5, v7}, Landroidx/biometric/BiometricPrompt;-><init>(I)V

    .line 206
    .line 207
    .line 208
    iput-object v5, v4, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/BiometricPrompt;

    .line 209
    .line 210
    :cond_e
    iget-object v4, v4, Landroidx/biometric/BiometricViewModel;->mCancellationSignalProvider:Landroidx/biometric/BiometricPrompt;

    .line 211
    .line 212
    iget-object v5, v4, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v5, Landroid/os/CancellationSignal;

    .line 215
    .line 216
    if-nez v5, :cond_f

    .line 217
    .line 218
    invoke-static {}, Landroidx/biometric/CancellationSignalProvider$Api16Impl;->create()Landroid/os/CancellationSignal;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    iput-object v5, v4, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 223
    .line 224
    :cond_f
    iget-object v4, v4, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v4, Landroid/os/CancellationSignal;

    .line 227
    .line 228
    new-instance v5, Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 229
    .line 230
    invoke-direct {v5, v2}, Landroidx/camera/camera2/pipe/core/HandlerExecutor;-><init>(I)V

    .line 231
    .line 232
    .line 233
    iget-object v7, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 234
    .line 235
    iget-object v8, v7, Landroidx/biometric/BiometricViewModel;->mAuthenticationCallbackProvider:Landroidx/cardview/widget/CardView$1;

    .line 236
    .line 237
    if-nez v8, :cond_10

    .line 238
    .line 239
    new-instance v8, Landroidx/cardview/widget/CardView$1;

    .line 240
    .line 241
    new-instance v9, Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 242
    .line 243
    invoke-direct {v9, v7}, Landroidx/biometric/BiometricViewModel$CallbackListener;-><init>(Landroidx/biometric/BiometricViewModel;)V

    .line 244
    .line 245
    .line 246
    const/4 v10, 0x3

    .line 247
    invoke-direct {v8, v10, v9}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iput-object v8, v7, Landroidx/biometric/BiometricViewModel;->mAuthenticationCallbackProvider:Landroidx/cardview/widget/CardView$1;

    .line 251
    .line 252
    :cond_10
    iget-object v7, v7, Landroidx/biometric/BiometricViewModel;->mAuthenticationCallbackProvider:Landroidx/cardview/widget/CardView$1;

    .line 253
    .line 254
    iget-object v8, v7, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v8, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 257
    .line 258
    if-nez v8, :cond_11

    .line 259
    .line 260
    iget-object v8, v7, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v8, Landroidx/biometric/BiometricViewModel$CallbackListener;

    .line 263
    .line 264
    invoke-static {v8}, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;->createCallback(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    iput-object v8, v7, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 269
    .line 270
    :cond_11
    iget-object v7, v7, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v7, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 273
    .line 274
    :try_start_0
    invoke-static {v0, v4, v5, v7}, Landroidx/biometric/BiometricFragment$Api28Impl;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const-string v4, "Got NPE while authenticating with biometric prompt."

    .line 280
    .line 281
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .line 283
    .line 284
    if-eqz v3, :cond_12

    .line 285
    .line 286
    const v0, 0x7f120286

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    :cond_12
    invoke-virtual {p0, v2, v6}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    :cond_13
    return-void
.end method
