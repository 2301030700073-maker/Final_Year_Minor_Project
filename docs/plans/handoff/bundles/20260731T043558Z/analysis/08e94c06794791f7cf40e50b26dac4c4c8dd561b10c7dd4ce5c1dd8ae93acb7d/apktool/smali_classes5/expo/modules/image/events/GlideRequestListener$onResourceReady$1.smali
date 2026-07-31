.class final Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GlideRequestListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/events/GlideRequestListener;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "expo.modules.image.events.GlideRequestListener$onResourceReady$1"
    f = "GlideRequestListener.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $dataSource:Lcom/bumptech/glide/load/DataSource;

.field final synthetic $imageWrapper:Lexpo/modules/image/ExpoImageViewWrapper;

.field final synthetic $intrinsicHeight:I

.field final synthetic $intrinsicWidth:I

.field final synthetic $model:Ljava/lang/Object;

.field final synthetic $resource:Landroid/graphics/drawable/Drawable;

.field label:I


# direct methods
.method constructor <init>(Lexpo/modules/image/ExpoImageViewWrapper;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Object;IILandroid/graphics/drawable/Drawable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/image/ExpoImageViewWrapper;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Ljava/lang/Object;",
            "II",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$imageWrapper:Lexpo/modules/image/ExpoImageViewWrapper;

    iput-object p2, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$dataSource:Lcom/bumptech/glide/load/DataSource;

    iput-object p3, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$model:Ljava/lang/Object;

    iput p4, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$intrinsicWidth:I

    iput p5, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$intrinsicHeight:I

    iput-object p6, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$resource:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;

    iget-object v1, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$imageWrapper:Lexpo/modules/image/ExpoImageViewWrapper;

    iget-object v2, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$dataSource:Lcom/bumptech/glide/load/DataSource;

    iget-object v3, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$model:Ljava/lang/Object;

    iget v4, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$intrinsicWidth:I

    iget v5, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$intrinsicHeight:I

    iget-object v6, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$resource:Landroid/graphics/drawable/Drawable;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;-><init>(Lexpo/modules/image/ExpoImageViewWrapper;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Object;IILandroid/graphics/drawable/Drawable;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 60
    iget v0, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$imageWrapper:Lexpo/modules/image/ExpoImageViewWrapper;

    invoke-virtual {p1}, Lexpo/modules/image/ExpoImageViewWrapper;->getOnLoad$expo_image_release()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p1

    .line 62
    new-instance v0, Lexpo/modules/image/records/ImageLoadEvent;

    .line 63
    sget-object v1, Lexpo/modules/image/enums/ImageCacheType;->Companion:Lexpo/modules/image/enums/ImageCacheType$Companion;

    iget-object v2, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1, v2}, Lexpo/modules/image/enums/ImageCacheType$Companion;->fromNativeValue(Lcom/bumptech/glide/load/DataSource;)Lexpo/modules/image/enums/ImageCacheType;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/image/enums/ImageCacheType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "getDefault(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v2, Lexpo/modules/image/records/ImageSource;

    .line 65
    iget-object v3, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$model:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    iget v5, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$intrinsicWidth:I

    .line 67
    iget v6, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$intrinsicHeight:I

    .line 69
    iget-object v3, p0, Lexpo/modules/image/events/GlideRequestListener$onResourceReady$1;->$resource:Landroid/graphics/drawable/Drawable;

    instance-of v8, v3, Landroid/graphics/drawable/Animatable;

    const/4 v7, 0x0

    move-object v3, v2

    .line 64
    invoke-direct/range {v3 .. v8}, Lexpo/modules/image/records/ImageSource;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    .line 62
    invoke-direct {v0, v1, v2}, Lexpo/modules/image/records/ImageLoadEvent;-><init>(Ljava/lang/String;Lexpo/modules/image/records/ImageSource;)V

    .line 61
    invoke-interface {p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
