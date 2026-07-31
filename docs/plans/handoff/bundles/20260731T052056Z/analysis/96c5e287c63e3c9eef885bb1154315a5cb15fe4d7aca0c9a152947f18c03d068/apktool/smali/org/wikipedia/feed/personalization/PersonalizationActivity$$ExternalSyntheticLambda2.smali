.class public final synthetic Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/personalization/PersonalizationActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;ZLjava/util/List;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/feed/personalization/PersonalizationActivity;

    .line 4
    .line 5
    iput-boolean p2, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->f$1:Z

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-boolean v4, v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->f$1:Z

    .line 9
    .line 10
    iget-object v5, v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/feed/personalization/PersonalizationActivity;

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    move-object/from16 v9, p2

    .line 23
    .line 24
    check-cast v9, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    sget v10, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->$r8$clinit:I

    .line 31
    .line 32
    and-int/lit8 v10, v9, 0x3

    .line 33
    .line 34
    if-eq v10, v6, :cond_0

    .line 35
    .line 36
    move v10, v8

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v10, v7

    .line 39
    :goto_0
    and-int/2addr v9, v8

    .line 40
    invoke-virtual {v1, v9, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-eqz v9, :cond_a

    .line 45
    .line 46
    iget-object v9, v5, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 47
    .line 48
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    move-object v10, v9

    .line 53
    check-cast v10, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 54
    .line 55
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 56
    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    const v3, 0x5007f287

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    if-nez v3, :cond_1

    .line 74
    .line 75
    if-ne v11, v9, :cond_2

    .line 76
    .line 77
    :cond_1
    new-instance v11, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;

    .line 78
    .line 79
    invoke-direct {v11, v5, v7}, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    move-object v3, v11

    .line 86
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 87
    .line 88
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 89
    .line 90
    .line 91
    :goto_1
    move-object v15, v3

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const v11, 0x5008e7dc

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :goto_2
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    if-nez v3, :cond_4

    .line 112
    .line 113
    if-ne v7, v9, :cond_5

    .line 114
    .line 115
    :cond_4
    new-instance v7, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;

    .line 116
    .line 117
    invoke-direct {v7, v5, v8}, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    move-object v12, v7

    .line 124
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 125
    .line 126
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    or-int/2addr v3, v7

    .line 135
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    if-nez v3, :cond_6

    .line 140
    .line 141
    if-ne v7, v9, :cond_7

    .line 142
    .line 143
    :cond_6
    new-instance v7, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;

    .line 144
    .line 145
    const/4 v3, 0x5

    .line 146
    invoke-direct {v7, v4, v5, v3}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;-><init>(ZLjava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    move-object v13, v7

    .line 153
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 154
    .line 155
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-nez v3, :cond_8

    .line 164
    .line 165
    if-ne v4, v9, :cond_9

    .line 166
    .line 167
    :cond_8
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;

    .line 168
    .line 169
    invoke-direct {v4, v5, v6}, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_9
    move-object v14, v4

    .line 176
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 177
    .line 178
    const/16 v17, 0x0

    .line 179
    .line 180
    const/4 v9, 0x0

    .line 181
    iget-object v11, v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 182
    .line 183
    move-object/from16 v16, v1

    .line 184
    .line 185
    invoke-static/range {v9 .. v17}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt;->PersonalizationScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_a
    move-object/from16 v16, v1

    .line 190
    .line 191
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 192
    .line 193
    .line 194
    :goto_3
    return-object v2

    .line 195
    :pswitch_0
    move-object/from16 v1, p1

    .line 196
    .line 197
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 198
    .line 199
    move-object/from16 v9, p2

    .line 200
    .line 201
    check-cast v9, Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    sget v10, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->$r8$clinit:I

    .line 208
    .line 209
    and-int/lit8 v10, v9, 0x3

    .line 210
    .line 211
    if-eq v10, v6, :cond_b

    .line 212
    .line 213
    move v7, v8

    .line 214
    :cond_b
    and-int/lit8 v6, v9, 0x1

    .line 215
    .line 216
    invoke-virtual {v1, v6, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_c

    .line 221
    .line 222
    new-instance v6, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;

    .line 223
    .line 224
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 225
    .line 226
    invoke-direct {v6, v5, v4, v0, v8}, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;ZLjava/util/List;I)V

    .line 227
    .line 228
    .line 229
    const v0, 0x5d45f501

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v6, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const/16 v4, 0x30

    .line 237
    .line 238
    invoke-static {v3, v0, v1, v4, v8}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 243
    .line 244
    .line 245
    :goto_4
    return-object v2

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
