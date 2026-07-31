.class public abstract Landroidx/compose/material3/RippleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field public static final DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field public static final LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    .line 15
    .line 16
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 17
    .line 18
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/material3/RippleNodeFactory;-><init>(FJZ)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/material3/RippleNodeFactory;-><init>(FJZ)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    .line 33
    .line 34
    return-void
.end method

.method public static ripple-H2RKhps$default(ZFI)Landroidx/compose/material3/RippleNodeFactory;
    .locals 3

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 7
    .line 8
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    move p1, v0

    .line 13
    :cond_1
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    invoke-static {v1, v2, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_3
    new-instance p2, Landroidx/compose/material3/RippleNodeFactory;

    .line 36
    .line 37
    invoke-direct {p2, p1, v1, v2, p0}, Landroidx/compose/material3/RippleNodeFactory;-><init>(FJZ)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method
