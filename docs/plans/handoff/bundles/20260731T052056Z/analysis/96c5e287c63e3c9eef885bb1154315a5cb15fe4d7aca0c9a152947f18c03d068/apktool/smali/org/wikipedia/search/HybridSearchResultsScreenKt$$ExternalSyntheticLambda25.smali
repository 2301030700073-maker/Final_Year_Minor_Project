.class public final synthetic Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;->f$0:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 10
    .line 11
    const/16 v5, 0x10

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    iget-object v8, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;->f$1:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;->f$0:Ljava/util/ArrayList;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 25
    .line 26
    move-object/from16 v13, p2

    .line 27
    .line 28
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    move-object/from16 v9, p3

    .line 31
    .line 32
    check-cast v9, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    and-int/lit8 v1, v9, 0x11

    .line 42
    .line 43
    if-eq v1, v5, :cond_0

    .line 44
    .line 45
    move v1, v6

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, v7

    .line 48
    :goto_0
    and-int/lit8 v5, v9, 0x1

    .line 49
    .line 50
    invoke-virtual {v13, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    const v0, 0x67cff7c2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const/16 v19, 0x8

    .line 81
    .line 82
    const/high16 v15, 0x41800000    # 16.0f

    .line 83
    .line 84
    const/high16 v16, 0x41000000    # 8.0f

    .line 85
    .line 86
    move/from16 v17, v15

    .line 87
    .line 88
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 93
    .line 94
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 99
    .line 100
    iget-wide v11, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 101
    .line 102
    const/16 v14, 0x30

    .line 103
    .line 104
    const/4 v15, 0x0

    .line 105
    const/high16 v10, 0x3f800000    # 1.0f

    .line 106
    .line 107
    invoke-static/range {v9 .. v15}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    const v0, 0x67d44eea

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-object v2

    .line 128
    :pswitch_0
    move-object/from16 v1, p1

    .line 129
    .line 130
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 131
    .line 132
    move-object/from16 v13, p2

    .line 133
    .line 134
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 135
    .line 136
    move-object/from16 v9, p3

    .line 137
    .line 138
    check-cast v9, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    and-int/lit8 v1, v9, 0x11

    .line 148
    .line 149
    if-eq v1, v5, :cond_3

    .line 150
    .line 151
    move v1, v6

    .line 152
    goto :goto_2

    .line 153
    :cond_3
    move v1, v7

    .line 154
    :goto_2
    and-int/lit8 v5, v9, 0x1

    .line 155
    .line 156
    invoke-virtual {v13, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_4

    .line 167
    .line 168
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_4

    .line 173
    .line 174
    const v0, -0x7d2085c8

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 178
    .line 179
    .line 180
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    const/16 v18, 0x0

    .line 185
    .line 186
    const/16 v19, 0x8

    .line 187
    .line 188
    const/high16 v15, 0x41800000    # 16.0f

    .line 189
    .line 190
    const/high16 v16, 0x41400000    # 12.0f

    .line 191
    .line 192
    move/from16 v17, v15

    .line 193
    .line 194
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 199
    .line 200
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 205
    .line 206
    iget-wide v11, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 207
    .line 208
    const/16 v14, 0x30

    .line 209
    .line 210
    const/4 v15, 0x0

    .line 211
    const/high16 v10, 0x3f800000    # 1.0f

    .line 212
    .line 213
    invoke-static/range {v9 .. v15}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_4
    const v0, -0x7d1c2adf

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 231
    .line 232
    .line 233
    :goto_3
    return-object v2

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
