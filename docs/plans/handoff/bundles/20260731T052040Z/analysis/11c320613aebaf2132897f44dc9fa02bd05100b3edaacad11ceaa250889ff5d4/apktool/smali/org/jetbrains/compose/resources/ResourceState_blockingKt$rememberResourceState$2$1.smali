.class public final Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $environment:Lorg/jetbrains/compose/resources/ResourceEnvironment;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->$block:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->$environment:Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->$block:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->$environment:Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->label:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->$block:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->$environment:Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 25
    .line 26
    iput v1, p0, Lorg/jetbrains/compose/resources/ResourceState_blockingKt$rememberResourceState$2$1;->label:I

    .line 27
    .line 28
    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-ne p0, p1, :cond_2

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_2
    return-object p0
.end method
