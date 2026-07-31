.class public final Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment$2;->this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment$2;->this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenKeychainInfoFragment;

    .line 3
    .line 4
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    sget-object p1, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->MARKET_INTENT:Landroid/content/Intent;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    sget-object p1, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->MARKET_INTENT_FALLBACK:Landroid/content/Intent;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
