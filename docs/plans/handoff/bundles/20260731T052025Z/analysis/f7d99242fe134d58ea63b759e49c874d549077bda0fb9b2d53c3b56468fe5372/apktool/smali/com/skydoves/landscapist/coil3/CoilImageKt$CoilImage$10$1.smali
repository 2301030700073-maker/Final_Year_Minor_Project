.class final Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/landscapist/coil3/CoilImageKt;->CoilImage(Lcom/skydoves/landscapist/StableHolder;Landroidx/compose/ui/Modifier;Lcom/skydoves/landscapist/ImageOptions;Lcom/skydoves/landscapist/StableHolder;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.skydoves.landscapist.coil3.CoilImageKt$CoilImage$10$1"
    f = "CoilImage.kt"
    l = {}
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
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$request:Lcoil3/request/ImageRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$imageLoader:Lcom/skydoves/landscapist/StableHolder;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$request:Lcoil3/request/ImageRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$imageLoader:Lcom/skydoves/landscapist/StableHolder;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;-><init>(Lcoil3/request/ImageRequest;Landroid/content/Context;Lcom/skydoves/landscapist/StableHolder;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;

    .line 6
    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$request:Lcoil3/request/ImageRequest;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$context:Landroid/content/Context;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1;->$imageLoader:Lcom/skydoves/landscapist/StableHolder;

    .line 16
    .line 17
    invoke-direct {p1, v0, v2, p0, v1}, Lcom/skydoves/landscapist/coil3/CoilImageKt$CoilImage$10$1$1;-><init>(Lcoil3/request/ImageRequest;Landroid/content/Context;Lcom/skydoves/landscapist/StableHolder;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lkotlinx/coroutines/flow/ChannelFlowBuilder;

    .line 21
    .line 22
    const/4 v0, -0x2

    .line 23
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 24
    .line 25
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 26
    .line 27
    invoke-direct {p0, p1, v2, v0, v1}, Lkotlinx/coroutines/flow/ChannelFlowBuilder;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method
