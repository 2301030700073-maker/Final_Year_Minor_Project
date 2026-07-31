.class public final synthetic Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
.method public synthetic constructor <init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/graphics/Brush;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$3:F

    .line 11
    .line 12
    iput p6, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$4:F

    .line 13
    .line 14
    iput-wide p7, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$5:J

    .line 15
    .line 16
    iput-wide p9, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$6:J

    .line 17
    .line 18
    iput-object p11, p0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$7:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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
    iget-boolean v3, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$0:Z

    .line 13
    .line 14
    move-object v4, v1

    .line 15
    iget-object v1, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/graphics/Brush;

    .line 16
    .line 17
    iget-wide v6, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$2:J

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/16 v9, 0xf6

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    move-object v0, v4

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    const/16 v3, 0x20

    .line 35
    .line 36
    shr-long v8, v6, v3

    .line 37
    .line 38
    long-to-int v5, v8

    .line 39
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget v8, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$3:F

    .line 44
    .line 45
    cmpg-float v5, v5, v8

    .line 46
    .line 47
    if-gez v5, :cond_1

    .line 48
    .line 49
    iget-object v5, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    shr-long/2addr v8, v3

    .line 56
    long-to-int v3, v8

    .line 57
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iget v9, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$4:F

    .line 62
    .line 63
    sub-float v11, v3, v9

    .line 64
    .line 65
    iget-object v0, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 68
    .line 69
    .line 70
    move-result-wide v12

    .line 71
    const-wide v14, 0xffffffffL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    and-long/2addr v12, v14

    .line 77
    long-to-int v0, v12

    .line 78
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    sub-float v12, v0, v9

    .line 83
    .line 84
    iget-object v14, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 85
    .line 86
    invoke-virtual {v14}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-virtual {v14}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 95
    .line 96
    .line 97
    :try_start_0
    iget-object v0, v14, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 100
    .line 101
    iget-object v0, v0, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const/4 v13, 0x0

    .line 110
    move v10, v9

    .line 111
    invoke-interface/range {v8 .. v13}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    .line 113
    .line 114
    const/4 v8, 0x0

    .line 115
    const/16 v9, 0xf6

    .line 116
    .line 117
    move-wide v10, v2

    .line 118
    const-wide/16 v2, 0x0

    .line 119
    .line 120
    move-object v0, v4

    .line 121
    const-wide/16 v4, 0x0

    .line 122
    .line 123
    :try_start_1
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    .line 126
    invoke-static {v14, v10, v11}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_0

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    move-wide v10, v2

    .line 134
    :goto_0
    invoke-static {v14, v10, v11}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_1
    invoke-static {v8, v6, v7}, Landroidx/compose/foundation/ImageKt;->shrink-Kibmq7A(FJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    const/16 v9, 0xd0

    .line 143
    .line 144
    iget-wide v2, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$5:J

    .line 145
    .line 146
    move-object v8, v4

    .line 147
    iget-wide v4, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$6:J

    .line 148
    .line 149
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode$$ExternalSyntheticLambda2;->f$7:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 150
    .line 151
    move-object/from16 v16, v8

    .line 152
    .line 153
    move-object v8, v0

    .line 154
    move-object/from16 v0, v16

    .line 155
    .line 156
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 157
    .line 158
    .line 159
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 160
    .line 161
    return-object v0
.end method
