.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZLcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 10
    .line 11
    iput-boolean p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 12
    .line 13
    iput-object p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZ)V
    .locals 1

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-boolean p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$0:Z

    iput-boolean p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZI)V
    .locals 0

    .line 17
    const/4 p5, 0x0

    iput p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-boolean p4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    iget-object v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object v8, v6

    .line 18
    check-cast v8, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 19
    .line 20
    check-cast v5, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;

    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    move-object/from16 v6, p2

    .line 27
    .line 28
    check-cast v6, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    and-int/lit8 v9, v6, 0x3

    .line 35
    .line 36
    if-eq v9, v4, :cond_0

    .line 37
    .line 38
    move v9, v7

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v9, v3

    .line 41
    :goto_0
    and-int/2addr v6, v7

    .line 42
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 43
    .line 44
    invoke-virtual {v1, v6, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_9

    .line 49
    .line 50
    iget-object v11, v5, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 51
    .line 52
    iget-object v12, v5, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->avatarMonogramCreator:Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    or-int/2addr v6, v9

    .line 63
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 68
    .line 69
    if-nez v6, :cond_1

    .line 70
    .line 71
    if-ne v9, v10, :cond_2

    .line 72
    .line 73
    :cond_1
    new-instance v9, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder$$ExternalSyntheticLambda2;

    .line 74
    .line 75
    invoke-direct {v9, v5, v8, v3}, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;Lcom/fsck/k9/ui/messagelist/MessageListItem;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    move-object v13, v9

    .line 82
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 83
    .line 84
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    or-int/2addr v3, v6

    .line 93
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-nez v3, :cond_3

    .line 98
    .line 99
    if-ne v6, v10, :cond_4

    .line 100
    .line 101
    :cond_3
    new-instance v6, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder$$ExternalSyntheticLambda2;

    .line 102
    .line 103
    invoke-direct {v6, v5, v8, v7}, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;Lcom/fsck/k9/ui/messagelist/MessageListItem;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    move-object v14, v6

    .line 110
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 111
    .line 112
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    or-int/2addr v3, v6

    .line 121
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    if-nez v3, :cond_5

    .line 126
    .line 127
    if-ne v6, v10, :cond_6

    .line 128
    .line 129
    :cond_5
    new-instance v6, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder$$ExternalSyntheticLambda2;

    .line 130
    .line 131
    invoke-direct {v6, v5, v8, v4}, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;Lcom/fsck/k9/ui/messagelist/MessageListItem;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    move-object v15, v6

    .line 138
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 139
    .line 140
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    or-int/2addr v3, v4

    .line 149
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-nez v3, :cond_7

    .line 154
    .line 155
    if-ne v4, v10, :cond_8

    .line 156
    .line 157
    :cond_7
    new-instance v4, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 158
    .line 159
    const/16 v3, 0x14

    .line 160
    .line 161
    invoke-direct {v4, v3, v5, v8}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_8
    move-object/from16 v16, v4

    .line 168
    .line 169
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 170
    .line 171
    iget-object v3, v5, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->appearance:Lkotlin/jvm/functions/Function0;

    .line 172
    .line 173
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    move-object/from16 v17, v3

    .line 178
    .line 179
    check-cast v17, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 180
    .line 181
    const v19, 0x40000008    # 2.000002f

    .line 182
    .line 183
    .line 184
    iget-boolean v9, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 185
    .line 186
    iget-boolean v10, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 187
    .line 188
    move-object/from16 v18, v1

    .line 189
    .line 190
    invoke-static/range {v8 .. v19}, Lorg/jsoup/helper/Validate;->MessageItemContent(Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZLapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/fsck/k9/ui/messagelist/MessageListAppearance;Landroidx/compose/runtime/Composer;I)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_9
    move-object/from16 v18, v1

    .line 195
    .line 196
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 197
    .line 198
    .line 199
    :goto_1
    return-object v2

    .line 200
    :pswitch_0
    check-cast v6, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;

    .line 201
    .line 202
    check-cast v5, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 203
    .line 204
    move-object/from16 v1, p1

    .line 205
    .line 206
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 207
    .line 208
    move-object/from16 v8, p2

    .line 209
    .line 210
    check-cast v8, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    and-int/lit8 v9, v8, 0x3

    .line 217
    .line 218
    if-eq v9, v4, :cond_a

    .line 219
    .line 220
    move v3, v7

    .line 221
    :cond_a
    and-int/lit8 v4, v8, 0x1

    .line 222
    .line 223
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 224
    .line 225
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_b

    .line 230
    .line 231
    iget-object v3, v6, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->themeProvider:Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 232
    .line 233
    new-instance v4, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;

    .line 234
    .line 235
    iget-boolean v7, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 236
    .line 237
    iget-boolean v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 238
    .line 239
    invoke-direct {v4, v5, v7, v0, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZLcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;)V

    .line 240
    .line 241
    .line 242
    const v0, 0x40f3d73d

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const/4 v4, 0x6

    .line 250
    check-cast v3, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 251
    .line 252
    invoke-virtual {v3, v0, v1, v4}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 257
    .line 258
    .line 259
    :goto_2
    return-object v2

    .line 260
    :pswitch_1
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 261
    .line 262
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 263
    .line 264
    move-object/from16 v9, p1

    .line 265
    .line 266
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 267
    .line 268
    move-object/from16 v1, p2

    .line 269
    .line 270
    check-cast v1, Ljava/lang/Integer;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    move-object v7, v5

    .line 280
    iget-boolean v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 281
    .line 282
    iget-boolean v8, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/SwitchKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 283
    .line 284
    invoke-static/range {v5 .. v10}, Landroidx/work/Operation$State;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 285
    .line 286
    .line 287
    return-object v2

    .line 288
    nop

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
