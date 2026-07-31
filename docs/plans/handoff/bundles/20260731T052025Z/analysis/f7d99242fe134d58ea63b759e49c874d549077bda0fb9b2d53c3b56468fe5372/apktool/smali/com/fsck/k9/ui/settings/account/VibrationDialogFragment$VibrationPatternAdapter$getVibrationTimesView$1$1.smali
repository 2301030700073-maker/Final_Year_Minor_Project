.class public final Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $vibrationTimesValue:Lcom/google/android/material/textview/MaterialTextView;

.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

.field public final synthetic this$1:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;Lcom/google/android/material/textview/MaterialTextView;Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;->this$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;->$vibrationTimesValue:Lcom/google/android/material/textview/MaterialTextView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;->this$1:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    add-int/lit8 p2, p2, 0x1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;->this$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 7
    .line 8
    iput p2, p1, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->vibrationTimes:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;->$vibrationTimesValue:Lcom/google/android/material/textview/MaterialTextView;

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;->this$1:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->access$playVibration(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
