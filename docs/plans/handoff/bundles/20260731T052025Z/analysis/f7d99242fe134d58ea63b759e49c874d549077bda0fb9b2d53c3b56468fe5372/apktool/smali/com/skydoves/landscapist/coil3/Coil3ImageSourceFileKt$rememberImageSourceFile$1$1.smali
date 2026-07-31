.class final Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;->rememberImageSourceFile(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/Object;Lcom/skydoves/landscapist/DataSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
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
    c = "com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt$rememberImageSourceFile$1$1"
    f = "Coil3ImageSourceFile.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dataSource:Lcom/skydoves/landscapist/DataSource;

.field final synthetic $imageLoader:Lcoil3/ImageLoader;

.field final synthetic $imageModel:Ljava/lang/Object;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/Object;Lcom/skydoves/landscapist/DataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcoil3/ImageLoader;",
            "Ljava/lang/Object;",
            "Lcom/skydoves/landscapist/DataSource;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$imageLoader:Lcoil3/ImageLoader;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$imageModel:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$imageLoader:Lcoil3/ImageLoader;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$imageModel:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;-><init>(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/Object;Lcom/skydoves/landscapist/DataSource;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/ProduceStateScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ProduceStateScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;

    .line 6
    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Landroidx/compose/runtime/ProduceStateScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->invoke(Landroidx/compose/runtime/ProduceStateScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/ProduceStateScope;

    .line 4
    .line 5
    iget v1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    check-cast v0, Landroidx/compose/runtime/ProduceStateScope;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$context:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$imageLoader:Lcoil3/ImageLoader;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$imageModel:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->$dataSource:Lcom/skydoves/landscapist/DataSource;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    iput v3, p0, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt$rememberImageSourceFile$1$1;->label:I

    .line 44
    .line 45
    invoke-static {p1, v1, v4, v5, p0}, Lcom/skydoves/landscapist/coil3/Coil3ImageSourceFileKt;->getImageSourceFile(Landroid/content/Context;Lcoil3/ImageLoader;Ljava/lang/Object;Lcom/skydoves/landscapist/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 50
    .line 51
    if-ne p1, p0, :cond_2

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    :goto_0
    check-cast v0, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method
