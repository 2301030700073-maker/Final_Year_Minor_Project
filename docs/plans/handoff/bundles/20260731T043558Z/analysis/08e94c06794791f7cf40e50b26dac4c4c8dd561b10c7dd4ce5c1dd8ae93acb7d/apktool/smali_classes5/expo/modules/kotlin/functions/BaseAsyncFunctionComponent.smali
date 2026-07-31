.class public abstract Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
.super Lexpo/modules/kotlin/functions/AnyFunction;
.source "BaseAsyncFunctionComponent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0010J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012R\u001a\u0010\t\u001a\u00020\nX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;",
        "Lexpo/modules/kotlin/functions/AnyFunction;",
        "name",
        "",
        "desiredArgsTypes",
        "",
        "Lexpo/modules/kotlin/types/AnyType;",
        "<init>",
        "(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V",
        "queue",
        "Lexpo/modules/kotlin/functions/FunctionQueue;",
        "getQueue",
        "()Lexpo/modules/kotlin/functions/FunctionQueue;",
        "setQueue",
        "(Lexpo/modules/kotlin/functions/FunctionQueue;)V",
        "runOnQueue",
        "Lexpo/modules/kotlin/functions/Queues;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private queue:Lexpo/modules/kotlin/functions/FunctionQueue;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desiredArgsTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/functions/AnyFunction;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;)V

    .line 21
    sget-object p1, Lexpo/modules/kotlin/functions/Queues;->DEFAULT:Lexpo/modules/kotlin/functions/Queues;

    check-cast p1, Lexpo/modules/kotlin/functions/FunctionQueue;

    iput-object p1, p0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    return-void
.end method


# virtual methods
.method protected final getQueue()Lexpo/modules/kotlin/functions/FunctionQueue;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    return-object v0
.end method

.method public final runOnQueue(Lexpo/modules/kotlin/functions/Queues;)Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 24
    check-cast p1, Lexpo/modules/kotlin/functions/FunctionQueue;

    iput-object p1, p0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    return-object p0
.end method

.method public final runOnQueue(Lkotlinx/coroutines/CoroutineScope;)Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 28
    new-instance v0, Lexpo/modules/kotlin/functions/CustomQueue;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/functions/CustomQueue;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lexpo/modules/kotlin/functions/FunctionQueue;

    iput-object v0, p0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    return-object p0
.end method

.method protected final setQueue(Lexpo/modules/kotlin/functions/FunctionQueue;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;->queue:Lexpo/modules/kotlin/functions/FunctionQueue;

    return-void
.end method
