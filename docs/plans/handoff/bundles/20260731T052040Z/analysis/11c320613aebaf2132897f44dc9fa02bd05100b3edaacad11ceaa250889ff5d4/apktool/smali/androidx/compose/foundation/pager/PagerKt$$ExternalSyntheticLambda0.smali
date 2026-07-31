.class public final synthetic Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic f$12:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

.field public final synthetic f$13:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final synthetic f$14:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$2:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$3:Landroidx/compose/foundation/pager/PageSize$Fill;

.field public final synthetic f$6:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic f$7:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/pager/DefaultPagerState;

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
    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/ui/Alignment$Vertical;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$7:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 15
    .line 16
    iput-boolean p7, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$8:Z

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$12:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$13:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$14:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x31

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 12
    .line 13
    .line 14
    move-result v12

    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/ui/Alignment$Vertical;

    .line 24
    .line 25
    iget-object v5, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$7:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 26
    .line 27
    iget-boolean v6, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$8:Z

    .line 28
    .line 29
    iget-object v7, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 30
    .line 31
    iget-object v8, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$12:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 32
    .line 33
    iget-object v9, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$13:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 34
    .line 35
    iget-object v10, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;->f$14:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 36
    .line 37
    invoke-static/range {v0 .. v12}, Lnet/newpipe/app/AppKt;->HorizontalPager--8jOkeI(Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method
