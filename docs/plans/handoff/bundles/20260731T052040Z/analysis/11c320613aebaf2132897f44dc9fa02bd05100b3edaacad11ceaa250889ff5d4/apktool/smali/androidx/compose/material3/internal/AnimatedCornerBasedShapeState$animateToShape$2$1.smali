.class public final Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $shape:Landroidx/compose/foundation/shape/CornerBasedShape;

.field label:I

.field final synthetic this$0:Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

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
    new-instance p1, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;-><init>(Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;Landroidx/compose/foundation/shape/CornerBasedShape;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->label:I

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
    goto :goto_0

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
    iget-object p1, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

    .line 23
    .line 24
    iget-object v0, p1, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->topStart:Landroidx/compose/animation/core/Animatable;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->$shape:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/compose/foundation/shape/CornerBasedShape;->topStart:Landroidx/compose/foundation/shape/CornerSize;

    .line 31
    .line 32
    iget-wide v3, p1, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->size:J

    .line 33
    .line 34
    iget-object p1, p1, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 35
    .line 36
    invoke-interface {v2, v3, v4, p1}, Landroidx/compose/foundation/shape/CornerSize;->toPx-TmRCtEA(JLandroidx/compose/ui/unit/Density;)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    new-instance v2, Ljava/lang/Float;

    .line 41
    .line 42
    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->this$0:Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;

    .line 46
    .line 47
    iget-object p1, p1, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState;->spec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 48
    .line 49
    iput v1, p0, Landroidx/compose/material3/internal/AnimatedCornerBasedShapeState$animateToShape$2$1;->label:I

    .line 50
    .line 51
    invoke-static {v0, v2, p1, p0}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 56
    .line 57
    if-ne p1, p0, :cond_2

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_2
    :goto_0
    check-cast p1, Landroidx/compose/animation/core/AnimationResult;

    .line 61
    .line 62
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method
