.class public final Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $resource:Lorg/jetbrains/compose/resources/DrawableResource;

.field final synthetic $resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$density:Landroidx/compose/ui/unit/Density;

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

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p2}, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;-><init>(Lorg/jetbrains/compose/resources/DrawableResource;Lorg/jetbrains/compose/resources/ResourceReader;Landroidx/compose/ui/unit/Density;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 4
    .line 5
    iget v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->label:I

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
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$resource:Lorg/jetbrains/compose/resources/DrawableResource;

    .line 31
    .line 32
    invoke-static {p1, v0}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceItemByEnvironment(Lorg/jetbrains/compose/resources/Resource;Lorg/jetbrains/compose/resources/ResourceEnvironment;)Lorg/jetbrains/compose/resources/ResourceItem;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 39
    .line 40
    iget-object v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 41
    .line 42
    new-instance v4, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/16 v5, 0x8

    .line 45
    .line 46
    invoke-direct {v4, v1, v5}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->L$1:Ljava/lang/Object;

    .line 52
    .line 53
    iput v3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$vectorResource$imageVector$3$1;->label:I

    .line 54
    .line 55
    sget-object v1, Lorg/jetbrains/compose/resources/ImageResourcesKt;->imageCache:Lorg/jetbrains/compose/resources/AsyncCache;

    .line 56
    .line 57
    new-instance v3, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;

    .line 58
    .line 59
    invoke-direct {v3, v4, v0, p1, v2}, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;-><init>(Lkotlin/jvm/functions/Function1;Lorg/jetbrains/compose/resources/ResourceReader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 66
    .line 67
    invoke-direct {v0, v1, p1, v3, v2}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Lorg/jetbrains/compose/resources/AsyncCache;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 75
    .line 76
    if-ne p1, p0, :cond_2

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    check-cast p1, Lorg/jetbrains/compose/resources/ImageCache$Vector;

    .line 83
    .line 84
    iget-object p0, p1, Lorg/jetbrains/compose/resources/ImageCache$Vector;->vector:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 85
    .line 86
    return-object p0
.end method
