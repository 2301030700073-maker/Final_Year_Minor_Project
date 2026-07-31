.class public final Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $decode:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/jetbrains/compose/resources/ResourceReader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$decode:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$path:Ljava/lang/String;

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
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$decode:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$path:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;-><init>(Lkotlin/jvm/functions/Function1;Lorg/jetbrains/compose/resources/ResourceReader;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->label:I

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
    iget-object p0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$decode:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    iget-object v0, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$resourceReader:Lorg/jetbrains/compose/resources/ResourceReader;

    .line 29
    .line 30
    iget-object v2, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->$path:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    iput v1, p0, Lorg/jetbrains/compose/resources/ImageResourcesKt$loadImage$2;->label:I

    .line 35
    .line 36
    check-cast v0, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->read(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    if-ne p0, v0, :cond_2

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    move-object v3, p1

    .line 48
    move-object p1, p0

    .line 49
    move-object p0, v3

    .line 50
    :goto_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
