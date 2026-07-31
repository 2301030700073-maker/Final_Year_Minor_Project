.class public final Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 12
    iput p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->this$0:Ljava/lang/Object;

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
    iget v0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 9
    .line 10
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 11
    .line 12
    const/16 v0, 0x1d

    .line 13
    .line 14
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 21
    .line 22
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 23
    .line 24
    const/16 v0, 0x1c

    .line 25
    .line 26
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 33
    .line 34
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 35
    .line 36
    const/16 v0, 0x1b

    .line 37
    .line 38
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_2
    new-instance p1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 49
    .line 50
    check-cast v1, Ljava/util/List;

    .line 51
    .line 52
    const/16 v0, 0x1a

    .line 53
    .line 54
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_3
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 59
    .line 60
    check-cast v1, Ljava/util/List;

    .line 61
    .line 62
    const/16 v0, 0x19

    .line 63
    .line 64
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_4
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 71
    .line 72
    check-cast v1, Lorg/wikipedia/settings/SettingsFragment;

    .line 73
    .line 74
    const/16 v0, 0x18

    .line 75
    .line 76
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_5
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 83
    .line 84
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 85
    .line 86
    const/16 v0, 0x17

    .line 87
    .line 88
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    return-object p0

    .line 94
    :pswitch_6
    new-instance p1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 95
    .line 96
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 99
    .line 100
    check-cast v1, Ljava/lang/Throwable;

    .line 101
    .line 102
    const/16 v0, 0x16

    .line 103
    .line 104
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :pswitch_7
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 109
    .line 110
    check-cast v1, Lorg/wikipedia/random/RandomActivity;

    .line 111
    .line 112
    const/16 v0, 0x15

    .line 113
    .line 114
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_8
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 121
    .line 122
    check-cast v1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 123
    .line 124
    const/16 v0, 0x14

    .line 125
    .line 126
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_9
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 133
    .line 134
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 135
    .line 136
    const/16 v0, 0x13

    .line 137
    .line 138
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_a
    new-instance p1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 145
    .line 146
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;

    .line 149
    .line 150
    check-cast v1, Ljava/lang/String;

    .line 151
    .line 152
    const/16 v0, 0x12

    .line 153
    .line 154
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 155
    .line 156
    .line 157
    return-object p1

    .line 158
    :pswitch_b
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 159
    .line 160
    check-cast v1, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 161
    .line 162
    const/16 v0, 0x11

    .line 163
    .line 164
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 165
    .line 166
    .line 167
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 168
    .line 169
    return-object p0

    .line 170
    :pswitch_c
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 171
    .line 172
    check-cast v1, Lorg/wikipedia/gallery/GalleryActivity;

    .line 173
    .line 174
    const/16 v0, 0x10

    .line 175
    .line 176
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 177
    .line 178
    .line 179
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 180
    .line 181
    return-object p0

    .line 182
    :pswitch_d
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 183
    .line 184
    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 185
    .line 186
    const/16 v0, 0xf

    .line 187
    .line 188
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 189
    .line 190
    .line 191
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 192
    .line 193
    return-object p0

    .line 194
    :pswitch_e
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 195
    .line 196
    check-cast v1, Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 197
    .line 198
    const/16 v0, 0xe

    .line 199
    .line 200
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 201
    .line 202
    .line 203
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 204
    .line 205
    return-object p0

    .line 206
    :pswitch_f
    new-instance p1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 207
    .line 208
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast p0, Landroid/content/Context;

    .line 211
    .line 212
    check-cast v1, Landroidx/compose/ui/focus/FocusRequester;

    .line 213
    .line 214
    const/16 v0, 0xd

    .line 215
    .line 216
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 217
    .line 218
    .line 219
    return-object p1

    .line 220
    :pswitch_10
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 221
    .line 222
    check-cast v1, Lorg/wikipedia/commons/ImagePreviewDialog;

    .line 223
    .line 224
    const/16 v0, 0xc

    .line 225
    .line 226
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 227
    .line 228
    .line 229
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 230
    .line 231
    return-object p0

    .line 232
    :pswitch_11
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 233
    .line 234
    check-cast v1, Lorg/wikipedia/commons/FilePageFragment;

    .line 235
    .line 236
    const/16 v0, 0xb

    .line 237
    .line 238
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 239
    .line 240
    .line 241
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 242
    .line 243
    return-object p0

    .line 244
    :pswitch_12
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 245
    .line 246
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 247
    .line 248
    const/16 v0, 0xa

    .line 249
    .line 250
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 251
    .line 252
    .line 253
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 254
    .line 255
    return-object p0

    .line 256
    :pswitch_13
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 257
    .line 258
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 259
    .line 260
    const/16 v0, 0x9

    .line 261
    .line 262
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 263
    .line 264
    .line 265
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 266
    .line 267
    return-object p0

    .line 268
    :pswitch_14
    new-instance p1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 269
    .line 270
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast p0, Landroidx/paging/PagingDataEvent$Refresh;

    .line 273
    .line 274
    check-cast v1, Landroidx/paging/AsyncPagingDataDiffer;

    .line 275
    .line 276
    const/16 v0, 0x8

    .line 277
    .line 278
    invoke-direct {p1, p0, v1, p2, v0}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 279
    .line 280
    .line 281
    return-object p1

    .line 282
    :pswitch_15
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 283
    .line 284
    check-cast v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 285
    .line 286
    const/4 v0, 0x7

    .line 287
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 288
    .line 289
    .line 290
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 291
    .line 292
    return-object p0

    .line 293
    :pswitch_16
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 294
    .line 295
    check-cast v1, Landroidx/glance/session/SessionWorker;

    .line 296
    .line 297
    const/4 v0, 0x6

    .line 298
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 299
    .line 300
    .line 301
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 302
    .line 303
    return-object p0

    .line 304
    :pswitch_17
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 305
    .line 306
    check-cast v1, Landroidx/glance/appwidget/LayoutConfiguration;

    .line 307
    .line 308
    const/4 v0, 0x5

    .line 309
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 310
    .line 311
    .line 312
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_18
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 316
    .line 317
    check-cast v1, Ljava/util/Set;

    .line 318
    .line 319
    const/4 v0, 0x4

    .line 320
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 321
    .line 322
    .line 323
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 324
    .line 325
    return-object p0

    .line 326
    :pswitch_19
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 327
    .line 328
    check-cast v1, Ljava/util/ArrayList;

    .line 329
    .line 330
    const/4 v0, 0x3

    .line 331
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 332
    .line 333
    .line 334
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 335
    .line 336
    return-object p0

    .line 337
    :pswitch_1a
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 338
    .line 339
    check-cast v1, Landroidx/datastore/core/State;

    .line 340
    .line 341
    const/4 v0, 0x2

    .line 342
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 343
    .line 344
    .line 345
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 346
    .line 347
    return-object p0

    .line 348
    :pswitch_1b
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 349
    .line 350
    check-cast v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 351
    .line 352
    const/4 v0, 0x1

    .line 353
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 354
    .line 355
    .line 356
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 357
    .line 358
    return-object p0

    .line 359
    :pswitch_1c
    new-instance p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 360
    .line 361
    check-cast v1, Lorg/wikipedia/donate/DonateDialog;

    .line 362
    .line 363
    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 365
    .line 366
    .line 367
    iput-object p1, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 368
    .line 369
    return-object p0

    .line 370
    nop

    .line 371
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
    iget v0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 52
    .line 53
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_3
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 66
    .line 67
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_4
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :pswitch_5
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 92
    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 104
    .line 105
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :pswitch_7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :pswitch_8
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 130
    .line 131
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 132
    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_9
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 145
    .line 146
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 151
    .line 152
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    return-object v1

    .line 156
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 157
    .line 158
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 159
    .line 160
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    return-object v1

    .line 170
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 171
    .line 172
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 173
    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 179
    .line 180
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    return-object v1

    .line 184
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 185
    .line 186
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 187
    .line 188
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    return-object v1

    .line 198
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 199
    .line 200
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 201
    .line 202
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 207
    .line 208
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    return-object v1

    .line 212
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 213
    .line 214
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 215
    .line 216
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 221
    .line 222
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    return-object v1

    .line 226
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 227
    .line 228
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 229
    .line 230
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 235
    .line 236
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    return-object v1

    .line 240
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 241
    .line 242
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 243
    .line 244
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    return-object v1

    .line 254
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 255
    .line 256
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 257
    .line 258
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 263
    .line 264
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    return-object v1

    .line 268
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 269
    .line 270
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 271
    .line 272
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 277
    .line 278
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    return-object p0

    .line 283
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 284
    .line 285
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 286
    .line 287
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 292
    .line 293
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    return-object p0

    .line 298
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 299
    .line 300
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 301
    .line 302
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 307
    .line 308
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    return-object p0

    .line 313
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 314
    .line 315
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 316
    .line 317
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 322
    .line 323
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    return-object v1

    .line 327
    :pswitch_16
    check-cast p1, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 328
    .line 329
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 330
    .line 331
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 336
    .line 337
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    return-object p0

    .line 342
    :pswitch_17
    check-cast p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 343
    .line 344
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 345
    .line 346
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 351
    .line 352
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    return-object p0

    .line 357
    :pswitch_18
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 358
    .line 359
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 360
    .line 361
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 366
    .line 367
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    return-object p0

    .line 372
    :pswitch_19
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 373
    .line 374
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 375
    .line 376
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 381
    .line 382
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    return-object p0

    .line 387
    :pswitch_1a
    check-cast p1, Landroidx/datastore/core/State;

    .line 388
    .line 389
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 390
    .line 391
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 396
    .line 397
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    return-object p0

    .line 402
    :pswitch_1b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 403
    .line 404
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 405
    .line 406
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 411
    .line 412
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    return-object p0

    .line 417
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 418
    .line 419
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 420
    .line 421
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    check-cast p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 426
    .line 427
    invoke-virtual {p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    return-object v1

    .line 431
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
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x3

    .line 6
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    iget-object v7, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 23
    .line 24
    iget-object p1, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->parsedComment:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, v0, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->title:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1, v0, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->user:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v0, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1, v0, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    iget-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->joinedTags$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 63
    .line 64
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/String;

    .line 69
    .line 70
    iget-object v0, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1, v0, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->getParsedDateTime()Lj$/time/LocalDateTime;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object p1, v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;->currentQuery:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p0, p1, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_1

    .line 96
    .line 97
    :cond_0
    move v2, v6

    .line 98
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 111
    .line 112
    check-cast v7, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 113
    .line 114
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 118
    .line 119
    .line 120
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;

    .line 121
    .line 122
    invoke-direct {p1, v7, v5, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 126
    .line 127
    .line 128
    return-object v4

    .line 129
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 132
    .line 133
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$5;

    .line 137
    .line 138
    check-cast v7, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;

    .line 139
    .line 140
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment$onViewCreated$5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;Lkotlin/coroutines/Continuation;I)V

    .line 141
    .line 142
    .line 143
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 144
    .line 145
    .line 146
    return-object v4

    .line 147
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 153
    .line 154
    iget-object p0, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->_categoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 155
    .line 156
    new-instance p1, Lorg/wikipedia/util/UiState$Success;

    .line 157
    .line 158
    check-cast v7, Ljava/util/List;

    .line 159
    .line 160
    invoke-direct {p1, v7}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v5, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    return-object v4

    .line 170
    :pswitch_3
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 173
    .line 174
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->hiddenCardsKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Ljava/util/Set;

    .line 184
    .line 185
    if-nez v0, :cond_2

    .line 186
    .line 187
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 188
    .line 189
    :cond_2
    check-cast v7, Ljava/util/List;

    .line 190
    .line 191
    invoke-static {v0, v7}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const/16 v1, 0x64

    .line 200
    .line 201
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Ljava/util/Set;

    .line 210
    .line 211
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    return-object v4

    .line 215
    :pswitch_4
    check-cast v7, Lorg/wikipedia/settings/SettingsFragment;

    .line 216
    .line 217
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 218
    .line 219
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    instance-of p1, p0, Lorg/wikipedia/events/ReadingListsEnabledStatusEvent;

    .line 223
    .line 224
    if-eqz p1, :cond_3

    .line 225
    .line 226
    invoke-virtual {v7, v6}, Lorg/wikipedia/settings/SettingsFragment;->setReadingListSyncPref(Z)V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_3
    instance-of p1, p0, Lorg/wikipedia/events/ReadingListsNoLongerSyncedEvent;

    .line 231
    .line 232
    if-eqz p1, :cond_4

    .line 233
    .line 234
    invoke-virtual {v7, v2}, Lorg/wikipedia/settings/SettingsFragment;->setReadingListSyncPref(Z)V

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_4
    instance-of p0, p0, Lorg/wikipedia/events/ReadingListsEnableSyncStatusEvent;

    .line 239
    .line 240
    if-eqz p0, :cond_5

    .line 241
    .line 242
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 243
    .line 244
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncEnabled()Z

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    invoke-virtual {v7, p0}, Lorg/wikipedia/settings/SettingsFragment;->setReadingListSyncPref(Z)V

    .line 249
    .line 250
    .line 251
    :cond_5
    :goto_0
    return-object v4

    .line 252
    :pswitch_5
    check-cast v7, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 253
    .line 254
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 255
    .line 256
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    instance-of p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 260
    .line 261
    if-eqz p1, :cond_6

    .line 262
    .line 263
    iget-object p0, v7, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    .line 272
    new-instance p1, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 273
    .line 274
    const/16 v0, 0xd

    .line 275
    .line 276
    invoke-direct {p1, v0, v7}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_6
    instance-of p1, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 284
    .line 285
    if-eqz p1, :cond_9

    .line 286
    .line 287
    check-cast p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 288
    .line 289
    iget-boolean p0, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;->isAdded:Z

    .line 290
    .line 291
    if-eqz p0, :cond_9

    .line 292
    .line 293
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 294
    .line 295
    const p0, 0x7f120676

    .line 296
    .line 297
    .line 298
    invoke-static {p0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-ge p1, v3, :cond_9

    .line 303
    .line 304
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncEnabled()Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-nez p1, :cond_8

    .line 309
    .line 310
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-eqz p1, :cond_7

    .line 315
    .line 316
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-static {p1}, Lokhttp3/Cache$Companion;->promptEnableSyncDialog(Landroid/app/Activity;)V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_7
    iget-object p1, v7, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 325
    .line 326
    if-nez p1, :cond_8

    .line 327
    .line 328
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-static {p1}, Lokhttp3/Cache$Companion;->promptLogInToSyncDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 333
    .line 334
    .line 335
    :cond_8
    :goto_1
    invoke-static {p0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    add-int/2addr p1, v6

    .line 340
    invoke-static {p0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 341
    .line 342
    .line 343
    :cond_9
    :goto_2
    return-object v4

    .line 344
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 350
    .line 351
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_recommendedListFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 352
    .line 353
    new-instance p1, Lorg/wikipedia/util/Resource$Error;

    .line 354
    .line 355
    check-cast v7, Ljava/lang/Throwable;

    .line 356
    .line 357
    invoke-direct {p1, v7}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v5, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    return-object v4

    .line 367
    :pswitch_7
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 368
    .line 369
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    instance-of p0, p0, Lorg/wikipedia/events/ArticleSavedOrDeletedEvent;

    .line 373
    .line 374
    if-eqz p0, :cond_a

    .line 375
    .line 376
    check-cast v7, Lorg/wikipedia/random/RandomActivity;

    .line 377
    .line 378
    sget p0, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 379
    .line 380
    iget-object p0, v7, Lorg/wikipedia/random/RandomActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 381
    .line 382
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    check-cast p0, Lorg/wikipedia/random/RandomViewModel;

    .line 387
    .line 388
    invoke-virtual {p0}, Lorg/wikipedia/random/RandomViewModel;->refreshSaveState()V

    .line 389
    .line 390
    .line 391
    :cond_a
    return-object v4

    .line 392
    :pswitch_8
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 395
    .line 396
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    check-cast v7, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 400
    .line 401
    iget-object p1, v7, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-lez p1, :cond_b

    .line 408
    .line 409
    iget-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->comment:Ljava/lang/String;

    .line 410
    .line 411
    iget-object v0, v7, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 412
    .line 413
    invoke-static {p1, v0, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-nez p1, :cond_b

    .line 418
    .line 419
    const-string p1, "main"

    .line 420
    .line 421
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getContentFromSlot(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object v0, v7, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 426
    .line 427
    invoke-static {p1, v0, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    if-nez p1, :cond_b

    .line 432
    .line 433
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 434
    .line 435
    iget-object p1, v7, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->currentQuery:Ljava/lang/String;

    .line 436
    .line 437
    invoke-static {p0, p1, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 438
    .line 439
    .line 440
    move-result p0

    .line 441
    if-eqz p0, :cond_c

    .line 442
    .line 443
    :cond_b
    move v2, v6

    .line 444
    :cond_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    return-object p0

    .line 449
    :pswitch_9
    check-cast v7, Lorg/wikipedia/main/MainFragment;

    .line 450
    .line 451
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 452
    .line 453
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    instance-of p1, p0, Lorg/wikipedia/events/LoggedOutEvent;

    .line 457
    .line 458
    if-nez p1, :cond_f

    .line 459
    .line 460
    instance-of p1, p0, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;

    .line 461
    .line 462
    if-eqz p1, :cond_d

    .line 463
    .line 464
    goto :goto_3

    .line 465
    :cond_d
    instance-of p0, p0, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 466
    .line 467
    if-eqz p0, :cond_15

    .line 468
    .line 469
    iget-object p0, v7, Lorg/wikipedia/main/MainFragment;->_binding:Lokhttp3/Request$Builder;

    .line 470
    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    iget-object p0, p0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast p0, Lorg/wikipedia/navtab/NavTabLayout;

    .line 477
    .line 478
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    .line 479
    .line 480
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 481
    .line 482
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListEnabled()Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_e

    .line 487
    .line 488
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isNewRecommendedReadingListGenerated()Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_e

    .line 493
    .line 494
    move v2, v6

    .line 495
    :cond_e
    invoke-virtual {p0, p1, v2}, Lorg/wikipedia/navtab/NavTabLayout;->setOverlayDot(Lorg/wikipedia/navtab/NavTab;Z)V

    .line 496
    .line 497
    .line 498
    goto :goto_6

    .line 499
    :cond_f
    :goto_3
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 500
    .line 501
    .line 502
    move-result-object p0

    .line 503
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v7}, Lorg/wikipedia/main/MainFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 507
    .line 508
    .line 509
    move-result-object p0

    .line 510
    instance-of p1, p0, Lorg/wikipedia/feed/HomeFragment;

    .line 511
    .line 512
    if-eqz p1, :cond_10

    .line 513
    .line 514
    check-cast p0, Lorg/wikipedia/feed/HomeFragment;

    .line 515
    .line 516
    goto :goto_4

    .line 517
    :cond_10
    move-object p0, v5

    .line 518
    :goto_4
    if-eqz p0, :cond_11

    .line 519
    .line 520
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeFragment;->refreshNotification()V

    .line 521
    .line 522
    .line 523
    :cond_11
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 524
    .line 525
    .line 526
    move-result-object p0

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-nez p1, :cond_13

    .line 535
    .line 536
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 537
    .line 538
    if-eqz p1, :cond_12

    .line 539
    .line 540
    goto :goto_5

    .line 541
    :cond_12
    const-string p1, "bottom_sheet_fragment"

    .line 542
    .line 543
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 544
    .line 545
    .line 546
    move-result-object p0

    .line 547
    move-object v5, p0

    .line 548
    check-cast v5, Landroidx/fragment/app/DialogFragment;

    .line 549
    .line 550
    :cond_13
    :goto_5
    if-eqz v5, :cond_14

    .line 551
    .line 552
    invoke-virtual {v5}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 553
    .line 554
    .line 555
    :cond_14
    invoke-virtual {v7}, Lorg/wikipedia/main/MainFragment;->refreshContents()V

    .line 556
    .line 557
    .line 558
    :cond_15
    :goto_6
    return-object v4

    .line 559
    :pswitch_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;

    .line 565
    .line 566
    iget-object p1, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 567
    .line 568
    new-instance v0, Lorg/wikipedia/util/UiState$Success;

    .line 569
    .line 570
    check-cast v7, Ljava/lang/String;

    .line 571
    .line 572
    new-instance v1, Ljava/util/ArrayList;

    .line 573
    .line 574
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .line 576
    .line 577
    invoke-static {v7}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    iget-object v3, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->suggestedLanguageCodes:Ljava/util/ArrayList;

    .line 585
    .line 586
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 587
    .line 588
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    const v7, 0x7f120332

    .line 593
    .line 594
    .line 595
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    invoke-virtual {p0, v2, v3, v6, v1}, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->addFilteredLanguageListItems(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 603
    .line 604
    .line 605
    iget-object v3, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->nonSuggestedLanguageCodes:Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    const v7, 0x7f120331

    .line 612
    .line 613
    .line 614
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    invoke-virtual {p0, v2, v3, v6, v1}, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->addFilteredLanguageListItems(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 622
    .line 623
    .line 624
    invoke-direct {v0, v1}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, v5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    return-object v4

    .line 634
    :pswitch_b
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 637
    .line 638
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    new-instance p1, Lorg/wikipedia/gallery/GalleryItemFragment$onViewCreated$1;

    .line 642
    .line 643
    check-cast v7, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 644
    .line 645
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/gallery/GalleryItemFragment$onViewCreated$1;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;Lkotlin/coroutines/Continuation;I)V

    .line 646
    .line 647
    .line 648
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 649
    .line 650
    .line 651
    return-object v4

    .line 652
    :pswitch_c
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 655
    .line 656
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    new-instance p1, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10;

    .line 660
    .line 661
    check-cast v7, Lorg/wikipedia/gallery/GalleryActivity;

    .line 662
    .line 663
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 664
    .line 665
    .line 666
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 667
    .line 668
    .line 669
    new-instance p1, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10;

    .line 670
    .line 671
    invoke-direct {p1, v7, v5, v1}, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 672
    .line 673
    .line 674
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 675
    .line 676
    .line 677
    return-object v4

    .line 678
    :pswitch_d
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 681
    .line 682
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    new-instance p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$onViewCreated$1;

    .line 686
    .line 687
    check-cast v7, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 688
    .line 689
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$onViewCreated$1;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Lkotlin/coroutines/Continuation;I)V

    .line 690
    .line 691
    .line 692
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 693
    .line 694
    .line 695
    return-object v4

    .line 696
    :pswitch_e
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 699
    .line 700
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 704
    .line 705
    check-cast v7, Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 706
    .line 707
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 708
    .line 709
    .line 710
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 711
    .line 712
    .line 713
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 714
    .line 715
    invoke-direct {p1, v7, v5, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 716
    .line 717
    .line 718
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 719
    .line 720
    .line 721
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 722
    .line 723
    invoke-direct {p1, v7, v5, v3}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 724
    .line 725
    .line 726
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 727
    .line 728
    .line 729
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 730
    .line 731
    const/4 v0, 0x4

    .line 732
    invoke-direct {p1, v7, v5, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 733
    .line 734
    .line 735
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 736
    .line 737
    .line 738
    return-object v4

    .line 739
    :pswitch_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 740
    .line 741
    .line 742
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 743
    .line 744
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast p0, Landroid/content/Context;

    .line 747
    .line 748
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    const-string p1, "search"

    .line 752
    .line 753
    invoke-static {p0, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    check-cast v7, Landroidx/compose/ui/focus/FocusRequester;

    .line 757
    .line 758
    invoke-static {v7}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 759
    .line 760
    .line 761
    return-object v4

    .line 762
    :pswitch_10
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 763
    .line 764
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 765
    .line 766
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    new-instance p1, Lorg/wikipedia/commons/ImagePreviewDialog$onViewCreated$2;

    .line 770
    .line 771
    check-cast v7, Lorg/wikipedia/commons/ImagePreviewDialog;

    .line 772
    .line 773
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/commons/ImagePreviewDialog$onViewCreated$2;-><init>(Lorg/wikipedia/commons/ImagePreviewDialog;Lkotlin/coroutines/Continuation;I)V

    .line 774
    .line 775
    .line 776
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 777
    .line 778
    .line 779
    return-object v4

    .line 780
    :pswitch_11
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 781
    .line 782
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 783
    .line 784
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    new-instance p1, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$3;

    .line 788
    .line 789
    check-cast v7, Lorg/wikipedia/commons/FilePageFragment;

    .line 790
    .line 791
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$3;-><init>(Lorg/wikipedia/commons/FilePageFragment;Lkotlin/coroutines/Continuation;I)V

    .line 792
    .line 793
    .line 794
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 795
    .line 796
    .line 797
    return-object v4

    .line 798
    :pswitch_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 799
    .line 800
    .line 801
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 802
    .line 803
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 804
    .line 805
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 806
    .line 807
    .line 808
    move-result-object p0

    .line 809
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 810
    .line 811
    :try_start_0
    new-instance v9, Lkotlinx/coroutines/ThreadState;

    .line 812
    .line 813
    invoke-direct {v9}, Lkotlinx/coroutines/ThreadState;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-static {p0}, Lkotlinx/coroutines/AwaitKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 817
    .line 818
    .line 819
    move-result-object p0

    .line 820
    invoke-static {p0, v6, v9}, Lkotlinx/coroutines/AwaitKt;->invokeOnCompletion(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;)Lkotlinx/coroutines/DisposableHandle;

    .line 821
    .line 822
    .line 823
    move-result-object p0

    .line 824
    iput-object p0, v9, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 825
    .line 826
    :cond_16
    sget-object v8, L_COROUTINE/ArtificialStackFramesUnsafe;->unsafe:Lsun/misc/Unsafe;

    .line 827
    .line 828
    sget-wide v10, Lkotlinx/coroutines/ThreadState;->_state$volatile$FU$offset:J

    .line 829
    .line 830
    invoke-virtual {v8, v9, v10, v11}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    .line 831
    .line 832
    .line 833
    move-result v12

    .line 834
    if-eqz v12, :cond_18

    .line 835
    .line 836
    if-eq v12, v1, :cond_19

    .line 837
    .line 838
    if-ne v12, v3, :cond_17

    .line 839
    .line 840
    goto :goto_7

    .line 841
    :cond_17
    invoke-static {v12}, Lkotlinx/coroutines/ThreadState;->invalidState(I)V

    .line 842
    .line 843
    .line 844
    throw v5

    .line 845
    :cond_18
    const/4 v13, 0x0

    .line 846
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .line 847
    .line 848
    .line 849
    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    if-eqz p0, :cond_16

    .line 851
    .line 852
    :cond_19
    :goto_7
    :try_start_1
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    :try_start_2
    invoke-virtual {v9}, Lkotlinx/coroutines/ThreadState;->clearInterrupt()V

    .line 857
    .line 858
    .line 859
    return-object p0

    .line 860
    :catchall_0
    move-exception v0

    .line 861
    move-object p0, v0

    .line 862
    invoke-virtual {v9}, Lkotlinx/coroutines/ThreadState;->clearInterrupt()V

    .line 863
    .line 864
    .line 865
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    move-object p0, v0

    .line 868
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 869
    .line 870
    const-string v0, "Blocking call was interrupted due to parent cancellation"

    .line 871
    .line 872
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 876
    .line 877
    .line 878
    move-result-object p0

    .line 879
    throw p0

    .line 880
    :pswitch_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 881
    .line 882
    .line 883
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 884
    .line 885
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 886
    .line 887
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 888
    .line 889
    .line 890
    move-result-object p0

    .line 891
    sget-object p1, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 892
    .line 893
    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 894
    .line 895
    .line 896
    move-result-object p0

    .line 897
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 898
    .line 899
    .line 900
    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 901
    .line 902
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->CompletableDeferred$default()Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 903
    .line 904
    .line 905
    move-result-object p1

    .line 906
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 907
    .line 908
    new-instance v1, Lcoil3/RealImageLoader$execute$2;

    .line 909
    .line 910
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 911
    .line 912
    invoke-direct {v1, p1, v7, v5, v3}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 913
    .line 914
    .line 915
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    .line 916
    .line 917
    invoke-static {v2, p0, v0, v1}, Lkotlinx/coroutines/AwaitKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 918
    .line 919
    .line 920
    :catch_1
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    instance-of v0, v0, Lkotlinx/coroutines/Incomplete;

    .line 925
    .line 926
    if-eqz v0, :cond_1a

    .line 927
    .line 928
    :try_start_3
    new-instance v0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 929
    .line 930
    const/16 v1, 0x14

    .line 931
    .line 932
    invoke-direct {v0, v1, p1, v5}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 933
    .line 934
    .line 935
    invoke-static {p0, v0}, Lkotlinx/coroutines/AwaitKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 939
    goto :goto_8

    .line 940
    :cond_1a
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object p0

    .line 944
    :goto_8
    return-object p0

    .line 945
    :pswitch_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 946
    .line 947
    .line 948
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 949
    .line 950
    check-cast p0, Landroidx/paging/PagingDataEvent$Refresh;

    .line 951
    .line 952
    iget-object v9, p0, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 953
    .line 954
    iget-object v10, p0, Landroidx/paging/PagingDataEvent$Refresh;->newList:Landroidx/paging/PageStore;

    .line 955
    .line 956
    check-cast v7, Landroidx/paging/AsyncPagingDataDiffer;

    .line 957
    .line 958
    iget-object v11, v7, Landroidx/paging/AsyncPagingDataDiffer;->diffCallback:Landroidx/recyclerview/widget/DiffUtil;

    .line 959
    .line 960
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    iget v12, v9, Landroidx/paging/PageStore;->dataCount:I

    .line 964
    .line 965
    iget v13, v10, Landroidx/paging/PageStore;->dataCount:I

    .line 966
    .line 967
    new-instance v8, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;

    .line 968
    .line 969
    invoke-direct/range {v8 .. v13}, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;-><init>(Landroidx/paging/PageStore;Landroidx/paging/PageStore;Landroidx/recyclerview/widget/DiffUtil;II)V

    .line 970
    .line 971
    .line 972
    invoke-static {v8}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff$1(Landroidx/recyclerview/widget/DiffUtil;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 973
    .line 974
    .line 975
    move-result-object p0

    .line 976
    iget p1, v9, Landroidx/paging/PageStore;->dataCount:I

    .line 977
    .line 978
    invoke-static {v2, p1}, Lkotlin/text/RegexKt;->until(II)Lkotlin/ranges/IntRange;

    .line 979
    .line 980
    .line 981
    move-result-object p1

    .line 982
    instance-of v0, p1, Ljava/util/Collection;

    .line 983
    .line 984
    if-eqz v0, :cond_1b

    .line 985
    .line 986
    move-object v0, p1

    .line 987
    check-cast v0, Ljava/util/Collection;

    .line 988
    .line 989
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    if-eqz v0, :cond_1b

    .line 994
    .line 995
    goto :goto_9

    .line 996
    :cond_1b
    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 997
    .line 998
    .line 999
    move-result-object p1

    .line 1000
    :cond_1c
    move-object v0, p1

    .line 1001
    check-cast v0, Lkotlin/ranges/IntProgressionIterator;

    .line 1002
    .line 1003
    iget-boolean v0, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 1004
    .line 1005
    if-eqz v0, :cond_1d

    .line 1006
    .line 1007
    move-object v0, p1

    .line 1008
    check-cast v0, Lkotlin/collections/IntIterator;

    .line 1009
    .line 1010
    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 1011
    .line 1012
    .line 1013
    move-result v0

    .line 1014
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->convertOldPositionToNew(I)I

    .line 1015
    .line 1016
    .line 1017
    move-result v0

    .line 1018
    const/4 v1, -0x1

    .line 1019
    if-eq v0, v1, :cond_1c

    .line 1020
    .line 1021
    move v2, v6

    .line 1022
    :cond_1d
    :goto_9
    new-instance p1, Landroidx/paging/PlaceholderPaddedDiffResult;

    .line 1023
    .line 1024
    invoke-direct {p1, p0, v2}, Landroidx/paging/PlaceholderPaddedDiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Z)V

    .line 1025
    .line 1026
    .line 1027
    return-object p1

    .line 1028
    :pswitch_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1029
    .line 1030
    .line 1031
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 1032
    .line 1033
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 1034
    .line 1035
    check-cast v7, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 1036
    .line 1037
    iget-object p1, v7, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 1038
    .line 1039
    iget-object v0, p1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 1040
    .line 1041
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 1042
    .line 1043
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    if-ltz v0, :cond_1e

    .line 1048
    .line 1049
    invoke-virtual {p1, v7}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_a

    .line 1053
    :cond_1e
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1054
    .line 1055
    .line 1056
    move-result-object p0

    .line 1057
    invoke-static {p0, v5}, Lkotlinx/coroutines/AwaitKt;->cancel(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    .line 1058
    .line 1059
    .line 1060
    :goto_a
    return-object v4

    .line 1061
    :pswitch_16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1062
    .line 1063
    .line 1064
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 1065
    .line 1066
    check-cast p0, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 1067
    .line 1068
    check-cast v7, Landroidx/glance/session/SessionWorker;

    .line 1069
    .line 1070
    iget-object p1, v7, Landroidx/glance/session/SessionWorker;->key:Ljava/lang/String;

    .line 1071
    .line 1072
    iget-object p0, p0, Landroidx/glance/session/SessionManagerImpl$scope$1;->sessions:Ljava/util/LinkedHashMap;

    .line 1073
    .line 1074
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object p0

    .line 1078
    check-cast p0, Landroidx/glance/appwidget/AppWidgetSession;

    .line 1079
    .line 1080
    return-object p0

    .line 1081
    :pswitch_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1082
    .line 1083
    .line 1084
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 1085
    .line 1086
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 1087
    .line 1088
    sget-object p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1089
    .line 1090
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->dynamicMethod(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object p1

    .line 1094
    check-cast p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;

    .line 1095
    .line 1096
    iget-object v0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1097
    .line 1098
    invoke-virtual {v0, p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->equals(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v0

    .line 1102
    if-eqz v0, :cond_1f

    .line 1103
    .line 1104
    goto :goto_b

    .line 1105
    :cond_1f
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1106
    .line 1107
    .line 1108
    iget-object v0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1109
    .line 1110
    invoke-static {v0, p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1111
    .line 1112
    .line 1113
    :goto_b
    check-cast v7, Landroidx/glance/appwidget/LayoutConfiguration;

    .line 1114
    .line 1115
    check-cast p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig$Builder;

    .line 1116
    .line 1117
    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1118
    .line 1119
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 1120
    .line 1121
    invoke-virtual {p0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->getNextIndex()I

    .line 1122
    .line 1123
    .line 1124
    move-result p0

    .line 1125
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1126
    .line 1127
    .line 1128
    iget-object v0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1129
    .line 1130
    check-cast v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 1131
    .line 1132
    invoke-virtual {v0, p0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->setNextIndex(I)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1136
    .line 1137
    .line 1138
    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1139
    .line 1140
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 1141
    .line 1142
    invoke-virtual {p0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->clearLayout()V

    .line 1143
    .line 1144
    .line 1145
    iget-object p0, v7, Landroidx/glance/appwidget/LayoutConfiguration;->layoutConfig:Ljava/util/LinkedHashMap;

    .line 1146
    .line 1147
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1148
    .line 1149
    .line 1150
    move-result-object p0

    .line 1151
    check-cast p0, Ljava/lang/Iterable;

    .line 1152
    .line 1153
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1154
    .line 1155
    .line 1156
    move-result-object p0

    .line 1157
    :cond_20
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1158
    .line 1159
    .line 1160
    move-result v0

    .line 1161
    if-eqz v0, :cond_21

    .line 1162
    .line 1163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    check-cast v0, Ljava/util/Map$Entry;

    .line 1168
    .line 1169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    check-cast v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 1174
    .line 1175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    check-cast v0, Ljava/lang/Number;

    .line 1180
    .line 1181
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1182
    .line 1183
    .line 1184
    move-result v0

    .line 1185
    iget-object v2, v7, Landroidx/glance/appwidget/LayoutConfiguration;->usedLayoutIds:Ljava/util/LinkedHashSet;

    .line 1186
    .line 1187
    new-instance v3, Ljava/lang/Integer;

    .line 1188
    .line 1189
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1190
    .line 1191
    .line 1192
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v2

    .line 1196
    if-eqz v2, :cond_20

    .line 1197
    .line 1198
    invoke-static {}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->newBuilder()Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition$Builder;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v2

    .line 1202
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1203
    .line 1204
    .line 1205
    iget-object v3, v2, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1206
    .line 1207
    check-cast v3, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 1208
    .line 1209
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->setLayout(Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1213
    .line 1214
    .line 1215
    iget-object v1, v2, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1216
    .line 1217
    check-cast v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 1218
    .line 1219
    invoke-virtual {v1, v0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->setLayoutIndex(I)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1223
    .line 1224
    .line 1225
    iget-object v0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1226
    .line 1227
    check-cast v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 1228
    .line 1229
    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v1

    .line 1233
    check-cast v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 1234
    .line 1235
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->addLayout(Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;)V

    .line 1236
    .line 1237
    .line 1238
    goto :goto_c

    .line 1239
    :cond_21
    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 1240
    .line 1241
    .line 1242
    move-result-object p0

    .line 1243
    return-object p0

    .line 1244
    :pswitch_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1245
    .line 1246
    .line 1247
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 1248
    .line 1249
    check-cast p0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1250
    .line 1251
    sget-object p1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->providersKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1252
    .line 1253
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object p1

    .line 1257
    check-cast p1, Ljava/util/Set;

    .line 1258
    .line 1259
    if-nez p1, :cond_22

    .line 1260
    .line 1261
    goto :goto_e

    .line 1262
    :cond_22
    move-object v0, p1

    .line 1263
    check-cast v0, Ljava/lang/Iterable;

    .line 1264
    .line 1265
    check-cast v7, Ljava/util/Set;

    .line 1266
    .line 1267
    new-instance v1, Ljava/util/ArrayList;

    .line 1268
    .line 1269
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .line 1271
    .line 1272
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    :cond_23
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1277
    .line 1278
    .line 1279
    move-result v2

    .line 1280
    if-eqz v2, :cond_24

    .line 1281
    .line 1282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v2

    .line 1286
    move-object v3, v2

    .line 1287
    check-cast v3, Ljava/lang/String;

    .line 1288
    .line 1289
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1290
    .line 1291
    .line 1292
    move-result v3

    .line 1293
    if-nez v3, :cond_23

    .line 1294
    .line 1295
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    .line 1297
    .line 1298
    goto :goto_d

    .line 1299
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1300
    .line 1301
    .line 1302
    move-result v0

    .line 1303
    if-eqz v0, :cond_25

    .line 1304
    .line 1305
    :goto_e
    move-object v5, p0

    .line 1306
    goto :goto_10

    .line 1307
    :cond_25
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/MutablePreferences;->toMutablePreferences()Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1308
    .line 1309
    .line 1310
    move-result-object p0

    .line 1311
    sget-object v0, Landroidx/glance/appwidget/GlanceAppWidgetManager;->providersKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1312
    .line 1313
    invoke-static {p1, v1}, Lkotlin/uuid/UuidKt;->minus(Ljava/util/Set;Ljava/util/AbstractCollection;)Ljava/util/Set;

    .line 1314
    .line 1315
    .line 1316
    move-result-object p1

    .line 1317
    check-cast p1, Ljava/util/Set;

    .line 1318
    .line 1319
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/util/Set;)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1323
    .line 1324
    .line 1325
    move-result-object p1

    .line 1326
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1327
    .line 1328
    .line 1329
    move-result v0

    .line 1330
    if-eqz v0, :cond_27

    .line 1331
    .line 1332
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    check-cast v0, Ljava/lang/String;

    .line 1337
    .line 1338
    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->Companion:Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    .line 1339
    .line 1340
    sget-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1341
    .line 1342
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1343
    .line 1344
    .line 1345
    invoke-static {v0}, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->providerKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v0

    .line 1349
    iget-object v1, p0, Landroidx/datastore/preferences/core/MutablePreferences;->frozen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1350
    .line 1351
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1352
    .line 1353
    .line 1354
    move-result v1

    .line 1355
    if-nez v1, :cond_26

    .line 1356
    .line 1357
    iget-object v1, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/LinkedHashMap;

    .line 1358
    .line 1359
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    goto :goto_f

    .line 1363
    :cond_26
    const-string p0, "Do mutate preferences once returned to DataStore."

    .line 1364
    .line 1365
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    goto :goto_10

    .line 1369
    :cond_27
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/MutablePreferences;->toPreferences()Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v5

    .line 1373
    :goto_10
    return-object v5

    .line 1374
    :pswitch_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1375
    .line 1376
    .line 1377
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 1378
    .line 1379
    check-cast p0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1380
    .line 1381
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/MutablePreferences;->toMutablePreferences()Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1382
    .line 1383
    .line 1384
    move-result-object p0

    .line 1385
    check-cast v7, Ljava/util/ArrayList;

    .line 1386
    .line 1387
    sget-object p1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->providersKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1388
    .line 1389
    new-instance v0, Ljava/util/ArrayList;

    .line 1390
    .line 1391
    const/16 v1, 0xa

    .line 1392
    .line 1393
    invoke-static {v7, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1394
    .line 1395
    .line 1396
    move-result v1

    .line 1397
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v1

    .line 1404
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1405
    .line 1406
    .line 1407
    move-result v2

    .line 1408
    if-eqz v2, :cond_28

    .line 1409
    .line 1410
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v2

    .line 1414
    check-cast v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 1415
    .line 1416
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v2

    .line 1420
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v2

    .line 1424
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    .line 1426
    .line 1427
    goto :goto_11

    .line 1428
    :cond_28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    check-cast v0, Ljava/util/Set;

    .line 1433
    .line 1434
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/util/Set;)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1438
    .line 1439
    .line 1440
    move-result-object p1

    .line 1441
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1442
    .line 1443
    .line 1444
    move-result v0

    .line 1445
    if-eqz v0, :cond_2b

    .line 1446
    .line 1447
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v0

    .line 1451
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 1452
    .line 1453
    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->Companion:Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    .line 1454
    .line 1455
    sget-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1456
    .line 1457
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v0

    .line 1464
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    if-eqz v0, :cond_2a

    .line 1469
    .line 1470
    invoke-static {v0}, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->providerKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v0

    .line 1474
    sget-object v1, Landroidx/glance/session/SessionManagerKt;->GlanceSessionManager:Landroidx/glance/session/SessionManagerImpl;

    .line 1475
    .line 1476
    const-class v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 1477
    .line 1478
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v1

    .line 1482
    if-eqz v1, :cond_29

    .line 1483
    .line 1484
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 1485
    .line 1486
    .line 1487
    goto :goto_12

    .line 1488
    :cond_29
    const-string p0, "no provider name"

    .line 1489
    .line 1490
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1491
    .line 1492
    .line 1493
    goto :goto_13

    .line 1494
    :cond_2a
    const-string p0, "no receiver name"

    .line 1495
    .line 1496
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1497
    .line 1498
    .line 1499
    goto :goto_13

    .line 1500
    :cond_2b
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/MutablePreferences;->toPreferences()Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v5

    .line 1504
    :goto_13
    return-object v5

    .line 1505
    :pswitch_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1506
    .line 1507
    .line 1508
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 1509
    .line 1510
    check-cast p0, Landroidx/datastore/core/State;

    .line 1511
    .line 1512
    check-cast v7, Landroidx/datastore/core/State;

    .line 1513
    .line 1514
    instance-of p1, v7, Landroidx/datastore/core/Data;

    .line 1515
    .line 1516
    if-nez p1, :cond_2d

    .line 1517
    .line 1518
    instance-of p1, v7, Landroidx/datastore/core/Final;

    .line 1519
    .line 1520
    if-eqz p1, :cond_2c

    .line 1521
    .line 1522
    goto :goto_14

    .line 1523
    :cond_2c
    if-ne p0, v7, :cond_2d

    .line 1524
    .line 1525
    move v2, v6

    .line 1526
    :cond_2d
    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1527
    .line 1528
    .line 1529
    move-result-object p0

    .line 1530
    return-object p0

    .line 1531
    :pswitch_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1532
    .line 1533
    .line 1534
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 1535
    .line 1536
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 1537
    .line 1538
    check-cast v7, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 1539
    .line 1540
    iget-object p1, v7, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->animationJob:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1541
    .line 1542
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object p1

    .line 1546
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 1547
    .line 1548
    iget-object v0, v7, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->animationJob:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1549
    .line 1550
    new-instance v1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 1551
    .line 1552
    const/16 v4, 0xe

    .line 1553
    .line 1554
    invoke-direct {v1, p1, v7, v5, v4}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1555
    .line 1556
    .line 1557
    invoke-static {p0, v5, v5, v1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v8

    .line 1561
    :cond_2e
    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1562
    .line 1563
    .line 1564
    move-result p0

    .line 1565
    if-eqz p0, :cond_2f

    .line 1566
    .line 1567
    move v2, v6

    .line 1568
    goto :goto_15

    .line 1569
    :cond_2f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-result-object p0

    .line 1573
    if-eqz p0, :cond_2e

    .line 1574
    .line 1575
    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1576
    .line 1577
    .line 1578
    move-result-object p0

    .line 1579
    return-object p0

    .line 1580
    :pswitch_1c
    iget-object p0, p0, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;->L$0:Ljava/lang/Object;

    .line 1581
    .line 1582
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 1583
    .line 1584
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1585
    .line 1586
    .line 1587
    new-instance p1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3;

    .line 1588
    .line 1589
    check-cast v7, Lorg/wikipedia/donate/DonateDialog;

    .line 1590
    .line 1591
    invoke-direct {p1, v7, v5, v6}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3;-><init>(Lorg/wikipedia/donate/DonateDialog;Lkotlin/coroutines/Continuation;I)V

    .line 1592
    .line 1593
    .line 1594
    invoke-static {p0, v5, v5, p1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1595
    .line 1596
    .line 1597
    iget-object p0, v7, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 1598
    .line 1599
    if-eqz p0, :cond_33

    .line 1600
    .line 1601
    const-string p1, "fromDonationReminder"

    .line 1602
    .line 1603
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1604
    .line 1605
    .line 1606
    move-result p0

    .line 1607
    if-ne p0, v6, :cond_33

    .line 1608
    .line 1609
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1610
    .line 1611
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 1612
    .line 1613
    .line 1614
    move-result-object p0

    .line 1615
    iget p0, p0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 1616
    .line 1617
    new-instance p1, Ljava/util/Locale$Builder;

    .line 1618
    .line 1619
    invoke-direct {p1}, Ljava/util/Locale$Builder;-><init>()V

    .line 1620
    .line 1621
    .line 1622
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v0

    .line 1626
    invoke-virtual {p1, v0}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    .line 1627
    .line 1628
    .line 1629
    move-result-object p1

    .line 1630
    :try_start_4
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v0

    .line 1634
    if-eqz v0, :cond_31

    .line 1635
    .line 1636
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1637
    .line 1638
    .line 1639
    move-result v0

    .line 1640
    if-nez v0, :cond_30

    .line 1641
    .line 1642
    goto :goto_16

    .line 1643
    :cond_30
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v5

    .line 1647
    goto :goto_17

    .line 1648
    :cond_31
    :goto_16
    invoke-static {}, Lorg/jsoup/Jsoup;->unmarshal()Lkotlinx/coroutines/internal/Symbol;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v0

    .line 1652
    iget-object v5, v0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1653
    .line 1654
    :catch_2
    :goto_17
    if-nez v5, :cond_32

    .line 1655
    .line 1656
    const-string v5, ""

    .line 1657
    .line 1658
    :cond_32
    invoke-virtual {p1, v5}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 1659
    .line 1660
    .line 1661
    move-result-object p1

    .line 1662
    invoke-virtual {p1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    .line 1663
    .line 1664
    .line 1665
    move-result-object p1

    .line 1666
    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 1667
    .line 1668
    .line 1669
    move-result-object p1

    .line 1670
    invoke-virtual {p1, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1671
    .line 1672
    .line 1673
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationReminderConfig()Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v0

    .line 1677
    iget v0, v0, Lorg/wikipedia/donate/donationreminder/DonationReminderConfig;->donateAmount:F

    .line 1678
    .line 1679
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v0

    .line 1683
    invoke-virtual {p1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object p1

    .line 1687
    new-array v0, v6, [Ljava/lang/Object;

    .line 1688
    .line 1689
    aput-object p1, v0, v2

    .line 1690
    .line 1691
    const p1, 0x7f120173

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {v7, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1695
    .line 1696
    .line 1697
    move-result-object p1

    .line 1698
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1699
    .line 1700
    .line 1701
    iget-object v0, v7, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1702
    .line 1703
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1704
    .line 1705
    .line 1706
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 1707
    .line 1708
    check-cast v0, Landroid/widget/TextView;

    .line 1709
    .line 1710
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    .line 1712
    .line 1713
    iget-object p1, v7, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1714
    .line 1715
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1716
    .line 1717
    .line 1718
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 1719
    .line 1720
    check-cast p1, Landroid/widget/TextView;

    .line 1721
    .line 1722
    new-instance v0, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;

    .line 1723
    .line 1724
    invoke-direct {v0, v7, p0}, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/DonateDialog;F)V

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1728
    .line 1729
    .line 1730
    iget-object p0, v7, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1731
    .line 1732
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1733
    .line 1734
    .line 1735
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 1736
    .line 1737
    check-cast p0, Landroid/widget/TextView;

    .line 1738
    .line 1739
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    .line 1741
    .line 1742
    iget-object p0, v7, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1743
    .line 1744
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1745
    .line 1746
    .line 1747
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/lang/Object;

    .line 1748
    .line 1749
    check-cast p0, Landroid/widget/TextView;

    .line 1750
    .line 1751
    new-instance p1, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;

    .line 1752
    .line 1753
    invoke-direct {p1, v7, v6}, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/DonateDialog;I)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1757
    .line 1758
    .line 1759
    iget-object p0, v7, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1760
    .line 1761
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1762
    .line 1763
    .line 1764
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 1765
    .line 1766
    check-cast p0, Landroid/widget/TextView;

    .line 1767
    .line 1768
    new-instance p1, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;

    .line 1769
    .line 1770
    invoke-direct {p1, v7, v1}, Lorg/wikipedia/donate/DonateDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/donate/DonateDialog;I)V

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1774
    .line 1775
    .line 1776
    iget-object p0, v7, Lorg/wikipedia/donate/DonateDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 1777
    .line 1778
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1779
    .line 1780
    .line 1781
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 1782
    .line 1783
    check-cast p0, Landroid/widget/LinearLayout;

    .line 1784
    .line 1785
    const/16 p1, 0x8

    .line 1786
    .line 1787
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1788
    .line 1789
    .line 1790
    :cond_33
    return-object v4

    .line 1791
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
