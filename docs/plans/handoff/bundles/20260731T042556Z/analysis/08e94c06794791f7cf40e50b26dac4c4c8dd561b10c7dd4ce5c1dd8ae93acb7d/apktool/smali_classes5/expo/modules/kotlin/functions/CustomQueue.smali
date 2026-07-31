.class public final Lexpo/modules/kotlin/functions/CustomQueue;
.super Ljava/lang/Object;
.source "BaseAsyncFunctionComponent.kt"

# interfaces
.implements Lexpo/modules/kotlin/functions/FunctionQueue;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/kotlin/functions/CustomQueue;",
        "Lexpo/modules/kotlin/functions/FunctionQueue;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/kotlin/functions/CustomQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/kotlin/functions/CustomQueue;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lexpo/modules/kotlin/functions/CustomQueue;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/kotlin/functions/CustomQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/functions/CustomQueue;->copy(Lkotlinx/coroutines/CoroutineScope;)Lexpo/modules/kotlin/functions/CustomQueue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/functions/CustomQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final copy(Lkotlinx/coroutines/CoroutineScope;)Lexpo/modules/kotlin/functions/CustomQueue;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/kotlin/functions/CustomQueue;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/functions/CustomQueue;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/functions/CustomQueue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/kotlin/functions/CustomQueue;

    iget-object v1, p0, Lexpo/modules/kotlin/functions/CustomQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p1, Lexpo/modules/kotlin/functions/CustomQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/kotlin/functions/CustomQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/functions/CustomQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lexpo/modules/kotlin/functions/CustomQueue;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CustomQueue(scope="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
