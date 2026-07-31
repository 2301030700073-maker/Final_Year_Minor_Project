.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;
.super Lio/reactivex/rxjava3/core/Single;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final source:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;->source:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle$ToSingleMaybeSubscriber;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToSingle;->source:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
