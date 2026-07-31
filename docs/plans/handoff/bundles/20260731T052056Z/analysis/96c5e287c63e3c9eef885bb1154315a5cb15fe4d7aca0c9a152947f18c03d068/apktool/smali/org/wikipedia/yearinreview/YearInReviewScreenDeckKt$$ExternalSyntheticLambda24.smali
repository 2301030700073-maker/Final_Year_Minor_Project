.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda24;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda24;->f$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda24;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    const-wide v4, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/16 v6, 0x20

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v8, p1

    .line 19
    .line 20
    check-cast v8, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 21
    .line 22
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    invoke-direct {v1, v8, v7}, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;-><init>(Landroidx/compose/ui/node/LayoutNodeDrawScope;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getSize-NH-jbRc()J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    shr-long v11, v9, v6

    .line 36
    .line 37
    long-to-int v7, v11

    .line 38
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    float-to-int v7, v7

    .line 43
    and-long/2addr v9, v4

    .line 44
    long-to-int v9, v9

    .line 45
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    float-to-int v9, v9

    .line 50
    int-to-long v10, v7

    .line 51
    shl-long v6, v10, v6

    .line 52
    .line 53
    int-to-long v9, v9

    .line 54
    and-long/2addr v4, v9

    .line 55
    or-long v10, v6, v4

    .line 56
    .line 57
    iget-object v4, v8, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 58
    .line 59
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    new-instance v12, Landroidx/glance/session/SessionWorkerKt$runSession$6;

    .line 64
    .line 65
    invoke-direct {v12, v8, v4, v1, v3}, Landroidx/glance/session/SessionWorkerKt$runSession$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    iget-object v7, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda24;->f$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 69
    .line 70
    invoke-virtual/range {v7 .. v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->record-mL-hObY(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;JLkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :pswitch_0
    move-object/from16 v14, p1

    .line 75
    .line 76
    check-cast v14, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 77
    .line 78
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    invoke-direct {v1, v14, v7}, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda28;-><init>(Landroidx/compose/ui/node/LayoutNodeDrawScope;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getSize-NH-jbRc()J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    shr-long v9, v7, v6

    .line 92
    .line 93
    long-to-int v9, v9

    .line 94
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    float-to-int v9, v9

    .line 99
    and-long/2addr v7, v4

    .line 100
    long-to-int v7, v7

    .line 101
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    float-to-int v7, v7

    .line 106
    int-to-long v8, v9

    .line 107
    shl-long/2addr v8, v6

    .line 108
    int-to-long v6, v7

    .line 109
    and-long/2addr v4, v6

    .line 110
    or-long v16, v8, v4

    .line 111
    .line 112
    iget-object v4, v14, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawNode:Landroidx/compose/ui/node/DrawModifierNode;

    .line 113
    .line 114
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    new-instance v5, Landroidx/glance/session/SessionWorkerKt$runSession$6;

    .line 119
    .line 120
    invoke-direct {v5, v14, v4, v1, v3}, Landroidx/glance/session/SessionWorkerKt$runSession$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    iget-object v13, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda24;->f$0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 124
    .line 125
    move-object/from16 v18, v5

    .line 126
    .line 127
    invoke-virtual/range {v13 .. v18}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->record-mL-hObY(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;JLkotlin/jvm/functions/Function1;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 145
    .line 146
    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->draw$ui_graphics(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 147
    .line 148
    .line 149
    return-object v2

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
