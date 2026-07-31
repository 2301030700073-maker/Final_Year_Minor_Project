.class public Lexpo/modules/image/ImageLoadTask;
.super Ljava/lang/Object;
.source "ImageLoadTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/image/ImageLoadTask;",
        "",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "source",
        "Lexpo/modules/image/records/SourceMap;",
        "options",
        "Lexpo/modules/image/records/ImageLoadOptions;",
        "<init>",
        "(Lexpo/modules/kotlin/AppContext;Lexpo/modules/image/records/SourceMap;Lexpo/modules/image/records/ImageLoadOptions;)V",
        "load",
        "Lexpo/modules/image/Image;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-image_release"
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
.field private final appContext:Lexpo/modules/kotlin/AppContext;

.field private final options:Lexpo/modules/image/records/ImageLoadOptions;

.field private final source:Lexpo/modules/image/records/SourceMap;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/AppContext;Lexpo/modules/image/records/SourceMap;Lexpo/modules/image/records/ImageLoadOptions;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lexpo/modules/image/ImageLoadTask;->appContext:Lexpo/modules/kotlin/AppContext;

    .line 13
    iput-object p2, p0, Lexpo/modules/image/ImageLoadTask;->source:Lexpo/modules/image/records/SourceMap;

    .line 14
    iput-object p3, p0, Lexpo/modules/image/ImageLoadTask;->options:Lexpo/modules/image/records/ImageLoadOptions;

    return-void
.end method

.method public static final synthetic access$getOptions$p(Lexpo/modules/image/ImageLoadTask;)Lexpo/modules/image/records/ImageLoadOptions;
    .locals 0

    .line 11
    iget-object p0, p0, Lexpo/modules/image/ImageLoadTask;->options:Lexpo/modules/image/records/ImageLoadOptions;

    return-object p0
.end method


# virtual methods
.method public final load(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/image/Image;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lexpo/modules/image/ImageLoadTask$load$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lexpo/modules/image/ImageLoadTask$load$1;

    iget v1, v0, Lexpo/modules/image/ImageLoadTask$load$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lexpo/modules/image/ImageLoadTask$load$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lexpo/modules/image/ImageLoadTask$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/image/ImageLoadTask$load$1;

    invoke-direct {v0, p0, p1}, Lexpo/modules/image/ImageLoadTask$load$1;-><init>(Lexpo/modules/image/ImageLoadTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lexpo/modules/image/ImageLoadTask$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lexpo/modules/image/ImageLoadTask$load$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lexpo/modules/image/ImageLoadTask;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    iget-object v2, p0, Lexpo/modules/image/ImageLoadTask;->source:Lexpo/modules/image/records/SourceMap;

    invoke-virtual {v2, p1}, Lexpo/modules/image/records/SourceMap;->createGlideModelProvider(Landroid/content/Context;)Lexpo/modules/image/GlideModelProvider;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 21
    invoke-interface {v2}, Lexpo/modules/image/GlideModelProvider;->getGlideModel()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 24
    :goto_1
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lexpo/modules/image/ImageLoadTask$load$bitmap$1;

    invoke-direct {v6, p1, v2, p0, v4}, Lexpo/modules/image/ImageLoadTask$load$bitmap$1;-><init>(Landroid/content/Context;Ljava/lang/Object;Lexpo/modules/image/ImageLoadTask;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lexpo/modules/image/ImageLoadTask$load$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 16
    :cond_4
    :goto_2
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 34
    new-instance v0, Lexpo/modules/image/Image;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lexpo/modules/image/Image;-><init>(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 36
    :goto_3
    new-instance v0, Lexpo/modules/image/ImageLoadFailed;

    invoke-direct {v0, p1}, Lexpo/modules/image/ImageLoadFailed;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 18
    :cond_5
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw p1
.end method
