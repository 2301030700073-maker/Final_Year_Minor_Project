.class public final synthetic Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v15, p1

    .line 17
    .line 18
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sget v7, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 29
    .line 30
    and-int/lit8 v7, v1, 0x3

    .line 31
    .line 32
    if-eq v7, v5, :cond_0

    .line 33
    .line 34
    move v7, v6

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v7, v4

    .line 37
    :goto_0
    and-int/2addr v1, v6

    .line 38
    invoke-virtual {v15, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_f

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->getViewModel()Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    if-ne v7, v9, :cond_2

    .line 61
    .line 62
    :cond_1
    new-instance v7, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    invoke-direct {v7, v0, v4}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 71
    .line 72
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    if-ne v4, v9, :cond_4

    .line 83
    .line 84
    :cond_3
    new-instance v4, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;

    .line 85
    .line 86
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    new-instance v1, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 95
    .line 96
    const/16 v6, 0xc

    .line 97
    .line 98
    invoke-direct {v1, v7, v4, v3, v6}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v3, :cond_5

    .line 110
    .line 111
    if-ne v4, v9, :cond_6

    .line 112
    .line 113
    :cond_5
    new-instance v4, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;

    .line 114
    .line 115
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    move-object v10, v4

    .line 122
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 123
    .line 124
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-nez v3, :cond_7

    .line 133
    .line 134
    if-ne v4, v9, :cond_8

    .line 135
    .line 136
    :cond_7
    new-instance v4, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 137
    .line 138
    const/4 v3, 0x6

    .line 139
    invoke-direct {v4, v3, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_8
    move-object v11, v4

    .line 146
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-nez v3, :cond_9

    .line 157
    .line 158
    if-ne v4, v9, :cond_a

    .line 159
    .line 160
    :cond_9
    new-instance v4, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;

    .line 161
    .line 162
    const/4 v3, 0x3

    .line 163
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_a
    move-object v12, v4

    .line 170
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 171
    .line 172
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-nez v3, :cond_b

    .line 181
    .line 182
    if-ne v4, v9, :cond_c

    .line 183
    .line 184
    :cond_b
    new-instance v4, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;

    .line 185
    .line 186
    const/4 v3, 0x4

    .line 187
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_c
    move-object v13, v4

    .line 194
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 195
    .line 196
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    if-nez v3, :cond_d

    .line 205
    .line 206
    if-ne v4, v9, :cond_e

    .line 207
    .line 208
    :cond_d
    new-instance v4, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;

    .line 209
    .line 210
    const/4 v3, 0x5

    .line 211
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_e
    move-object v14, v4

    .line 218
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 219
    .line 220
    const/16 v16, 0x0

    .line 221
    .line 222
    const/4 v7, 0x0

    .line 223
    move-object v9, v1

    .line 224
    invoke-static/range {v7 .. v16}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt;->DonationReminderScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 229
    .line 230
    .line 231
    :goto_1
    return-object v2

    .line 232
    :pswitch_0
    move-object/from16 v1, p1

    .line 233
    .line 234
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 235
    .line 236
    move-object/from16 v7, p2

    .line 237
    .line 238
    check-cast v7, Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    sget v8, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 245
    .line 246
    and-int/lit8 v8, v7, 0x3

    .line 247
    .line 248
    if-eq v8, v5, :cond_10

    .line 249
    .line 250
    move v4, v6

    .line 251
    :cond_10
    and-int/lit8 v5, v7, 0x1

    .line 252
    .line 253
    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_11

    .line 258
    .line 259
    new-instance v4, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda0;

    .line 260
    .line 261
    invoke-direct {v4, v0, v6}, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;I)V

    .line 262
    .line 263
    .line 264
    const v0, 0x590d1e34

    .line 265
    .line 266
    .line 267
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const/16 v4, 0x30

    .line 272
    .line 273
    invoke-static {v3, v0, v1, v4, v6}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 278
    .line 279
    .line 280
    :goto_2
    return-object v2

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
