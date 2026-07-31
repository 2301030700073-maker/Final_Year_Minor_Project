.class public final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;
.super Lokhttp3/Cookie$Companion;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final source:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;->source:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final parallelism()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method
