.class public abstract Landroidx/compose/material3/tokens/FilterChipTokens;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledLabelTextOpacity:F

.field public static final DisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledLeadingIconOpacity:F

.field public static final DisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final DisabledTrailingIconOpacity:F

.field public static final DraggedContainerElevation:F

.field public static final FlatDisabledSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final FlatDisabledSelectedContainerOpacity:F

.field public static final FlatDisabledUnselectedOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final FlatDisabledUnselectedOutlineOpacity:F

.field public static final FlatSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final FlatSelectedHoverContainerElevation:F

.field public static final FlatUnselectedOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final FlatUnselectedOutlineWidth:F

.field public static final LabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public static final SelectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final SelectedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final SelectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final UnselectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final UnselectedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final UnselectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/material3/tokens/FilterChipTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 8
    .line 9
    const v1, 0x3ec28f5c    # 0.38f

    .line 10
    .line 11
    .line 12
    sput v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledLabelTextOpacity:F

    .line 13
    .line 14
    const/high16 v2, 0x41000000    # 8.0f

    .line 15
    .line 16
    sput v2, Landroidx/compose/material3/tokens/FilterChipTokens;->DraggedContainerElevation:F

    .line 17
    .line 18
    sput-object v0, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatDisabledSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 19
    .line 20
    const v2, 0x3df5c28f    # 0.12f

    .line 21
    .line 22
    .line 23
    sput v2, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatDisabledSelectedContainerOpacity:F

    .line 24
    .line 25
    sput-object v0, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatDisabledUnselectedOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 26
    .line 27
    sput v2, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatDisabledUnselectedOutlineOpacity:F

    .line 28
    .line 29
    sget-object v2, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    .line 31
    sput-object v2, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 32
    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    .line 35
    sput v2, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatSelectedHoverContainerElevation:F

    .line 36
    .line 37
    sget-object v3, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OutlineVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 38
    .line 39
    sput-object v3, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatUnselectedOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 40
    .line 41
    sput v2, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatUnselectedOutlineWidth:F

    .line 42
    .line 43
    sget-object v2, Landroidx/compose/material3/tokens/TypographyKeyTokens;->LabelLarge:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 44
    .line 45
    sput-object v2, Landroidx/compose/material3/tokens/FilterChipTokens;->LabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 46
    .line 47
    sget-object v2, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 48
    .line 49
    sput-object v2, Landroidx/compose/material3/tokens/FilterChipTokens;->SelectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 50
    .line 51
    sget-object v3, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 52
    .line 53
    sput-object v3, Landroidx/compose/material3/tokens/FilterChipTokens;->UnselectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 54
    .line 55
    sput-object v0, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 56
    .line 57
    sput v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledLeadingIconOpacity:F

    .line 58
    .line 59
    sput-object v2, Landroidx/compose/material3/tokens/FilterChipTokens;->SelectedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 60
    .line 61
    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 62
    .line 63
    sput-object v4, Landroidx/compose/material3/tokens/FilterChipTokens;->UnselectedLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 64
    .line 65
    sput-object v0, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 66
    .line 67
    sput v1, Landroidx/compose/material3/tokens/FilterChipTokens;->DisabledTrailingIconOpacity:F

    .line 68
    .line 69
    sput-object v2, Landroidx/compose/material3/tokens/FilterChipTokens;->SelectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 70
    .line 71
    sput-object v3, Landroidx/compose/material3/tokens/FilterChipTokens;->UnselectedTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 72
    .line 73
    return-void
.end method
