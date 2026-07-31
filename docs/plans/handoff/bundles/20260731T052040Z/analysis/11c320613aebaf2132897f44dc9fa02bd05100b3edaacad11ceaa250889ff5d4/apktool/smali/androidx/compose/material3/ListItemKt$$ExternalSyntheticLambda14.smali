.class public final synthetic Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$1:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic f$2:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field public final synthetic f$4:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/State;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$0:Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$1:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$2:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$4:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$4:Landroidx/compose/runtime/State;

    .line 9
    .line 10
    iget-object v6, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$1:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    iget-object v7, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$0:Landroidx/compose/foundation/layout/PaddingValues;

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v0, p2

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit8 v8, v0, 0x3

    .line 28
    .line 29
    if-eq v8, v3, :cond_0

    .line 30
    .line 31
    move v2, v4

    .line 32
    :cond_0
    and-int/2addr v0, v4

    .line 33
    move-object v12, p1

    .line 34
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {v12, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SpacerKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 51
    .line 52
    iget-wide v9, p1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 53
    .line 54
    const/16 v13, 0x180

    .line 55
    .line 56
    iget-object v11, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$2:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 57
    .line 58
    invoke-static/range {v8 .. v13}, Landroidx/compose/material3/ListItemKt;->TrailingDecorator-8s8adOk(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v1

    .line 66
    :pswitch_0
    move-object/from16 v0, p2

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    and-int/lit8 v8, v0, 0x3

    .line 75
    .line 76
    if-eq v8, v3, :cond_2

    .line 77
    .line 78
    move v2, v4

    .line 79
    :cond_2
    and-int/2addr v0, v4

    .line 80
    move-object v12, p1

    .line 81
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 82
    .line 83
    invoke-virtual {v12, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SpacerKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 98
    .line 99
    iget-wide v9, p1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 100
    .line 101
    const/16 v13, 0x180

    .line 102
    .line 103
    iget-object v11, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda14;->f$2:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 104
    .line 105
    invoke-static/range {v8 .. v13}, Landroidx/compose/material3/ListItemKt;->LeadingDecorator-8s8adOk(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-object v1

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
