.class public final synthetic Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/State;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v5, p1

    .line 17
    .line 18
    check-cast v5, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 28
    .line 29
    iget-wide v6, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 30
    .line 31
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 36
    .line 37
    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 38
    .line 39
    invoke-interface {v5, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    div-float v8, v0, v3

    .line 44
    .line 45
    const/4 v11, 0x0

    .line 46
    const/16 v12, 0x7c

    .line 47
    .line 48
    const-wide/16 v9, 0x0

    .line 49
    .line 50
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/Modifier$-CC;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :pswitch_0
    move-object/from16 v13, p1

    .line 55
    .line 56
    check-cast v13, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 57
    .line 58
    invoke-interface {v13, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 67
    .line 68
    iget-wide v14, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 69
    .line 70
    sget v1, Landroidx/compose/material3/tokens/RadioButtonTokens;->IconSize:F

    .line 71
    .line 72
    div-float/2addr v1, v3

    .line 73
    invoke-interface {v13, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    div-float v3, v6, v3

    .line 78
    .line 79
    sub-float v16, v1, v3

    .line 80
    .line 81
    new-instance v19, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    const/16 v10, 0x1e

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    move-object/from16 v5, v19

    .line 89
    .line 90
    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 91
    .line 92
    .line 93
    const/16 v20, 0x6c

    .line 94
    .line 95
    const-wide/16 v17, 0x0

    .line 96
    .line 97
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/Modifier$-CC;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 105
    .line 106
    iget v1, v1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-static {v1, v5}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-lez v1, :cond_0

    .line 114
    .line 115
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 120
    .line 121
    iget-wide v14, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 122
    .line 123
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 128
    .line 129
    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 130
    .line 131
    invoke-interface {v13, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sub-float v16, v0, v3

    .line 136
    .line 137
    sget-object v19, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 138
    .line 139
    const/16 v20, 0x6c

    .line 140
    .line 141
    const-wide/16 v17, 0x0

    .line 142
    .line 143
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/Modifier$-CC;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 144
    .line 145
    .line 146
    :cond_0
    return-object v2

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
