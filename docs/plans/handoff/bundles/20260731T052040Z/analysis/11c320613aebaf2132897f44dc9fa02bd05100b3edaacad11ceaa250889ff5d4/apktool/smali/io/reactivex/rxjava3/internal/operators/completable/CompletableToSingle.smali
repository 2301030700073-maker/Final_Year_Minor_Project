.class public final Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;
.super Lio/reactivex/rxjava3/core/Single;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final completionValue:Ljava/util/ArrayList;

.field public final source:Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->source:Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 5
    .line 6
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->completionValue:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/grack/nanojson/JsonBuilder;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, Lcom/grack/nanojson/JsonBuilder;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/SingleObserver;I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableToSingle;->source:Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
