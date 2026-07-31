.class public final synthetic Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;->onTertiaryClick()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;->onSecondaryClick()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;->onPrimaryClick()V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
