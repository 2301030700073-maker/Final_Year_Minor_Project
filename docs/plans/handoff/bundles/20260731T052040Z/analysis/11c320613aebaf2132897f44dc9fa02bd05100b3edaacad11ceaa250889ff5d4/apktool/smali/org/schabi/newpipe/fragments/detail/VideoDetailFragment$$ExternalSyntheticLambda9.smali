.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 9
    .line 10
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 11
    .line 12
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 13
    .line 14
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 15
    .line 16
    const-string v2, "Got an error when modifying history on viewed"

    .line 17
    .line 18
    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;

    .line 26
    .line 27
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayPlayQueueButtonVisibility()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    move-object v1, p1

    .line 34
    check-cast v1, Ljava/lang/Throwable;

    .line 35
    .line 36
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 37
    .line 38
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 39
    .line 40
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    const-string p1, "no url"

    .line 45
    .line 46
    :cond_0
    move-object v3, p1

    .line 47
    iget p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 56
    .line 57
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
