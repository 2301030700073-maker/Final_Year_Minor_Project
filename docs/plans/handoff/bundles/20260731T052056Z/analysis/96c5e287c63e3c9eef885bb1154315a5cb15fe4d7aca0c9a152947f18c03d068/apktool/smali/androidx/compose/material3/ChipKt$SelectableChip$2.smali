.class public final Landroidx/compose/material3/ChipKt$SelectableChip$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $colors:Landroidx/compose/material3/SelectableChipColors;

.field public final synthetic $enabled:Z

.field public final synthetic $label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $labelTextStyle:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field public final synthetic $minHeight:F

.field public final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic $selected:Z


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SelectableChipColors;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;FLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$colors:Landroidx/compose/material3/SelectableChipColors;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$enabled:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$selected:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$minHeight:F

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 p2, p1, 0x3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p2, v0, :cond_0

    .line 15
    .line 16
    move p2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    and-int/2addr p1, v1

    .line 20
    invoke-virtual {v11, p1, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_7

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$colors:Landroidx/compose/material3/SelectableChipColors;

    .line 27
    .line 28
    iget-boolean p2, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$enabled:Z

    .line 29
    .line 30
    iget-boolean v0, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$selected:Z

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    iget-wide v1, p1, Landroidx/compose/material3/SelectableChipColors;->disabledLabelColor:J

    .line 35
    .line 36
    :goto_1
    move-wide v2, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-wide v1, p1, Landroidx/compose/material3/SelectableChipColors;->labelColor:J

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-wide v1, p1, Landroidx/compose/material3/SelectableChipColors;->selectedLabelColor:J

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :goto_2
    if-nez p2, :cond_3

    .line 47
    .line 48
    iget-wide v4, p1, Landroidx/compose/material3/SelectableChipColors;->disabledLeadingIconColor:J

    .line 49
    .line 50
    :goto_3
    move-wide v5, v4

    .line 51
    goto :goto_4

    .line 52
    :cond_3
    if-nez v0, :cond_4

    .line 53
    .line 54
    iget-wide v4, p1, Landroidx/compose/material3/SelectableChipColors;->leadingIconColor:J

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget-wide v4, p1, Landroidx/compose/material3/SelectableChipColors;->selectedLeadingIconColor:J

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_4
    if-nez p2, :cond_5

    .line 61
    .line 62
    iget-wide p1, p1, Landroidx/compose/material3/SelectableChipColors;->disabledTrailingIconColor:J

    .line 63
    .line 64
    :goto_5
    move-wide v7, p1

    .line 65
    goto :goto_6

    .line 66
    :cond_5
    if-nez v0, :cond_6

    .line 67
    .line 68
    iget-wide p1, p1, Landroidx/compose/material3/SelectableChipColors;->trailingIconColor:J

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_6
    iget-wide p1, p1, Landroidx/compose/material3/SelectableChipColors;->selectedTrailingIconColor:J

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :goto_6
    iget-object v10, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 75
    .line 76
    const/4 v12, 0x0

    .line 77
    iget-object v0, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 80
    .line 81
    iget-object v4, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 82
    .line 83
    iget v9, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$minHeight:F

    .line 84
    .line 85
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ChipKt;->AnimatingChipContent-fe0OD_I(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_7

    .line 89
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 90
    .line 91
    .line 92
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method
