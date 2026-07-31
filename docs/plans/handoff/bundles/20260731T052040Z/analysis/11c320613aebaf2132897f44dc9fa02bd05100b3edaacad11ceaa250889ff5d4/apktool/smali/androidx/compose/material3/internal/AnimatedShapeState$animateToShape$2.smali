.class public final Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $shape:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/internal/AnimatedShapeState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

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
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->label:I

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
    iget-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->L$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 18
    .line 19
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$1;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$2;

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 29
    .line 30
    iget-object v4, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 31
    .line 32
    invoke-direct {v0, v3, v4, v1}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$2;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Lkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 36
    .line 37
    .line 38
    new-instance v0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$3;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 41
    .line 42
    iget-object v4, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 43
    .line 44
    invoke-direct {v0, v3, v4, v1}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$3;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 48
    .line 49
    .line 50
    new-instance v0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$4;

    .line 51
    .line 52
    iget-object v3, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->this$0:Landroidx/compose/material3/internal/AnimatedShapeState;

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 55
    .line 56
    invoke-direct {v0, v3, p0, v1}, Landroidx/compose/material3/internal/AnimatedShapeState$animateToShape$2$4;-><init>(Landroidx/compose/material3/internal/AnimatedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method
