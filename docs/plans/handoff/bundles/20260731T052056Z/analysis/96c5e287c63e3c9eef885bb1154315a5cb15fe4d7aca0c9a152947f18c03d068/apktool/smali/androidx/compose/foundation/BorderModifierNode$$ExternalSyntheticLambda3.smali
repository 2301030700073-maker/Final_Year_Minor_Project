.class public final synthetic Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic f$2:J

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:Landroidx/compose/ui/graphics/drawscope/Stroke;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/graphics/SolidColor;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/graphics/Brush;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$3:F

    .line 11
    .line 12
    iput p6, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$4:F

    .line 13
    .line 14
    iput-wide p7, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$5:J

    .line 15
    .line 16
    iput-wide p9, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$6:J

    .line 17
    .line 18
    iput-object p11, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$7:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 11
    .line 12
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 13
    .line 14
    iget-boolean v4, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$0:Z

    .line 15
    .line 16
    move-object v5, v1

    .line 17
    iget-object v1, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/ui/graphics/Brush;

    .line 18
    .line 19
    iget-wide v6, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$2:J

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/16 v9, 0xf6

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    move-object v0, v5

    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    const/16 v4, 0x20

    .line 37
    .line 38
    shr-long v8, v6, v4

    .line 39
    .line 40
    long-to-int v8, v8

    .line 41
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    iget v9, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$3:F

    .line 46
    .line 47
    cmpg-float v8, v8, v9

    .line 48
    .line 49
    if-gez v8, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    shr-long/2addr v8, v4

    .line 56
    long-to-int v4, v8

    .line 57
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget v9, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$4:F

    .line 62
    .line 63
    sub-float v11, v4, v9

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    const-wide v12, 0xffffffffL

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    and-long/2addr v3, v12

    .line 75
    long-to-int v0, v3

    .line 76
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    sub-float v12, v0, v9

    .line 81
    .line 82
    iget-object v14, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 83
    .line 84
    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 93
    .line 94
    .line 95
    :try_start_0
    iget-object v0, v14, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v8, v0

    .line 98
    check-cast v8, Landroidx/appcompat/widget/PopupMenu$1;

    .line 99
    .line 100
    const/4 v13, 0x0

    .line 101
    move v10, v9

    .line 102
    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/widget/PopupMenu$1;->clipRect-N_I0leg(FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    const/16 v9, 0xf6

    .line 107
    .line 108
    move-wide v10, v2

    .line 109
    const-wide/16 v2, 0x0

    .line 110
    .line 111
    move-object v0, v5

    .line 112
    const-wide/16 v4, 0x0

    .line 113
    .line 114
    :try_start_1
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-static {v14, v10, v11}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto :goto_0

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    move-wide v10, v2

    .line 125
    :goto_0
    invoke-static {v14, v10, v11}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_1
    invoke-static {v9, v6, v7}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    const/16 v9, 0xd0

    .line 134
    .line 135
    iget-wide v2, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$5:J

    .line 136
    .line 137
    move-object v8, v5

    .line 138
    iget-wide v4, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$6:J

    .line 139
    .line 140
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda3;->f$7:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 141
    .line 142
    move-object v15, v8

    .line 143
    move-object v8, v0

    .line 144
    move-object v0, v15

    .line 145
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 146
    .line 147
    .line 148
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 149
    .line 150
    return-object v0
.end method
