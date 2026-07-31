.class public abstract Landroidx/compose/material3/tokens/ElevatedButtonTokens;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ContainerElevation:F

.field public static final FocusedContainerElevation:F

.field public static final HoveredContainerElevation:F

.field public static final PressedContainerElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sput v0, Landroidx/compose/material3/tokens/ElevatedButtonTokens;->ContainerElevation:F

    .line 4
    .line 5
    sput v0, Landroidx/compose/material3/tokens/ElevatedButtonTokens;->FocusedContainerElevation:F

    .line 6
    .line 7
    const/high16 v1, 0x40400000    # 3.0f

    .line 8
    .line 9
    sput v1, Landroidx/compose/material3/tokens/ElevatedButtonTokens;->HoveredContainerElevation:F

    .line 10
    .line 11
    sput v0, Landroidx/compose/material3/tokens/ElevatedButtonTokens;->PressedContainerElevation:F

    .line 12
    .line 13
    return-void
.end method
