.class public final Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resource:Lorg/jetbrains/compose/resources/StringResource;

.field final synthetic $resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lorg/jetbrains/compose/resources/StringResource;Ljava/util/List;Lorg/jetbrains/compose/resources/ResourceReader;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$resource:Lorg/jetbrains/compose/resources/StringResource;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$args:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

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
    new-instance v0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$resource:Lorg/jetbrains/compose/resources/StringResource;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$args:Ljava/util/List;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p2}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;-><init>(Lorg/jetbrains/compose/resources/StringResource;Ljava/util/List;Lorg/jetbrains/compose/resources/ResourceReader;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 4
    .line 5
    iget v1, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$resource:Lorg/jetbrains/compose/resources/StringResource;

    .line 27
    .line 28
    iget-object v1, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$args:Ljava/util/List;

    .line 29
    .line 30
    iget-object v4, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 31
    .line 32
    iput-object v2, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    iput v3, p0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$7$1;->label:I

    .line 35
    .line 36
    invoke-static {p1, v1, v4, v0, p0}, Lorg/jetbrains/compose/resources/StringResourcesKt;->access$loadString(Lorg/jetbrains/compose/resources/StringResource;Ljava/util/List;Lorg/jetbrains/compose/resources/ResourceReader;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    if-ne p0, p1, :cond_2

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_2
    return-object p0
.end method
