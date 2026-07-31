.class public Lcom/fsck/k9/activity/compose/PgpInlineDialog;
.super Lcom/fsck/k9/view/HighlightDialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/view/HighlightDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const v0, 0x7f0c030e

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 29
    .line 30
    iput-object p1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 33
    .line 34
    const-string v1, "first_time"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    new-instance p0, Lcom/fsck/k9/activity/MessageCompose$10;

    .line 43
    .line 44
    const/4 p1, 0x3

    .line 45
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageCompose$10;-><init>(I)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f12052a

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Landroidx/biometric/FingerprintDialogFragment$2;

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-direct {p1, p0, v1}, Landroidx/biometric/FingerprintDialogFragment$2;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    .line 59
    .line 60
    .line 61
    const p0, 0x7f120526

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Lcom/fsck/k9/activity/MessageCompose$10;

    .line 68
    .line 69
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageCompose$10;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7f120527

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
