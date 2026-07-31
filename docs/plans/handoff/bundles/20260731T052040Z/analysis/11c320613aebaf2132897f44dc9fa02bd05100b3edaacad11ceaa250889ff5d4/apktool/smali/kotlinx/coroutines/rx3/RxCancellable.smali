.class public final Lkotlinx/coroutines/rx3/RxCancellable;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Cancellable;


# instance fields
.field public final job:Lkotlinx/coroutines/AbstractCoroutine;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/AbstractCoroutine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/rx3/RxCancellable;->job:Lkotlinx/coroutines/AbstractCoroutine;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxCancellable;->job:Lkotlinx/coroutines/AbstractCoroutine;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
