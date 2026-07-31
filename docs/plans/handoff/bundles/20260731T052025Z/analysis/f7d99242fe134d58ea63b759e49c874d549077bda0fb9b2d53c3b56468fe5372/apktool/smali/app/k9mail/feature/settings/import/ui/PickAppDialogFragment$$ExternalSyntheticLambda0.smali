.class public final synthetic Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

.field public final synthetic f$1:Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/AccountList$AccountsAdapter;Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment$$ExternalSyntheticLambda0;->f$1:Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AppInfo;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lapp/k9mail/feature/settings/import/ui/AppInfo;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment$$ExternalSyntheticLambda0;->f$1:Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;

    .line 14
    .line 15
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;->selectedPackageName:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    return-void
.end method
