.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrimaryClick()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->getCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onSecondaryClick()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTertiaryClick()V
    .locals 0

    .line 1
    return-void
.end method
