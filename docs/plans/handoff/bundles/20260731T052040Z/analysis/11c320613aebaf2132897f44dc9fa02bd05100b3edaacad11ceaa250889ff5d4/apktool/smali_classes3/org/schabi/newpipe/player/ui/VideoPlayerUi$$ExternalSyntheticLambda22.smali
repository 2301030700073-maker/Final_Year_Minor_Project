.class public final synthetic Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;->$r8$classId:I

    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->circleClipTapView:Lorg/schabi/newpipe/views/player/CircleClipTapView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x41366666    # 11.4f

    div-float/2addr p1, p2

    .line 3
    iget p2, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    cmpg-float p2, p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/views/player/CircleClipTapView;->arcSize:F

    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/player/CircleClipTapView;->updatePathShape()V

    :goto_0
    return-void

    .line 6
    :pswitch_0
    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    if-ne p4, p8, :cond_1

    if-eq p5, p9, :cond_2

    .line 7
    :cond_1
    new-instance p2, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    const/16 p3, 0xe

    invoke-direct {p2, p0, p3}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 8
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerOverlays:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p6

    .line 11
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    neg-int p2, p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    neg-int p2, p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    neg-int p2, p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
