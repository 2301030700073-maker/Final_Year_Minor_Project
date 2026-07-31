.class public final synthetic Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic f$12:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

.field public final synthetic f$13:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final synthetic f$14:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$15:I

.field public final synthetic f$17:I

.field public final synthetic f$2:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$3:Landroidx/compose/foundation/pager/PageSize$Fill;

.field public final synthetic f$4:I

.field public final synthetic f$6:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public final synthetic f$7:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;ILandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/pager/PagerState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$7:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 17
    .line 18
    iput-boolean p8, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$8:Z

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$12:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$13:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$14:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    iput p13, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$15:I

    .line 29
    .line 30
    iput p14, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$17:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$15:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/pager/PagerState;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    .line 29
    .line 30
    move-object v4, v3

    .line 31
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 32
    .line 33
    move-object v5, v4

    .line 34
    iget v4, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$4:I

    .line 35
    .line 36
    move-object v6, v5

    .line 37
    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 38
    .line 39
    move-object v7, v6

    .line 40
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$7:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 41
    .line 42
    move-object v8, v7

    .line 43
    iget-boolean v7, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$8:Z

    .line 44
    .line 45
    move-object v9, v8

    .line 46
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 47
    .line 48
    move-object v10, v9

    .line 49
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$12:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 50
    .line 51
    move-object v11, v10

    .line 52
    iget-object v10, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$13:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 53
    .line 54
    move-object v14, v11

    .line 55
    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$14:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    .line 57
    iget v0, v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$17:I

    .line 58
    .line 59
    move-object v15, v14

    .line 60
    move v14, v0

    .line 61
    move-object v0, v15

    .line 62
    invoke-static/range {v0 .. v14}, Landroidx/compose/ui/unit/DpKt;->HorizontalPager--8jOkeI(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;ILandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    .line 67
    return-object v0
.end method
