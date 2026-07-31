.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $$INSTANCE:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;

.field public static final DefaultDismissAnimation:Landroidx/compose/animation/core/TweenSpec;

.field public static final DefaultSettleAnimation:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;->$$INSTANCE:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/animation/core/SpringSpec;

    .line 9
    .line 10
    const v1, 0x3c23d70a    # 0.01f

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/high16 v2, 0x3f400000    # 0.75f

    .line 18
    .line 19
    const/high16 v3, 0x44160000    # 600.0f

    .line 20
    .line 21
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;->DefaultSettleAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 25
    .line 26
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    const/16 v2, 0xfa

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;->DefaultDismissAnimation:Landroidx/compose/animation/core/TweenSpec;

    .line 37
    .line 38
    return-void
.end method
