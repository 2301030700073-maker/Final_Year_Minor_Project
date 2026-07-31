.class final Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.skydoves.landscapist.coil3.CoilImageKt$CoilImage$10$1$1"
    f = "CoilImage.kt"
    l = {
        0x14c,
        0x14d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $imageLoader:Lcom/skydoves/landscapist/StableHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skydoves/landscapist/StableHolder;"
        }
    .end annotation
.end field

.field final synthetic $request:Lcoil3/request/ImageRequest;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Landroid/content/Context;Lcom/skydoves/landscapist/StableHolder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageRequest;",
            "Landroid/content/Context;",
            "Lcom/skydoves/landscapist/StableHolder;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$request:Lcoil3/request/ImageRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$imageLoader:Lcom/skydoves/landscapist/StableHolder;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$request:Lcoil3/request/ImageRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$imageLoader:Lcom/skydoves/landscapist/StableHolder;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p2}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;-><init>(Lcoil3/request/ImageRequest;Landroid/content/Context;Lcom/skydoves/landscapist/StableHolder;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;

    .line 6
    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    .line 5
    iget v1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$2:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/skydoves/landscapist/ImageLoadState;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcoil3/request/ImageRequest;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcoil3/request/ImageRequest;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$request:Lcoil3/request/ImageRequest;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcoil3/request/ImageRequest;->newBuilder(Landroid/content/Context;)Lcoil3/request/ImageRequest$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1$invokeSuspend$$inlined$target$default$1;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1$invokeSuspend$$inlined$target$default$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcoil3/request/ImageRequest$Builder;->target(Lcoil3/target/Target;)Lcoil3/request/ImageRequest$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->$imageLoader:Lcom/skydoves/landscapist/StableHolder;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/skydoves/landscapist/StableHolder;->value:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Lcoil3/ImageLoader;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v4, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    iput v3, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->label:I

    .line 79
    .line 80
    invoke-interface {v1, p1, p0}, Lcoil3/ImageLoader;->execute(Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v5, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    :goto_0
    check-cast p1, Lcoil3/request/ImageResult;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->access$toResult(Lcoil3/request/ImageResult;)Lcom/skydoves/landscapist/ImageLoadState;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object v4, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v4, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$1:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v4, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->L$2:Ljava/lang/Object;

    .line 98
    .line 99
    iput v2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;->label:I

    .line 100
    .line 101
    check-cast v0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 102
    .line 103
    iget-object v0, v0, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 104
    .line 105
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-ne p0, v5, :cond_4

    .line 110
    .line 111
    :goto_1
    return-object v5

    .line 112
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p0
.end method
