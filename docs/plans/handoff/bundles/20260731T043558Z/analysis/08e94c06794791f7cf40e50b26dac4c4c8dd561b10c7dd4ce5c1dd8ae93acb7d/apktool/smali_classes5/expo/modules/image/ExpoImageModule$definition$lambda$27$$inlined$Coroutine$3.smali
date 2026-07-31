.class public final Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ExpoImageModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "[",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule\n*L\n1#1,269:1\n18#2:270\n112#3:271\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5\n*L\n37#1:270\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0004H\n\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<destruct>",
        "",
        "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$5"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3"
    f = "ExpoImageModule.kt"
    i = {}
    l = {
        0x10f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/image/ExpoImageModule;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lexpo/modules/image/ExpoImageModule;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->this$0:Lexpo/modules/image/ExpoImageModule;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;

    iget-object v0, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->this$0:Lexpo/modules/image/ExpoImageModule;

    invoke-direct {p1, p3, v0}, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/image/ExpoImageModule;)V

    iput-object p2, p1, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->L$0:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 36
    aget-object v3, p1, v1

    aget-object p1, p1, v2

    .line 38
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    check-cast p1, Lexpo/modules/image/records/ImageLoadOptions;

    check-cast v3, Lexpo/modules/image/records/SourceMap;

    .line 271
    new-instance v4, Lexpo/modules/image/ImageLoadTask;

    iget-object v5, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->this$0:Lexpo/modules/image/ExpoImageModule;

    invoke-virtual {v5}, Lexpo/modules/image/ExpoImageModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v5

    if-nez p1, :cond_2

    new-instance p1, Lexpo/modules/image/records/ImageLoadOptions;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct {p1, v1, v1, v6, v7}, Lexpo/modules/image/records/ImageLoadOptions;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    invoke-direct {v4, v5, v3, p1}, Lexpo/modules/image/ImageLoadTask;-><init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/image/records/SourceMap;Lexpo/modules/image/records/ImageLoadOptions;)V

    iput v2, p0, Lexpo/modules/image/ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3;->label:I

    invoke-virtual {v4, p0}, Lexpo/modules/image/ImageLoadTask;->load(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
