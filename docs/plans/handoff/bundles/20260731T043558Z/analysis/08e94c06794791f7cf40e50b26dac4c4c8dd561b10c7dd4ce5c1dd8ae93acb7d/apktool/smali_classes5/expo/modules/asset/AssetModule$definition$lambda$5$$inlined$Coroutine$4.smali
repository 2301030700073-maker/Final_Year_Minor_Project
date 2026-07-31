.class public final Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncFunctionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/asset/AssetModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
    value = "SMAP\nAsyncFunctionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$7\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 AssetModule.kt\nexpo/modules/asset/AssetModule\n*L\n1#1,269:1\n25#2:270\n79#3,18:271\n*S KotlinDebug\n*F\n+ 1 AsyncFunctionBuilder.kt\nexpo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$7\n*L\n46#1:270\n*E\n"
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
        "expo/modules/kotlin/functions/AsyncFunctionBuilder$SuspendBody$7"
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
    c = "expo.modules.asset.AssetModule$definition$lambda$5$$inlined$Coroutine$4"
    f = "AssetModule.kt"
    i = {}
    l = {
        0x119,
        0x120
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/asset/AssetModule;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lexpo/modules/asset/AssetModule;)V
    .locals 0

    iput-object p2, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

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

    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->invoke(Lkotlinx/coroutines/CoroutineScope;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    new-instance p1, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;

    iget-object v0, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-direct {p1, p3, v0}, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;-><init>(Lkotlin/coroutines/Continuation;Lexpo/modules/asset/AssetModule;)V

    iput-object p2, p1, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->L$0:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->L$0:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 45
    aget-object v4, p1, v1

    aget-object v5, p1, v2

    aget-object p1, p1, v3

    .line 47
    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    check-cast p1, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Ljava/net/URI;

    .line 271
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "toString(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "file:///android_res/"

    const/4 v8, 0x0

    invoke-static {v6, v7, v1, v3, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-nez v5, :cond_4

    .line 275
    iget-object v1, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-static {v1, v4}, Lexpo/modules/asset/AssetModule;->access$getMD5HashOfFilePath(Lexpo/modules/asset/AssetModule;Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v5

    .line 276
    :goto_1
    iget-object v6, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-virtual {v6}, Lexpo/modules/asset/AssetModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v6

    .line 278
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/ExponentAsset-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    .line 281
    iget-object p1, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-virtual {p1}, Lexpo/modules/asset/AssetModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    iput v2, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->label:I

    invoke-static {p1, v1, v4, v7, p0}, Lexpo/modules/asset/AssetModule;->access$downloadAsset(Lexpo/modules/asset/AssetModule;Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    move-object v4, p1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_8

    .line 284
    iget-object p1, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-static {p1, v7}, Lexpo/modules/asset/AssetModule;->access$getMD5HashOfFileContent(Lexpo/modules/asset/AssetModule;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 288
    :cond_7
    iget-object p1, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-virtual {p1}, Lexpo/modules/asset/AssetModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    iput v3, p0, Lexpo/modules/asset/AssetModule$definition$lambda$5$$inlined$Coroutine$4;->label:I

    invoke-static {p1, v1, v4, v7, p0}, Lexpo/modules/asset/AssetModule;->access$downloadAsset(Lexpo/modules/asset/AssetModule;Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 285
    :cond_8
    :goto_3
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    :goto_4
    return-object v4
.end method
