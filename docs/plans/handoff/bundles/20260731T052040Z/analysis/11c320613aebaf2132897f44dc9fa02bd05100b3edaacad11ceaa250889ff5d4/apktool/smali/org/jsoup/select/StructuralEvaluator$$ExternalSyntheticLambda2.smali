.class public final synthetic Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 11
    .line 12
    check-cast v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/android/tools/r8/RecordTag;->from(Lcom/google/android/exoplayer2/MediaItem;)Lj$/util/Optional;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;

    .line 25
    .line 26
    invoke-direct {v2, p0, p1, v1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lcom/google/android/exoplayer2/source/MediaSource;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_0
    check-cast p0, Lorg/jsoup/select/StructuralEvaluator;

    .line 35
    .line 36
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 37
    .line 38
    check-cast p1, Lorg/jsoup/nodes/Node;

    .line 39
    .line 40
    iget-object p0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 41
    .line 42
    invoke-virtual {p0, v1, p1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
