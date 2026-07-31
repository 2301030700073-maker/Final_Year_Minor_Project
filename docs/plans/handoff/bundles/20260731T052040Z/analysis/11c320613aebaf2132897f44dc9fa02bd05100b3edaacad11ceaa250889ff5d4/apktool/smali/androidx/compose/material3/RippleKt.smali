.class public abstract Landroidx/compose/material3/RippleKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field public static final LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    .line 16
    .line 17
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/material3/RippleNodeFactory;-><init>(JZ)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/material3/RippleNodeFactory;-><init>(JZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static ripple-H2RKhps$default(IJ)Landroidx/compose/material3/RippleNodeFactory;
    .locals 2

    .line 1
    and-int/lit8 p0, p0, 0x4

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-wide p1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 6
    .line 7
    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 8
    .line 9
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 16
    .line 17
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    new-instance p0, Landroidx/compose/material3/RippleNodeFactory;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/material3/RippleNodeFactory;-><init>(JZ)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method
