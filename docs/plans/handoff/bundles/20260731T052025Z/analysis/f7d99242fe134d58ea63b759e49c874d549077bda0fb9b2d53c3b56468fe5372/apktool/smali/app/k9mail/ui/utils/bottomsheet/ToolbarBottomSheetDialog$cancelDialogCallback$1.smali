.class public final Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onSlide$app$k9mail$ui$utils$bottomsheet$ToolbarBottomSheetDialog$cancelDialogCallback$1(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onSlide$app$k9mail$ui$utils$bottomsheet$ToolbarBottomSheetDialogFragment$BottomSheetDismissCallback(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onSlide(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onStateChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$cancelDialogCallback$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;

    .line 12
    .line 13
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->dismissAfterAnimation()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :pswitch_0
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    check-cast p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 20
    .line 21
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
