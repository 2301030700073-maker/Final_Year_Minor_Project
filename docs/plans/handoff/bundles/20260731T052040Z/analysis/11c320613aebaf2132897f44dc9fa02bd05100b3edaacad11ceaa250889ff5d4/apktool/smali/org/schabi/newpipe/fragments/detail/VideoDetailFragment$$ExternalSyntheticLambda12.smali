.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 10
    .line 11
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->shouldShowHoldToAppendTip(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 20
    .line 21
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->touchAppendDetail:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 22
    .line 23
    new-instance v7, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-direct {v7, p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    const-wide/16 v2, 0xfa

    .line 31
    .line 32
    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 33
    .line 34
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    invoke-static/range {v0 .. v7}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method
