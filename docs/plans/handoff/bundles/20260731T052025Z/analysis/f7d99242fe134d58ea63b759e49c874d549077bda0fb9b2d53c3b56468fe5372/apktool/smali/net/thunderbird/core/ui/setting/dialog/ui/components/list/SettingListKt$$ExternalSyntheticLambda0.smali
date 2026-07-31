.class public final synthetic Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/core/ui/setting/SettingValue$IconList;Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/core/common/action/SwipeActions;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;)V
    .locals 1

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    iget-object v8, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v9, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 23
    .line 24
    check-cast v9, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;

    .line 25
    .line 26
    check-cast v8, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object v3, v1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget v6, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 48
    .line 49
    sub-float/2addr v4, v6

    .line 50
    iget-object v6, v9, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->state:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 51
    .line 52
    iget-object v7, v6, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 53
    .line 54
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    add-float v9, v7, v4

    .line 59
    .line 60
    cmpl-float v10, v9, v2

    .line 61
    .line 62
    if-lez v10, :cond_0

    .line 63
    .line 64
    move v9, v2

    .line 65
    :cond_0
    iget-object v10, v6, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 66
    .line 67
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 68
    .line 69
    .line 70
    iget-object v9, v6, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 71
    .line 72
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    sub-float/2addr v7, v9

    .line 77
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iput v3, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 92
    .line 93
    iget-object v0, v1, Landroidx/compose/animation/core/AnimationScope;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 94
    .line 95
    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 96
    .line 97
    iget-object v3, v1, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 98
    .line 99
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/Number;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 110
    .line 111
    sub-float/2addr v4, v7

    .line 112
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/high16 v3, 0x3f000000    # 0.5f

    .line 117
    .line 118
    cmpl-float v0, v0, v3

    .line 119
    .line 120
    if-lez v0, :cond_1

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 123
    .line 124
    .line 125
    iget-object v0, v6, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 128
    .line 129
    .line 130
    :cond_1
    return-object v5

    .line 131
    :pswitch_0
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/impl/ui/MessageReaderViewModel;

    .line 132
    .line 133
    check-cast v9, Ljava/util/ArrayList;

    .line 134
    .line 135
    check-cast v8, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$Event$UpdateAttachments;

    .line 136
    .line 137
    move-object/from16 v1, p1

    .line 138
    .line 139
    check-cast v1, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$State;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/reader/impl/ui/MessageReaderViewModel;->attachmentViewInfoMapper:Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;

    .line 145
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    move-object v5, v4

    .line 166
    check-cast v5, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 167
    .line 168
    iget-boolean v5, v5, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 169
    .line 170
    if-nez v5, :cond_2

    .line 171
    .line 172
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_8

    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 200
    .line 201
    iget-object v4, v8, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$Event$UpdateAttachments;->extraNonInlineAttachments:Ljava/util/List;

    .line 202
    .line 203
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v18

    .line 207
    move-object v4, v0

    .line 208
    check-cast v4, Lcom/fsck/k9/mailstore/DefaultAttachmentViewInfoMapper;

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    iget-boolean v5, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 217
    .line 218
    iget-object v10, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->uri:Ljava/lang/String;

    .line 219
    .line 220
    iget-wide v14, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    .line 221
    .line 222
    const-wide/16 v6, -0x1

    .line 223
    .line 224
    cmp-long v6, v14, v6

    .line 225
    .line 226
    if-nez v6, :cond_4

    .line 227
    .line 228
    const-string v4, ""

    .line 229
    .line 230
    :goto_2
    move-object v12, v4

    .line 231
    goto :goto_3

    .line 232
    :cond_4
    iget-object v4, v4, Lcom/fsck/k9/mailstore/DefaultAttachmentViewInfoMapper;->sizeFormatter:Landroidx/room/InvalidationTracker$implementation$1;

    .line 233
    .line 234
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v4, v6}, Landroidx/room/InvalidationTracker$implementation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    check-cast v4, Ljava/lang/String;

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :goto_3
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isSupportedImage()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_5

    .line 250
    .line 251
    iget-boolean v4, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 252
    .line 253
    if-eqz v4, :cond_5

    .line 254
    .line 255
    new-instance v9, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;

    .line 256
    .line 257
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    iget-object v11, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->uri:Ljava/lang/String;

    .line 261
    .line 262
    move-object v13, v12

    .line 263
    iget-object v12, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->filename:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v4, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v5, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 268
    .line 269
    iget-boolean v3, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 270
    .line 271
    move-object/from16 v16, v4

    .line 272
    .line 273
    move-object/from16 v17, v5

    .line 274
    .line 275
    move/from16 v19, v18

    .line 276
    .line 277
    move/from16 v18, v3

    .line 278
    .line 279
    invoke-direct/range {v9 .. v19}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$RemoteImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/fsck/k9/mail/Part;ZZ)V

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_5
    move-object v13, v12

    .line 284
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isSupportedImage()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_6

    .line 289
    .line 290
    if-eqz v5, :cond_6

    .line 291
    .line 292
    new-instance v9, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$InlinedImage;

    .line 293
    .line 294
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    iget-object v11, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->uri:Ljava/lang/String;

    .line 298
    .line 299
    iget-object v12, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->filename:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v4, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v5, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 304
    .line 305
    iget-boolean v3, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 306
    .line 307
    move-object/from16 v16, v4

    .line 308
    .line 309
    move-object/from16 v17, v5

    .line 310
    .line 311
    move/from16 v19, v18

    .line 312
    .line 313
    move/from16 v18, v3

    .line 314
    .line 315
    invoke-direct/range {v9 .. v19}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$InlinedImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/fsck/k9/mail/Part;ZZ)V

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_6
    if-eqz v5, :cond_7

    .line 320
    .line 321
    new-instance v9, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$InlinedFile;

    .line 322
    .line 323
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    iget-object v11, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->filename:Ljava/lang/String;

    .line 327
    .line 328
    move-object v12, v13

    .line 329
    move-wide v13, v14

    .line 330
    iget-object v15, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 331
    .line 332
    iget-object v4, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 333
    .line 334
    iget-boolean v3, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 335
    .line 336
    move/from16 v17, v3

    .line 337
    .line 338
    move-object/from16 v16, v4

    .line 339
    .line 340
    invoke-direct/range {v9 .. v18}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$InlinedFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/fsck/k9/mail/Part;ZZ)V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_7
    new-instance v9, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;

    .line 345
    .line 346
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    iget-object v11, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->filename:Ljava/lang/String;

    .line 350
    .line 351
    move-object v12, v13

    .line 352
    move-wide v13, v14

    .line 353
    iget-object v15, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 354
    .line 355
    iget-object v4, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 356
    .line 357
    iget-boolean v3, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 358
    .line 359
    move/from16 v17, v3

    .line 360
    .line 361
    move-object/from16 v16, v4

    .line 362
    .line 363
    invoke-direct/range {v9 .. v18}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/fsck/k9/mail/Part;ZZ)V

    .line 364
    .line 365
    .line 366
    :goto_4
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :cond_8
    invoke-static {v2}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    new-instance v1, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$State;

    .line 379
    .line 380
    invoke-direct {v1, v0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$State;-><init>(Lkotlinx/collections/immutable/ImmutableList;)V

    .line 381
    .line 382
    .line 383
    return-object v1

    .line 384
    :pswitch_1
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error;

    .line 385
    .line 386
    check-cast v9, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 387
    .line 388
    check-cast v8, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 389
    .line 390
    iget-object v1, v8, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->resourceManager:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 391
    .line 392
    move-object/from16 v2, p1

    .line 393
    .line 394
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State;

    .line 395
    .line 396
    sget-object v2, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$AccountNotFound;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$AccountNotFound;

    .line 397
    .line 398
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    const/16 v3, 0xf

    .line 403
    .line 404
    if-eqz v2, :cond_9

    .line 405
    .line 406
    iget-object v0, v8, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 407
    .line 408
    new-array v2, v7, [Ljava/lang/Object;

    .line 409
    .line 410
    aput-object v0, v2, v6

    .line 411
    .line 412
    check-cast v1, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 413
    .line 414
    const v0, 0x7f1205e4

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v0, v2}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v9, v4, v0, v3}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    goto :goto_5

    .line 426
    :cond_9
    instance-of v2, v0, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$UnhandledError;

    .line 427
    .line 428
    if-eqz v2, :cond_a

    .line 429
    .line 430
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$UnhandledError;

    .line 431
    .line 432
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/domain/SetAccountFolderOutcome$Error$UnhandledError;->throwable:Lnet/thunderbird/core/common/exception/MessagingException;

    .line 433
    .line 434
    iget-object v0, v0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 435
    .line 436
    new-array v2, v7, [Ljava/lang/Object;

    .line 437
    .line 438
    aput-object v0, v2, v6

    .line 439
    .line 440
    check-cast v1, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 441
    .line 442
    const v0, 0x7f1205e5

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v0, v2}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v9, v4, v0, v3}, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;->copy$default(Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;Ljava/lang/String;I)Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    goto :goto_5

    .line 454
    :cond_a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 455
    .line 456
    .line 457
    :goto_5
    return-object v4

    .line 458
    :pswitch_2
    check-cast v0, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 459
    .line 460
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 461
    .line 462
    check-cast v9, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 463
    .line 464
    move-object/from16 v1, p1

    .line 465
    .line 466
    check-cast v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 467
    .line 468
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    if-eqz v0, :cond_d

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-eqz v1, :cond_c

    .line 478
    .line 479
    if-eq v1, v7, :cond_b

    .line 480
    .line 481
    goto :goto_6

    .line 482
    :cond_b
    iget-object v4, v0, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 483
    .line 484
    goto :goto_6

    .line 485
    :cond_c
    iget-object v4, v0, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 486
    .line 487
    :goto_6
    if-eqz v4, :cond_d

    .line 488
    .line 489
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnSwipeMessage;

    .line 490
    .line 491
    invoke-direct {v0, v9, v4}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnSwipeMessage;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/core/common/action/SwipeAction;)V

    .line 492
    .line 493
    .line 494
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    :cond_d
    return-object v5

    .line 498
    :pswitch_3
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 499
    .line 500
    check-cast v9, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

    .line 501
    .line 502
    check-cast v8, Lde/cketti/changelog/ChangeLog;

    .line 503
    .line 504
    move-object/from16 v1, p1

    .line 505
    .line 506
    check-cast v1, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;

    .line 507
    .line 508
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 512
    .line 513
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->miscSettings:Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 514
    .line 515
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;->showRecentChanges:Z

    .line 516
    .line 517
    iget-object v1, v9, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->mode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 518
    .line 519
    sget-object v2, Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;->CHANGE_LOG:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 520
    .line 521
    if-ne v1, v2, :cond_e

    .line 522
    .line 523
    iget-object v1, v8, Lde/cketti/changelog/ChangeLog;->changeLogProvider:Lcom/google/zxing/BinaryBitmap;

    .line 524
    .line 525
    iget-object v2, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v2, Lokio/PriorityQueue;

    .line 528
    .line 529
    invoke-virtual {v2}, Lokio/PriorityQueue;->getChangeLog()Ljava/util/List;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v1, Lokio/PriorityQueue;

    .line 536
    .line 537
    invoke-virtual {v1}, Lokio/PriorityQueue;->getChangeLog()Ljava/util/List;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-static {v2, v1}, Lcom/google/zxing/BinaryBitmap;->merge(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    goto :goto_7

    .line 546
    :cond_e
    iget-object v1, v8, Lde/cketti/changelog/ChangeLog;->changeLogProvider:Lcom/google/zxing/BinaryBitmap;

    .line 547
    .line 548
    iget v2, v8, Lde/cketti/changelog/ChangeLog;->lastVersionCode:I

    .line 549
    .line 550
    iget-object v4, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v4, Lokio/PriorityQueue;

    .line 553
    .line 554
    invoke-virtual {v4, v2}, Lokio/PriorityQueue;->getChangeLogSince(I)Ljava/util/List;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v1, Lokio/PriorityQueue;

    .line 561
    .line 562
    invoke-virtual {v1, v2}, Lokio/PriorityQueue;->getChangeLogSince(I)Ljava/util/List;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-static {v4, v1}, Lcom/google/zxing/BinaryBitmap;->merge(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    .line 571
    .line 572
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    .line 578
    .line 579
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    if-eqz v4, :cond_14

    .line 588
    .line 589
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    check-cast v4, Lde/cketti/changelog/ReleaseItem;

    .line 594
    .line 595
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    iget v5, v4, Lde/cketti/changelog/ReleaseItem;->versionCode:I

    .line 599
    .line 600
    iget v9, v8, Lde/cketti/changelog/ChangeLog;->currentVersionCode:I

    .line 601
    .line 602
    if-ne v5, v9, :cond_f

    .line 603
    .line 604
    move v5, v7

    .line 605
    goto :goto_9

    .line 606
    :cond_f
    move v5, v6

    .line 607
    :goto_9
    iget-object v9, v4, Lde/cketti/changelog/ReleaseItem;->versionName:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    iget-object v10, v4, Lde/cketti/changelog/ReleaseItem;->date:Ljava/lang/String;

    .line 613
    .line 614
    iget-object v4, v4, Lde/cketti/changelog/ReleaseItem;->changes:Ljava/util/List;

    .line 615
    .line 616
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 620
    .line 621
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 622
    .line 623
    .line 624
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 629
    .line 630
    .line 631
    move-result v12

    .line 632
    if-eqz v12, :cond_11

    .line 633
    .line 634
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v12

    .line 638
    move-object v13, v12

    .line 639
    check-cast v13, Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-static {v13}, Lorg/jsoup/nodes/NodeUtils;->getType(Ljava/lang/String;)Lnet/thunderbird/feature/changelog/internal/ChangeType;

    .line 645
    .line 646
    .line 647
    move-result-object v13

    .line 648
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v13

    .line 652
    invoke-virtual {v11, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v14

    .line 656
    if-nez v14, :cond_10

    .line 657
    .line 658
    new-instance v14, Ljava/util/ArrayList;

    .line 659
    .line 660
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .line 662
    .line 663
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    :cond_10
    check-cast v14, Ljava/util/List;

    .line 667
    .line 668
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    goto :goto_a

    .line 672
    :cond_11
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 673
    .line 674
    invoke-interface {v11}, Ljava/util/Map;->size()I

    .line 675
    .line 676
    .line 677
    move-result v12

    .line 678
    invoke-static {v12}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 679
    .line 680
    .line 681
    move-result v12

    .line 682
    invoke-direct {v4, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 686
    .line 687
    .line 688
    move-result-object v11

    .line 689
    check-cast v11, Ljava/lang/Iterable;

    .line 690
    .line 691
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 692
    .line 693
    .line 694
    move-result-object v11

    .line 695
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v12

    .line 699
    if-eqz v12, :cond_13

    .line 700
    .line 701
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v12

    .line 705
    check-cast v12, Ljava/util/Map$Entry;

    .line 706
    .line 707
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v13

    .line 711
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v12

    .line 715
    check-cast v12, Ljava/util/List;

    .line 716
    .line 717
    new-instance v14, Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-static {v12, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 720
    .line 721
    .line 722
    move-result v15

    .line 723
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 724
    .line 725
    .line 726
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 727
    .line 728
    .line 729
    move-result-object v12

    .line 730
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 731
    .line 732
    .line 733
    move-result v15

    .line 734
    if-eqz v15, :cond_12

    .line 735
    .line 736
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v15

    .line 740
    check-cast v15, Ljava/lang/String;

    .line 741
    .line 742
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    invoke-static {v15}, Lorg/jsoup/nodes/NodeUtils;->getType(Ljava/lang/String;)Lnet/thunderbird/feature/changelog/internal/ChangeType;

    .line 746
    .line 747
    .line 748
    move-result-object v16

    .line 749
    invoke-virtual/range {v16 .. v16}, Lnet/thunderbird/feature/changelog/internal/ChangeType;->asPrefix()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v6

    .line 753
    invoke-static {v15, v6}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 758
    .line 759
    .line 760
    move-result-object v6

    .line 761
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v6

    .line 765
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    const/4 v6, 0x0

    .line 769
    goto :goto_c

    .line 770
    :cond_12
    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    const/4 v6, 0x0

    .line 774
    goto :goto_b

    .line 775
    :cond_13
    new-instance v6, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;

    .line 776
    .line 777
    invoke-direct {v6, v9, v10, v5, v4}, Lnet/thunderbird/feature/changelog/internal/ReleaseUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/LinkedHashMap;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    const/4 v6, 0x0

    .line 784
    goto/16 :goto_8

    .line 785
    .line 786
    :cond_14
    invoke-static {v2}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    .line 792
    .line 793
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;

    .line 794
    .line 795
    invoke-direct {v2, v1, v0}, Lnet/thunderbird/feature/changelog/internal/ChangelogContract$State;-><init>(Lkotlinx/collections/immutable/ImmutableList;Z)V

    .line 796
    .line 797
    .line 798
    return-object v2

    .line 799
    :pswitch_4
    move-object v1, v0

    .line 800
    check-cast v1, Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 801
    .line 802
    check-cast v9, Lokhttp3/ConnectionPool;

    .line 803
    .line 804
    check-cast v8, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 805
    .line 806
    move-object/from16 v0, p1

    .line 807
    .line 808
    check-cast v0, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 809
    .line 810
    const-string v2, "Valid values: "

    .line 811
    .line 812
    const-string v4, "to enum of type "

    .line 813
    .line 814
    const-string v5, "Unable to convert stored key ["

    .line 815
    .line 816
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    const-string v0, "ring"

    .line 820
    .line 821
    invoke-virtual {v9, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v1, v0, v7}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 826
    .line 827
    .line 828
    move-result v6

    .line 829
    const-string v0, "ringtone"

    .line 830
    .line 831
    invoke-virtual {v9, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    if-nez v0, :cond_15

    .line 840
    .line 841
    const-string v0, "content://settings/system/notification_sound"

    .line 842
    .line 843
    :cond_15
    move-object v10, v0

    .line 844
    const-string v0, "notificationLight"

    .line 845
    .line 846
    invoke-virtual {v9, v0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v11

    .line 850
    sget-object v12, Lnet/thunderbird/feature/notification/NotificationLight;->Disabled:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 851
    .line 852
    :try_start_0
    invoke-virtual {v1, v11}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 856
    if-eqz v13, :cond_16

    .line 857
    .line 858
    :try_start_1
    invoke-static {v13}, Lnet/thunderbird/feature/notification/NotificationLight;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/notification/NotificationLight;

    .line 859
    .line 860
    .line 861
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 862
    if-eqz v0, :cond_16

    .line 863
    .line 864
    move-object v12, v0

    .line 865
    goto :goto_d

    .line 866
    :catch_0
    move-exception v0

    .line 867
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .line 871
    .line 872
    new-instance v15, Ljava/lang/StringBuilder;

    .line 873
    .line 874
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    const-string v5, "] value ["

    .line 881
    .line 882
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    const-string v5, "] "

    .line 889
    .line 890
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v5

    .line 897
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const-class v5, Lnet/thunderbird/feature/notification/NotificationLight;

    .line 901
    .line 902
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 903
    .line 904
    .line 905
    move-result-object v5

    .line 906
    invoke-virtual {v5}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v5

    .line 910
    new-instance v13, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    const-string v4, "."

    .line 919
    .line 920
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v4

    .line 927
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-static {}, Lnet/thunderbird/feature/notification/NotificationLight;->values()[Lnet/thunderbird/feature/notification/NotificationLight;

    .line 934
    .line 935
    .line 936
    move-result-object v18

    .line 937
    const/16 v22, 0x0

    .line 938
    .line 939
    const/16 v23, 0x3f

    .line 940
    .line 941
    const/16 v19, 0x0

    .line 942
    .line 943
    const/16 v20, 0x0

    .line 944
    .line 945
    const/16 v21, 0x0

    .line 946
    .line 947
    invoke-static/range {v18 .. v23}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v2

    .line 955
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 963
    .line 964
    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 965
    .line 966
    .line 967
    throw v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 968
    :catch_1
    move-exception v0

    .line 969
    iget-object v2, v8, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 970
    .line 971
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 972
    .line 973
    const/16 v4, 0x1c

    .line 974
    .line 975
    invoke-direct {v3, v4, v11, v12}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    invoke-static {v2, v0, v3, v7}, Lkotlinx/io/Sink$-CC;->warn$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 979
    .line 980
    .line 981
    :cond_16
    :goto_d
    new-instance v0, Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 982
    .line 983
    const-string/jumbo v2, "vibrate"

    .line 984
    .line 985
    .line 986
    invoke-virtual {v9, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v2

    .line 990
    const/4 v3, 0x0

    .line 991
    invoke-virtual {v1, v2, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 992
    .line 993
    .line 994
    move-result v2

    .line 995
    const-string/jumbo v4, "vibratePattern"

    .line 996
    .line 997
    .line 998
    invoke-virtual {v9, v4}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v4

    .line 1002
    invoke-virtual {v1, v4, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 1003
    .line 1004
    .line 1005
    move-result v3

    .line 1006
    sget-object v4, Lnet/thunderbird/feature/notification/VibratePattern;->Companion:Lcom/jcraft/jzlib/Adler32;

    .line 1007
    .line 1008
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    .line 1010
    .line 1011
    invoke-static {v3}, Lcom/jcraft/jzlib/Adler32;->deserialize(I)Lnet/thunderbird/feature/notification/VibratePattern;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v3

    .line 1015
    const-string/jumbo v4, "vibrateTimes"

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v9, v4}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v4

    .line 1022
    const/4 v5, 0x5

    .line 1023
    invoke-virtual {v1, v4, v5}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 1024
    .line 1025
    .line 1026
    move-result v1

    .line 1027
    invoke-direct {v0, v2, v3, v1}, Lnet/thunderbird/feature/notification/NotificationVibration;-><init>(ZLnet/thunderbird/feature/notification/VibratePattern;I)V

    .line 1028
    .line 1029
    .line 1030
    new-instance v1, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 1031
    .line 1032
    invoke-direct {v1, v6, v10, v12, v0}, Lnet/thunderbird/feature/notification/NotificationSettings;-><init>(ZLjava/lang/String;Lnet/thunderbird/feature/notification/NotificationLight;Lnet/thunderbird/feature/notification/NotificationVibration;)V

    .line 1033
    .line 1034
    .line 1035
    return-object v1

    .line 1036
    :pswitch_5
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1037
    .line 1038
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 1039
    .line 1040
    move-object/from16 v17, v9

    .line 1041
    .line 1042
    check-cast v17, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 1043
    .line 1044
    move-object/from16 v1, p1

    .line 1045
    .line 1046
    check-cast v1, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 1047
    .line 1048
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    .line 1050
    .line 1051
    iget-object v11, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->id:Ljava/lang/String;

    .line 1052
    .line 1053
    iget-object v12, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->title:Lkotlin/jvm/functions/Function0;

    .line 1054
    .line 1055
    iget-object v13, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->description:Lkotlin/jvm/functions/Function0;

    .line 1056
    .line 1057
    iget-object v14, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icon:Lkotlin/jvm/functions/Function0;

    .line 1058
    .line 1059
    iget-wide v1, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->color:J

    .line 1060
    .line 1061
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;->icons:Lkotlinx/collections/immutable/ImmutableList;

    .line 1062
    .line 1063
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1067
    .line 1068
    .line 1069
    new-instance v10, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;

    .line 1070
    .line 1071
    move-object/from16 v18, v0

    .line 1072
    .line 1073
    move-wide v15, v1

    .line 1074
    invoke-direct/range {v10 .. v18}, Lnet/thunderbird/core/ui/setting/SettingValue$IconList;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-interface {v8, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    return-object v5

    .line 1081
    :pswitch_6
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 1082
    .line 1083
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 1084
    .line 1085
    check-cast v8, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 1086
    .line 1087
    move-object/from16 v1, p1

    .line 1088
    .line 1089
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1090
    .line 1091
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    .line 1093
    .line 1094
    const-wide/16 v6, 0x0

    .line 1095
    .line 1096
    invoke-static {v0, v1, v6, v7}, Lcom/fsck/k9/sasl/OAuthBearer;->addPointerInputChange-0AR0LA0(Landroidx/camera/view/PreviewView$1;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 1097
    .line 1098
    .line 1099
    check-cast v9, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 1100
    .line 1101
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v9}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1109
    .line 1110
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    .line 1111
    .line 1112
    .line 1113
    move-result v1

    .line 1114
    invoke-static {v1, v1}, Lorg/slf4j/helpers/Util;->Velocity(FF)J

    .line 1115
    .line 1116
    .line 1117
    move-result-wide v9

    .line 1118
    invoke-virtual {v0, v9, v10}, Landroidx/camera/view/PreviewView$1;->calculateVelocity-AH228Gc(J)J

    .line 1119
    .line 1120
    .line 1121
    move-result-wide v9

    .line 1122
    iget-object v0, v0, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;

    .line 1125
    .line 1126
    iget-object v1, v0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mBaseCameraCaptureResult:Ljava/lang/Object;

    .line 1127
    .line 1128
    check-cast v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 1129
    .line 1130
    iget-object v3, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 1131
    .line 1132
    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([Ljava/lang/Object;Lcom/fsck/k9/mailstore/LocalStore$8;)V

    .line 1133
    .line 1134
    .line 1135
    const/4 v3, 0x0

    .line 1136
    iput v3, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    .line 1137
    .line 1138
    iget-object v1, v0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mTagBundle:Ljava/lang/Object;

    .line 1139
    .line 1140
    check-cast v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 1141
    .line 1142
    iget-object v11, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 1143
    .line 1144
    invoke-static {v11, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([Ljava/lang/Object;Lcom/fsck/k9/mailstore/LocalStore$8;)V

    .line 1145
    .line 1146
    .line 1147
    iput v3, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    .line 1148
    .line 1149
    iput-wide v6, v0, Landroidx/camera/core/streamsharing/VirtualCameraCaptureResult;->mTimestamp:J

    .line 1150
    .line 1151
    iget-object v0, v8, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1152
    .line 1153
    if-eqz v0, :cond_19

    .line 1154
    .line 1155
    new-instance v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;

    .line 1156
    .line 1157
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableKt;->NoOpOnDragStarted:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 1158
    .line 1159
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 1160
    .line 1161
    .line 1162
    move-result v3

    .line 1163
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v3

    .line 1167
    if-eqz v3, :cond_17

    .line 1168
    .line 1169
    move v3, v2

    .line 1170
    goto :goto_e

    .line 1171
    :cond_17
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 1172
    .line 1173
    .line 1174
    move-result v3

    .line 1175
    :goto_e
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 1176
    .line 1177
    .line 1178
    move-result v4

    .line 1179
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v4

    .line 1183
    if-eqz v4, :cond_18

    .line 1184
    .line 1185
    goto :goto_f

    .line 1186
    :cond_18
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 1187
    .line 1188
    .line 1189
    move-result v2

    .line 1190
    :goto_f
    invoke-static {v3, v2}, Lorg/slf4j/helpers/Util;->Velocity(FF)J

    .line 1191
    .line 1192
    .line 1193
    move-result-wide v2

    .line 1194
    invoke-direct {v1, v2, v3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;-><init>(J)V

    .line 1195
    .line 1196
    .line 1197
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    :cond_19
    return-object v5

    .line 1201
    :pswitch_7
    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    .line 1202
    .line 1203
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1204
    .line 1205
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1206
    .line 1207
    move-object/from16 v1, p1

    .line 1208
    .line 1209
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 1210
    .line 1211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    .line 1213
    .line 1214
    move-object v2, v0

    .line 1215
    check-cast v2, Lkotlin/collections/AbstractCollection;

    .line 1216
    .line 1217
    invoke-virtual {v2}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 1218
    .line 1219
    .line 1220
    move-result v2

    .line 1221
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;

    .line 1222
    .line 1223
    const/4 v6, 0x4

    .line 1224
    invoke-direct {v3, v6, v0}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 1225
    .line 1226
    .line 1227
    new-instance v6, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;

    .line 1228
    .line 1229
    const/4 v10, 0x0

    .line 1230
    invoke-direct {v6, v0, v9, v8, v10}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    .line 1231
    .line 1232
    .line 1233
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1234
    .line 1235
    const v8, 0x799532c4

    .line 1236
    .line 1237
    .line 1238
    invoke-direct {v0, v8, v6, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v1, v2, v4, v3, v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 1242
    .line 1243
    .line 1244
    return-object v5

    .line 1245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
