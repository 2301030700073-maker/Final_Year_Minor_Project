.class public final Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;
.super Lorg/wikipedia/yearinreview/YearInReviewScreenData;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final highlights:Ljava/util/List;

.field public final screenshotUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-direct {p0, v1, p3, v0}, Lorg/wikipedia/yearinreview/YearInReviewScreenData;-><init>(ILjava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;->highlights:Ljava/util/List;

    .line 7
    .line 8
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;->screenshotUrl:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final BottomButton(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 13

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, -0x5f2a4153

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 16
    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/4 v9, 0x0

    .line 24
    const/16 v10, 0x8

    .line 25
    .line 26
    const/high16 v6, 0x41000000    # 8.0f

    .line 27
    .line 28
    move v7, v6

    .line 29
    move v8, v6

    .line 30
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 39
    .line 40
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 47
    .line 48
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    const/16 v5, 0xe

    .line 53
    .line 54
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    and-int/lit8 v1, p4, 0x70

    .line 59
    .line 60
    xor-int/lit8 v1, v1, 0x30

    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    const/16 v2, 0x20

    .line 64
    .line 65
    if-le v1, v2, :cond_0

    .line 66
    .line 67
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    :cond_0
    and-int/lit8 v1, p4, 0x30

    .line 74
    .line 75
    if-ne v1, v2, :cond_2

    .line 76
    .line 77
    :cond_1
    const/4 v1, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move v1, v12

    .line 80
    :goto_0
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    or-int/2addr v1, v2

    .line 85
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 92
    .line 93
    if-ne v2, v1, :cond_4

    .line 94
    .line 95
    :cond_3
    new-instance v2, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 96
    .line 97
    const/16 v1, 0xe

    .line 98
    .line 99
    invoke-direct {v2, v1, p2, p0}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 106
    .line 107
    sget-object v8, Lorg/wikipedia/yearinreview/YearInReviewDialog;->lambda$770360989:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 108
    .line 109
    const/high16 v10, 0x30000000

    .line 110
    .line 111
    const/16 v11, 0x1ec

    .line 112
    .line 113
    move-object v4, v0

    .line 114
    move-object v0, v2

    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    const/4 v6, 0x0

    .line 119
    const/4 v7, 0x0

    .line 120
    move-object v1, p1

    .line 121
    move-object/from16 v9, p3

    .line 122
    .line 123
    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 124
    .line 125
    .line 126
    move-object v4, v9

    .line 127
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
