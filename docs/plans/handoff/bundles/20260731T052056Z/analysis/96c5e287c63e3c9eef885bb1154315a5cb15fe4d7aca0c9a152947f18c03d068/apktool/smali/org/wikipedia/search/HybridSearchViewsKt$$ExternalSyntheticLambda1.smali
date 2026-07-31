.class public final synthetic Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$2:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 14
    iput p4, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, v0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$2:I

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    check-cast v7, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    and-int/lit8 v8, v7, 0x3

    .line 28
    .line 29
    if-eq v8, v3, :cond_0

    .line 30
    .line 31
    move v2, v5

    .line 32
    :cond_0
    and-int/lit8 v3, v7, 0x1

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 47
    .line 48
    iget-wide v9, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 49
    .line 50
    new-instance v2, Landroidx/compose/ui/text/style/TextAlign;

    .line 51
    .line 52
    invoke-direct {v2, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const/16 v29, 0x0

    .line 56
    .line 57
    const v30, 0x3fbf8

    .line 58
    .line 59
    .line 60
    iget-object v7, v0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v8, v0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    const-wide/16 v12, 0x0

    .line 66
    .line 67
    const/4 v14, 0x0

    .line 68
    const/4 v15, 0x0

    .line 69
    const-wide/16 v16, 0x0

    .line 70
    .line 71
    const-wide/16 v19, 0x0

    .line 72
    .line 73
    const/16 v21, 0x0

    .line 74
    .line 75
    const/16 v22, 0x0

    .line 76
    .line 77
    const/16 v23, 0x0

    .line 78
    .line 79
    const/16 v24, 0x0

    .line 80
    .line 81
    const/16 v25, 0x0

    .line 82
    .line 83
    const/16 v26, 0x0

    .line 84
    .line 85
    const/16 v28, 0x0

    .line 86
    .line 87
    move-object/from16 v27, v1

    .line 88
    .line 89
    move-object/from16 v18, v2

    .line 90
    .line 91
    invoke-static/range {v7 .. v30}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    move-object/from16 v27, v1

    .line 96
    .line 97
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-object v4

    .line 101
    :pswitch_0
    move-object/from16 v1, p1

    .line 102
    .line 103
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 104
    .line 105
    move-object/from16 v7, p2

    .line 106
    .line 107
    check-cast v7, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    and-int/lit8 v8, v7, 0x3

    .line 114
    .line 115
    if-eq v8, v3, :cond_2

    .line 116
    .line 117
    move v2, v5

    .line 118
    :cond_2
    and-int/lit8 v3, v7, 0x1

    .line 119
    .line 120
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 133
    .line 134
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 135
    .line 136
    new-instance v5, Landroidx/compose/ui/text/style/TextAlign;

    .line 137
    .line 138
    invoke-direct {v5, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 139
    .line 140
    .line 141
    const/16 v50, 0x0

    .line 142
    .line 143
    const v51, 0x3fbf8

    .line 144
    .line 145
    .line 146
    iget-object v6, v0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v0, v0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 149
    .line 150
    const/16 v32, 0x0

    .line 151
    .line 152
    const-wide/16 v33, 0x0

    .line 153
    .line 154
    const/16 v35, 0x0

    .line 155
    .line 156
    const/16 v36, 0x0

    .line 157
    .line 158
    const-wide/16 v37, 0x0

    .line 159
    .line 160
    const-wide/16 v40, 0x0

    .line 161
    .line 162
    const/16 v42, 0x0

    .line 163
    .line 164
    const/16 v43, 0x0

    .line 165
    .line 166
    const/16 v44, 0x0

    .line 167
    .line 168
    const/16 v45, 0x0

    .line 169
    .line 170
    const/16 v46, 0x0

    .line 171
    .line 172
    const/16 v47, 0x0

    .line 173
    .line 174
    const/16 v49, 0x0

    .line 175
    .line 176
    move-object/from16 v29, v0

    .line 177
    .line 178
    move-object/from16 v48, v1

    .line 179
    .line 180
    move-wide/from16 v30, v2

    .line 181
    .line 182
    move-object/from16 v39, v5

    .line 183
    .line 184
    move-object/from16 v28, v6

    .line 185
    .line 186
    invoke-static/range {v28 .. v51}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_3
    move-object/from16 v48, v1

    .line 191
    .line 192
    invoke-virtual/range {v48 .. v48}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 193
    .line 194
    .line 195
    :goto_1
    return-object v4

    .line 196
    :pswitch_1
    move-object/from16 v1, p1

    .line 197
    .line 198
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 199
    .line 200
    move-object/from16 v2, p2

    .line 201
    .line 202
    check-cast v2, Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    or-int/lit8 v2, v6, 0x1

    .line 208
    .line 209
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    iget-object v3, v0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    iget-object v0, v0, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v2, v1, v3, v0}, Lorg/wikipedia/search/NoSearchResultsKt;->SearchResultTitleOnlyBottomContent(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-object v4

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
