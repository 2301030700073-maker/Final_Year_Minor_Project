.class public final Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 12
    iput p1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->this$0:Ljava/lang/Object;

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


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/search/SearchFragment;

    .line 15
    .line 16
    const/16 v0, 0x1d

    .line 17
    .line 18
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;

    .line 27
    .line 28
    check-cast v1, Lorg/wikipedia/search/RecentSearchesFragment;

    .line 29
    .line 30
    const/16 v0, 0x1c

    .line 31
    .line 32
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 41
    .line 42
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 43
    .line 44
    const/16 v0, 0x1b

    .line 45
    .line 46
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 51
    .line 52
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 55
    .line 56
    check-cast v1, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;

    .line 57
    .line 58
    const/16 v0, 0x1a

    .line 59
    .line 60
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :pswitch_3
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 65
    .line 66
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 67
    .line 68
    const/16 p1, 0x19

    .line 69
    .line 70
    invoke-direct {p0, p1, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_4
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 75
    .line 76
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Ljava/lang/String;

    .line 79
    .line 80
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;

    .line 81
    .line 82
    const/16 v0, 0x18

    .line 83
    .line 84
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_5
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 89
    .line 90
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 93
    .line 94
    check-cast v1, Ljava/util/List;

    .line 95
    .line 96
    const/16 v0, 0x17

    .line 97
    .line 98
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 99
    .line 100
    .line 101
    return-object p1

    .line 102
    :pswitch_6
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 103
    .line 104
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 107
    .line 108
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 109
    .line 110
    const/16 v0, 0x16

    .line 111
    .line 112
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :pswitch_7
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 117
    .line 118
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 121
    .line 122
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 123
    .line 124
    const/16 v0, 0x15

    .line 125
    .line 126
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 127
    .line 128
    .line 129
    return-object p1

    .line 130
    :pswitch_8
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 131
    .line 132
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 135
    .line 136
    check-cast v1, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 137
    .line 138
    const/16 v0, 0x14

    .line 139
    .line 140
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 141
    .line 142
    .line 143
    return-object p1

    .line 144
    :pswitch_9
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 145
    .line 146
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 149
    .line 150
    check-cast v1, Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;

    .line 151
    .line 152
    const/16 v0, 0x13

    .line 153
    .line 154
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 155
    .line 156
    .line 157
    return-object p1

    .line 158
    :pswitch_a
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 159
    .line 160
    check-cast v1, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;

    .line 161
    .line 162
    const/16 v0, 0x12

    .line 163
    .line 164
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 165
    .line 166
    .line 167
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 168
    .line 169
    return-object p0

    .line 170
    :pswitch_b
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 171
    .line 172
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p0, Lorg/wikipedia/language/LangLinksViewModel;

    .line 175
    .line 176
    check-cast v1, Ljava/lang/String;

    .line 177
    .line 178
    const/16 v0, 0x11

    .line 179
    .line 180
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 181
    .line 182
    .line 183
    return-object p1

    .line 184
    :pswitch_c
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 185
    .line 186
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p0, Ljava/util/List;

    .line 189
    .line 190
    check-cast v1, Lorg/wikipedia/history/HistoryViewModel;

    .line 191
    .line 192
    const/16 v0, 0x10

    .line 193
    .line 194
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 195
    .line 196
    .line 197
    return-object p1

    .line 198
    :pswitch_d
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 199
    .line 200
    check-cast v1, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 201
    .line 202
    const/16 p1, 0xf

    .line 203
    .line 204
    invoke-direct {p0, p1, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 205
    .line 206
    .line 207
    return-object p0

    .line 208
    :pswitch_e
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 209
    .line 210
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 213
    .line 214
    check-cast v1, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 215
    .line 216
    const/16 v0, 0xe

    .line 217
    .line 218
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 219
    .line 220
    .line 221
    return-object p1

    .line 222
    :pswitch_f
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 223
    .line 224
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 227
    .line 228
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 229
    .line 230
    const/16 v0, 0xd

    .line 231
    .line 232
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 233
    .line 234
    .line 235
    return-object p1

    .line 236
    :pswitch_10
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 237
    .line 238
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p0, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 241
    .line 242
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 243
    .line 244
    const/16 v0, 0xc

    .line 245
    .line 246
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 247
    .line 248
    .line 249
    return-object p1

    .line 250
    :pswitch_11
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 251
    .line 252
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 255
    .line 256
    check-cast v1, Ljava/util/Calendar;

    .line 257
    .line 258
    const/16 v0, 0xb

    .line 259
    .line 260
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 261
    .line 262
    .line 263
    return-object p1

    .line 264
    :pswitch_12
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 265
    .line 266
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 269
    .line 270
    check-cast v1, Ljava/util/List;

    .line 271
    .line 272
    const/16 v0, 0xa

    .line 273
    .line 274
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 275
    .line 276
    .line 277
    return-object p1

    .line 278
    :pswitch_13
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 279
    .line 280
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 283
    .line 284
    check-cast v1, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 285
    .line 286
    const/16 v0, 0x9

    .line 287
    .line 288
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 289
    .line 290
    .line 291
    return-object p1

    .line 292
    :pswitch_14
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 293
    .line 294
    check-cast v1, Lorg/wikipedia/edit/EditSectionActivity;

    .line 295
    .line 296
    const/16 v0, 0x8

    .line 297
    .line 298
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 299
    .line 300
    .line 301
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 302
    .line 303
    return-object p0

    .line 304
    :pswitch_15
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 305
    .line 306
    check-cast v1, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 307
    .line 308
    const/4 p1, 0x7

    .line 309
    invoke-direct {p0, p1, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 310
    .line 311
    .line 312
    return-object p0

    .line 313
    :pswitch_16
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 314
    .line 315
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 316
    .line 317
    const/4 v0, 0x6

    .line 318
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 319
    .line 320
    .line 321
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 322
    .line 323
    return-object p0

    .line 324
    :pswitch_17
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 325
    .line 326
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast p0, Ljava/lang/String;

    .line 329
    .line 330
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 331
    .line 332
    const/4 v0, 0x5

    .line 333
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 334
    .line 335
    .line 336
    return-object p1

    .line 337
    :pswitch_18
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 338
    .line 339
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 340
    .line 341
    const/4 p1, 0x4

    .line 342
    invoke-direct {p0, p1, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 343
    .line 344
    .line 345
    return-object p0

    .line 346
    :pswitch_19
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 347
    .line 348
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 349
    .line 350
    const/4 p1, 0x3

    .line 351
    invoke-direct {p0, p1, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 352
    .line 353
    .line 354
    return-object p0

    .line 355
    :pswitch_1a
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 356
    .line 357
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 360
    .line 361
    check-cast v1, Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 362
    .line 363
    const/4 v0, 0x2

    .line 364
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 365
    .line 366
    .line 367
    return-object p1

    .line 368
    :pswitch_1b
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 369
    .line 370
    iget-object p0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 373
    .line 374
    check-cast v1, Lorg/wikipedia/commons/FilePageViewModel;

    .line 375
    .line 376
    const/4 v0, 0x1

    .line 377
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 378
    .line 379
    .line 380
    return-object p1

    .line 381
    :pswitch_1c
    new-instance p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 382
    .line 383
    check-cast v1, Lorg/wikipedia/page/PageActivity;

    .line 384
    .line 385
    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 387
    .line 388
    .line 389
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 390
    .line 391
    return-object p0

    .line 392
    nop

    .line 393
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
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 144
    .line 145
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 159
    .line 160
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 174
    .line 175
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 182
    .line 183
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 189
    .line 190
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 204
    .line 205
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 206
    .line 207
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 212
    .line 213
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 219
    .line 220
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 221
    .line 222
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 227
    .line 228
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 234
    .line 235
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 236
    .line 237
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 242
    .line 243
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0

    .line 248
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 249
    .line 250
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 251
    .line 252
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 257
    .line 258
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    return-object p0

    .line 263
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 264
    .line 265
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 266
    .line 267
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 272
    .line 273
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    return-object p0

    .line 278
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 279
    .line 280
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 281
    .line 282
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    return-object p0

    .line 293
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 294
    .line 295
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 296
    .line 297
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 302
    .line 303
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    return-object p0

    .line 308
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 309
    .line 310
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 311
    .line 312
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 317
    .line 318
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0

    .line 323
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 324
    .line 325
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 326
    .line 327
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 332
    .line 333
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    return-object p0

    .line 338
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 339
    .line 340
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 341
    .line 342
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 347
    .line 348
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    return-object p0

    .line 353
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 354
    .line 355
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 356
    .line 357
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 362
    .line 363
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    return-object p0

    .line 368
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 369
    .line 370
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 371
    .line 372
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 377
    .line 378
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    return-object p0

    .line 383
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 384
    .line 385
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 386
    .line 387
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 392
    .line 393
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0

    .line 398
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 399
    .line 400
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 401
    .line 402
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 407
    .line 408
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    return-object p0

    .line 413
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 414
    .line 415
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 416
    .line 417
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 422
    .line 423
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    return-object p0

    .line 428
    :pswitch_1b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 429
    .line 430
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 431
    .line 432
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 437
    .line 438
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    return-object p0

    .line 443
    :pswitch_1c
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 444
    .line 445
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    check-cast p0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 450
    .line 451
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    return-object p0

    .line 456
    nop

    .line 457
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
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lorg/wikipedia/commons/ImageTagsProvider;->INSTANCE:Lorg/wikipedia/commons/ImageTagsProvider;

    .line 6
    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    const/16 v6, 0xa

    .line 14
    .line 15
    const/4 v7, 0x7

    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x0

    .line 18
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    iget-object v11, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->this$0:Ljava/lang/Object;

    .line 21
    .line 22
    const-string v12, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    const/4 v13, 0x1

    .line 25
    const/4 v14, 0x0

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-eq v2, v13, :cond_1

    .line 36
    .line 37
    if-ne v2, v8, :cond_0

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_0
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v10, v14

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 56
    .line 57
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->recentSearchDao()Lorg/wikipedia/search/db/RecentSearchDao_Impl;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v3, Lorg/wikipedia/search/db/RecentSearch;

    .line 66
    .line 67
    iget-object v5, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v5, Ljava/lang/String;

    .line 70
    .line 71
    new-instance v6, Ljava/util/Date;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v5, v6}, Lorg/wikipedia/search/db/RecentSearch;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 77
    .line 78
    .line 79
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 80
    .line 81
    iget-object v5, v2, Lorg/wikipedia/search/db/RecentSearchDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 82
    .line 83
    new-instance v6, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    invoke-direct {v6, v4, v2, v3}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v9, v13, v6, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-ne v2, v1, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    move-object v2, v10

    .line 96
    :goto_0
    if-ne v2, v1, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    :goto_1
    check-cast v11, Lorg/wikipedia/search/SearchFragment;

    .line 100
    .line 101
    iget-object v2, v11, Lorg/wikipedia/search/SearchFragment;->recentSearchesFragment:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 102
    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    iput v8, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Lorg/wikipedia/search/RecentSearchesFragment;->updateList(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-ne v0, v1, :cond_5

    .line 112
    .line 113
    :goto_2
    move-object v10, v1

    .line 114
    :cond_5
    :goto_3
    return-object v10

    .line 115
    :cond_6
    const-string v0, "recentSearchesFragment"

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v14

    .line 121
    :pswitch_0
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 122
    .line 123
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 124
    .line 125
    if-eqz v2, :cond_9

    .line 126
    .line 127
    if-eq v2, v13, :cond_8

    .line 128
    .line 129
    if-ne v2, v8, :cond_7

    .line 130
    .line 131
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_7
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object v10, v14

    .line 139
    goto :goto_8

    .line 140
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 148
    .line 149
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->recentSearchDao()Lorg/wikipedia/search/db/RecentSearchDao_Impl;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget-object v4, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v4, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;

    .line 160
    .line 161
    iget-object v4, v4, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;->recentSearch:Lorg/wikipedia/search/db/RecentSearch;

    .line 162
    .line 163
    if-eqz v4, :cond_e

    .line 164
    .line 165
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object v5, v4, Lorg/wikipedia/search/db/RecentSearch;->text:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v4, v4, Lorg/wikipedia/search/db/RecentSearch;->timestamp:Ljava/util/Date;

    .line 173
    .line 174
    iget-object v6, v2, Lorg/wikipedia/search/db/RecentSearchDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 175
    .line 176
    new-instance v7, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-direct {v7, v5, v2, v4, v3}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 179
    .line 180
    .line 181
    invoke-static {v6, v9, v13, v7, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-ne v2, v1, :cond_a

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_a
    move-object v2, v10

    .line 189
    :goto_4
    if-ne v2, v1, :cond_b

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_b
    move-object v2, v10

    .line 193
    :goto_5
    if-ne v2, v1, :cond_c

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_c
    :goto_6
    check-cast v11, Lorg/wikipedia/search/RecentSearchesFragment;

    .line 197
    .line 198
    iput v8, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 199
    .line 200
    invoke-virtual {v11, v0}, Lorg/wikipedia/search/RecentSearchesFragment;->updateList(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-ne v0, v1, :cond_d

    .line 205
    .line 206
    :goto_7
    move-object v10, v1

    .line 207
    :cond_d
    :goto_8
    return-object v10

    .line 208
    :cond_e
    const-string v0, "recentSearch"

    .line 209
    .line 210
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v14

    .line 214
    :pswitch_1
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 215
    .line 216
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 217
    .line 218
    if-eqz v2, :cond_10

    .line 219
    .line 220
    if-ne v2, v13, :cond_f

    .line 221
    .line 222
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v14, p1

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_f
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    check-cast v11, Lorg/wikipedia/page/PageTitle;

    .line 236
    .line 237
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 238
    .line 239
    iget-object v2, v11, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 240
    .line 241
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 242
    .line 243
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->getRestBasePath(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v11}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    :try_start_0
    const-string v5, "UTF-8"

    .line 252
    .line 253
    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    const-string v5, "+"

    .line 261
    .line 262
    const-string v6, "%20"

    .line 263
    .line 264
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const-string v3, "page/mobile-html/"

    .line 274
    .line 275
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-static {v2, v3, v11}, Lorg/wikipedia/savedpages/SavedPageSyncService;->makeUrlRequest(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)Lokhttp3/Request$Builder;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    new-instance v3, Lokhttp3/Request;

    .line 290
    .line 291
    invoke-direct {v3, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 292
    .line 293
    .line 294
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 295
    .line 296
    sget-object v2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 297
    .line 298
    new-instance v4, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveUrl$2;

    .line 299
    .line 300
    invoke-direct {v4, v3, v14, v13}, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveUrl$2;-><init>(Lokhttp3/Request;Lkotlin/coroutines/Continuation;I)V

    .line 301
    .line 302
    .line 303
    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-ne v0, v1, :cond_11

    .line 308
    .line 309
    move-object v14, v1

    .line 310
    goto :goto_9

    .line 311
    :cond_11
    move-object v14, v0

    .line 312
    goto :goto_9

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    :goto_9
    return-object v14

    .line 318
    :pswitch_2
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v1, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 321
    .line 322
    iget-object v1, v1, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->callsToExecute:Ljava/util/List;

    .line 323
    .line 324
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 325
    .line 326
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 327
    .line 328
    if-eqz v3, :cond_13

    .line 329
    .line 330
    if-ne v3, v13, :cond_12

    .line 331
    .line 332
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_12
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    move-object v10, v14

    .line 340
    goto :goto_b

    .line 341
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 345
    .line 346
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 359
    .line 360
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 365
    .line 366
    iget-object v5, v5, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    invoke-static {v5}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 377
    .line 378
    invoke-virtual {v3, v4, v5, v13, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    if-ne v0, v2, :cond_14

    .line 383
    .line 384
    move-object v10, v2

    .line 385
    goto :goto_b

    .line 386
    :cond_14
    :goto_a
    check-cast v11, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;

    .line 387
    .line 388
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 393
    .line 394
    iget-object v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 401
    .line 402
    invoke-interface {v11, v1, v0}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;->onDeleted(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 403
    .line 404
    .line 405
    :goto_b
    return-object v10

    .line 406
    :pswitch_3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 407
    .line 408
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 409
    .line 410
    if-eqz v2, :cond_16

    .line 411
    .line 412
    if-ne v2, v13, :cond_15

    .line 413
    .line 414
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 417
    .line 418
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    move-object v2, v0

    .line 422
    move-object/from16 v0, p1

    .line 423
    .line 424
    goto :goto_c

    .line 425
    :cond_15
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    move-object v10, v14

    .line 429
    goto :goto_d

    .line 430
    :cond_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    move-object v2, v11

    .line 434
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 435
    .line 436
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 437
    .line 438
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    iput-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 447
    .line 448
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 449
    .line 450
    invoke-virtual {v3, v0}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->getListsWithoutContents(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    if-ne v0, v1, :cond_17

    .line 455
    .line 456
    move-object v10, v1

    .line 457
    goto :goto_d

    .line 458
    :cond_17
    :goto_c
    check-cast v0, Ljava/util/List;

    .line 459
    .line 460
    iput-object v0, v2, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->currentReadingLists:Ljava/util/List;

    .line 461
    .line 462
    :goto_d
    return-object v10

    .line 463
    :pswitch_4
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v1, Ljava/lang/String;

    .line 466
    .line 467
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 468
    .line 469
    iget v5, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 470
    .line 471
    if-eqz v5, :cond_1a

    .line 472
    .line 473
    if-eq v5, v13, :cond_19

    .line 474
    .line 475
    if-ne v5, v8, :cond_18

    .line 476
    .line 477
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    move-object/from16 v0, p1

    .line 481
    .line 482
    goto :goto_10

    .line 483
    :cond_18
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    move-object v10, v14

    .line 487
    goto/16 :goto_12

    .line 488
    .line 489
    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    move-object/from16 v5, p1

    .line 493
    .line 494
    goto :goto_e

    .line 495
    :cond_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    sget-object v5, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 499
    .line 500
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 501
    .line 502
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 511
    .line 512
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-static {v5, v0}, Lorg/wikipedia/dataclient/Service$-CC;->getAllLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    if-ne v5, v2, :cond_1b

    .line 520
    .line 521
    goto :goto_f

    .line 522
    :cond_1b
    :goto_e
    check-cast v5, Ljava/util/List;

    .line 523
    .line 524
    sput-object v5, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 525
    .line 526
    sget-object v5, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 527
    .line 528
    sget-object v5, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 529
    .line 530
    new-instance v12, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 531
    .line 532
    const/16 v15, 0xb

    .line 533
    .line 534
    invoke-direct {v12, v15, v1, v14}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 535
    .line 536
    .line 537
    iput v8, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 538
    .line 539
    invoke-static {v5, v12, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    if-ne v0, v2, :cond_1c

    .line 544
    .line 545
    :goto_f
    move-object v10, v2

    .line 546
    goto/16 :goto_12

    .line 547
    .line 548
    :cond_1c
    :goto_10
    check-cast v0, Ljava/util/List;

    .line 549
    .line 550
    if-eqz v1, :cond_1d

    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-nez v1, :cond_24

    .line 557
    .line 558
    :cond_1d
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 559
    .line 560
    const v1, 0x7f120658

    .line 561
    .line 562
    .line 563
    invoke-static {v1, v9}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    if-eqz v1, :cond_21

    .line 571
    .line 572
    if-eq v1, v13, :cond_20

    .line 573
    .line 574
    if-eq v1, v8, :cond_1f

    .line 575
    .line 576
    const/4 v2, 0x3

    .line 577
    if-eq v1, v2, :cond_1e

    .line 578
    .line 579
    goto :goto_11

    .line 580
    :cond_1e
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;

    .line 581
    .line 582
    invoke-direct {v1, v4}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;-><init>(I)V

    .line 583
    .line 584
    .line 585
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 586
    .line 587
    .line 588
    goto :goto_11

    .line 589
    :cond_1f
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;

    .line 590
    .line 591
    invoke-direct {v1, v7}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;-><init>(I)V

    .line 592
    .line 593
    .line 594
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 595
    .line 596
    .line 597
    goto :goto_11

    .line 598
    :cond_20
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;

    .line 599
    .line 600
    invoke-direct {v1, v6}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;-><init>(I)V

    .line 601
    .line 602
    .line 603
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 604
    .line 605
    .line 606
    goto :goto_11

    .line 607
    :cond_21
    new-instance v1, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;

    .line 608
    .line 609
    invoke-direct {v1, v3}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;-><init>(I)V

    .line 610
    .line 611
    .line 612
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 613
    .line 614
    .line 615
    :goto_11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    if-eqz v2, :cond_23

    .line 624
    .line 625
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    instance-of v3, v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 630
    .line 631
    if-eqz v3, :cond_22

    .line 632
    .line 633
    move-object v3, v2

    .line 634
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 635
    .line 636
    invoke-virtual {v3}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    if-eqz v3, :cond_22

    .line 641
    .line 642
    move-object v14, v2

    .line 643
    :cond_23
    if-eqz v14, :cond_24

    .line 644
    .line 645
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    invoke-interface {v0, v9, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    :cond_24
    check-cast v11, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;

    .line 652
    .line 653
    invoke-interface {v11, v0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;->onCompleted(Ljava/util/List;)V

    .line 654
    .line 655
    .line 656
    :goto_12
    return-object v10

    .line 657
    :pswitch_5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 658
    .line 659
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 660
    .line 661
    if-eqz v2, :cond_26

    .line 662
    .line 663
    if-ne v2, v13, :cond_25

    .line 664
    .line 665
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    move-object/from16 v14, p1

    .line 669
    .line 670
    goto :goto_13

    .line 671
    :cond_25
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    goto :goto_13

    .line 675
    :cond_26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 679
    .line 680
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 685
    .line 686
    .line 687
    move-result-object v4

    .line 688
    iget-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 689
    .line 690
    move-object v5, v2

    .line 691
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 692
    .line 693
    move-object v6, v11

    .line 694
    check-cast v6, Ljava/util/List;

    .line 695
    .line 696
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 697
    .line 698
    iget-object v2, v4, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 699
    .line 700
    new-instance v3, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 701
    .line 702
    const/4 v7, 0x0

    .line 703
    const/4 v8, 0x4

    .line 704
    invoke-direct/range {v3 .. v8}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 705
    .line 706
    .line 707
    invoke-static {v2, v0, v3}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    if-ne v0, v1, :cond_27

    .line 712
    .line 713
    move-object v14, v1

    .line 714
    goto :goto_13

    .line 715
    :cond_27
    move-object v14, v0

    .line 716
    :goto_13
    return-object v14

    .line 717
    :pswitch_6
    check-cast v11, Lorg/wikipedia/page/PageTitle;

    .line 718
    .line 719
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 720
    .line 721
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 722
    .line 723
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 724
    .line 725
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 726
    .line 727
    if-eqz v3, :cond_29

    .line 728
    .line 729
    if-ne v3, v13, :cond_28

    .line 730
    .line 731
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 732
    .line 733
    .line 734
    goto :goto_15

    .line 735
    :cond_28
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    move-object v10, v14

    .line 739
    goto :goto_15

    .line 740
    :cond_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 741
    .line 742
    .line 743
    iget-object v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 744
    .line 745
    iget-object v4, v11, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 746
    .line 747
    invoke-static {v3, v4, v13}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    if-eqz v3, :cond_2a

    .line 752
    .line 753
    iget-object v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 754
    .line 755
    iget-object v4, v11, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 756
    .line 757
    invoke-static {v3, v4, v13}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    if-nez v3, :cond_2c

    .line 762
    .line 763
    :cond_2a
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 764
    .line 765
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 766
    .line 767
    .line 768
    move-result-object v3

    .line 769
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    iget-object v4, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 774
    .line 775
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 776
    .line 777
    iget-object v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 778
    .line 779
    iget-object v5, v11, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 780
    .line 781
    iget-object v6, v11, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 782
    .line 783
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 784
    .line 785
    iget-object v3, v3, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 786
    .line 787
    new-instance v14, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;

    .line 788
    .line 789
    const/4 v15, 0x1

    .line 790
    move-object/from16 v19, v1

    .line 791
    .line 792
    move-object/from16 v18, v4

    .line 793
    .line 794
    move-object/from16 v16, v5

    .line 795
    .line 796
    move-object/from16 v17, v6

    .line 797
    .line 798
    invoke-direct/range {v14 .. v19}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda13;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    invoke-static {v3, v9, v13, v14, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    if-ne v0, v2, :cond_2b

    .line 806
    .line 807
    goto :goto_14

    .line 808
    :cond_2b
    move-object v0, v10

    .line 809
    :goto_14
    if-ne v0, v2, :cond_2c

    .line 810
    .line 811
    move-object v10, v2

    .line 812
    :cond_2c
    :goto_15
    return-object v10

    .line 813
    :pswitch_7
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast v1, Lorg/wikipedia/page/PageFragment;

    .line 816
    .line 817
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 818
    .line 819
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 820
    .line 821
    if-eqz v3, :cond_2e

    .line 822
    .line 823
    if-ne v3, v13, :cond_2d

    .line 824
    .line 825
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    move-object/from16 v0, p1

    .line 829
    .line 830
    goto :goto_16

    .line 831
    :cond_2d
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    move-object v10, v14

    .line 835
    goto :goto_17

    .line 836
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    sget-object v3, Lorg/wikipedia/dataclient/donate/CampaignCollection;->INSTANCE:Lorg/wikipedia/dataclient/donate/CampaignCollection;

    .line 840
    .line 841
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 842
    .line 843
    invoke-virtual {v3, v0}, Lorg/wikipedia/dataclient/donate/CampaignCollection;->getActiveCampaigns(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    if-ne v0, v2, :cond_2f

    .line 848
    .line 849
    move-object v10, v2

    .line 850
    goto :goto_17

    .line 851
    :cond_2f
    :goto_16
    check-cast v0, Ljava/util/List;

    .line 852
    .line 853
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    if-eqz v2, :cond_31

    .line 862
    .line 863
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    move-object v3, v2

    .line 868
    check-cast v3, Lorg/wikipedia/dataclient/donate/Campaign;

    .line 869
    .line 870
    iget-object v4, v1, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 871
    .line 872
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v4

    .line 876
    invoke-virtual {v3, v4}, Lorg/wikipedia/dataclient/donate/Campaign;->getAssetsForLang(Ljava/lang/String;)Lorg/wikipedia/dataclient/donate/Campaign$Assets;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    if-eqz v3, :cond_30

    .line 881
    .line 882
    move-object v14, v2

    .line 883
    :cond_31
    check-cast v14, Lorg/wikipedia/dataclient/donate/Campaign;

    .line 884
    .line 885
    if-eqz v14, :cond_32

    .line 886
    .line 887
    check-cast v11, Lorg/wikipedia/page/PageTitle;

    .line 888
    .line 889
    iget-object v0, v1, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 890
    .line 891
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-virtual {v14, v0}, Lorg/wikipedia/dataclient/donate/Campaign;->getIdForLang(Ljava/lang/String;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 900
    .line 901
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAnnouncementShownDialogs()Ljava/util/Set;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    if-nez v2, :cond_32

    .line 910
    .line 911
    iget-object v2, v11, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 912
    .line 913
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 914
    .line 915
    const-string v3, "impression"

    .line 916
    .line 917
    const-string v4, "article_banner"

    .line 918
    .line 919
    invoke-static {v3, v4, v2, v0}, Lokhttp3/Cache$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    new-instance v0, Lorg/wikipedia/page/campaign/CampaignDialog;

    .line 923
    .line 924
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    new-instance v3, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 929
    .line 930
    const/16 v4, 0x10

    .line 931
    .line 932
    invoke-direct {v3, v4, v1}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 933
    .line 934
    .line 935
    invoke-direct {v0, v2, v14, v3}, Lorg/wikipedia/page/campaign/CampaignDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/donate/Campaign;Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;)V

    .line 936
    .line 937
    .line 938
    iput-object v0, v1, Lorg/wikipedia/page/PageFragment;->campaignDialog:Lorg/wikipedia/page/campaign/CampaignDialog;

    .line 939
    .line 940
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 943
    .line 944
    iput-boolean v9, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 945
    .line 946
    invoke-virtual {v0}, Lorg/wikipedia/page/campaign/CampaignDialog;->show()Landroidx/appcompat/app/AlertDialog;

    .line 947
    .line 948
    .line 949
    :cond_32
    :goto_17
    return-object v10

    .line 950
    :pswitch_8
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 953
    .line 954
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 955
    .line 956
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 957
    .line 958
    if-eqz v3, :cond_34

    .line 959
    .line 960
    if-ne v3, v13, :cond_33

    .line 961
    .line 962
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 963
    .line 964
    .line 965
    move-object/from16 v0, p1

    .line 966
    .line 967
    goto :goto_18

    .line 968
    :cond_33
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    move-object v10, v14

    .line 972
    goto :goto_19

    .line 973
    :cond_34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 977
    .line 978
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 979
    .line 980
    .line 981
    move-result-object v3

    .line 982
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 983
    .line 984
    .line 985
    move-result-object v3

    .line 986
    iget-object v4, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 987
    .line 988
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v4

    .line 992
    iget-object v5, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 993
    .line 994
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 995
    .line 996
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1001
    .line 1002
    iget-object v6, v3, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1003
    .line 1004
    new-instance v7, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda2;

    .line 1005
    .line 1006
    invoke-direct {v7, v4, v5, v1, v3}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/history/db/HistoryEntryDao_Impl;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-static {v6, v13, v9, v7, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    if-ne v0, v2, :cond_35

    .line 1014
    .line 1015
    move-object v10, v2

    .line 1016
    goto :goto_19

    .line 1017
    :cond_35
    :goto_18
    check-cast v0, Lorg/wikipedia/history/HistoryEntry;

    .line 1018
    .line 1019
    check-cast v11, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 1020
    .line 1021
    if-eqz v0, :cond_36

    .line 1022
    .line 1023
    move v9, v13

    .line 1024
    :cond_36
    invoke-virtual {v11, v9}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;->onFinish(Z)V

    .line 1025
    .line 1026
    .line 1027
    :goto_19
    return-object v10

    .line 1028
    :pswitch_9
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1029
    .line 1030
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1031
    .line 1032
    if-eqz v2, :cond_38

    .line 1033
    .line 1034
    if-ne v2, v13, :cond_37

    .line 1035
    .line 1036
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1037
    .line 1038
    .line 1039
    move-object/from16 v0, p1

    .line 1040
    .line 1041
    goto :goto_1a

    .line 1042
    :cond_37
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    move-object v10, v14

    .line 1046
    goto :goto_1b

    .line 1047
    :cond_38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1048
    .line 1049
    .line 1050
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1051
    .line 1052
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v2

    .line 1060
    iget-object v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1061
    .line 1062
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 1063
    .line 1064
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1065
    .line 1066
    invoke-virtual {v2, v3, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    if-ne v0, v1, :cond_39

    .line 1071
    .line 1072
    move-object v10, v1

    .line 1073
    goto :goto_1b

    .line 1074
    :cond_39
    :goto_1a
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1075
    .line 1076
    check-cast v11, Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;

    .line 1077
    .line 1078
    if-eqz v0, :cond_3a

    .line 1079
    .line 1080
    iget-boolean v1, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 1081
    .line 1082
    if-eqz v1, :cond_3a

    .line 1083
    .line 1084
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getSaving()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v0

    .line 1088
    if-nez v0, :cond_3a

    .line 1089
    .line 1090
    move v9, v13

    .line 1091
    :cond_3a
    invoke-interface {v11, v9}, Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;->onFinish(Z)V

    .line 1092
    .line 1093
    .line 1094
    :goto_1b
    return-object v10

    .line 1095
    :pswitch_a
    check-cast v11, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;

    .line 1096
    .line 1097
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1098
    .line 1099
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1100
    .line 1101
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1102
    .line 1103
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1104
    .line 1105
    if-eqz v3, :cond_3c

    .line 1106
    .line 1107
    if-ne v3, v13, :cond_3b

    .line 1108
    .line 1109
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1110
    .line 1111
    .line 1112
    move-object/from16 v0, p1

    .line 1113
    .line 1114
    goto :goto_1c

    .line 1115
    :cond_3b
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    move-object v10, v14

    .line 1119
    goto :goto_1d

    .line 1120
    :cond_3c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1121
    .line 1122
    .line 1123
    iget-object v3, v11, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1124
    .line 1125
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1126
    .line 1127
    .line 1128
    sget-object v4, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 1129
    .line 1130
    invoke-virtual {v3, v14, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1131
    .line 1132
    .line 1133
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1134
    .line 1135
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1136
    .line 1137
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v3

    .line 1145
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v3

    .line 1149
    iput-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1150
    .line 1151
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1152
    .line 1153
    invoke-interface {v3, v0}, Lorg/wikipedia/dataclient/Service;->getSiteMatrix(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    if-ne v0, v2, :cond_3d

    .line 1158
    .line 1159
    move-object v10, v2

    .line 1160
    goto :goto_1d

    .line 1161
    :cond_3d
    :goto_1c
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    .line 1162
    .line 1163
    sget-object v2, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;->Companion:Lorg/wikipedia/dataclient/mwapi/SiteMatrix$Companion;

    .line 1164
    .line 1165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    .line 1167
    .line 1168
    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$Companion;->getSites(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)Ljava/util/List;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    iget-object v2, v11, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->_siteInfoList:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1173
    .line 1174
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v2, v14, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v1}, Lkotlinx/coroutines/AwaitKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v0

    .line 1184
    if-eqz v0, :cond_3e

    .line 1185
    .line 1186
    invoke-static {v11}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    iget-object v1, v11, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 1191
    .line 1192
    new-instance v2, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 1193
    .line 1194
    const/16 v3, 0x12

    .line 1195
    .line 1196
    invoke-direct {v2, v11, v5, v14, v3}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v0, v1, v14, v2, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1200
    .line 1201
    .line 1202
    :cond_3e
    :goto_1d
    return-object v10

    .line 1203
    :pswitch_b
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1204
    .line 1205
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1206
    .line 1207
    if-eqz v2, :cond_40

    .line 1208
    .line 1209
    if-ne v2, v13, :cond_3f

    .line 1210
    .line 1211
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1212
    .line 1213
    .line 1214
    goto :goto_1e

    .line 1215
    :cond_3f
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    move-object v10, v14

    .line 1219
    goto :goto_1e

    .line 1220
    :cond_40
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1221
    .line 1222
    .line 1223
    iget-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1224
    .line 1225
    check-cast v2, Lorg/wikipedia/language/LangLinksViewModel;

    .line 1226
    .line 1227
    check-cast v11, Ljava/lang/String;

    .line 1228
    .line 1229
    iget-object v3, v2, Lorg/wikipedia/language/LangLinksViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1230
    .line 1231
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v3

    .line 1235
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1236
    .line 1237
    invoke-virtual {v2, v11, v3, v0}, Lorg/wikipedia/language/LangLinksViewModel;->fetchLangVariantLinks(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    if-ne v0, v1, :cond_41

    .line 1242
    .line 1243
    move-object v10, v1

    .line 1244
    :cond_41
    :goto_1e
    return-object v10

    .line 1245
    :pswitch_c
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1246
    .line 1247
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1248
    .line 1249
    if-eqz v2, :cond_44

    .line 1250
    .line 1251
    if-eq v2, v13, :cond_43

    .line 1252
    .line 1253
    if-ne v2, v8, :cond_42

    .line 1254
    .line 1255
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1256
    .line 1257
    .line 1258
    goto :goto_23

    .line 1259
    :cond_42
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1260
    .line 1261
    .line 1262
    move-object v10, v14

    .line 1263
    goto :goto_23

    .line 1264
    :cond_43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1265
    .line 1266
    .line 1267
    goto :goto_20

    .line 1268
    :cond_44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1269
    .line 1270
    .line 1271
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1272
    .line 1273
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v2

    .line 1277
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v2

    .line 1281
    iget-object v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1282
    .line 1283
    check-cast v3, Ljava/util/List;

    .line 1284
    .line 1285
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1286
    .line 1287
    iget-object v4, v2, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1288
    .line 1289
    new-instance v5, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 1290
    .line 1291
    const/4 v6, 0x6

    .line 1292
    invoke-direct {v5, v2, v3, v14, v6}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1293
    .line 1294
    .line 1295
    invoke-static {v4, v0, v5}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v2

    .line 1299
    if-ne v2, v1, :cond_45

    .line 1300
    .line 1301
    goto :goto_1f

    .line 1302
    :cond_45
    move-object v2, v10

    .line 1303
    :goto_1f
    if-ne v2, v1, :cond_46

    .line 1304
    .line 1305
    goto :goto_22

    .line 1306
    :cond_46
    :goto_20
    check-cast v11, Lorg/wikipedia/history/HistoryViewModel;

    .line 1307
    .line 1308
    iput v8, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1309
    .line 1310
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 1311
    .line 1312
    sget-object v2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 1313
    .line 1314
    new-instance v3, Lorg/wikipedia/history/HistoryViewModel$searchQuery$1;

    .line 1315
    .line 1316
    invoke-direct {v3, v11, v14, v13}, Lorg/wikipedia/history/HistoryViewModel$searchQuery$1;-><init>(Lorg/wikipedia/history/HistoryViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 1317
    .line 1318
    .line 1319
    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v0

    .line 1323
    if-ne v0, v1, :cond_47

    .line 1324
    .line 1325
    goto :goto_21

    .line 1326
    :cond_47
    move-object v0, v10

    .line 1327
    :goto_21
    if-ne v0, v1, :cond_48

    .line 1328
    .line 1329
    :goto_22
    move-object v10, v1

    .line 1330
    :cond_48
    :goto_23
    return-object v10

    .line 1331
    :pswitch_d
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1332
    .line 1333
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1334
    .line 1335
    if-eqz v2, :cond_4b

    .line 1336
    .line 1337
    if-eq v2, v13, :cond_4a

    .line 1338
    .line 1339
    if-ne v2, v8, :cond_49

    .line 1340
    .line 1341
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1342
    .line 1343
    check-cast v0, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 1344
    .line 1345
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1346
    .line 1347
    .line 1348
    move-object v2, v0

    .line 1349
    move-object/from16 v0, p1

    .line 1350
    .line 1351
    goto :goto_26

    .line 1352
    :cond_49
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    move-object v10, v14

    .line 1356
    goto :goto_28

    .line 1357
    :cond_4a
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1358
    .line 1359
    check-cast v0, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 1360
    .line 1361
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1362
    .line 1363
    .line 1364
    move-object v2, v0

    .line 1365
    move-object/from16 v0, p1

    .line 1366
    .line 1367
    goto :goto_24

    .line 1368
    :cond_4b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1369
    .line 1370
    .line 1371
    move-object v2, v11

    .line 1372
    check-cast v2, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 1373
    .line 1374
    iget-object v3, v2, Lorg/wikipedia/gallery/GalleryViewModel;->revision:Ljava/lang/Long;

    .line 1375
    .line 1376
    iget-object v4, v2, Lorg/wikipedia/gallery/GalleryViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1377
    .line 1378
    if-eqz v4, :cond_4f

    .line 1379
    .line 1380
    if-eqz v3, :cond_4d

    .line 1381
    .line 1382
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1383
    .line 1384
    iget-object v5, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1385
    .line 1386
    invoke-static {v5}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v5

    .line 1390
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v4

    .line 1394
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1395
    .line 1396
    .line 1397
    move-result-wide v6

    .line 1398
    iput-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1399
    .line 1400
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1401
    .line 1402
    invoke-interface {v5, v4, v6, v7, v0}, Lorg/wikipedia/dataclient/RestService;->getMediaList(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v0

    .line 1406
    if-ne v0, v1, :cond_4c

    .line 1407
    .line 1408
    goto :goto_25

    .line 1409
    :cond_4c
    :goto_24
    check-cast v0, Lorg/wikipedia/gallery/MediaList;

    .line 1410
    .line 1411
    goto :goto_27

    .line 1412
    :cond_4d
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1413
    .line 1414
    iget-object v3, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1415
    .line 1416
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v3

    .line 1420
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v4

    .line 1424
    iput-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1425
    .line 1426
    iput v8, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1427
    .line 1428
    invoke-static {v3, v4, v0}, Lorg/wikipedia/dataclient/Service$-CC;->getMediaList$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    if-ne v0, v1, :cond_4e

    .line 1433
    .line 1434
    :goto_25
    move-object v10, v1

    .line 1435
    goto :goto_28

    .line 1436
    :cond_4e
    :goto_26
    check-cast v0, Lorg/wikipedia/gallery/MediaList;

    .line 1437
    .line 1438
    :goto_27
    iget-object v1, v2, Lorg/wikipedia/gallery/GalleryViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1439
    .line 1440
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 1441
    .line 1442
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v1, v14, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1449
    .line 1450
    .line 1451
    :cond_4f
    :goto_28
    return-object v10

    .line 1452
    :pswitch_e
    check-cast v11, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 1453
    .line 1454
    iget-object v1, v11, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;->topic:Lorg/wikipedia/topics/ArticleTopic;

    .line 1455
    .line 1456
    iget-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1457
    .line 1458
    check-cast v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 1459
    .line 1460
    iget-object v3, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1461
    .line 1462
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1463
    .line 1464
    iget v5, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1465
    .line 1466
    if-eqz v5, :cond_51

    .line 1467
    .line 1468
    if-ne v5, v13, :cond_50

    .line 1469
    .line 1470
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1471
    .line 1472
    .line 1473
    move-object/from16 v0, p1

    .line 1474
    .line 1475
    goto :goto_29

    .line 1476
    :cond_50
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    move-object v10, v14

    .line 1480
    goto/16 :goto_2c

    .line 1481
    .line 1482
    :cond_51
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1483
    .line 1484
    .line 1485
    :cond_52
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v5

    .line 1489
    move-object v14, v5

    .line 1490
    check-cast v14, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 1491
    .line 1492
    const/16 v27, 0x0

    .line 1493
    .line 1494
    const/16 v28, 0x7ff3

    .line 1495
    .line 1496
    const/4 v15, 0x0

    .line 1497
    const/16 v16, 0x1

    .line 1498
    .line 1499
    const/16 v17, 0x0

    .line 1500
    .line 1501
    const/16 v18, 0x0

    .line 1502
    .line 1503
    const/16 v19, 0x0

    .line 1504
    .line 1505
    const/16 v20, 0x0

    .line 1506
    .line 1507
    const/16 v21, 0x0

    .line 1508
    .line 1509
    const/16 v22, 0x0

    .line 1510
    .line 1511
    const/16 v23, 0x0

    .line 1512
    .line 1513
    const/16 v24, 0x0

    .line 1514
    .line 1515
    const/16 v25, 0x0

    .line 1516
    .line 1517
    const/16 v26, 0x0

    .line 1518
    .line 1519
    invoke-static/range {v14 .. v28}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v7

    .line 1523
    invoke-virtual {v3, v5, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v5

    .line 1527
    if-eqz v5, :cond_52

    .line 1528
    .line 1529
    iget-object v2, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 1530
    .line 1531
    iget-object v5, v1, Lorg/wikipedia/topics/ArticleTopic;->queryTopicId:Ljava/lang/String;

    .line 1532
    .line 1533
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1534
    .line 1535
    invoke-virtual {v2, v5, v0}, Lretrofit2/Retrofit;->getArticlesByTopic(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v0

    .line 1539
    if-ne v0, v4, :cond_53

    .line 1540
    .line 1541
    move-object v10, v4

    .line 1542
    goto/16 :goto_2c

    .line 1543
    .line 1544
    :cond_53
    :goto_29
    move-object v5, v0

    .line 1545
    check-cast v5, Ljava/util/List;

    .line 1546
    .line 1547
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1548
    .line 1549
    .line 1550
    new-instance v7, Ljava/util/ArrayList;

    .line 1551
    .line 1552
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1553
    .line 1554
    .line 1555
    move-result v0

    .line 1556
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1557
    .line 1558
    .line 1559
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v0

    .line 1563
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1564
    .line 1565
    .line 1566
    move-result v2

    .line 1567
    if-eqz v2, :cond_54

    .line 1568
    .line 1569
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v2

    .line 1573
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 1574
    .line 1575
    new-instance v4, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;

    .line 1576
    .line 1577
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v6

    .line 1581
    iget-object v8, v2, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 1582
    .line 1583
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 1584
    .line 1585
    sget-object v9, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1586
    .line 1587
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v9

    .line 1591
    iget v11, v1, Lorg/wikipedia/topics/ArticleTopic;->msgKey:I

    .line 1592
    .line 1593
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v9

    .line 1597
    invoke-direct {v4, v6, v8, v2, v9}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    .line 1602
    .line 1603
    goto :goto_2a

    .line 1604
    :cond_54
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    move-object v11, v0

    .line 1609
    check-cast v11, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 1610
    .line 1611
    iget-object v2, v11, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 1612
    .line 1613
    check-cast v2, Ljava/lang/Iterable;

    .line 1614
    .line 1615
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v2

    .line 1619
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v2

    .line 1623
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v2

    .line 1627
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v12

    .line 1631
    iget-object v2, v11, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->topicPreviewContent:Ljava/util/Map;

    .line 1632
    .line 1633
    iget-object v4, v1, Lorg/wikipedia/topics/ArticleTopic;->topicId:Ljava/lang/String;

    .line 1634
    .line 1635
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1636
    .line 1637
    .line 1638
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 1639
    .line 1640
    .line 1641
    move-result v6

    .line 1642
    if-eqz v6, :cond_55

    .line 1643
    .line 1644
    invoke-static {v4, v7}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v2

    .line 1648
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1649
    .line 1650
    .line 1651
    move-object/from16 v17, v2

    .line 1652
    .line 1653
    goto :goto_2b

    .line 1654
    :cond_55
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 1655
    .line 1656
    invoke-direct {v6, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1657
    .line 1658
    .line 1659
    invoke-virtual {v6, v4, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-object/from16 v17, v6

    .line 1663
    .line 1664
    :goto_2b
    const/16 v24, 0x0

    .line 1665
    .line 1666
    const/16 v25, 0x7fb9

    .line 1667
    .line 1668
    const/4 v13, 0x0

    .line 1669
    const/4 v14, 0x0

    .line 1670
    const/4 v15, 0x0

    .line 1671
    const/16 v16, 0x0

    .line 1672
    .line 1673
    const/16 v18, 0x0

    .line 1674
    .line 1675
    const/16 v19, 0x0

    .line 1676
    .line 1677
    const/16 v20, 0x0

    .line 1678
    .line 1679
    const/16 v21, 0x0

    .line 1680
    .line 1681
    const/16 v22, 0x0

    .line 1682
    .line 1683
    const/16 v23, 0x0

    .line 1684
    .line 1685
    invoke-static/range {v11 .. v25}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v2

    .line 1689
    invoke-virtual {v3, v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1690
    .line 1691
    .line 1692
    move-result v0

    .line 1693
    if-eqz v0, :cond_54

    .line 1694
    .line 1695
    :goto_2c
    return-object v10

    .line 1696
    :pswitch_f
    move-object v1, v11

    .line 1697
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 1698
    .line 1699
    iget-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1700
    .line 1701
    check-cast v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 1702
    .line 1703
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1704
    .line 1705
    iget v4, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1706
    .line 1707
    if-eqz v4, :cond_57

    .line 1708
    .line 1709
    if-ne v4, v13, :cond_56

    .line 1710
    .line 1711
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1712
    .line 1713
    .line 1714
    goto :goto_2d

    .line 1715
    :cond_56
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1716
    .line 1717
    .line 1718
    move-object v10, v14

    .line 1719
    goto :goto_2e

    .line 1720
    :cond_57
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1721
    .line 1722
    .line 1723
    iput-boolean v13, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestsUpdated:Z

    .line 1724
    .line 1725
    sget-object v4, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->Factory:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 1726
    .line 1727
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1728
    .line 1729
    const v4, 0x7f12060b

    .line 1730
    .line 1731
    .line 1732
    invoke-static {v4, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 1733
    .line 1734
    .line 1735
    iget-object v4, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 1736
    .line 1737
    iget-object v5, v4, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 1738
    .line 1739
    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 1740
    .line 1741
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1742
    .line 1743
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1744
    .line 1745
    invoke-virtual {v4, v1, v5, v0}, Lretrofit2/Retrofit;->saveArticle(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v0

    .line 1749
    if-ne v0, v3, :cond_58

    .line 1750
    .line 1751
    move-object v10, v3

    .line 1752
    goto :goto_2e

    .line 1753
    :cond_58
    :goto_2d
    iget-object v2, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1754
    .line 1755
    :cond_59
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v0

    .line 1759
    move-object v11, v0

    .line 1760
    check-cast v11, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 1761
    .line 1762
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v3

    .line 1766
    iget-object v4, v11, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 1767
    .line 1768
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v12

    .line 1772
    iget-object v3, v11, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->selectedArticles:Ljava/util/Set;

    .line 1773
    .line 1774
    invoke-static {v3, v1}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v15

    .line 1778
    const/16 v24, 0x0

    .line 1779
    .line 1780
    const/16 v25, 0x7fed

    .line 1781
    .line 1782
    const/4 v13, 0x0

    .line 1783
    const/4 v14, 0x0

    .line 1784
    const/16 v16, 0x0

    .line 1785
    .line 1786
    const/16 v17, 0x0

    .line 1787
    .line 1788
    const/16 v18, 0x0

    .line 1789
    .line 1790
    const/16 v19, 0x0

    .line 1791
    .line 1792
    const/16 v20, 0x0

    .line 1793
    .line 1794
    const/16 v21, 0x0

    .line 1795
    .line 1796
    const/16 v22, 0x0

    .line 1797
    .line 1798
    const/16 v23, 0x0

    .line 1799
    .line 1800
    invoke-static/range {v11 .. v25}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v3

    .line 1804
    invoke-virtual {v2, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1805
    .line 1806
    .line 1807
    move-result v0

    .line 1808
    if-eqz v0, :cond_59

    .line 1809
    .line 1810
    :goto_2e
    return-object v10

    .line 1811
    :pswitch_10
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1812
    .line 1813
    check-cast v1, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 1814
    .line 1815
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1816
    .line 1817
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1818
    .line 1819
    if-eqz v3, :cond_5b

    .line 1820
    .line 1821
    if-ne v3, v13, :cond_5a

    .line 1822
    .line 1823
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1824
    .line 1825
    .line 1826
    goto :goto_2f

    .line 1827
    :cond_5a
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1828
    .line 1829
    .line 1830
    move-object v10, v14

    .line 1831
    goto :goto_2f

    .line 1832
    :cond_5b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 1836
    .line 1837
    .line 1838
    move-result v3

    .line 1839
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    .line 1840
    .line 1841
    .line 1842
    move-result v4

    .line 1843
    sub-int/2addr v4, v13

    .line 1844
    if-ge v3, v4, :cond_5c

    .line 1845
    .line 1846
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 1847
    .line 1848
    .line 1849
    move-result v3

    .line 1850
    add-int/2addr v3, v13

    .line 1851
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1852
    .line 1853
    invoke-static {v1, v3, v0}, Landroidx/compose/foundation/pager/PagerState;->animateScrollToPage$default(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v0

    .line 1857
    if-ne v0, v2, :cond_5d

    .line 1858
    .line 1859
    move-object v10, v2

    .line 1860
    goto :goto_2f

    .line 1861
    :cond_5c
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 1862
    .line 1863
    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1864
    .line 1865
    .line 1866
    :cond_5d
    :goto_2f
    return-object v10

    .line 1867
    :pswitch_11
    check-cast v11, Ljava/util/Calendar;

    .line 1868
    .line 1869
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1870
    .line 1871
    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 1872
    .line 1873
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1874
    .line 1875
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1876
    .line 1877
    if-eqz v3, :cond_5f

    .line 1878
    .line 1879
    if-ne v3, v13, :cond_5e

    .line 1880
    .line 1881
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1882
    .line 1883
    .line 1884
    move-object/from16 v0, p1

    .line 1885
    .line 1886
    goto :goto_30

    .line 1887
    :cond_5e
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1888
    .line 1889
    .line 1890
    move-object v10, v14

    .line 1891
    goto :goto_31

    .line 1892
    :cond_5f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1893
    .line 1894
    .line 1895
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1896
    .line 1897
    iget-object v3, v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1898
    .line 1899
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v3

    .line 1903
    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    .line 1904
    .line 1905
    .line 1906
    move-result v4

    .line 1907
    add-int/2addr v4, v13

    .line 1908
    const/4 v5, 0x5

    .line 1909
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    .line 1910
    .line 1911
    .line 1912
    move-result v5

    .line 1913
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1914
    .line 1915
    invoke-interface {v3, v4, v5, v0}, Lorg/wikipedia/dataclient/RestService;->getOnThisDay(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v0

    .line 1919
    if-ne v0, v2, :cond_60

    .line 1920
    .line 1921
    move-object v10, v2

    .line 1922
    goto :goto_31

    .line 1923
    :cond_60
    :goto_30
    check-cast v0, Lorg/wikipedia/feed/onthisday/OnThisDay;

    .line 1924
    .line 1925
    iget-object v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1926
    .line 1927
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 1928
    .line 1929
    iget-object v3, v0, Lorg/wikipedia/feed/onthisday/OnThisDay;->events:Ljava/util/List;

    .line 1930
    .line 1931
    iget-object v4, v0, Lorg/wikipedia/feed/onthisday/OnThisDay;->births:Ljava/util/List;

    .line 1932
    .line 1933
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v3

    .line 1937
    iget-object v4, v0, Lorg/wikipedia/feed/onthisday/OnThisDay;->deaths:Ljava/util/List;

    .line 1938
    .line 1939
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v3

    .line 1943
    iget-object v0, v0, Lorg/wikipedia/feed/onthisday/OnThisDay;->holidays:Ljava/util/List;

    .line 1944
    .line 1945
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v0

    .line 1949
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 1950
    .line 1951
    const/16 v4, 0x1b

    .line 1952
    .line 1953
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 1954
    .line 1955
    .line 1956
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v0

    .line 1960
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 1961
    .line 1962
    .line 1963
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v1, v14, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1967
    .line 1968
    .line 1969
    :goto_31
    return-object v10

    .line 1970
    :pswitch_12
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 1971
    .line 1972
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListState;

    .line 1973
    .line 1974
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1975
    .line 1976
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 1977
    .line 1978
    if-eqz v3, :cond_62

    .line 1979
    .line 1980
    if-ne v3, v13, :cond_61

    .line 1981
    .line 1982
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1983
    .line 1984
    .line 1985
    goto :goto_32

    .line 1986
    :cond_61
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1987
    .line 1988
    .line 1989
    move-object v10, v14

    .line 1990
    goto :goto_32

    .line 1991
    :cond_62
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1992
    .line 1993
    .line 1994
    new-instance v3, Lorg/wikipedia/feed/ForYouContentTabKt$ForYouContentTab$7$1$1$$ExternalSyntheticLambda0;

    .line 1995
    .line 1996
    invoke-direct {v3, v1, v9}, Lorg/wikipedia/feed/ForYouContentTabKt$ForYouContentTab$7$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    .line 1997
    .line 1998
    .line 1999
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v3

    .line 2003
    new-instance v4, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 2004
    .line 2005
    check-cast v11, Ljava/util/List;

    .line 2006
    .line 2007
    const/16 v5, 0x11

    .line 2008
    .line 2009
    invoke-direct {v4, v5, v11, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2010
    .line 2011
    .line 2012
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2013
    .line 2014
    invoke-virtual {v3, v4, v0}, Lkotlinx/coroutines/flow/SafeFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v0

    .line 2018
    if-ne v0, v2, :cond_63

    .line 2019
    .line 2020
    move-object v10, v2

    .line 2021
    :cond_63
    :goto_32
    return-object v10

    .line 2022
    :pswitch_13
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2023
    .line 2024
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 2025
    .line 2026
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2027
    .line 2028
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2029
    .line 2030
    if-eqz v3, :cond_65

    .line 2031
    .line 2032
    if-ne v3, v13, :cond_64

    .line 2033
    .line 2034
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2035
    .line 2036
    .line 2037
    move-object/from16 v0, p1

    .line 2038
    .line 2039
    goto :goto_33

    .line 2040
    :cond_64
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2041
    .line 2042
    .line 2043
    move-object v10, v14

    .line 2044
    goto :goto_35

    .line 2045
    :cond_65
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2046
    .line 2047
    .line 2048
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2049
    .line 2050
    iget-object v3, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 2051
    .line 2052
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v3

    .line 2056
    iget-object v4, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 2057
    .line 2058
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2059
    .line 2060
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v5

    .line 2064
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2065
    .line 2066
    invoke-interface {v3, v4, v5, v0}, Lorg/wikipedia/dataclient/Service;->getTemplateData(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v0

    .line 2070
    if-ne v0, v2, :cond_66

    .line 2071
    .line 2072
    move-object v10, v2

    .line 2073
    goto :goto_35

    .line 2074
    :cond_66
    :goto_33
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse;

    .line 2075
    .line 2076
    check-cast v11, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 2077
    .line 2078
    iget-object v2, v11, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2079
    .line 2080
    new-instance v3, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadTemplateData;

    .line 2081
    .line 2082
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse;->pages:Ljava/util/Map;

    .line 2083
    .line 2084
    if-eqz v0, :cond_67

    .line 2085
    .line 2086
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v0

    .line 2090
    if-eqz v0, :cond_67

    .line 2091
    .line 2092
    check-cast v0, Ljava/lang/Iterable;

    .line 2093
    .line 2094
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v0

    .line 2098
    goto :goto_34

    .line 2099
    :cond_67
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 2100
    .line 2101
    :goto_34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v0

    .line 2105
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;

    .line 2106
    .line 2107
    invoke-direct {v3, v1, v0}, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel$UiState$LoadTemplateData;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/dataclient/mwapi/TemplateDataResponse$TemplateData;)V

    .line 2108
    .line 2109
    .line 2110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2111
    .line 2112
    .line 2113
    invoke-virtual {v2, v14, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2114
    .line 2115
    .line 2116
    :goto_35
    return-object v10

    .line 2117
    :pswitch_14
    check-cast v11, Lorg/wikipedia/edit/EditSectionActivity;

    .line 2118
    .line 2119
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2120
    .line 2121
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 2122
    .line 2123
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2124
    .line 2125
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2126
    .line 2127
    if-eqz v3, :cond_69

    .line 2128
    .line 2129
    if-ne v3, v13, :cond_68

    .line 2130
    .line 2131
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2132
    .line 2133
    .line 2134
    goto :goto_36

    .line 2135
    :cond_68
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2136
    .line 2137
    .line 2138
    move-object v10, v14

    .line 2139
    goto :goto_36

    .line 2140
    :cond_69
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2141
    .line 2142
    .line 2143
    sget v3, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 2144
    .line 2145
    invoke-virtual {v11}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v3

    .line 2149
    iget-object v3, v3, Lorg/wikipedia/edit/EditSectionViewModel;->postEditState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2150
    .line 2151
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 2152
    .line 2153
    invoke-direct {v4, v11, v1, v14, v7}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2154
    .line 2155
    .line 2156
    iput-object v14, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2157
    .line 2158
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2159
    .line 2160
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2161
    .line 2162
    .line 2163
    move-result-object v0

    .line 2164
    if-ne v0, v2, :cond_6a

    .line 2165
    .line 2166
    move-object v10, v2

    .line 2167
    :cond_6a
    :goto_36
    return-object v10

    .line 2168
    :pswitch_15
    check-cast v11, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 2169
    .line 2170
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2171
    .line 2172
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2173
    .line 2174
    if-eqz v2, :cond_6c

    .line 2175
    .line 2176
    if-ne v2, v13, :cond_6b

    .line 2177
    .line 2178
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2179
    .line 2180
    check-cast v0, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 2181
    .line 2182
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2183
    .line 2184
    .line 2185
    move-object v3, v0

    .line 2186
    move-object/from16 v0, p1

    .line 2187
    .line 2188
    goto/16 :goto_39

    .line 2189
    .line 2190
    :cond_6b
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2191
    .line 2192
    .line 2193
    move-object v10, v14

    .line 2194
    goto/16 :goto_3a

    .line 2195
    .line 2196
    :cond_6c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2197
    .line 2198
    .line 2199
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2200
    .line 2201
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v2

    .line 2205
    sget-object v3, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->defaultReadFrequencyOptions:Ljava/util/List;

    .line 2206
    .line 2207
    new-instance v4, Ljava/util/ArrayList;

    .line 2208
    .line 2209
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 2210
    .line 2211
    .line 2212
    move-result v5

    .line 2213
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2214
    .line 2215
    .line 2216
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v5

    .line 2220
    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 2221
    .line 2222
    .line 2223
    move-result v6

    .line 2224
    if-eqz v6, :cond_6d

    .line 2225
    .line 2226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v6

    .line 2230
    check-cast v6, Ljava/lang/Number;

    .line 2231
    .line 2232
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 2233
    .line 2234
    .line 2235
    move-result v6

    .line 2236
    new-instance v8, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;

    .line 2237
    .line 2238
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2239
    .line 2240
    .line 2241
    move-result-object v12

    .line 2242
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v14

    .line 2246
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v15

    .line 2250
    move/from16 v16, v9

    .line 2251
    .line 2252
    new-array v9, v13, [Ljava/lang/Object;

    .line 2253
    .line 2254
    aput-object v15, v9, v16

    .line 2255
    .line 2256
    const v15, 0x7f100008

    .line 2257
    .line 2258
    .line 2259
    invoke-virtual {v14, v15, v6, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v6

    .line 2263
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2264
    .line 2265
    .line 2266
    invoke-direct {v8, v6, v12}, Lorg/wikipedia/donate/donationreminder/OptionItem$Preset;-><init>(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2267
    .line 2268
    .line 2269
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2270
    .line 2271
    .line 2272
    move/from16 v9, v16

    .line 2273
    .line 2274
    goto :goto_37

    .line 2275
    :cond_6d
    new-instance v5, Lorg/wikipedia/donate/donationreminder/OptionItem$Custom;

    .line 2276
    .line 2277
    const v6, 0x7f120182

    .line 2278
    .line 2279
    .line 2280
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v6

    .line 2284
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2285
    .line 2286
    .line 2287
    invoke-direct {v5, v6}, Lorg/wikipedia/donate/donationreminder/OptionItem;-><init>(Ljava/lang/String;)V

    .line 2288
    .line 2289
    .line 2290
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v16

    .line 2294
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2295
    .line 2296
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 2297
    .line 2298
    .line 2299
    move-result-object v4

    .line 2300
    iget v4, v4, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 2301
    .line 2302
    if-gtz v4, :cond_6e

    .line 2303
    .line 2304
    iget v4, v11, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->preSelectedArticleFrequency:I

    .line 2305
    .line 2306
    goto :goto_38

    .line 2307
    :cond_6e
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v4

    .line 2311
    iget v4, v4, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->articleFrequency:I

    .line 2312
    .line 2313
    :goto_38
    iget v5, v11, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->minArticleFrequencyLimit:I

    .line 2314
    .line 2315
    iget v6, v11, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->maxArticleFrequencyLimit:I

    .line 2316
    .line 2317
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v3

    .line 2321
    check-cast v3, Ljava/lang/Number;

    .line 2322
    .line 2323
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 2324
    .line 2325
    .line 2326
    move-result v3

    .line 2327
    new-instance v14, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 2328
    .line 2329
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v15

    .line 2333
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v17

    .line 2337
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2338
    .line 2339
    .line 2340
    move-result-object v18

    .line 2341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v19

    .line 2345
    new-instance v3, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 2346
    .line 2347
    invoke-direct {v3, v7, v2}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 2348
    .line 2349
    .line 2350
    move-object/from16 v20, v3

    .line 2351
    .line 2352
    invoke-direct/range {v14 .. v20}, Lorg/wikipedia/donate/donationreminder/SelectableOption;-><init>(Ljava/lang/Number;Ljava/util/List;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;)V

    .line 2353
    .line 2354
    .line 2355
    iput-object v14, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2356
    .line 2357
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2358
    .line 2359
    invoke-virtual {v11, v0}, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->createDonationAmountOptions(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v0

    .line 2363
    if-ne v0, v1, :cond_6f

    .line 2364
    .line 2365
    move-object v10, v1

    .line 2366
    goto :goto_3a

    .line 2367
    :cond_6f
    move-object v3, v14

    .line 2368
    :goto_39
    move-object v4, v0

    .line 2369
    check-cast v4, Lorg/wikipedia/donate/donationreminder/SelectableOption;

    .line 2370
    .line 2371
    iget-object v7, v11, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2372
    .line 2373
    :cond_70
    invoke-virtual {v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v0

    .line 2377
    move-object v1, v0

    .line 2378
    check-cast v1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 2379
    .line 2380
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2381
    .line 2382
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 2383
    .line 2384
    .line 2385
    move-result-object v2

    .line 2386
    iget-boolean v2, v2, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->userEnabled:Z

    .line 2387
    .line 2388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2389
    .line 2390
    .line 2391
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2392
    .line 2393
    .line 2394
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2395
    .line 2396
    .line 2397
    new-instance v1, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;

    .line 2398
    .line 2399
    const/4 v5, 0x0

    .line 2400
    const/4 v6, 0x0

    .line 2401
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/donate/donationreminder/DonationReminderUiState;-><init>(ZLorg/wikipedia/donate/donationreminder/SelectableOption;Lorg/wikipedia/donate/donationreminder/SelectableOption;ZLjava/lang/Throwable;)V

    .line 2402
    .line 2403
    .line 2404
    invoke-virtual {v7, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2405
    .line 2406
    .line 2407
    move-result v0

    .line 2408
    if-eqz v0, :cond_70

    .line 2409
    .line 2410
    :goto_3a
    return-object v10

    .line 2411
    :pswitch_16
    check-cast v11, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 2412
    .line 2413
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2414
    .line 2415
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 2416
    .line 2417
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2418
    .line 2419
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2420
    .line 2421
    if-eqz v3, :cond_72

    .line 2422
    .line 2423
    if-eq v3, v13, :cond_71

    .line 2424
    .line 2425
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2426
    .line 2427
    .line 2428
    goto :goto_3c

    .line 2429
    :cond_71
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2430
    .line 2431
    .line 2432
    goto :goto_3b

    .line 2433
    :cond_72
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2434
    .line 2435
    .line 2436
    invoke-virtual {v11}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 2437
    .line 2438
    .line 2439
    move-result-object v3

    .line 2440
    iget-object v3, v3, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->postDescriptionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2441
    .line 2442
    new-instance v4, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;

    .line 2443
    .line 2444
    invoke-direct {v4, v11, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1$1$2$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Lkotlinx/coroutines/CoroutineScope;)V

    .line 2445
    .line 2446
    .line 2447
    iput-object v14, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2448
    .line 2449
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2450
    .line 2451
    iget-object v1, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2452
    .line 2453
    invoke-virtual {v1, v4, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2454
    .line 2455
    .line 2456
    move-result-object v0

    .line 2457
    if-ne v0, v2, :cond_73

    .line 2458
    .line 2459
    move-object v14, v2

    .line 2460
    goto :goto_3c

    .line 2461
    :cond_73
    :goto_3b
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 2462
    .line 2463
    .line 2464
    :goto_3c
    return-object v14

    .line 2465
    :pswitch_17
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2466
    .line 2467
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2468
    .line 2469
    if-eqz v2, :cond_75

    .line 2470
    .line 2471
    if-ne v2, v13, :cond_74

    .line 2472
    .line 2473
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2474
    .line 2475
    .line 2476
    move-object/from16 v14, p1

    .line 2477
    .line 2478
    goto :goto_3d

    .line 2479
    :cond_74
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2480
    .line 2481
    .line 2482
    goto :goto_3d

    .line 2483
    :cond_75
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2484
    .line 2485
    .line 2486
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 2487
    .line 2488
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 2489
    .line 2490
    .line 2491
    move-result-object v2

    .line 2492
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->offlineObjectDao()Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 2493
    .line 2494
    .line 2495
    move-result-object v4

    .line 2496
    iget-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2497
    .line 2498
    move-object v5, v2

    .line 2499
    check-cast v5, Ljava/lang/String;

    .line 2500
    .line 2501
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2502
    .line 2503
    iget-object v2, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2504
    .line 2505
    move-object v6, v2

    .line 2506
    check-cast v6, Ljava/lang/String;

    .line 2507
    .line 2508
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2509
    .line 2510
    iget-object v2, v4, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2511
    .line 2512
    new-instance v3, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 2513
    .line 2514
    const/4 v7, 0x0

    .line 2515
    const/4 v8, 0x3

    .line 2516
    invoke-direct/range {v3 .. v8}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2517
    .line 2518
    .line 2519
    invoke-static {v2, v0, v3}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v0

    .line 2523
    if-ne v0, v1, :cond_76

    .line 2524
    .line 2525
    move-object v14, v1

    .line 2526
    goto :goto_3d

    .line 2527
    :cond_76
    move-object v14, v0

    .line 2528
    :goto_3d
    return-object v14

    .line 2529
    :pswitch_18
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2530
    .line 2531
    iget v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2532
    .line 2533
    if-eqz v2, :cond_78

    .line 2534
    .line 2535
    if-ne v2, v13, :cond_77

    .line 2536
    .line 2537
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2538
    .line 2539
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 2540
    .line 2541
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2542
    .line 2543
    .line 2544
    move-object v2, v0

    .line 2545
    move-object/from16 v0, p1

    .line 2546
    .line 2547
    goto :goto_3e

    .line 2548
    :cond_77
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2549
    .line 2550
    .line 2551
    move-object v10, v14

    .line 2552
    goto :goto_3f

    .line 2553
    :cond_78
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2554
    .line 2555
    .line 2556
    move-object v2, v11

    .line 2557
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 2558
    .line 2559
    sget-object v3, Lorg/wikipedia/util/ShareUtil;->INSTANCE:Lorg/wikipedia/util/ShareUtil;

    .line 2560
    .line 2561
    iget-object v4, v2, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

    .line 2562
    .line 2563
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;->blockinfo:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 2564
    .line 2565
    iput-object v2, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2566
    .line 2567
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2568
    .line 2569
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2570
    .line 2571
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2572
    .line 2573
    .line 2574
    move-result-object v5

    .line 2575
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 2576
    .line 2577
    .line 2578
    move-result-object v5

    .line 2579
    invoke-virtual {v3, v4, v5, v0}, Lorg/wikipedia/util/ShareUtil;->getBlockMessageHtml(Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2580
    .line 2581
    .line 2582
    move-result-object v0

    .line 2583
    if-ne v0, v1, :cond_79

    .line 2584
    .line 2585
    move-object v10, v1

    .line 2586
    goto :goto_3f

    .line 2587
    :cond_79
    :goto_3e
    check-cast v0, Ljava/lang/String;

    .line 2588
    .line 2589
    iput-object v0, v2, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->html:Ljava/lang/String;

    .line 2590
    .line 2591
    :goto_3f
    return-object v10

    .line 2592
    :pswitch_19
    move/from16 v16, v9

    .line 2593
    .line 2594
    check-cast v11, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 2595
    .line 2596
    iget-object v1, v11, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->_authManagerState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2597
    .line 2598
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2599
    .line 2600
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2601
    .line 2602
    if-eqz v3, :cond_7c

    .line 2603
    .line 2604
    if-eq v3, v13, :cond_7b

    .line 2605
    .line 2606
    if-ne v3, v8, :cond_7a

    .line 2607
    .line 2608
    iget-object v0, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2609
    .line 2610
    check-cast v0, Ljava/lang/String;

    .line 2611
    .line 2612
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2613
    .line 2614
    .line 2615
    move-object v4, v0

    .line 2616
    move-object/from16 v0, p1

    .line 2617
    .line 2618
    goto/16 :goto_43

    .line 2619
    .line 2620
    :cond_7a
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2621
    .line 2622
    .line 2623
    move-object v10, v14

    .line 2624
    goto/16 :goto_48

    .line 2625
    .line 2626
    :cond_7b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2627
    .line 2628
    .line 2629
    move-object/from16 v3, p1

    .line 2630
    .line 2631
    goto :goto_40

    .line 2632
    :cond_7c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2633
    .line 2634
    .line 2635
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2636
    .line 2637
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2638
    .line 2639
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2640
    .line 2641
    .line 2642
    move-result-object v3

    .line 2643
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 2644
    .line 2645
    .line 2646
    move-result-object v3

    .line 2647
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v3

    .line 2651
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2652
    .line 2653
    invoke-interface {v3, v0}, Lorg/wikipedia/dataclient/Service;->getAuthManagerInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2654
    .line 2655
    .line 2656
    move-result-object v3

    .line 2657
    if-ne v3, v2, :cond_7d

    .line 2658
    .line 2659
    goto :goto_42

    .line 2660
    :cond_7d
    :goto_40
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 2661
    .line 2662
    iget-object v4, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 2663
    .line 2664
    if-eqz v4, :cond_7e

    .line 2665
    .line 2666
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    .line 2667
    .line 2668
    if-eqz v4, :cond_7e

    .line 2669
    .line 2670
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->createAccount:Ljava/lang/String;

    .line 2671
    .line 2672
    goto :goto_41

    .line 2673
    :cond_7e
    move-object v4, v14

    .line 2674
    :goto_41
    iput-object v4, v11, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->token:Ljava/lang/String;

    .line 2675
    .line 2676
    if-eqz v4, :cond_85

    .line 2677
    .line 2678
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 2679
    .line 2680
    .line 2681
    move-result v4

    .line 2682
    if-nez v4, :cond_7f

    .line 2683
    .line 2684
    goto/16 :goto_47

    .line 2685
    .line 2686
    :cond_7f
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 2687
    .line 2688
    if-eqz v3, :cond_86

    .line 2689
    .line 2690
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->hasHCaptchaRequest()Z

    .line 2691
    .line 2692
    .line 2693
    move-result v3

    .line 2694
    if-ne v3, v13, :cond_86

    .line 2695
    .line 2696
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2697
    .line 2698
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2699
    .line 2700
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2701
    .line 2702
    .line 2703
    move-result-object v3

    .line 2704
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v3

    .line 2708
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 2709
    .line 2710
    .line 2711
    move-result-object v3

    .line 2712
    const-string v4, "hcaptcha-privacy-policy"

    .line 2713
    .line 2714
    iput-object v4, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2715
    .line 2716
    iput v8, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2717
    .line 2718
    invoke-interface {v3, v4, v14, v14, v0}, Lorg/wikipedia/dataclient/Service;->getMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2719
    .line 2720
    .line 2721
    move-result-object v0

    .line 2722
    if-ne v0, v2, :cond_80

    .line 2723
    .line 2724
    :goto_42
    move-object v10, v2

    .line 2725
    goto :goto_48

    .line 2726
    :cond_80
    :goto_43
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 2727
    .line 2728
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 2729
    .line 2730
    if-eqz v0, :cond_83

    .line 2731
    .line 2732
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allmessages:Ljava/util/List;

    .line 2733
    .line 2734
    if-eqz v0, :cond_83

    .line 2735
    .line 2736
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2737
    .line 2738
    .line 2739
    move-result-object v0

    .line 2740
    :cond_81
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2741
    .line 2742
    .line 2743
    move-result v2

    .line 2744
    if-eqz v2, :cond_82

    .line 2745
    .line 2746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2747
    .line 2748
    .line 2749
    move-result-object v2

    .line 2750
    move-object v3, v2

    .line 2751
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;

    .line 2752
    .line 2753
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;->name:Ljava/lang/String;

    .line 2754
    .line 2755
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2756
    .line 2757
    .line 2758
    move-result v3

    .line 2759
    if-eqz v3, :cond_81

    .line 2760
    .line 2761
    goto :goto_44

    .line 2762
    :cond_82
    move-object v2, v14

    .line 2763
    :goto_44
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;

    .line 2764
    .line 2765
    if-eqz v2, :cond_83

    .line 2766
    .line 2767
    iget-object v0, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;->content:Ljava/lang/String;

    .line 2768
    .line 2769
    goto :goto_45

    .line 2770
    :cond_83
    move-object v0, v14

    .line 2771
    :goto_45
    if-nez v0, :cond_84

    .line 2772
    .line 2773
    goto :goto_46

    .line 2774
    :cond_84
    move-object v5, v0

    .line 2775
    :goto_46
    new-instance v0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HCaptchaDisclaimer;

    .line 2776
    .line 2777
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2778
    .line 2779
    new-instance v2, Lkotlin/text/Regex;

    .line 2780
    .line 2781
    const-string v3, "\\[(\\S+)(?:\\s+([^]]+))?]"

    .line 2782
    .line 2783
    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 2784
    .line 2785
    .line 2786
    new-instance v3, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;

    .line 2787
    .line 2788
    move/from16 v4, v16

    .line 2789
    .line 2790
    invoke-direct {v3, v4}, Lorg/wikipedia/util/StringUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2791
    .line 2792
    .line 2793
    invoke-virtual {v2, v5, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 2794
    .line 2795
    .line 2796
    move-result-object v2

    .line 2797
    invoke-direct {v0, v2}, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$HCaptchaDisclaimer;-><init>(Ljava/lang/String;)V

    .line 2798
    .line 2799
    .line 2800
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2801
    .line 2802
    .line 2803
    invoke-virtual {v1, v14, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2804
    .line 2805
    .line 2806
    goto :goto_48

    .line 2807
    :cond_85
    :goto_47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2808
    .line 2809
    .line 2810
    sget-object v0, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$InvalidToken;->INSTANCE:Lorg/wikipedia/createaccount/CreateAccountActivityViewModel$AccountInfoState$InvalidToken;

    .line 2811
    .line 2812
    invoke-virtual {v1, v14, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2813
    .line 2814
    .line 2815
    :cond_86
    :goto_48
    return-object v10

    .line 2816
    :pswitch_1a
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2817
    .line 2818
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2819
    .line 2820
    if-eqz v3, :cond_88

    .line 2821
    .line 2822
    if-ne v3, v13, :cond_87

    .line 2823
    .line 2824
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2825
    .line 2826
    .line 2827
    move-object/from16 v14, p1

    .line 2828
    .line 2829
    goto :goto_49

    .line 2830
    :cond_87
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2831
    .line 2832
    .line 2833
    goto :goto_49

    .line 2834
    :cond_88
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2835
    .line 2836
    .line 2837
    iget-object v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2838
    .line 2839
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2840
    .line 2841
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2842
    .line 2843
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2844
    .line 2845
    iget v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 2846
    .line 2847
    check-cast v11, Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 2848
    .line 2849
    iget-object v4, v11, Lorg/wikipedia/commons/ImagePreviewViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 2850
    .line 2851
    iget-object v4, v4, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 2852
    .line 2853
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2854
    .line 2855
    invoke-virtual {v2, v3, v4, v0}, Lorg/wikipedia/commons/ImageTagsProvider;->getImageTags(ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2856
    .line 2857
    .line 2858
    move-result-object v0

    .line 2859
    if-ne v0, v1, :cond_89

    .line 2860
    .line 2861
    move-object v14, v1

    .line 2862
    goto :goto_49

    .line 2863
    :cond_89
    move-object v14, v0

    .line 2864
    :goto_49
    return-object v14

    .line 2865
    :pswitch_1b
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2866
    .line 2867
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2868
    .line 2869
    if-eqz v3, :cond_8b

    .line 2870
    .line 2871
    if-ne v3, v13, :cond_8a

    .line 2872
    .line 2873
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2874
    .line 2875
    .line 2876
    move-object/from16 v14, p1

    .line 2877
    .line 2878
    goto :goto_4a

    .line 2879
    :cond_8a
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2880
    .line 2881
    .line 2882
    goto :goto_4a

    .line 2883
    :cond_8b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2884
    .line 2885
    .line 2886
    iget-object v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2887
    .line 2888
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2889
    .line 2890
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2891
    .line 2892
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2893
    .line 2894
    iget v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 2895
    .line 2896
    check-cast v11, Lorg/wikipedia/commons/FilePageViewModel;

    .line 2897
    .line 2898
    iget-object v4, v11, Lorg/wikipedia/commons/FilePageViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 2899
    .line 2900
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2901
    .line 2902
    .line 2903
    iget-object v4, v4, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 2904
    .line 2905
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2906
    .line 2907
    invoke-virtual {v2, v3, v4, v0}, Lorg/wikipedia/commons/ImageTagsProvider;->getImageTags(ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2908
    .line 2909
    .line 2910
    move-result-object v0

    .line 2911
    if-ne v0, v1, :cond_8c

    .line 2912
    .line 2913
    move-object v14, v1

    .line 2914
    goto :goto_4a

    .line 2915
    :cond_8c
    move-object v14, v0

    .line 2916
    :goto_4a
    return-object v14

    .line 2917
    :pswitch_1c
    check-cast v11, Lorg/wikipedia/page/PageActivity;

    .line 2918
    .line 2919
    iget-object v1, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 2920
    .line 2921
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2922
    .line 2923
    iget v3, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 2924
    .line 2925
    if-eqz v3, :cond_8e

    .line 2926
    .line 2927
    if-ne v3, v13, :cond_8d

    .line 2928
    .line 2929
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2930
    .line 2931
    .line 2932
    goto/16 :goto_4b

    .line 2933
    .line 2934
    :cond_8d
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2935
    .line 2936
    .line 2937
    move-object v10, v14

    .line 2938
    goto/16 :goto_4b

    .line 2939
    .line 2940
    :cond_8e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2941
    .line 2942
    .line 2943
    instance-of v3, v1, Lorg/wikipedia/events/ChangeTextSizeEvent;

    .line 2944
    .line 2945
    const-string v4, "pageFragment"

    .line 2946
    .line 2947
    if-eqz v3, :cond_90

    .line 2948
    .line 2949
    iget-object v0, v11, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 2950
    .line 2951
    if-eqz v0, :cond_8f

    .line 2952
    .line 2953
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 2954
    .line 2955
    .line 2956
    move-result-object v1

    .line 2957
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2958
    .line 2959
    .line 2960
    move-result-object v1

    .line 2961
    iget-object v0, v0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 2962
    .line 2963
    const/4 v4, 0x0

    .line 2964
    invoke-virtual {v0, v4}, Lorg/wikipedia/WikipediaApp;->getFontSize(Z)F

    .line 2965
    .line 2966
    .line 2967
    move-result v0

    .line 2968
    float-to-int v0, v0

    .line 2969
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 2970
    .line 2971
    .line 2972
    goto :goto_4b

    .line 2973
    :cond_8f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2974
    .line 2975
    .line 2976
    throw v14

    .line 2977
    :cond_90
    instance-of v3, v1, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 2978
    .line 2979
    if-eqz v3, :cond_95

    .line 2980
    .line 2981
    iget-object v3, v11, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 2982
    .line 2983
    if-eqz v3, :cond_94

    .line 2984
    .line 2985
    iget-object v3, v3, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 2986
    .line 2987
    iget-object v3, v3, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 2988
    .line 2989
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 2990
    .line 2991
    if-eqz v3, :cond_95

    .line 2992
    .line 2993
    check-cast v1, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 2994
    .line 2995
    iget-object v1, v1, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->pages:Ljava/util/List;

    .line 2996
    .line 2997
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 2998
    .line 2999
    .line 3000
    move-result v5

    .line 3001
    if-eqz v5, :cond_91

    .line 3002
    .line 3003
    goto :goto_4b

    .line 3004
    :cond_91
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 3005
    .line 3006
    .line 3007
    move-result-object v1

    .line 3008
    :cond_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 3009
    .line 3010
    .line 3011
    move-result v5

    .line 3012
    if-eqz v5, :cond_95

    .line 3013
    .line 3014
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3015
    .line 3016
    .line 3017
    move-result-object v5

    .line 3018
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 3019
    .line 3020
    iget-object v6, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 3021
    .line 3022
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 3023
    .line 3024
    .line 3025
    move-result-object v7

    .line 3026
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3027
    .line 3028
    .line 3029
    move-result v6

    .line 3030
    if-eqz v6, :cond_92

    .line 3031
    .line 3032
    iget-object v5, v5, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 3033
    .line 3034
    iget-object v6, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 3035
    .line 3036
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 3037
    .line 3038
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3039
    .line 3040
    .line 3041
    move-result v5

    .line 3042
    if-eqz v5, :cond_92

    .line 3043
    .line 3044
    iget-object v1, v11, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 3045
    .line 3046
    if-eqz v1, :cond_93

    .line 3047
    .line 3048
    iput-object v14, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->L$0:Ljava/lang/Object;

    .line 3049
    .line 3050
    iput v13, v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;->label:I

    .line 3051
    .line 3052
    invoke-virtual {v1, v0}, Lorg/wikipedia/page/PageFragment;->updateBookmarkAndMenuOptionsFromDao(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 3053
    .line 3054
    .line 3055
    move-result-object v0

    .line 3056
    if-ne v0, v2, :cond_95

    .line 3057
    .line 3058
    move-object v10, v2

    .line 3059
    goto :goto_4b

    .line 3060
    :cond_93
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 3061
    .line 3062
    .line 3063
    throw v14

    .line 3064
    :cond_94
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 3065
    .line 3066
    .line 3067
    throw v14

    .line 3068
    :cond_95
    :goto_4b
    return-object v10

    .line 3069
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
