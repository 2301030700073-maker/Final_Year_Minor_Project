.class public final synthetic Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v0, v0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/runtime/MutableState;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 21
    .line 22
    move-object/from16 v11, p2

    .line 23
    .line 24
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    move-object/from16 v7, p3

    .line 27
    .line 28
    check-cast v7, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    and-int/lit8 v1, v7, 0x11

    .line 38
    .line 39
    if-eq v1, v4, :cond_0

    .line 40
    .line 41
    move v1, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v1, v6

    .line 44
    :goto_0
    and-int/lit8 v4, v7, 0x1

    .line 45
    .line 46
    invoke-virtual {v11, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lorg/wikipedia/settings/dev/playground/ENTRY;

    .line 57
    .line 58
    sget-object v4, Lorg/wikipedia/settings/dev/playground/ENTRY;->RANDOM_BULK:Lorg/wikipedia/settings/dev/playground/ENTRY;

    .line 59
    .line 60
    if-ne v1, v4, :cond_1

    .line 61
    .line 62
    move v10, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v10, v6

    .line 65
    :goto_1
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-ne v1, v3, :cond_2

    .line 70
    .line 71
    new-instance v1, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;

    .line 72
    .line 73
    const/4 v3, 0x7

    .line 74
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    move-object v8, v1

    .line 81
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    const/16 v12, 0x36

    .line 85
    .line 86
    const-string v7, "Random Bulk Entries"

    .line 87
    .line 88
    invoke-static/range {v7 .. v12}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->ChipButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-object v2

    .line 96
    :pswitch_0
    move-object/from16 v1, p1

    .line 97
    .line 98
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 99
    .line 100
    move-object/from16 v11, p2

    .line 101
    .line 102
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 103
    .line 104
    move-object/from16 v7, p3

    .line 105
    .line 106
    check-cast v7, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    and-int/lit8 v1, v7, 0x11

    .line 116
    .line 117
    if-eq v1, v4, :cond_4

    .line 118
    .line 119
    move v1, v5

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move v1, v6

    .line 122
    :goto_3
    and-int/lit8 v4, v7, 0x1

    .line 123
    .line 124
    invoke-virtual {v11, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Lorg/wikipedia/settings/dev/playground/ENTRY;

    .line 135
    .line 136
    sget-object v4, Lorg/wikipedia/settings/dev/playground/ENTRY;->SINGLE:Lorg/wikipedia/settings/dev/playground/ENTRY;

    .line 137
    .line 138
    if-ne v1, v4, :cond_5

    .line 139
    .line 140
    move v10, v5

    .line 141
    goto :goto_4

    .line 142
    :cond_5
    move v10, v6

    .line 143
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-ne v1, v3, :cond_6

    .line 148
    .line 149
    new-instance v1, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;

    .line 150
    .line 151
    const/16 v3, 0x8

    .line 152
    .line 153
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    move-object v8, v1

    .line 160
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 161
    .line 162
    const/4 v9, 0x0

    .line 163
    const/16 v12, 0x36

    .line 164
    .line 165
    const-string v7, "Single"

    .line 166
    .line 167
    invoke-static/range {v7 .. v12}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->ChipButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    :goto_5
    return-object v2

    .line 175
    :pswitch_1
    move-object/from16 v1, p1

    .line 176
    .line 177
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 178
    .line 179
    move-object/from16 v13, p2

    .line 180
    .line 181
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 182
    .line 183
    move-object/from16 v7, p3

    .line 184
    .line 185
    check-cast v7, Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    and-int/lit8 v1, v7, 0x11

    .line 195
    .line 196
    if-eq v1, v4, :cond_8

    .line 197
    .line 198
    move v6, v5

    .line 199
    :cond_8
    and-int/lit8 v1, v7, 0x1

    .line 200
    .line 201
    invoke-virtual {v13, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_a

    .line 206
    .line 207
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-ne v1, v3, :cond_9

    .line 212
    .line 213
    new-instance v1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 214
    .line 215
    const/16 v3, 0xb

    .line 216
    .line 217
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_9
    move-object v7, v1

    .line 224
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 225
    .line 226
    sget-object v12, Lorg/wikipedia/compose/components/TabsBoxKt;->lambda$207530180:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 227
    .line 228
    const v14, 0x180006

    .line 229
    .line 230
    .line 231
    const/16 v15, 0x3e

    .line 232
    .line 233
    const/4 v8, 0x0

    .line 234
    const/4 v9, 0x0

    .line 235
    const/4 v10, 0x0

    .line 236
    const/4 v11, 0x0

    .line 237
    invoke-static/range {v7 .. v15}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 242
    .line 243
    .line 244
    :goto_6
    return-object v2

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
