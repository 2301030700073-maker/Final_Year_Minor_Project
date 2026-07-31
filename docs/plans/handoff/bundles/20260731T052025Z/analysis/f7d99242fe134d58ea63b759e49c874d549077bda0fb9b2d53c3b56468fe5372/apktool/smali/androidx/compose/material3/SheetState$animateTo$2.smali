.class public final Landroidx/compose/material3/SheetState$animateTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic $velocity:F

.field public synthetic L$0:Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1;

.field public synthetic L$1:Landroidx/compose/material3/internal/MapDraggableAnchors;

.field public synthetic L$2:Landroidx/compose/material3/SheetValue;

.field public label:I

.field public final synthetic this$0:Landroidx/compose/material3/SheetState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SheetState;FLandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material3/SheetState$animateTo$2;->this$0:Landroidx/compose/material3/SheetState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material3/SheetState$animateTo$2;->$velocity:F

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material3/SheetState$animateTo$2;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 6
    .line 7
    const/4 p1, 0x4

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/material3/SheetValue;

    .line 6
    .line 7
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/material3/SheetState$animateTo$2;

    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/material3/SheetState$animateTo$2;->$velocity:F

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/material3/SheetState$animateTo$2;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/material3/SheetState$animateTo$2;->this$0:Landroidx/compose/material3/SheetState;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1, v2, p4}, Landroidx/compose/material3/SheetState$animateTo$2;-><init>(Landroidx/compose/material3/SheetState;FLandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v0, Landroidx/compose/material3/SheetState$animateTo$2;->L$0:Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1;

    .line 21
    .line 22
    iput-object p2, v0, Landroidx/compose/material3/SheetState$animateTo$2;->L$1:Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 23
    .line 24
    iput-object p3, v0, Landroidx/compose/material3/SheetState$animateTo$2;->L$2:Landroidx/compose/material3/SheetValue;

    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroidx/compose/material3/SheetState$animateTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/material3/SheetState$animateTo$2;->label:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/material3/SheetState$animateTo$2;->L$0:Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/material3/SheetState$animateTo$2;->L$1:Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/material3/SheetState$animateTo$2;->L$2:Landroidx/compose/material3/SheetValue;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroidx/compose/material3/internal/MapDraggableAnchors;->positionOf(Ljava/lang/Object;)F

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Landroidx/compose/material3/SheetState$animateTo$2;->this$0:Landroidx/compose/material3/SheetState;

    .line 44
    .line 45
    iget-object v4, v3, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 46
    .line 47
    iget-object v4, v4, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    :goto_0
    move v4, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v3, v3, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 63
    .line 64
    iget-object v3, v3, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 65
    .line 66
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    goto :goto_0

    .line 71
    :goto_1
    iput v4, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 72
    .line 73
    new-instance v8, Landroidx/compose/material3/SheetState$animateTo$2$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-direct {v8, p1, v0, v3}, Landroidx/compose/material3/SheetState$animateTo$2$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1;Lkotlin/jvm/internal/Ref$FloatRef;I)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Landroidx/compose/material3/SheetState$animateTo$2;->L$0:Landroidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1;

    .line 80
    .line 81
    iput-object v1, p0, Landroidx/compose/material3/SheetState$animateTo$2;->L$1:Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 82
    .line 83
    iput v2, p0, Landroidx/compose/material3/SheetState$animateTo$2;->label:I

    .line 84
    .line 85
    iget v6, p0, Landroidx/compose/material3/SheetState$animateTo$2;->$velocity:F

    .line 86
    .line 87
    iget-object v7, p0, Landroidx/compose/material3/SheetState$animateTo$2;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 88
    .line 89
    move-object v9, p0

    .line 90
    invoke-static/range {v4 .. v9}, Landroidx/compose/animation/core/ArcSplineKt;->animate(FFFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 95
    .line 96
    if-ne p0, p1, :cond_3

    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p0
.end method
