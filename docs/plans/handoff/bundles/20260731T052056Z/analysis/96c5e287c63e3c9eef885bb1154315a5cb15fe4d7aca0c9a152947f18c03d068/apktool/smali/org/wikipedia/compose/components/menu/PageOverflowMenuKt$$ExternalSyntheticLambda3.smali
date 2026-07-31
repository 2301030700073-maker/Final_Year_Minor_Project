.class public final synthetic Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/runtime/MutableState;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;->$r8$classId:I

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
    iget-object v5, v0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;->f$1:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x1

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 23
    .line 24
    move-object/from16 v8, p2

    .line 25
    .line 26
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    move-object/from16 v9, p3

    .line 29
    .line 30
    check-cast v9, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v1, v9, 0x11

    .line 40
    .line 41
    if-eq v1, v4, :cond_0

    .line 42
    .line 43
    move v1, v7

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v1, v6

    .line 46
    :goto_0
    and-int/lit8 v4, v9, 0x1

    .line 47
    .line 48
    invoke-virtual {v8, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lorg/wikipedia/donate/donationreminder/DonationReminderDropDownMenuItem;

    .line 69
    .line 70
    new-instance v4, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda12;

    .line 71
    .line 72
    invoke-direct {v4, v1, v6}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda12;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderDropDownMenuItem;I)V

    .line 73
    .line 74
    .line 75
    const v9, 0x716a731f

    .line 76
    .line 77
    .line 78
    invoke-static {v9, v4, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    if-nez v9, :cond_1

    .line 91
    .line 92
    if-ne v10, v3, :cond_2

    .line 93
    .line 94
    :cond_1
    new-instance v10, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    const/16 v9, 0xb

    .line 97
    .line 98
    invoke-direct {v10, v9, v1, v5}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    move-object v9, v10

    .line 105
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 106
    .line 107
    new-instance v10, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda12;

    .line 108
    .line 109
    invoke-direct {v10, v1, v7}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt$$ExternalSyntheticLambda12;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderDropDownMenuItem;I)V

    .line 110
    .line 111
    .line 112
    const v1, -0x1dd38104

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v10, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    const/16 v17, 0xc06

    .line 120
    .line 121
    const/16 v18, 0x1f4

    .line 122
    .line 123
    const/4 v10, 0x0

    .line 124
    const/4 v12, 0x0

    .line 125
    const/4 v13, 0x0

    .line 126
    const/4 v14, 0x0

    .line 127
    const/4 v15, 0x0

    .line 128
    move-object/from16 v16, v8

    .line 129
    .line 130
    move-object v8, v4

    .line 131
    invoke-static/range {v8 .. v18}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 132
    .line 133
    .line 134
    move-object/from16 v8, v16

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    move-object/from16 v16, v8

    .line 138
    .line 139
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 140
    .line 141
    .line 142
    :cond_4
    return-object v2

    .line 143
    :pswitch_0
    move-object/from16 v1, p1

    .line 144
    .line 145
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 146
    .line 147
    move-object/from16 v8, p2

    .line 148
    .line 149
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 150
    .line 151
    move-object/from16 v9, p3

    .line 152
    .line 153
    check-cast v9, Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    and-int/lit8 v1, v9, 0x11

    .line 163
    .line 164
    if-eq v1, v4, :cond_5

    .line 165
    .line 166
    move v1, v7

    .line 167
    goto :goto_2

    .line 168
    :cond_5
    move v1, v6

    .line 169
    :goto_2
    and-int/lit8 v4, v9, 0x1

    .line 170
    .line 171
    invoke-virtual {v8, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Lkotlin/Pair;

    .line 192
    .line 193
    iget-object v4, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v4, Ljava/lang/String;

    .line 196
    .line 197
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 200
    .line 201
    new-instance v9, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;

    .line 202
    .line 203
    const/4 v10, 0x4

    .line 204
    invoke-direct {v9, v4, v10, v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;IB)V

    .line 205
    .line 206
    .line 207
    const v4, 0x3aeb85b7

    .line 208
    .line 209
    .line 210
    invoke-static {v4, v9, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    or-int/2addr v9, v10

    .line 223
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    if-nez v9, :cond_6

    .line 228
    .line 229
    if-ne v10, v3, :cond_7

    .line 230
    .line 231
    :cond_6
    new-instance v10, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;

    .line 232
    .line 233
    invoke-direct {v10, v1, v5, v7}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda32;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    :cond_7
    move-object v9, v10

    .line 240
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 241
    .line 242
    new-instance v15, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 243
    .line 244
    const/high16 v1, 0x41800000    # 16.0f

    .line 245
    .line 246
    const/high16 v10, 0x41000000    # 8.0f

    .line 247
    .line 248
    invoke-direct {v15, v1, v10, v1, v10}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 249
    .line 250
    .line 251
    const v17, 0xc00006

    .line 252
    .line 253
    .line 254
    const/16 v18, 0x17c

    .line 255
    .line 256
    const/4 v10, 0x0

    .line 257
    const/4 v11, 0x0

    .line 258
    const/4 v12, 0x0

    .line 259
    const/4 v13, 0x0

    .line 260
    const/4 v14, 0x0

    .line 261
    move-object/from16 v16, v8

    .line 262
    .line 263
    move-object v8, v4

    .line 264
    invoke-static/range {v8 .. v18}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    .line 265
    .line 266
    .line 267
    move-object/from16 v8, v16

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_8
    move-object/from16 v16, v8

    .line 271
    .line 272
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 273
    .line 274
    .line 275
    :cond_9
    return-object v2

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
