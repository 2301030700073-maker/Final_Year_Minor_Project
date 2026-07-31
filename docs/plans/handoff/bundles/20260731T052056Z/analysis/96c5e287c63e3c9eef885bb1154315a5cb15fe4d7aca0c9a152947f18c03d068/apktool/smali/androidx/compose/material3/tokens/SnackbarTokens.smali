.class public abstract Landroidx/compose/material3/tokens/SnackbarTokens;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ActionLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final ActionLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public static final ContainerElevation:F

.field public static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final SingleLineContainerHeight:F

.field public static final SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final SupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public static final TwoLinesContainerHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InversePrimary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ActionLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->LabelLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ActionLabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 8
    .line 9
    const/high16 v0, 0x40c00000    # 6.0f

    .line 10
    .line 11
    sput v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerElevation:F

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InverseOnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 18
    .line 19
    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 20
    .line 21
    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->BodyMedium:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 24
    .line 25
    sput-object v0, Landroidx/compose/material3/tokens/SnackbarTokens;->SupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 26
    .line 27
    const/high16 v0, 0x42400000    # 48.0f

    .line 28
    .line 29
    sput v0, Landroidx/compose/material3/tokens/SnackbarTokens;->SingleLineContainerHeight:F

    .line 30
    .line 31
    const/high16 v0, 0x42880000    # 68.0f

    .line 32
    .line 33
    sput v0, Landroidx/compose/material3/tokens/SnackbarTokens;->TwoLinesContainerHeight:F

    .line 34
    .line 35
    return-void
.end method
