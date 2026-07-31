.class public final Landroidx/compose/material3/ChipKt$Chip$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $colors:Landroidx/compose/material3/ChipColors;

.field public final synthetic $enabled:Z

.field public final synthetic $label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $labelColor:J

.field public final synthetic $labelTextStyle:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $minHeight:F

.field public final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/material3/ChipColors;ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$labelColor:J

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$colors:Landroidx/compose/material3/ChipColors;

    .line 11
    .line 12
    iput-boolean p6, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$enabled:Z

    .line 13
    .line 14
    iput p7, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$minHeight:F

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Landroidx/compose/runtime/GapComposer;

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
    invoke-virtual {v10, p1, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$colors:Landroidx/compose/material3/ChipColors;

    .line 27
    .line 28
    iget-boolean p2, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$enabled:Z

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-wide v0, p1, Landroidx/compose/material3/ChipColors;->leadingIconContentColor:J

    .line 33
    .line 34
    :goto_1
    move-wide v4, v0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-wide v0, p1, Landroidx/compose/material3/ChipColors;->disabledLeadingIconContentColor:J

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :goto_2
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-wide p1, p1, Landroidx/compose/material3/ChipColors;->trailingIconContentColor:J

    .line 42
    .line 43
    :goto_3
    move-wide v6, p1

    .line 44
    goto :goto_4

    .line 45
    :cond_2
    iget-wide p1, p1, Landroidx/compose/material3/ChipColors;->disabledTrailingIconContentColor:J

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :goto_4
    iget-object v9, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 49
    .line 50
    const/16 v11, 0x6000

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$label:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 55
    .line 56
    iget-wide v2, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$labelColor:J

    .line 57
    .line 58
    iget v8, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$minHeight:F

    .line 59
    .line 60
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/ChipKt;->ChipContent-fe0OD_I(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;JJJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 65
    .line 66
    .line 67
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0
.end method
