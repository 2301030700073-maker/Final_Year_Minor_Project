.class public final Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 12
    iput p3, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 9
    .line 10
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 13
    .line 14
    check-cast v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/16 v0, 0x1d

    .line 17
    .line 18
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 23
    .line 24
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 27
    .line 28
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 29
    .line 30
    const/16 v0, 0x1c

    .line 31
    .line 32
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 37
    .line 38
    check-cast v1, Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;

    .line 39
    .line 40
    const/16 v0, 0x1b

    .line 41
    .line 42
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_2
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 49
    .line 50
    check-cast v1, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat$OnResultListener;

    .line 51
    .line 52
    const/16 v0, 0x1a

    .line 53
    .line 54
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_3
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 61
    .line 62
    check-cast v1, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;

    .line 63
    .line 64
    const/16 v0, 0x19

    .line 65
    .line 66
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_4
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 73
    .line 74
    check-cast v1, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;

    .line 75
    .line 76
    const/16 v0, 0x18

    .line 77
    .line 78
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_5
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 85
    .line 86
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 89
    .line 90
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 91
    .line 92
    const/16 v0, 0x17

    .line 93
    .line 94
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :pswitch_6
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 99
    .line 100
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

    .line 103
    .line 104
    check-cast v1, Lnet/thunderbird/feature/account/AccountId;

    .line 105
    .line 106
    const/16 v0, 0x16

    .line 107
    .line 108
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :pswitch_7
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 113
    .line 114
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Lokhttp3/Dispatcher;

    .line 117
    .line 118
    check-cast v1, Lcom/fsck/k9/backend/api/FolderInfo;

    .line 119
    .line 120
    const/16 v0, 0x15

    .line 121
    .line 122
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 123
    .line 124
    .line 125
    return-object p1

    .line 126
    :pswitch_8
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 127
    .line 128
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 129
    .line 130
    const/16 v0, 0x14

    .line 131
    .line 132
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 133
    .line 134
    .line 135
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_9
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 139
    .line 140
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 141
    .line 142
    const/16 v0, 0x13

    .line 143
    .line 144
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 145
    .line 146
    .line 147
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_a
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 151
    .line 152
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 153
    .line 154
    const/16 v0, 0x12

    .line 155
    .line 156
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 157
    .line 158
    .line 159
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_b
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 163
    .line 164
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 165
    .line 166
    const/16 v0, 0x11

    .line 167
    .line 168
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    return-object p0

    .line 174
    :pswitch_c
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 175
    .line 176
    check-cast v1, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 177
    .line 178
    const/16 v0, 0x10

    .line 179
    .line 180
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 181
    .line 182
    .line 183
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_d
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 187
    .line 188
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast p0, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;

    .line 191
    .line 192
    check-cast v1, Landroid/net/Uri;

    .line 193
    .line 194
    const/16 v0, 0xf

    .line 195
    .line 196
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 197
    .line 198
    .line 199
    return-object p1

    .line 200
    :pswitch_e
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 201
    .line 202
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p0, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;

    .line 205
    .line 206
    check-cast v1, Ljava/lang/String;

    .line 207
    .line 208
    const/16 v0, 0xe

    .line 209
    .line 210
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 211
    .line 212
    .line 213
    return-object p1

    .line 214
    :pswitch_f
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 215
    .line 216
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 219
    .line 220
    check-cast v1, Lnet/thunderbird/feature/account/AccountId;

    .line 221
    .line 222
    const/16 v0, 0xd

    .line 223
    .line 224
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 225
    .line 226
    .line 227
    return-object p1

    .line 228
    :pswitch_10
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 229
    .line 230
    check-cast v1, Lapp/k9mail/K9App;

    .line 231
    .line 232
    const/16 v0, 0xc

    .line 233
    .line 234
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 235
    .line 236
    .line 237
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_11
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 241
    .line 242
    check-cast v1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;

    .line 243
    .line 244
    const/16 v0, 0xb

    .line 245
    .line 246
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 247
    .line 248
    .line 249
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 250
    .line 251
    return-object p0

    .line 252
    :pswitch_12
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 253
    .line 254
    check-cast v1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;

    .line 255
    .line 256
    const/16 v0, 0xa

    .line 257
    .line 258
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 259
    .line 260
    .line 261
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_13
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 265
    .line 266
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 269
    .line 270
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 271
    .line 272
    const/16 v0, 0x9

    .line 273
    .line 274
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 275
    .line 276
    .line 277
    return-object p1

    .line 278
    :pswitch_14
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 279
    .line 280
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 283
    .line 284
    check-cast v1, Ljava/lang/String;

    .line 285
    .line 286
    const/16 v0, 0x8

    .line 287
    .line 288
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 289
    .line 290
    .line 291
    return-object p1

    .line 292
    :pswitch_15
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 293
    .line 294
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 297
    .line 298
    check-cast v1, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 299
    .line 300
    const/4 v0, 0x7

    .line 301
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 302
    .line 303
    .line 304
    return-object p1

    .line 305
    :pswitch_16
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 306
    .line 307
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 310
    .line 311
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 312
    .line 313
    const/4 v0, 0x6

    .line 314
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 315
    .line 316
    .line 317
    return-object p1

    .line 318
    :pswitch_17
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 319
    .line 320
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 323
    .line 324
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 325
    .line 326
    const/4 v0, 0x5

    .line 327
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 328
    .line 329
    .line 330
    return-object p1

    .line 331
    :pswitch_18
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 332
    .line 333
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 336
    .line 337
    check-cast v1, Ljava/lang/String;

    .line 338
    .line 339
    const/4 v0, 0x4

    .line 340
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 341
    .line 342
    .line 343
    return-object p1

    .line 344
    :pswitch_19
    new-instance p1, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 345
    .line 346
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;

    .line 349
    .line 350
    check-cast v1, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 351
    .line 352
    const/4 v0, 0x3

    .line 353
    invoke-direct {p1, p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 354
    .line 355
    .line 356
    return-object p1

    .line 357
    :pswitch_1a
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 358
    .line 359
    check-cast v1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 360
    .line 361
    const/4 v0, 0x2

    .line 362
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 363
    .line 364
    .line 365
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 366
    .line 367
    return-object p0

    .line 368
    :pswitch_1b
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 369
    .line 370
    check-cast v1, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 371
    .line 372
    const/4 v0, 0x1

    .line 373
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 374
    .line 375
    .line 376
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 377
    .line 378
    return-object p0

    .line 379
    :pswitch_1c
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 380
    .line 381
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 382
    .line 383
    const/4 v0, 0x0

    .line 384
    invoke-direct {p0, v1, p2, v0}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 385
    .line 386
    .line 387
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 388
    .line 389
    return-object p0

    .line 390
    nop

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 10
    .line 11
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :pswitch_1
    if-nez p1, :cond_0

    .line 38
    .line 39
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 40
    .line 41
    invoke-virtual {p0, v1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :pswitch_2
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 58
    .line 59
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :pswitch_3
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 72
    .line 73
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :pswitch_4
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 86
    .line 87
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 100
    .line 101
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 129
    .line 130
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 137
    .line 138
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 144
    .line 145
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 159
    .line 160
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    return-object v2

    .line 172
    :pswitch_a
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 173
    .line 174
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 175
    .line 176
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 181
    .line 182
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    return-object v2

    .line 186
    :pswitch_b
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome;

    .line 187
    .line 188
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 195
    .line 196
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    return-object v2

    .line 200
    :pswitch_c
    check-cast p1, Lnet/thunderbird/core/preference/AppTheme;

    .line 201
    .line 202
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 203
    .line 204
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 209
    .line 210
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    return-object v2

    .line 214
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 215
    .line 216
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 217
    .line 218
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 223
    .line 224
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    return-object v2

    .line 228
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 229
    .line 230
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 231
    .line 232
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 237
    .line 238
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    return-object p0

    .line 243
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 244
    .line 245
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 246
    .line 247
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 252
    .line 253
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :pswitch_10
    check-cast p1, Ljava/util/Locale;

    .line 259
    .line 260
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 261
    .line 262
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 267
    .line 268
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    return-object v2

    .line 272
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 273
    .line 274
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 275
    .line 276
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 281
    .line 282
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    return-object v2

    .line 286
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 287
    .line 288
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 289
    .line 290
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 295
    .line 296
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    return-object v2

    .line 300
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 301
    .line 302
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 303
    .line 304
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 309
    .line 310
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    return-object p0

    .line 315
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 316
    .line 317
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 318
    .line 319
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 324
    .line 325
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    return-object p0

    .line 330
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 331
    .line 332
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 333
    .line 334
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 339
    .line 340
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    return-object v2

    .line 344
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 345
    .line 346
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 347
    .line 348
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 353
    .line 354
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    return-object v2

    .line 358
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 359
    .line 360
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 361
    .line 362
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 367
    .line 368
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    return-object v2

    .line 372
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 373
    .line 374
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 375
    .line 376
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 381
    .line 382
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    return-object p0

    .line 387
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 388
    .line 389
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 390
    .line 391
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 396
    .line 397
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    return-object v2

    .line 401
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 402
    .line 403
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 404
    .line 405
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 410
    .line 411
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    return-object p0

    .line 416
    :pswitch_1b
    check-cast p1, Ljava/lang/Exception;

    .line 417
    .line 418
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 419
    .line 420
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 425
    .line 426
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    throw v1

    .line 430
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 431
    .line 432
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 433
    .line 434
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 439
    .line 440
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    return-object p0

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 17
    .line 18
    iget-object p1, p1, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;->error:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error;

    .line 19
    .line 20
    sget-object v0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error$Canceled;->INSTANCE:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Error$Canceled;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/4 v1, 0x0

    .line 54
    cmpl-float p1, p1, v1

    .line 55
    .line 56
    if-lez p1, :cond_1

    .line 57
    .line 58
    iget-object p1, v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 59
    .line 60
    iget-object v2, v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->isBannerListOffScreen()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    iget-object p0, v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->accumulatedContentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    sub-float/2addr p0, p1

    .line 86
    iget-object p1, v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    neg-float p1, p1

    .line 96
    invoke-static {p0, p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    iget-object p1, v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 103
    .line 104
    .line 105
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_1
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    if-nez p0, :cond_2

    .line 111
    .line 112
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    throw v5

    .line 116
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    .line 117
    .line 118
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 125
    .line 126
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat$OnResultListener;

    .line 132
    .line 133
    invoke-interface {p0, v0}, Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat$OnResultListener;->onResult(Lnet/thunderbird/core/outcome/Outcome;)V

    .line 134
    .line 135
    .line 136
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 137
    .line 138
    return-object p0

    .line 139
    :pswitch_3
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 142
    .line 143
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->onResult(Lnet/thunderbird/core/outcome/Outcome;)V

    .line 151
    .line 152
    .line 153
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_4
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 159
    .line 160
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda2;->onResult(Lnet/thunderbird/core/outcome/Outcome;)V

    .line 168
    .line 169
    .line 170
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 171
    .line 172
    return-object p0

    .line 173
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 179
    .line 180
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    instance-of p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$Closed;

    .line 185
    .line 186
    if-eqz p1, :cond_3

    .line 187
    .line 188
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 191
    .line 192
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :try_start_0
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;

    .line 204
    .line 205
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetAccountFolders;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 206
    .line 207
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p0, Lnet/thunderbird/feature/account/AccountId;

    .line 210
    .line 211
    invoke-virtual {p1, p0}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getRemoteFolders(Lnet/thunderbird/feature/account/AccountId;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_6

    .line 229
    .line 230
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    move-object v1, v0

    .line 235
    check-cast v1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 236
    .line 237
    iget-object v1, v1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 238
    .line 239
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->REGULAR:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 240
    .line 241
    if-eq v1, v2, :cond_5

    .line 242
    .line 243
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 244
    .line 245
    if-ne v1, v2, :cond_4

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :catch_0
    move-exception p0

    .line 249
    goto :goto_2

    .line 250
    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_6
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 255
    .line 256
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :goto_2
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/domain/AccountFolderError;

    .line 261
    .line 262
    invoke-direct {p1, p0}, Lnet/thunderbird/feature/mail/message/list/domain/AccountFolderError;-><init>(Lnet/thunderbird/core/common/exception/MessagingException;)V

    .line 263
    .line 264
    .line 265
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 266
    .line 267
    invoke-direct {p0, p1, v5}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :goto_3
    return-object p0

    .line 271
    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast p1, Lokhttp3/Dispatcher;

    .line 277
    .line 278
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast p0, Lcom/fsck/k9/backend/api/FolderInfo;

    .line 281
    .line 282
    new-instance v0, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;

    .line 283
    .line 284
    invoke-direct {v0, p1}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;-><init>(Lokhttp3/Dispatcher;)V

    .line 285
    .line 286
    .line 287
    :try_start_1
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {v0, p0}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->createFolders(Ljava/util/List;)Ljava/util/Set;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    check-cast p0, Ljava/lang/Iterable;

    .line 296
    .line 297
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->close()V

    .line 304
    .line 305
    .line 306
    return-object p0

    .line 307
    :catchall_0
    move-exception p0

    .line 308
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    :catchall_1
    move-exception p1

    .line 310
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    throw p1

    .line 314
    :pswitch_8
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 317
    .line 318
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    iget-object p1, v0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 322
    .line 323
    iget-object p1, p1, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->swipeActions:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 324
    .line 325
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 326
    .line 327
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->miscSettings:Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 328
    .line 329
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;->shouldShowSetupArchiveFolderDialog:Z

    .line 330
    .line 331
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 334
    .line 335
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 336
    .line 337
    iget-object v2, v1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 338
    .line 339
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 340
    .line 341
    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getAccountsFlow()Lkotlinx/coroutines/flow/Flow;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    new-instance v3, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 346
    .line 347
    invoke-direct {v3, v2, v1, v4}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V

    .line 348
    .line 349
    .line 350
    new-instance v1, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 351
    .line 352
    invoke-direct {v1, v3, p0, p1, v0}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;Lnet/thunderbird/core/common/action/SwipeActions;Z)V

    .line 353
    .line 354
    .line 355
    return-object v1

    .line 356
    :pswitch_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 357
    .line 358
    iget-object v1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome;

    .line 361
    .line 362
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    instance-of p1, v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 373
    .line 374
    if-eqz p1, :cond_8

    .line 375
    .line 376
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 377
    .line 378
    iget-object p1, v1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast p1, Ljava/lang/String;

    .line 381
    .line 382
    iget-object v2, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 383
    .line 384
    :cond_7
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    move-object v1, p0

    .line 389
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 390
    .line 391
    invoke-static {v1, p1, v5, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v2, p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result p0

    .line 399
    if-eqz p0, :cond_7

    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_8
    instance-of p1, v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 403
    .line 404
    if-eqz p1, :cond_9

    .line 405
    .line 406
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 407
    .line 408
    iget-object p1, v1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 411
    .line 412
    invoke-static {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 413
    .line 414
    .line 415
    :goto_4
    move-object v5, v0

    .line 416
    goto :goto_5

    .line 417
    :cond_9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 418
    .line 419
    .line 420
    :goto_5
    return-object v5

    .line 421
    :pswitch_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 422
    .line 423
    iget-object v1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome;

    .line 426
    .line 427
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    instance-of p1, v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 438
    .line 439
    if-eqz p1, :cond_b

    .line 440
    .line 441
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 442
    .line 443
    iget-object p1, v1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast p1, Ljava/lang/String;

    .line 446
    .line 447
    iget-object v2, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 448
    .line 449
    :cond_a
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    move-object v1, p0

    .line 454
    check-cast v1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 455
    .line 456
    const/4 v3, 0x6

    .line 457
    invoke-static {v1, p1, v5, v4, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZI)Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v2, p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result p0

    .line 465
    if-eqz p0, :cond_a

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_b
    instance-of p1, v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 469
    .line 470
    if-eqz p1, :cond_c

    .line 471
    .line 472
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 473
    .line 474
    iget-object p1, v1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 477
    .line 478
    invoke-static {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 479
    .line 480
    .line 481
    :goto_6
    move-object v5, v0

    .line 482
    goto :goto_7

    .line 483
    :cond_c
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 484
    .line 485
    .line 486
    :goto_7
    return-object v5

    .line 487
    :pswitch_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 488
    .line 489
    iget-object v1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome;

    .line 492
    .line 493
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;

    .line 499
    .line 500
    new-instance p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;

    .line 501
    .line 502
    invoke-direct {p1, p0, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    instance-of v2, v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 509
    .line 510
    if-eqz v2, :cond_d

    .line 511
    .line 512
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 513
    .line 514
    iget-object p0, v1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 515
    .line 516
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    goto :goto_8

    .line 520
    :cond_d
    instance-of p1, v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 521
    .line 522
    if-eqz p1, :cond_e

    .line 523
    .line 524
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 525
    .line 526
    iget-object p1, v1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 529
    .line 530
    invoke-static {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;->access$handleError(Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsViewModel;Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;)V

    .line 531
    .line 532
    .line 533
    :goto_8
    move-object v5, v0

    .line 534
    goto :goto_9

    .line 535
    :cond_e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 536
    .line 537
    .line 538
    :goto_9
    return-object v5

    .line 539
    :pswitch_c
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast p0, Lnet/thunderbird/core/preference/AppTheme;

    .line 542
    .line 543
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 547
    .line 548
    .line 549
    move-result p0

    .line 550
    const/4 p1, -0x1

    .line 551
    if-eqz p0, :cond_11

    .line 552
    .line 553
    if-eq p0, v2, :cond_10

    .line 554
    .line 555
    if-ne p0, v3, :cond_f

    .line 556
    .line 557
    move p0, p1

    .line 558
    goto :goto_a

    .line 559
    :cond_f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 560
    .line 561
    .line 562
    goto :goto_e

    .line 563
    :cond_10
    move p0, v3

    .line 564
    goto :goto_a

    .line 565
    :cond_11
    move p0, v2

    .line 566
    :goto_a
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroidx/room/TransactionExecutor;

    .line 567
    .line 568
    if-eq p0, p1, :cond_12

    .line 569
    .line 570
    if-eqz p0, :cond_12

    .line 571
    .line 572
    if-eq p0, v2, :cond_12

    .line 573
    .line 574
    if-eq p0, v3, :cond_12

    .line 575
    .line 576
    const-string p0, "AppCompatDelegate"

    .line 577
    .line 578
    const-string p1, "setDefaultNightMode() called with an unknown mode"

    .line 579
    .line 580
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .line 582
    .line 583
    goto :goto_d

    .line 584
    :cond_12
    sget p1, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 585
    .line 586
    if-eq p1, p0, :cond_15

    .line 587
    .line 588
    sput p0, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 589
    .line 590
    sget-object p0, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    .line 591
    .line 592
    monitor-enter p0

    .line 593
    :try_start_3
    sget-object p1, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    .line 594
    .line 595
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    new-instance v0, Landroidx/collection/ArrayMap$KeyIterator;

    .line 599
    .line 600
    invoke-direct {v0, p1}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    .line 601
    .line 602
    .line 603
    :cond_13
    :goto_b
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    if-eqz p1, :cond_14

    .line 608
    .line 609
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 614
    .line 615
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    check-cast p1, Landroidx/appcompat/app/AppCompatDelegate;

    .line 620
    .line 621
    if-eqz p1, :cond_13

    .line 622
    .line 623
    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 624
    .line 625
    invoke-virtual {p1, v2, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    .line 626
    .line 627
    .line 628
    goto :goto_b

    .line 629
    :catchall_2
    move-exception p1

    .line 630
    goto :goto_c

    .line 631
    :cond_14
    monitor-exit p0

    .line 632
    goto :goto_d

    .line 633
    :goto_c
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 634
    throw p1

    .line 635
    :cond_15
    :goto_d
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 636
    .line 637
    :goto_e
    return-object v5

    .line 638
    :pswitch_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast p1, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;

    .line 644
    .line 645
    iget-object v0, p1, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;->contentResolver:Landroid/content/ContentResolver;

    .line 646
    .line 647
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast p0, Landroid/net/Uri;

    .line 650
    .line 651
    const-string/jumbo v1, "wt"

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    if-eqz p0, :cond_16

    .line 659
    .line 660
    :try_start_4
    iget-object p1, p1, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;->processExecutor:Lnet/thunderbird/core/android/logging/RealProcessExecutor;

    .line 661
    .line 662
    const-string v0, "logcat -d"

    .line 663
    .line 664
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 676
    .line 677
    .line 678
    move-result-object p1

    .line 679
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 680
    .line 681
    .line 682
    :try_start_5
    invoke-static {p1, p0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 683
    .line 684
    .line 685
    :try_start_6
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 686
    .line 687
    .line 688
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 689
    .line 690
    .line 691
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 692
    .line 693
    goto :goto_10

    .line 694
    :catchall_3
    move-exception p1

    .line 695
    goto :goto_f

    .line 696
    :catchall_4
    move-exception v0

    .line 697
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 698
    :catchall_5
    move-exception v1

    .line 699
    :try_start_8
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 700
    .line 701
    .line 702
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 703
    :goto_f
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 704
    :catchall_6
    move-exception v0

    .line 705
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 706
    .line 707
    .line 708
    throw v0

    .line 709
    :cond_16
    const-string p0, "Error opening contentUri for writing"

    .line 710
    .line 711
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    :goto_10
    return-object v5

    .line 715
    :pswitch_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast p1, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;

    .line 721
    .line 722
    iget-object v0, p1, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;->imapStore:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 723
    .line 724
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast p0, Ljava/lang/String;

    .line 727
    .line 728
    invoke-virtual {v0, p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    :try_start_a
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->exists()Z

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    if-eqz v1, :cond_17

    .line 737
    .line 738
    sget-object v1, Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Success$AlreadyExists;->INSTANCE:Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Success$AlreadyExists;

    .line 739
    .line 740
    new-instance v3, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 741
    .line 742
    invoke-direct {v3, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 743
    .line 744
    .line 745
    goto :goto_11

    .line 746
    :catchall_7
    move-exception p0

    .line 747
    goto :goto_14

    .line 748
    :catch_1
    move-exception v1

    .line 749
    goto :goto_12

    .line 750
    :cond_17
    if-nez v1, :cond_18

    .line 751
    .line 752
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->create()Z

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-eqz v1, :cond_18

    .line 757
    .line 758
    sget-object v1, Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Success$Created;->INSTANCE:Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Success$Created;

    .line 759
    .line 760
    new-instance v3, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 761
    .line 762
    invoke-direct {v3, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    goto :goto_11

    .line 766
    :cond_18
    new-instance v1, Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder;

    .line 767
    .line 768
    const-string v3, "Failed to create folder on remote server."

    .line 769
    .line 770
    invoke-direct {v1, v3}, Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder;-><init>(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    new-instance v3, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 774
    .line 775
    invoke-direct {v3, v1, v5}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 776
    .line 777
    .line 778
    :goto_11
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 779
    .line 780
    .line 781
    goto :goto_13

    .line 782
    :goto_12
    :try_start_b
    iget-object p1, p1, Lnet/thunderbird/backend/imap/ImapRemoteFolderCreator;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 783
    .line 784
    new-instance v3, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 785
    .line 786
    const/16 v4, 0xc

    .line 787
    .line 788
    invoke-direct {v3, p0, v4}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 789
    .line 790
    .line 791
    invoke-static {p1, v5, v1, v3, v2}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 792
    .line 793
    .line 794
    new-instance p0, Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder;

    .line 795
    .line 796
    iget-object p1, v1, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 797
    .line 798
    if-nez p1, :cond_19

    .line 799
    .line 800
    const-string p1, "Unhandled exception. Please check the logs."

    .line 801
    .line 802
    :cond_19
    invoke-direct {p0, p1}, Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    new-instance v3, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 806
    .line 807
    invoke-direct {v3, p0, v5}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 808
    .line 809
    .line 810
    goto :goto_11

    .line 811
    :goto_13
    return-object v3

    .line 812
    :goto_14
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->close()V

    .line 813
    .line 814
    .line 815
    throw p0

    .line 816
    :pswitch_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 820
    .line 821
    check-cast p1, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 822
    .line 823
    iget-object p1, p1, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 824
    .line 825
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 826
    .line 827
    check-cast p0, Lnet/thunderbird/feature/account/AccountId;

    .line 828
    .line 829
    invoke-virtual {p1, p0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getByIdSync(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 830
    .line 831
    .line 832
    move-result-object p0

    .line 833
    return-object p0

    .line 834
    :pswitch_10
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 835
    .line 836
    check-cast v0, Ljava/util/Locale;

    .line 837
    .line 838
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    if-nez v0, :cond_1a

    .line 842
    .line 843
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    :cond_1a
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 848
    .line 849
    check-cast p0, Lapp/k9mail/K9App;

    .line 850
    .line 851
    sget p1, Lapp/k9mail/K9App;->$r8$clinit:I

    .line 852
    .line 853
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getSuperResources()Landroid/content/res/Resources;

    .line 854
    .line 855
    .line 856
    move-result-object p1

    .line 857
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 858
    .line 859
    .line 860
    move-result-object p1

    .line 861
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    .line 866
    .line 867
    invoke-virtual {p0, p1, v0}, Lapp/k9mail/K9App;->updateConfigurationWithLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 868
    .line 869
    .line 870
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 871
    .line 872
    return-object p0

    .line 873
    :pswitch_11
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 876
    .line 877
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 881
    .line 882
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 883
    .line 884
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;

    .line 885
    .line 886
    invoke-direct {p1, p0, v5, v2}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 887
    .line 888
    .line 889
    invoke-static {v0, v5, v5, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 890
    .line 891
    .line 892
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 893
    .line 894
    invoke-direct {p1, p0, v5, v3}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 895
    .line 896
    .line 897
    invoke-static {v0, v5, v5, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 898
    .line 899
    .line 900
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;

    .line 901
    .line 902
    invoke-direct {p1, p0, v5, v1}, Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeOutEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 903
    .line 904
    .line 905
    invoke-static {v0, v5, v5, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 906
    .line 907
    .line 908
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 909
    .line 910
    return-object p0

    .line 911
    :pswitch_12
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 914
    .line 915
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 916
    .line 917
    .line 918
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 919
    .line 920
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast p0, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;

    .line 923
    .line 924
    invoke-direct {p1, p0, v5, v2}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 925
    .line 926
    .line 927
    invoke-static {v0, v5, v5, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 928
    .line 929
    .line 930
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 931
    .line 932
    invoke-direct {p1, p0, v5, v3}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 933
    .line 934
    .line 935
    invoke-static {v0, v5, v5, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 936
    .line 937
    .line 938
    new-instance p1, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;

    .line 939
    .line 940
    invoke-direct {p1, p0, v5, v1}, Lcom/skydoves/landscapist/crossfade/FadeInEffectNode$onAttach$1;-><init>(Lcom/skydoves/landscapist/crossfade/FadeInEffectNode;Lkotlin/coroutines/Continuation;I)V

    .line 941
    .line 942
    .line 943
    invoke-static {v0, v5, v5, p1, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 944
    .line 945
    .line 946
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 947
    .line 948
    return-object p0

    .line 949
    :pswitch_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 950
    .line 951
    .line 952
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 953
    .line 954
    check-cast p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 955
    .line 956
    iget-object v0, p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 957
    .line 958
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 959
    .line 960
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 961
    .line 962
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 963
    .line 964
    invoke-virtual {v0, p0}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getRemoteFolders(Lnet/thunderbird/feature/account/AccountId;)Ljava/util/List;

    .line 965
    .line 966
    .line 967
    move-result-object p0

    .line 968
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    .line 969
    .line 970
    const/16 v5, 0x12

    .line 971
    .line 972
    invoke-direct {v0, v5}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 973
    .line 974
    .line 975
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 976
    .line 977
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    .line 979
    .line 980
    new-instance v5, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 981
    .line 982
    const/16 v6, 0x9

    .line 983
    .line 984
    invoke-direct {v5, v6, v0}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;-><init>(ILjava/lang/Object;)V

    .line 985
    .line 986
    .line 987
    invoke-static {p0, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 988
    .line 989
    .line 990
    move-result-object p0

    .line 991
    sget-object v0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 992
    .line 993
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->specialFolderSelectionStrategy:Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 994
    .line 995
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 996
    .line 997
    .line 998
    invoke-static {p0, v0}, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;->selectSpecialFolder(Ljava/util/List;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 999
    .line 1000
    .line 1001
    move-result-object p1

    .line 1002
    new-instance v5, Lkotlin/Pair;

    .line 1003
    .line 1004
    invoke-direct {v5, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1005
    .line 1006
    .line 1007
    sget-object p1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->DRAFTS:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 1008
    .line 1009
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;->selectSpecialFolder(Ljava/util/List;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    new-instance v6, Lkotlin/Pair;

    .line 1014
    .line 1015
    invoke-direct {v6, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1016
    .line 1017
    .line 1018
    sget-object p1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SENT:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 1019
    .line 1020
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;->selectSpecialFolder(Ljava/util/List;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    new-instance v7, Lkotlin/Pair;

    .line 1025
    .line 1026
    invoke-direct {v7, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1027
    .line 1028
    .line 1029
    sget-object p1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SPAM:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 1030
    .line 1031
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;->selectSpecialFolder(Ljava/util/List;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    new-instance v8, Lkotlin/Pair;

    .line 1036
    .line 1037
    invoke-direct {v8, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1038
    .line 1039
    .line 1040
    sget-object p1, Lnet/thunderbird/feature/mail/folder/api/FolderType;->TRASH:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 1041
    .line 1042
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;->selectSpecialFolder(Ljava/util/List;Lnet/thunderbird/feature/mail/folder/api/FolderType;)Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    new-instance v9, Lkotlin/Pair;

    .line 1047
    .line 1048
    invoke-direct {v9, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1049
    .line 1050
    .line 1051
    const/4 p1, 0x5

    .line 1052
    new-array p1, p1, [Lkotlin/Pair;

    .line 1053
    .line 1054
    aput-object v5, p1, v4

    .line 1055
    .line 1056
    aput-object v6, p1, v2

    .line 1057
    .line 1058
    aput-object v7, p1, v3

    .line 1059
    .line 1060
    aput-object v8, p1, v1

    .line 1061
    .line 1062
    const/4 v0, 0x4

    .line 1063
    aput-object v9, p1, v0

    .line 1064
    .line 1065
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 1066
    .line 1067
    .line 1068
    move-result-object p1

    .line 1069
    new-instance v0, Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;

    .line 1070
    .line 1071
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 1072
    .line 1073
    .line 1074
    return-object v0

    .line 1075
    :pswitch_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1076
    .line 1077
    .line 1078
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1079
    .line 1080
    check-cast p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 1081
    .line 1082
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1083
    .line 1084
    check-cast p0, Ljava/lang/String;

    .line 1085
    .line 1086
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 1087
    .line 1088
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 1089
    .line 1090
    invoke-virtual {p1, p0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1091
    .line 1092
    .line 1093
    move-result-object p0

    .line 1094
    return-object p0

    .line 1095
    :pswitch_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1096
    .line 1097
    .line 1098
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 1101
    .line 1102
    new-instance v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$Event$UpdateAttachments;

    .line 1103
    .line 1104
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast p0, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 1107
    .line 1108
    iget-object v1, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 1109
    .line 1110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1111
    .line 1112
    .line 1113
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    .line 1114
    .line 1115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    .line 1117
    .line 1118
    invoke-direct {v0, v1, p0}, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$Event$UpdateAttachments;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1125
    .line 1126
    return-object p0

    .line 1127
    :pswitch_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1128
    .line 1129
    .line 1130
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1131
    .line 1132
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 1133
    .line 1134
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1139
    .line 1140
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1141
    .line 1142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v0, p0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 1146
    .line 1147
    .line 1148
    iput-object p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1149
    .line 1150
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1151
    .line 1152
    return-object p0

    .line 1153
    :pswitch_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1157
    .line 1158
    check-cast p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 1159
    .line 1160
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->getAccountManager$1()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1165
    .line 1166
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1167
    .line 1168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v0, p0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 1172
    .line 1173
    .line 1174
    iput-object p0, p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 1175
    .line 1176
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1177
    .line 1178
    return-object p0

    .line 1179
    :pswitch_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1180
    .line 1181
    .line 1182
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1183
    .line 1184
    check-cast p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 1185
    .line 1186
    iget-object p1, p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->preferences:Lcom/fsck/k9/Preferences;

    .line 1187
    .line 1188
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1189
    .line 1190
    check-cast p0, Ljava/lang/String;

    .line 1191
    .line 1192
    invoke-virtual {p1, p0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1193
    .line 1194
    .line 1195
    move-result-object p1

    .line 1196
    if-eqz p1, :cond_1b

    .line 1197
    .line 1198
    move-object v5, p1

    .line 1199
    goto :goto_15

    .line 1200
    :cond_1b
    const-string p1, "Missing account: "

    .line 1201
    .line 1202
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object p0

    .line 1206
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 1207
    .line 1208
    .line 1209
    :goto_15
    return-object v5

    .line 1210
    :pswitch_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1211
    .line 1212
    .line 1213
    iget-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1214
    .line 1215
    check-cast p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;

    .line 1216
    .line 1217
    iget-object v0, p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 1218
    .line 1219
    iget-object p1, p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsDataStore;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 1220
    .line 1221
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1222
    .line 1223
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 1224
    .line 1225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1229
    .line 1230
    .line 1231
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 1232
    .line 1233
    invoke-virtual {v0, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 1234
    .line 1235
    .line 1236
    move-result-object p1

    .line 1237
    iget-object v0, p1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 1238
    .line 1239
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 1240
    .line 1241
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 1242
    .line 1243
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 1244
    .line 1245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1246
    .line 1247
    .line 1248
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 1249
    .line 1250
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 1251
    .line 1252
    const/16 v2, 0x1c

    .line 1253
    .line 1254
    invoke-direct {v1, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v0, v4, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {p1}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->notifyFolderSettingsChanged()V

    .line 1261
    .line 1262
    .line 1263
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1264
    .line 1265
    return-object p0

    .line 1266
    :pswitch_1a
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1267
    .line 1268
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1269
    .line 1270
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1271
    .line 1272
    .line 1273
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1274
    .line 1275
    check-cast p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 1276
    .line 1277
    invoke-virtual {p0, v0}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    move-result-object p0

    .line 1281
    return-object p0

    .line 1282
    :pswitch_1b
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1283
    .line 1284
    check-cast v0, Ljava/lang/Exception;

    .line 1285
    .line 1286
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1287
    .line 1288
    .line 1289
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1290
    .line 1291
    check-cast p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 1292
    .line 1293
    iget-object p0, p0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 1294
    .line 1295
    const-string p1, "DefaultOutboxFolderManager"

    .line 1296
    .line 1297
    new-instance v1, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 1298
    .line 1299
    const/16 v2, 0x11

    .line 1300
    .line 1301
    invoke-direct {v1, v2}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1302
    .line 1303
    .line 1304
    invoke-interface {p0, p1, v0, v1}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 1305
    .line 1306
    .line 1307
    throw v0

    .line 1308
    :pswitch_1c
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->L$0:Ljava/lang/Object;

    .line 1309
    .line 1310
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1311
    .line 1312
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1313
    .line 1314
    .line 1315
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1316
    .line 1317
    .line 1318
    move-result-object p1

    .line 1319
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->$block:Ljava/lang/Object;

    .line 1320
    .line 1321
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 1322
    .line 1323
    :try_start_c
    new-instance v0, Lkotlinx/coroutines/ThreadState;

    .line 1324
    .line 1325
    invoke-direct {v0}, Lkotlinx/coroutines/ThreadState;-><init>()V

    .line 1326
    .line 1327
    .line 1328
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 1329
    .line 1330
    .line 1331
    move-result-object p1

    .line 1332
    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;)Lkotlinx/coroutines/DisposableHandle;

    .line 1333
    .line 1334
    .line 1335
    move-result-object p1

    .line 1336
    iput-object p1, v0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 1337
    .line 1338
    sget-object p1, Lkotlinx/coroutines/ThreadState;->_state$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 1339
    .line 1340
    :cond_1c
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 1341
    .line 1342
    .line 1343
    move-result v2

    .line 1344
    if-eqz v2, :cond_1e

    .line 1345
    .line 1346
    if-eq v2, v3, :cond_1f

    .line 1347
    .line 1348
    if-ne v2, v1, :cond_1d

    .line 1349
    .line 1350
    goto :goto_16

    .line 1351
    :cond_1d
    invoke-static {v2}, Lkotlinx/coroutines/ThreadState;->invalidState(I)V

    .line 1352
    .line 1353
    .line 1354
    throw v5

    .line 1355
    :cond_1e
    invoke-virtual {p1, v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 1356
    .line 1357
    .line 1358
    move-result v2
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2

    .line 1359
    if-eqz v2, :cond_1c

    .line 1360
    .line 1361
    :cond_1f
    :goto_16
    :try_start_d
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    move-result-object p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1365
    :try_start_e
    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadState;->clearInterrupt()V

    .line 1366
    .line 1367
    .line 1368
    return-object p0

    .line 1369
    :catchall_8
    move-exception p0

    .line 1370
    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadState;->clearInterrupt()V

    .line 1371
    .line 1372
    .line 1373
    throw p0
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2

    .line 1374
    :catch_2
    move-exception p0

    .line 1375
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 1376
    .line 1377
    const-string v0, "Blocking call was interrupted due to parent cancellation"

    .line 1378
    .line 1379
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1383
    .line 1384
    .line 1385
    move-result-object p0

    .line 1386
    throw p0

    .line 1387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
