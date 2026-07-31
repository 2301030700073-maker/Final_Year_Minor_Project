.class public Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public waitingForDismissAllowingStateLoss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final dismissAfterAnimation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final dismissAllowingStateLoss()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final getDialog()Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 4
    .line 5
    return-object p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    new-instance p1, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 8
    .line 9
    invoke-direct {p1, v0, p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final tryDismissWithAnimation(Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    check-cast v0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->getBehavior()Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 13
    .line 14
    if-eqz v3, :cond_4

    .line 15
    .line 16
    iget-boolean v0, v0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->isDismissWithAnimation:Z

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iput-boolean p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    .line 21
    .line 22
    iget p1, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v3, 0x5

    .line 26
    if-ne p1, v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->dismissAfterAnimation()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 33
    .line 34
    check-cast p1, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object v4, p1, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->internalBehavior:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-object p1, p1, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->cancelDialogCallback:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;

    .line 43
    .line 44
    iget-object v1, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string p0, "Required value was null."

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_2
    :goto_0
    new-instance p1, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;

    .line 57
    .line 58
    invoke-direct {p1, v0, p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v0

    .line 76
    :cond_4
    return v1
.end method
