.class public final Landroidx/compose/material3/internal/AnimatedShapeState;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public bottomEnd:Landroidx/compose/animation/core/Animatable;

.field public bottomStart:Landroidx/compose/animation/core/Animatable;

.field public density:Landroidx/compose/ui/unit/Density;

.field public final shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public size:J

.field public final spec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public topEnd:Landroidx/compose/animation/core/Animatable;

.field public topStart:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->spec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->size:J

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/ui/unit/DensityImpl;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p2, p2}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/material3/internal/AnimatedShapeState;->density:Landroidx/compose/ui/unit/Density;

    .line 19
    .line 20
    return-void
.end method
