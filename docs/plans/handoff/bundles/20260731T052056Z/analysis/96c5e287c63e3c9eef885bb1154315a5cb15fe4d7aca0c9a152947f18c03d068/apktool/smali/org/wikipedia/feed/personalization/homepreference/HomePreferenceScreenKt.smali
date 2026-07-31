.class public abstract Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final lambda$-1391714738:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const v3, -0x52f3e1b2

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt;->lambda$-1391714738:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    return-void
.end method

.method public static final ArticleCardTag(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V
    .locals 27

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const v3, 0x21515e0b

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x4

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move v3, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, 0x2

    .line 26
    :goto_0
    or-int/2addr v3, v0

    .line 27
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    const/16 v5, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v5, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v3, v5

    .line 39
    and-int/lit8 v5, v3, 0x13

    .line 40
    .line 41
    const/16 v6, 0x12

    .line 42
    .line 43
    if-eq v5, v6, :cond_2

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/4 v5, 0x0

    .line 48
    :goto_2
    and-int/lit8 v6, v3, 0x1

    .line 49
    .line 50
    invoke-virtual {v1, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 57
    .line 58
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 63
    .line 64
    iget-object v6, v5, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 65
    .line 66
    sget-object v11, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 67
    .line 68
    const/16 v17, 0x0

    .line 69
    .line 70
    const v18, 0xfffffb

    .line 71
    .line 72
    .line 73
    const-wide/16 v7, 0x0

    .line 74
    .line 75
    const-wide/16 v9, 0x0

    .line 76
    .line 77
    const/4 v12, 0x0

    .line 78
    const-wide/16 v13, 0x0

    .line 79
    .line 80
    const-wide/16 v15, 0x0

    .line 81
    .line 82
    invoke-static/range {v6 .. v18}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 83
    .line 84
    .line 85
    move-result-object v20

    .line 86
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 93
    .line 94
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 95
    .line 96
    and-int/lit8 v22, v3, 0x7e

    .line 97
    .line 98
    const/16 v23, 0x0

    .line 99
    .line 100
    const v24, 0x1fff8

    .line 101
    .line 102
    .line 103
    move-wide/from16 v25, v5

    .line 104
    .line 105
    move v6, v4

    .line 106
    move-wide/from16 v3, v25

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    move v8, v6

    .line 110
    const-wide/16 v6, 0x0

    .line 111
    .line 112
    move v9, v8

    .line 113
    const/4 v8, 0x0

    .line 114
    move v10, v9

    .line 115
    const/4 v9, 0x0

    .line 116
    move v12, v10

    .line 117
    const-wide/16 v10, 0x0

    .line 118
    .line 119
    move v13, v12

    .line 120
    const/4 v12, 0x0

    .line 121
    move v15, v13

    .line 122
    const-wide/16 v13, 0x0

    .line 123
    .line 124
    move/from16 v16, v15

    .line 125
    .line 126
    const/4 v15, 0x0

    .line 127
    move/from16 v17, v16

    .line 128
    .line 129
    const/16 v16, 0x0

    .line 130
    .line 131
    move/from16 v18, v17

    .line 132
    .line 133
    const/16 v17, 0x0

    .line 134
    .line 135
    move/from16 v19, v18

    .line 136
    .line 137
    const/16 v18, 0x0

    .line 138
    .line 139
    move/from16 v21, v19

    .line 140
    .line 141
    const/16 v19, 0x0

    .line 142
    .line 143
    move-object/from16 v21, v1

    .line 144
    .line 145
    move-object v1, v2

    .line 146
    move-object/from16 v2, p2

    .line 147
    .line 148
    invoke-static/range {v1 .. v24}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    move-object v1, v2

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    new-instance v3, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3;

    .line 163
    .line 164
    move-object/from16 v4, p2

    .line 165
    .line 166
    const/4 v6, 0x4

    .line 167
    invoke-direct {v3, v1, v4, v0, v6}, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;II)V

    .line 168
    .line 169
    .line 170
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 171
    .line 172
    :cond_4
    return-void
.end method

.method public static final HomePreferenceArticleCard(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;Landroidx/compose/runtime/GapComposer;I)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v11, p3

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, -0x68325eaf

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    or-int/lit8 v0, p4, 0x6

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v1, 0x10

    .line 33
    .line 34
    :goto_0
    or-int/2addr v0, v1

    .line 35
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/16 v1, 0x100

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v1, 0x80

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v1

    .line 47
    and-int/lit16 v1, v0, 0x93

    .line 48
    .line 49
    const/16 v2, 0x92

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-eq v1, v2, :cond_2

    .line 53
    .line 54
    move v1, v4

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_2
    and-int/2addr v0, v4

    .line 58
    invoke-virtual {v11, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    const/high16 p0, 0x43390000    # 185.0f

    .line 65
    .line 66
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 67
    .line 68
    invoke-static {v0, p0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const/high16 v1, 0x43660000    # 230.0f

    .line 73
    .line 74
    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    sget-object p0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 79
    .line 80
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 85
    .line 86
    iget-wide v1, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 87
    .line 88
    const/high16 p0, 0x3f800000    # 1.0f

    .line 89
    .line 90
    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    new-instance p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    const/4 v1, 0x2

    .line 97
    invoke-direct {p0, v1, v3, p1}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    const v1, -0x3ad7fdbc

    .line 101
    .line 102
    .line 103
    invoke-static {v1, p0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    const v12, 0x180030

    .line 108
    .line 109
    .line 110
    const/16 v13, 0x34

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    const/4 v9, 0x0

    .line 116
    invoke-static/range {v4 .. v13}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiCard-jfnsLPA(Landroidx/compose/ui/Modifier;FLandroidx/compose/material3/CardColors;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 117
    .line 118
    .line 119
    move-object v1, v0

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 122
    .line 123
    .line 124
    move-object v1, p0

    .line 125
    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-eqz p0, :cond_4

    .line 130
    .line 131
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 132
    .line 133
    const/16 v5, 0xe

    .line 134
    .line 135
    move-object v2, p1

    .line 136
    move/from16 v4, p4

    .line 137
    .line 138
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 142
    .line 143
    :cond_4
    return-void
.end method

.method public static final HomePreferenceScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 43

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v11, p6

    .line 4
    .line 5
    move/from16 v0, p7

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const v2, -0x7eaa8a12

    .line 17
    .line 18
    .line 19
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v2, v3

    .line 32
    :goto_0
    or-int/2addr v2, v0

    .line 33
    and-int/lit8 v4, v0, 0x30

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    const/16 v4, 0x20

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/16 v4, 0x10

    .line 51
    .line 52
    :goto_1
    or-int/2addr v2, v4

    .line 53
    :cond_2
    and-int/lit16 v4, v0, 0x180

    .line 54
    .line 55
    if-nez v4, :cond_4

    .line 56
    .line 57
    move-object/from16 v4, p2

    .line 58
    .line 59
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_3

    .line 64
    .line 65
    const/16 v7, 0x100

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/16 v7, 0x80

    .line 69
    .line 70
    :goto_2
    or-int/2addr v2, v7

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    move-object/from16 v4, p2

    .line 73
    .line 74
    :goto_3
    and-int/lit16 v7, v0, 0xc00

    .line 75
    .line 76
    if-nez v7, :cond_6

    .line 77
    .line 78
    move-object/from16 v7, p3

    .line 79
    .line 80
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_5

    .line 85
    .line 86
    const/16 v9, 0x800

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    const/16 v9, 0x400

    .line 90
    .line 91
    :goto_4
    or-int/2addr v2, v9

    .line 92
    goto :goto_5

    .line 93
    :cond_6
    move-object/from16 v7, p3

    .line 94
    .line 95
    :goto_5
    and-int/lit16 v9, v0, 0x6000

    .line 96
    .line 97
    const/16 v10, 0x4000

    .line 98
    .line 99
    if-nez v9, :cond_8

    .line 100
    .line 101
    move-object/from16 v9, p4

    .line 102
    .line 103
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-eqz v12, :cond_7

    .line 108
    .line 109
    move v12, v10

    .line 110
    goto :goto_6

    .line 111
    :cond_7
    const/16 v12, 0x2000

    .line 112
    .line 113
    :goto_6
    or-int/2addr v2, v12

    .line 114
    goto :goto_7

    .line 115
    :cond_8
    move-object/from16 v9, p4

    .line 116
    .line 117
    :goto_7
    const/high16 v12, 0x30000

    .line 118
    .line 119
    and-int/2addr v12, v0

    .line 120
    const/high16 v13, 0x20000

    .line 121
    .line 122
    if-nez v12, :cond_a

    .line 123
    .line 124
    move-object/from16 v12, p5

    .line 125
    .line 126
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    if-eqz v14, :cond_9

    .line 131
    .line 132
    move v14, v13

    .line 133
    goto :goto_8

    .line 134
    :cond_9
    const/high16 v14, 0x10000

    .line 135
    .line 136
    :goto_8
    or-int/2addr v2, v14

    .line 137
    goto :goto_9

    .line 138
    :cond_a
    move-object/from16 v12, p5

    .line 139
    .line 140
    :goto_9
    const v14, 0x12493

    .line 141
    .line 142
    .line 143
    and-int/2addr v14, v2

    .line 144
    const v15, 0x12492

    .line 145
    .line 146
    .line 147
    const/16 v26, 0x0

    .line 148
    .line 149
    const/4 v6, 0x1

    .line 150
    if-eq v14, v15, :cond_b

    .line 151
    .line 152
    move v14, v6

    .line 153
    goto :goto_a

    .line 154
    :cond_b
    move/from16 v14, v26

    .line 155
    .line 156
    :goto_a
    and-int/lit8 v15, v2, 0x1

    .line 157
    .line 158
    invoke-virtual {v11, v15, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-eqz v14, :cond_14

    .line 163
    .line 164
    new-instance v14, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 165
    .line 166
    new-instance v15, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/16 v7, 0xa

    .line 169
    .line 170
    invoke-direct {v15, v7}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 171
    .line 172
    .line 173
    const/16 v17, 0x20

    .line 174
    .line 175
    const/high16 v5, 0x41000000    # 8.0f

    .line 176
    .line 177
    invoke-direct {v14, v5, v6, v15}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 178
    .line 179
    .line 180
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 181
    .line 182
    const/4 v15, 0x6

    .line 183
    invoke-static {v14, v5, v11, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    iget-wide v14, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 188
    .line 189
    ushr-long v18, v14, v17

    .line 190
    .line 191
    xor-long v14, v14, v18

    .line 192
    .line 193
    long-to-int v14, v14

    .line 194
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    invoke-static {v11, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 203
    .line 204
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 208
    .line 209
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 210
    .line 211
    .line 212
    iget-boolean v8, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 213
    .line 214
    if-eqz v8, :cond_c

    .line 215
    .line 216
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 217
    .line 218
    .line 219
    goto :goto_b

    .line 220
    :cond_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 221
    .line 222
    .line 223
    :goto_b
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 224
    .line 225
    invoke-static {v11, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 226
    .line 227
    .line 228
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 229
    .line 230
    invoke-static {v11, v15, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 238
    .line 239
    invoke-static {v11, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 240
    .line 241
    .line 242
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 243
    .line 244
    invoke-static {v11, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 245
    .line 246
    .line 247
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 248
    .line 249
    invoke-static {v11, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 250
    .line 251
    .line 252
    const/high16 v5, 0x41800000    # 16.0f

    .line 253
    .line 254
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 255
    .line 256
    const/4 v7, 0x0

    .line 257
    invoke-static {v6, v5, v7, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    const v5, 0x7f120214

    .line 262
    .line 263
    .line 264
    invoke-static {v5, v11}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    sget-object v6, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 269
    .line 270
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    check-cast v6, Landroidx/compose/material3/Typography;

    .line 275
    .line 276
    iget-object v6, v6, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 277
    .line 278
    sget-object v32, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 279
    .line 280
    const/16 v38, 0x0

    .line 281
    .line 282
    const v39, 0xfffffb

    .line 283
    .line 284
    .line 285
    const-wide/16 v28, 0x0

    .line 286
    .line 287
    const-wide/16 v30, 0x0

    .line 288
    .line 289
    const/16 v33, 0x0

    .line 290
    .line 291
    const-wide/16 v34, 0x0

    .line 292
    .line 293
    const-wide/16 v36, 0x0

    .line 294
    .line 295
    move-object/from16 v27, v6

    .line 296
    .line 297
    invoke-static/range {v27 .. v39}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 298
    .line 299
    .line 300
    move-result-object v21

    .line 301
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 302
    .line 303
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 308
    .line 309
    iget-wide v6, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 310
    .line 311
    const/16 v24, 0x0

    .line 312
    .line 313
    const v25, 0x1fff8

    .line 314
    .line 315
    .line 316
    move-wide/from16 v41, v6

    .line 317
    .line 318
    move v7, v2

    .line 319
    move-object v2, v5

    .line 320
    move-wide/from16 v4, v41

    .line 321
    .line 322
    const/4 v6, 0x0

    .line 323
    move v14, v7

    .line 324
    const-wide/16 v7, 0x0

    .line 325
    .line 326
    const/4 v9, 0x0

    .line 327
    move v15, v10

    .line 328
    const/4 v10, 0x0

    .line 329
    const-wide/16 v11, 0x0

    .line 330
    .line 331
    move/from16 v22, v13

    .line 332
    .line 333
    const/4 v13, 0x0

    .line 334
    move/from16 v23, v14

    .line 335
    .line 336
    move/from16 v27, v15

    .line 337
    .line 338
    const-wide/16 v14, 0x0

    .line 339
    .line 340
    const/16 v28, 0x100

    .line 341
    .line 342
    const/16 v16, 0x0

    .line 343
    .line 344
    move/from16 v29, v17

    .line 345
    .line 346
    const/16 v17, 0x0

    .line 347
    .line 348
    const/16 v30, 0x1

    .line 349
    .line 350
    const/16 v18, 0x0

    .line 351
    .line 352
    const/16 v31, 0xa

    .line 353
    .line 354
    const/16 v19, 0x0

    .line 355
    .line 356
    const/16 v32, 0x800

    .line 357
    .line 358
    const/16 v20, 0x0

    .line 359
    .line 360
    move/from16 v33, v23

    .line 361
    .line 362
    const/16 v23, 0x30

    .line 363
    .line 364
    move-object/from16 v22, p6

    .line 365
    .line 366
    move/from16 v0, v31

    .line 367
    .line 368
    move/from16 v40, v33

    .line 369
    .line 370
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 371
    .line 372
    .line 373
    move-object/from16 v2, v22

    .line 374
    .line 375
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 376
    .line 377
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 378
    .line 379
    new-instance v4, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 380
    .line 381
    invoke-direct {v4, v0}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 382
    .line 383
    .line 384
    const/high16 v0, 0x41c00000    # 24.0f

    .line 385
    .line 386
    const/4 v6, 0x1

    .line 387
    invoke-direct {v5, v0, v6, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 388
    .line 389
    .line 390
    move/from16 v14, v40

    .line 391
    .line 392
    and-int/lit8 v0, v14, 0x70

    .line 393
    .line 394
    const/16 v4, 0x20

    .line 395
    .line 396
    if-ne v0, v4, :cond_d

    .line 397
    .line 398
    const/4 v6, 0x1

    .line 399
    goto :goto_c

    .line 400
    :cond_d
    move/from16 v6, v26

    .line 401
    .line 402
    :goto_c
    and-int/lit16 v0, v14, 0x380

    .line 403
    .line 404
    const/16 v4, 0x100

    .line 405
    .line 406
    if-eq v0, v4, :cond_e

    .line 407
    .line 408
    move/from16 v0, v26

    .line 409
    .line 410
    goto :goto_d

    .line 411
    :cond_e
    const/4 v0, 0x1

    .line 412
    :goto_d
    or-int/2addr v0, v6

    .line 413
    const/high16 v4, 0x70000

    .line 414
    .line 415
    and-int/2addr v4, v14

    .line 416
    const/high16 v6, 0x20000

    .line 417
    .line 418
    if-ne v4, v6, :cond_f

    .line 419
    .line 420
    const/4 v6, 0x1

    .line 421
    goto :goto_e

    .line 422
    :cond_f
    move/from16 v6, v26

    .line 423
    .line 424
    :goto_e
    or-int/2addr v0, v6

    .line 425
    const v4, 0xe000

    .line 426
    .line 427
    .line 428
    and-int/2addr v4, v14

    .line 429
    const/16 v15, 0x4000

    .line 430
    .line 431
    if-ne v4, v15, :cond_10

    .line 432
    .line 433
    const/4 v6, 0x1

    .line 434
    goto :goto_f

    .line 435
    :cond_10
    move/from16 v6, v26

    .line 436
    .line 437
    :goto_f
    or-int/2addr v0, v6

    .line 438
    and-int/lit16 v4, v14, 0x1c00

    .line 439
    .line 440
    const/16 v6, 0x800

    .line 441
    .line 442
    if-eq v4, v6, :cond_11

    .line 443
    .line 444
    goto :goto_10

    .line 445
    :cond_11
    const/16 v26, 0x1

    .line 446
    .line 447
    :goto_10
    or-int v0, v0, v26

    .line 448
    .line 449
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    if-nez v0, :cond_12

    .line 454
    .line 455
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 456
    .line 457
    if-ne v4, v0, :cond_13

    .line 458
    .line 459
    :cond_12
    new-instance v7, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda23;

    .line 460
    .line 461
    move-object/from16 v8, p1

    .line 462
    .line 463
    move-object/from16 v9, p2

    .line 464
    .line 465
    move-object/from16 v12, p3

    .line 466
    .line 467
    move-object/from16 v11, p4

    .line 468
    .line 469
    move-object/from16 v10, p5

    .line 470
    .line 471
    invoke-direct/range {v7 .. v12}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda23;-><init>(Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    move-object v4, v7

    .line 478
    :cond_13
    move-object v10, v4

    .line 479
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 480
    .line 481
    const/16 v12, 0x6006

    .line 482
    .line 483
    const/16 v13, 0x1ee

    .line 484
    .line 485
    move-object v2, v3

    .line 486
    const/4 v3, 0x0

    .line 487
    const/4 v4, 0x0

    .line 488
    const/4 v6, 0x0

    .line 489
    const/4 v7, 0x0

    .line 490
    const/4 v8, 0x0

    .line 491
    const/4 v9, 0x0

    .line 492
    move-object/from16 v11, p6

    .line 493
    .line 494
    invoke-static/range {v2 .. v13}, Lkotlin/ExceptionsKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 495
    .line 496
    .line 497
    const/4 v6, 0x1

    .line 498
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 499
    .line 500
    .line 501
    goto :goto_11

    .line 502
    :cond_14
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 503
    .line 504
    .line 505
    :goto_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 506
    .line 507
    .line 508
    move-result-object v9

    .line 509
    if-eqz v9, :cond_15

    .line 510
    .line 511
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda3;

    .line 512
    .line 513
    const/4 v8, 0x3

    .line 514
    move-object/from16 v2, p1

    .line 515
    .line 516
    move-object/from16 v3, p2

    .line 517
    .line 518
    move-object/from16 v4, p3

    .line 519
    .line 520
    move-object/from16 v5, p4

    .line 521
    .line 522
    move-object/from16 v6, p5

    .line 523
    .line 524
    move/from16 v7, p7

    .line 525
    .line 526
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/Function;II)V

    .line 527
    .line 528
    .line 529
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 530
    .line 531
    :cond_15
    return-void
.end method

.method public static final HomePreferenceSection(Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;ZLorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 48

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v6, p4

    .line 6
    .line 7
    move-object/from16 v12, p5

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const v0, 0x2a9cb85b

    .line 19
    .line 20
    .line 21
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    :goto_0
    or-int v0, p6, v0

    .line 34
    .line 35
    move/from16 v5, p1

    .line 36
    .line 37
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    const/16 v7, 0x20

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v7, 0x10

    .line 47
    .line 48
    :goto_1
    or-int/2addr v0, v7

    .line 49
    move-object/from16 v7, p3

    .line 50
    .line 51
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    const/16 v9, 0x800

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v9, 0x400

    .line 61
    .line 62
    :goto_2
    or-int/2addr v0, v9

    .line 63
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_3

    .line 68
    .line 69
    const/16 v9, 0x4000

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/16 v9, 0x2000

    .line 73
    .line 74
    :goto_3
    or-int/2addr v0, v9

    .line 75
    and-int/lit16 v9, v0, 0x2493

    .line 76
    .line 77
    const/16 v13, 0x2492

    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    const/4 v15, 0x1

    .line 81
    if-eq v9, v13, :cond_4

    .line 82
    .line 83
    move v9, v15

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    move v9, v14

    .line 86
    :goto_4
    and-int/lit8 v13, v0, 0x1

    .line 87
    .line 88
    invoke-virtual {v12, v13, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_13

    .line 93
    .line 94
    const-string v9, "homePreferenceShimmerTransition"

    .line 95
    .line 96
    invoke-static {v9, v12, v14}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    instance-of v13, v1, Lorg/wikipedia/feed/personalization/homepreference/HomeContentState$Empty;

    .line 101
    .line 102
    const/16 v16, 0x20

    .line 103
    .line 104
    new-instance v8, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 105
    .line 106
    new-instance v10, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/16 v2, 0xa

    .line 109
    .line 110
    invoke-direct {v10, v2}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 111
    .line 112
    .line 113
    const/high16 v2, 0x41000000    # 8.0f

    .line 114
    .line 115
    invoke-direct {v8, v2, v15, v10}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 116
    .line 117
    .line 118
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 119
    .line 120
    const/4 v15, 0x6

    .line 121
    invoke-static {v8, v10, v12, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    iget-wide v14, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 126
    .line 127
    ushr-long v19, v14, v16

    .line 128
    .line 129
    xor-long v14, v14, v19

    .line 130
    .line 131
    long-to-int v14, v14

    .line 132
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 137
    .line 138
    invoke-static {v12, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 143
    .line 144
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 148
    .line 149
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 150
    .line 151
    .line 152
    iget-boolean v4, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 153
    .line 154
    if-eqz v4, :cond_5

    .line 155
    .line 156
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 161
    .line 162
    .line 163
    :goto_5
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 164
    .line 165
    invoke-static {v12, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 166
    .line 167
    .line 168
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 169
    .line 170
    invoke-static {v12, v15, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 178
    .line 179
    invoke-static {v12, v14, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 180
    .line 181
    .line 182
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 183
    .line 184
    invoke-static {v12, v14}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 185
    .line 186
    .line 187
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 188
    .line 189
    invoke-static {v12, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    const/high16 v10, 0x3f800000    # 1.0f

    .line 193
    .line 194
    invoke-static {v11, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const/4 v10, 0x0

    .line 199
    move-object/from16 v21, v9

    .line 200
    .line 201
    const/4 v7, 0x2

    .line 202
    const/high16 v9, 0x41000000    # 8.0f

    .line 203
    .line 204
    invoke-static {v5, v9, v10, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    const v9, 0xe000

    .line 213
    .line 214
    .line 215
    and-int/2addr v9, v0

    .line 216
    const/16 v10, 0x4000

    .line 217
    .line 218
    if-ne v9, v10, :cond_6

    .line 219
    .line 220
    const/4 v10, 0x1

    .line 221
    goto :goto_6

    .line 222
    :cond_6
    const/4 v10, 0x0

    .line 223
    :goto_6
    or-int/2addr v7, v10

    .line 224
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    move/from16 v31, v0

    .line 229
    .line 230
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 231
    .line 232
    if-nez v7, :cond_8

    .line 233
    .line 234
    if-ne v10, v0, :cond_7

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_7
    const/4 v7, 0x0

    .line 238
    goto :goto_8

    .line 239
    :cond_8
    :goto_7
    new-instance v10, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;

    .line 240
    .line 241
    const/4 v7, 0x0

    .line 242
    invoke-direct {v10, v13, v6, v3, v7}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda10;-><init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :goto_8
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 249
    .line 250
    move-object/from16 v20, v11

    .line 251
    .line 252
    const/16 v11, 0xf

    .line 253
    .line 254
    move/from16 v23, v13

    .line 255
    .line 256
    const/4 v13, 0x0

    .line 257
    invoke-static {v11, v5, v13, v10, v7}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 262
    .line 263
    sget-object v11, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 264
    .line 265
    const/16 v13, 0x30

    .line 266
    .line 267
    invoke-static {v11, v10, v12, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    move-object v11, v8

    .line 272
    iget-wide v7, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 273
    .line 274
    ushr-long v24, v7, v16

    .line 275
    .line 276
    xor-long v7, v7, v24

    .line 277
    .line 278
    long-to-int v7, v7

    .line 279
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    invoke-static {v12, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 288
    .line 289
    .line 290
    iget-boolean v13, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 291
    .line 292
    if-eqz v13, :cond_9

    .line 293
    .line 294
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 295
    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 299
    .line 300
    .line 301
    :goto_9
    invoke-static {v12, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v12, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 305
    .line 306
    .line 307
    invoke-static {v7, v12, v15, v12, v14}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v12, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 311
    .line 312
    .line 313
    const/16 v10, 0x4000

    .line 314
    .line 315
    if-ne v9, v10, :cond_a

    .line 316
    .line 317
    const/4 v1, 0x1

    .line 318
    goto :goto_a

    .line 319
    :cond_a
    const/4 v1, 0x0

    .line 320
    :goto_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    if-nez v1, :cond_c

    .line 325
    .line 326
    if-ne v2, v0, :cond_b

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_b
    const/4 v1, 0x1

    .line 330
    goto :goto_c

    .line 331
    :cond_c
    :goto_b
    new-instance v2, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda2;

    .line 332
    .line 333
    const/4 v1, 0x1

    .line 334
    invoke-direct {v2, v6, v3, v1}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :goto_c
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 341
    .line 342
    xor-int/lit8 v4, v23, 0x1

    .line 343
    .line 344
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 345
    .line 346
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 351
    .line 352
    iget-wide v7, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 353
    .line 354
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    check-cast v9, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 359
    .line 360
    iget-wide v9, v9, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 361
    .line 362
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v11

    .line 366
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 367
    .line 368
    iget-wide v13, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 369
    .line 370
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v11

    .line 374
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 375
    .line 376
    move-object/from16 v19, v2

    .line 377
    .line 378
    iget-wide v1, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 379
    .line 380
    const/4 v11, 0x0

    .line 381
    const/16 v16, 0x0

    .line 382
    .line 383
    move-object v15, v12

    .line 384
    move-object/from16 v32, v20

    .line 385
    .line 386
    move-wide/from16 v46, v1

    .line 387
    .line 388
    move v2, v4

    .line 389
    move v1, v11

    .line 390
    move-object/from16 v4, v21

    .line 391
    .line 392
    move-wide/from16 v11, v46

    .line 393
    .line 394
    invoke-static/range {v7 .. v16}, Landroidx/compose/material3/CardKt;->colors-ro_MJ88(JJJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/RadioButtonColors;

    .line 395
    .line 396
    .line 397
    move-result-object v11

    .line 398
    shr-int/lit8 v7, v31, 0x3

    .line 399
    .line 400
    and-int/lit8 v13, v7, 0xe

    .line 401
    .line 402
    const/16 v14, 0x24

    .line 403
    .line 404
    const/4 v9, 0x0

    .line 405
    move/from16 v7, p1

    .line 406
    .line 407
    move-object/from16 v12, p5

    .line 408
    .line 409
    move v10, v2

    .line 410
    move-object/from16 v8, v19

    .line 411
    .line 412
    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/CardKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/GapComposer;II)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->getTitleRes()I

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    invoke-static {v2, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 424
    .line 425
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 430
    .line 431
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 432
    .line 433
    if-eqz v23, :cond_d

    .line 434
    .line 435
    sget-object v8, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 436
    .line 437
    :goto_d
    move-object/from16 v38, v8

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_d
    sget-object v8, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 441
    .line 442
    goto :goto_d

    .line 443
    :goto_e
    const/16 v44, 0x0

    .line 444
    .line 445
    const v45, 0xfffffb

    .line 446
    .line 447
    .line 448
    const-wide/16 v34, 0x0

    .line 449
    .line 450
    const-wide/16 v36, 0x0

    .line 451
    .line 452
    const/16 v39, 0x0

    .line 453
    .line 454
    const-wide/16 v40, 0x0

    .line 455
    .line 456
    const-wide/16 v42, 0x0

    .line 457
    .line 458
    move-object/from16 v33, v2

    .line 459
    .line 460
    invoke-static/range {v33 .. v45}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 461
    .line 462
    .line 463
    move-result-object v26

    .line 464
    if-eqz v23, :cond_e

    .line 465
    .line 466
    const v2, 0x15af1e82

    .line 467
    .line 468
    .line 469
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 477
    .line 478
    iget-wide v8, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->inactiveColor:J

    .line 479
    .line 480
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 481
    .line 482
    .line 483
    :goto_f
    move-wide v9, v8

    .line 484
    goto :goto_10

    .line 485
    :cond_e
    const v2, 0x15af2621

    .line 486
    .line 487
    .line 488
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 496
    .line 497
    iget-wide v8, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 498
    .line 499
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 500
    .line 501
    .line 502
    goto :goto_f

    .line 503
    :goto_10
    const/16 v29, 0x0

    .line 504
    .line 505
    const v30, 0x1fffa

    .line 506
    .line 507
    .line 508
    const/4 v8, 0x0

    .line 509
    const/4 v11, 0x0

    .line 510
    const-wide/16 v12, 0x0

    .line 511
    .line 512
    const/4 v14, 0x0

    .line 513
    const/4 v15, 0x0

    .line 514
    const-wide/16 v16, 0x0

    .line 515
    .line 516
    const/16 v18, 0x0

    .line 517
    .line 518
    const-wide/16 v19, 0x0

    .line 519
    .line 520
    const/16 v21, 0x0

    .line 521
    .line 522
    const/16 v22, 0x0

    .line 523
    .line 524
    const/16 v23, 0x0

    .line 525
    .line 526
    const/16 v24, 0x0

    .line 527
    .line 528
    const/16 v25, 0x0

    .line 529
    .line 530
    const/16 v28, 0x0

    .line 531
    .line 532
    move-object/from16 v27, p5

    .line 533
    .line 534
    invoke-static/range {v7 .. v30}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 535
    .line 536
    .line 537
    move-object/from16 v12, v27

    .line 538
    .line 539
    const/4 v7, 0x1

    .line 540
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 541
    .line 542
    .line 543
    move-object/from16 v5, v32

    .line 544
    .line 545
    const/high16 v2, 0x3f800000    # 1.0f

    .line 546
    .line 547
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 548
    .line 549
    .line 550
    move-result-object v8

    .line 551
    const/high16 v2, 0x41c00000    # 24.0f

    .line 552
    .line 553
    const/4 v5, 0x2

    .line 554
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 555
    .line 556
    .line 557
    move-result-object v9

    .line 558
    new-instance v10, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 559
    .line 560
    new-instance v2, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 561
    .line 562
    const/16 v5, 0xa

    .line 563
    .line 564
    invoke-direct {v2, v5}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 565
    .line 566
    .line 567
    const/high16 v5, 0x41800000    # 16.0f

    .line 568
    .line 569
    invoke-direct {v10, v5, v7, v2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 570
    .line 571
    .line 572
    and-int/lit8 v2, v31, 0xe

    .line 573
    .line 574
    const/4 v5, 0x4

    .line 575
    if-eq v2, v5, :cond_f

    .line 576
    .line 577
    move v14, v1

    .line 578
    goto :goto_11

    .line 579
    :cond_f
    move v14, v7

    .line 580
    :goto_11
    move/from16 v2, v31

    .line 581
    .line 582
    and-int/lit16 v2, v2, 0x1c00

    .line 583
    .line 584
    const/16 v5, 0x800

    .line 585
    .line 586
    if-ne v2, v5, :cond_10

    .line 587
    .line 588
    move v1, v7

    .line 589
    :cond_10
    or-int/2addr v1, v14

    .line 590
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    or-int/2addr v1, v2

    .line 595
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    if-nez v1, :cond_11

    .line 600
    .line 601
    if-ne v2, v0, :cond_12

    .line 602
    .line 603
    :cond_11
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;

    .line 604
    .line 605
    const/16 v5, 0x9

    .line 606
    .line 607
    move-object/from16 v1, p0

    .line 608
    .line 609
    move-object/from16 v2, p3

    .line 610
    .line 611
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    move-object v2, v0

    .line 618
    :cond_12
    move-object v15, v2

    .line 619
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 620
    .line 621
    const/16 v17, 0x6186

    .line 622
    .line 623
    const/16 v18, 0x1ea

    .line 624
    .line 625
    move v1, v7

    .line 626
    move-object v7, v8

    .line 627
    const/4 v8, 0x0

    .line 628
    const/4 v11, 0x0

    .line 629
    const/4 v12, 0x0

    .line 630
    const/4 v13, 0x0

    .line 631
    const/4 v14, 0x0

    .line 632
    move-object/from16 v16, p5

    .line 633
    .line 634
    invoke-static/range {v7 .. v18}, Lkotlin/ExceptionsKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 635
    .line 636
    .line 637
    move-object/from16 v12, v16

    .line 638
    .line 639
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 640
    .line 641
    .line 642
    goto :goto_12

    .line 643
    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 644
    .line 645
    .line 646
    :goto_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 647
    .line 648
    .line 649
    move-result-object v8

    .line 650
    if-eqz v8, :cond_14

    .line 651
    .line 652
    new-instance v0, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;

    .line 653
    .line 654
    const/4 v2, 0x1

    .line 655
    move-object/from16 v3, p0

    .line 656
    .line 657
    move/from16 v7, p1

    .line 658
    .line 659
    move-object/from16 v4, p2

    .line 660
    .line 661
    move-object/from16 v5, p3

    .line 662
    .line 663
    move/from16 v1, p6

    .line 664
    .line 665
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/TextFieldDefaults$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 666
    .line 667
    .line 668
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 669
    .line 670
    :cond_14
    return-void
.end method
