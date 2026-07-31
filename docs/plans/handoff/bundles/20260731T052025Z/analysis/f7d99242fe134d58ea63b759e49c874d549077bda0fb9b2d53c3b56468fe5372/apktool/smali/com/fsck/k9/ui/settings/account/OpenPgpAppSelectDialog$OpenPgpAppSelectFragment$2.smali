.class public final Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;->this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;->this$0:Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .line 10
    .line 11
    iget-object v0, p2, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->intent:Landroid/content/Intent;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p1, p2, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->intent:Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p2, p2, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->selectedPackage:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
