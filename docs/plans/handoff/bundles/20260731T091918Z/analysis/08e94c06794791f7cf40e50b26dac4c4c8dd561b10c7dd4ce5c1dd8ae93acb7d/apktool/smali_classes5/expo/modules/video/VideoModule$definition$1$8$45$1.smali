.class final Lexpo/modules/video/VideoModule$definition$1$8$45$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/media/MediaMetadataRetriever;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lexpo/modules/video/VideoThumbnail;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoModule.kt\nexpo/modules/video/VideoModule$definition$1$8$45$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,415:1\n1557#2:416\n1628#2,3:417\n*S KotlinDebug\n*F\n+ 1 VideoModule.kt\nexpo/modules/video/VideoModule$definition$1$8$45$1\n*L\n313#1:416\n313#1:417,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lexpo/modules/video/VideoThumbnail;",
        "Landroid/media/MediaMetadataRetriever;"
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
    c = "expo.modules.video.VideoModule$definition$1$8$45$1"
    f = "VideoModule.kt"
    i = {}
    l = {
        0x13f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $options:Lexpo/modules/video/records/VideoThumbnailOptions;

.field final synthetic $times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lexpo/modules/video/VideoModule;


# direct methods
.method constructor <init>(Ljava/util/List;Lexpo/modules/video/VideoModule;Lexpo/modules/video/records/VideoThumbnailOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/time/Duration;",
            ">;",
            "Lexpo/modules/video/VideoModule;",
            "Lexpo/modules/video/records/VideoThumbnailOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/video/VideoModule$definition$1$8$45$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->$times:Ljava/util/List;

    iput-object p2, p0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->this$0:Lexpo/modules/video/VideoModule;

    iput-object p3, p0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->$options:Lexpo/modules/video/records/VideoThumbnailOptions;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;

    iget-object v1, p0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->$times:Ljava/util/List;

    iget-object v2, p0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->this$0:Lexpo/modules/video/VideoModule;

    iget-object v3, p0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->$options:Lexpo/modules/video/records/VideoThumbnailOptions;

    invoke-direct {v0, v1, v2, v3, p2}, Lexpo/modules/video/VideoModule$definition$1$8$45$1;-><init>(Ljava/util/List;Lexpo/modules/video/VideoModule;Lexpo/modules/video/records/VideoThumbnailOptions;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroid/media/MediaMetadataRetriever;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaMetadataRetriever;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lexpo/modules/video/VideoThumbnail;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/VideoModule$definition$1$8$45$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->invoke(Landroid/media/MediaMetadataRetriever;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 312
    iget v2, v0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaMetadataRetriever;

    .line 313
    iget-object v4, v0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->$times:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    iget-object v10, v0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->this$0:Lexpo/modules/video/VideoModule;

    iget-object v11, v0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->$options:Lexpo/modules/video/records/VideoThumbnailOptions;

    .line 416
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v5

    check-cast v12, Ljava/util/Collection;

    .line 417
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 418
    check-cast v4, Lkotlin/time/Duration;

    invoke-virtual {v4}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 314
    invoke-virtual {v10}, Lexpo/modules/video/VideoModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getBackgroundCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v14

    new-instance v15, Lexpo/modules/video/VideoModule$definition$1$8$45$1$bitmaps$1$1;

    const/4 v9, 0x0

    move-object v4, v15

    move-object v5, v2

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Lexpo/modules/video/VideoModule$definition$1$8$45$1$bitmaps$1$1;-><init>(Landroid/media/MediaMetadataRetriever;JLexpo/modules/video/records/VideoThumbnailOptions;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v17, v15

    check-cast v17, Lkotlin/jvm/functions/Function2;

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 418
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_2
    check-cast v12, Ljava/util/List;

    .line 319
    check-cast v12, Ljava/util/Collection;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, v0, Lexpo/modules/video/VideoModule$definition$1$8$45$1;->label:I

    invoke-static {v12, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v2
.end method
