.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final n:J


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/core/Flowable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x1

    .line 7
    .line 8
    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;->n:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V
    .locals 3

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;

    .line 7
    .line 8
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;->n:J

    .line 9
    .line 10
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableTake$TakeSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip$SkipSubscriber;

    .line 20
    .line 21
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;->n:J

    .line 22
    .line 23
    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip$SkipSubscriber;-><init>(Lorg/reactivestreams/Subscriber;J)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractFlowableWithUpstream;->source:Lio/reactivex/rxjava3/core/Flowable;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
