.class public final synthetic Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;ILcom/fsck/k9/ui/settings/account/VibrationDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 5
    .line 6
    iput p2, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 2
    .line 3
    iget v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iput v0, p1, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->checkedEntryIndex:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->access$playVibration(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
