.class public abstract Landroidx/compose/animation/core/EasingKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final FastOutLinearInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final LinearEasing:Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    const v1, 0x3ecccccd    # 0.4f

    .line 4
    .line 5
    .line 6
    const v2, 0x3e4ccccd    # 0.2f

    .line 7
    .line 8
    .line 9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFF)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v4, v2, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFF)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 23
    .line 24
    invoke-direct {v0, v1, v3, v3}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFF)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    return-void
.end method
