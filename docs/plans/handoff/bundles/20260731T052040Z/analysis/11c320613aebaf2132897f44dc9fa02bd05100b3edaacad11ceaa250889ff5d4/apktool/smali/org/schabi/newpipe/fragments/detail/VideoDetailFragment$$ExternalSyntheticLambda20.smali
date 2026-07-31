.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 2
    .line 3
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 4
    .line 5
    iget-object v0, p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isFullscreen()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;->f$0:I

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    move p0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;->f$1:I

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1, p0}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setHeights(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
