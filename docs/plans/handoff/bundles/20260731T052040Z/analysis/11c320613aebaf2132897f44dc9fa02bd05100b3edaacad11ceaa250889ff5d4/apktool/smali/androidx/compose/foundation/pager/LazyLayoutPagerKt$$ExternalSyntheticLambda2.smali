.class public final synthetic Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final synthetic f$10:Landroidx/compose/foundation/pager/PageSize$Fill;

.field public final synthetic f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic f$14:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic f$15:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

.field public final synthetic f$16:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$17:I

.field public final synthetic f$18:I

.field public final synthetic f$2:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$5:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$5:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$6:Z

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$7:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$10:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$14:Landroidx/compose/ui/Alignment$Vertical;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$15:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$16:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    iput p12, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$17:I

    .line 27
    .line 28
    iput p13, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$18:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$17:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    iget v0, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$18:I

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 22
    .line 23
    .line 24
    move-result v13

    .line 25
    iget-object v0, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/foundation/layout/PaddingValues;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$5:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 32
    .line 33
    iget-boolean v4, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$6:Z

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$7:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 36
    .line 37
    iget-object v6, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$10:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 38
    .line 39
    iget-object v7, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$11:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 40
    .line 41
    iget-object v8, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$14:Landroidx/compose/ui/Alignment$Vertical;

    .line 42
    .line 43
    iget-object v9, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$15:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 44
    .line 45
    iget-object v10, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$$ExternalSyntheticLambda2;->f$16:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 46
    .line 47
    invoke-static/range {v0 .. v13}, Landroidx/room/Room;->Pager-eLwUrMk(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method
