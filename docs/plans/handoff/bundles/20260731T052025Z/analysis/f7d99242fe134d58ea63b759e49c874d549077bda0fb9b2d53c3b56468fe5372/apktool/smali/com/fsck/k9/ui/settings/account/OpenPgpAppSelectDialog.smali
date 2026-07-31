.class public Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;,
        Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment;
    }
.end annotation


# static fields
.field public static final MARKET_INTENT:Landroid/content/Intent;

.field public static final MARKET_INTENT_FALLBACK:Landroid/content/Intent;


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "market://details?id=org.sufficientlysecure.keychain"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android.intent.action.VIEW"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->MARKET_INTENT:Landroid/content/Intent;

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v1, "https://play.google.com/store/apps/details?id=org.sufficientlysecure.keychain"

    .line 19
    .line 20
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->MARKET_INTENT_FALLBACK:Landroid/content/Intent;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/ui/base/ThemeType;->DIALOG:Lcom/fsck/k9/ui/base/ThemeType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>(Lcom/fsck/k9/ui/base/ThemeType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "account"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 27
    .line 28
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lorg/openintents/openpgp/util/OpenPgpProviderUtil;->getOpenPgpProviderPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "openkeychain_info"

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    const-string v1, "Only one OpenPGP provider - just choosing that one!"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    new-array v3, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v1, "openpgp_select"

    .line 82
    .line 83
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
