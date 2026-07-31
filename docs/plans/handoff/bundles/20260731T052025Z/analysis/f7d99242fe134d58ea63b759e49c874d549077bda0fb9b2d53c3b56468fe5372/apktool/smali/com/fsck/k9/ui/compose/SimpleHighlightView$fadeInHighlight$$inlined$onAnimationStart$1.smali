.class public final Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/ui/compose/SimpleHighlightView;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/compose/SimpleHighlightView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;->this$0:Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x8

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;->this$0:Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView;->parent:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/SimpleHighlightView$fadeInHighlight$$inlined$onAnimationStart$1;->this$0:Lcom/fsck/k9/ui/compose/SimpleHighlightView;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
