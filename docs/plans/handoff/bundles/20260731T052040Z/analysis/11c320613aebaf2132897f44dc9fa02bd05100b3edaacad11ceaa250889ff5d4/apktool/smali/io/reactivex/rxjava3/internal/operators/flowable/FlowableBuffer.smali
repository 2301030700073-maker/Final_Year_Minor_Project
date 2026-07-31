.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final bufferSupplier:Lio/reactivex/rxjava3/functions/Function;

.field public final size:I

.field public final skip:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->$r8$classId:I

    .line 18
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 19
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Lio/reactivex/rxjava3/functions/Function;

    .line 20
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->size:I

    .line 21
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->skip:I

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 5
    .line 6
    .line 7
    const/16 p1, 0x14

    .line 8
    .line 9
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->size:I

    .line 10
    .line 11
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->skip:I

    .line 12
    .line 13
    sget-object p1, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->INSTANCE:Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    .line 14
    .line 15
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Lio/reactivex/rxjava3/functions/Function;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V
    .locals 4

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    .line 7
    .line 8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Lio/reactivex/rxjava3/functions/Function;

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lkotlin/text/UStringsKt;->tryScalarXMapSubscribe(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    .line 18
    .line 19
    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->size:I

    .line 20
    .line 21
    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->skip:I

    .line 22
    .line 23
    invoke-direct {v2, p1, v1, v3, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/rxjava3/functions/Function;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->bufferSupplier:Lio/reactivex/rxjava3/functions/Function;

    .line 31
    .line 32
    check-cast v0, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    .line 33
    .line 34
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    .line 35
    .line 36
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->size:I

    .line 37
    .line 38
    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;->skip:I

    .line 39
    .line 40
    if-ne v2, p0, :cond_1

    .line 41
    .line 42
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;

    .line 43
    .line 44
    invoke-direct {p0, p1, v2, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber;-><init>(Lorg/reactivestreams/Subscriber;ILio/reactivex/rxjava3/internal/util/ArrayListSupplier;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-le p0, v2, :cond_2

    .line 52
    .line 53
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;

    .line 54
    .line 55
    invoke-direct {v3, p1, v2, p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IILio/reactivex/rxjava3/internal/util/ArrayListSupplier;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;

    .line 63
    .line 64
    invoke-direct {v3, p1, v2, p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber;-><init>(Lorg/reactivestreams/Subscriber;IILio/reactivex/rxjava3/internal/util/ArrayListSupplier;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
