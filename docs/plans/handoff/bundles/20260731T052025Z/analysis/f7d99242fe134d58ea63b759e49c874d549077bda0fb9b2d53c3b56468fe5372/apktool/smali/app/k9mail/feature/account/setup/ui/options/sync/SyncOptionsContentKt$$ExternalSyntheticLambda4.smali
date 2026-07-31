.class public final synthetic Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;->f$0:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;->f$2:Landroid/content/res/Resources;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 11
    .line 12
    iget-object v6, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;->f$2:Landroid/content/res/Resources;

    .line 13
    .line 14
    iget-object v7, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda4;->f$0:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 17
    .line 18
    const/4 v8, 0x0

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
    move-object/from16 v9, p2

    .line 27
    .line 28
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 29
    .line 30
    move-object/from16 v10, p3

    .line 31
    .line 32
    check-cast v10, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    and-int/lit8 v1, v10, 0x11

    .line 42
    .line 43
    if-eq v1, v3, :cond_0

    .line 44
    .line 45
    move v1, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, v8

    .line 48
    :goto_0
    and-int/lit8 v3, v10, 0x1

    .line 49
    .line 50
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 51
    .line 52
    invoke-virtual {v9, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    sget-object v1, Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;->Companion:Lcom/bumptech/glide/GlideBuilder$1;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v1, Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 64
    .line 65
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    iget-object v11, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 70
    .line 71
    const v0, 0x7f12018e

    .line 72
    .line 73
    .line 74
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    invoke-static {v9}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 79
    .line 80
    .line 81
    move-result-object v16

    .line 82
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-nez v0, :cond_1

    .line 91
    .line 92
    if-ne v1, v5, :cond_2

    .line 93
    .line 94
    :cond_1
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    const/16 v0, 0xd

    .line 97
    .line 98
    invoke-direct {v1, v0, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    move-object v12, v1

    .line 105
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 106
    .line 107
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-nez v0, :cond_3

    .line 116
    .line 117
    if-ne v1, v5, :cond_4

    .line 118
    .line 119
    :cond_3
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 120
    .line 121
    invoke-direct {v1, v8, v6}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    move-object v14, v1

    .line 128
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 129
    .line 130
    const/16 v18, 0x0

    .line 131
    .line 132
    const/16 v19, 0x8

    .line 133
    .line 134
    const/4 v13, 0x0

    .line 135
    move-object/from16 v17, v9

    .line 136
    .line 137
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    move-object/from16 v17, v9

    .line 142
    .line 143
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-object v2

    .line 147
    :pswitch_0
    move-object/from16 v1, p1

    .line 148
    .line 149
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 150
    .line 151
    move-object/from16 v9, p2

    .line 152
    .line 153
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 154
    .line 155
    move-object/from16 v10, p3

    .line 156
    .line 157
    check-cast v10, Ljava/lang/Integer;

    .line 158
    .line 159
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    and-int/lit8 v1, v10, 0x11

    .line 167
    .line 168
    if-eq v1, v3, :cond_6

    .line 169
    .line 170
    move v8, v4

    .line 171
    :cond_6
    and-int/lit8 v1, v10, 0x1

    .line 172
    .line 173
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 174
    .line 175
    invoke-virtual {v9, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_b

    .line 180
    .line 181
    sget-object v1, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-object v1, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 187
    .line 188
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    iget-object v11, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 193
    .line 194
    const v0, 0x7f12018a

    .line 195
    .line 196
    .line 197
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    invoke-static {v9}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 202
    .line 203
    .line 204
    move-result-object v16

    .line 205
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-nez v0, :cond_7

    .line 214
    .line 215
    if-ne v1, v5, :cond_8

    .line 216
    .line 217
    :cond_7
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    const/16 v0, 0xc

    .line 220
    .line 221
    invoke-direct {v1, v0, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_8
    move-object v12, v1

    .line 228
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 229
    .line 230
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-nez v0, :cond_9

    .line 239
    .line 240
    if-ne v1, v5, :cond_a

    .line 241
    .line 242
    :cond_9
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 243
    .line 244
    const/4 v0, 0x5

    .line 245
    invoke-direct {v1, v0, v6}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_a
    move-object v14, v1

    .line 252
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 253
    .line 254
    const/16 v18, 0x0

    .line 255
    .line 256
    const/16 v19, 0x8

    .line 257
    .line 258
    const/4 v13, 0x0

    .line 259
    move-object/from16 v17, v9

    .line 260
    .line 261
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_b
    move-object/from16 v17, v9

    .line 266
    .line 267
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 268
    .line 269
    .line 270
    :goto_2
    return-object v2

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
