.class public final Lorg/wikipedia/navtab/MenuNavTabDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/navtab/MenuNavTabDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "Callback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final callback()Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-class v2, Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    :goto_0
    check-cast p0, Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;

    .line 68
    .line 69
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c05d5

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f09035e

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v7, v4

    .line 26
    check-cast v7, Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz v7, :cond_9

    .line 29
    .line 30
    const v3, 0x7f09035f

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    move-object v8, v4

    .line 38
    check-cast v8, Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-eqz v8, :cond_9

    .line 41
    .line 42
    const v3, 0x7f090360

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move-object v9, v4

    .line 50
    check-cast v9, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v9, :cond_9

    .line 53
    .line 54
    const v3, 0x7f090361

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object v10, v4

    .line 62
    check-cast v10, Landroid/widget/LinearLayout;

    .line 63
    .line 64
    if-eqz v10, :cond_9

    .line 65
    .line 66
    const v3, 0x7f090362

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    move-object v11, v4

    .line 74
    check-cast v11, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    if-eqz v11, :cond_9

    .line 77
    .line 78
    const v3, 0x7f090363

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    move-object v12, v4

    .line 86
    check-cast v12, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    if-eqz v12, :cond_9

    .line 89
    .line 90
    const v3, 0x7f090364

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    move-object v13, v4

    .line 98
    check-cast v13, Landroid/widget/LinearLayout;

    .line 99
    .line 100
    if-eqz v13, :cond_9

    .line 101
    .line 102
    const v3, 0x7f090365

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    move-object v14, v4

    .line 110
    check-cast v14, Landroid/widget/TextView;

    .line 111
    .line 112
    if-eqz v14, :cond_9

    .line 113
    .line 114
    const v3, 0x7f090366

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    move-object v15, v4

    .line 122
    check-cast v15, Landroid/widget/LinearLayout;

    .line 123
    .line 124
    if-eqz v15, :cond_9

    .line 125
    .line 126
    const v3, 0x7f090367

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    move-object/from16 v16, v4

    .line 134
    .line 135
    check-cast v16, Landroid/widget/LinearLayout;

    .line 136
    .line 137
    if-eqz v16, :cond_9

    .line 138
    .line 139
    const v3, 0x7f090368

    .line 140
    .line 141
    .line 142
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    move-object/from16 v17, v4

    .line 147
    .line 148
    check-cast v17, Landroid/widget/LinearLayout;

    .line 149
    .line 150
    if-eqz v17, :cond_9

    .line 151
    .line 152
    const v3, 0x7f090369

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    move-object/from16 v18, v4

    .line 160
    .line 161
    check-cast v18, Landroid/widget/LinearLayout;

    .line 162
    .line 163
    if-eqz v18, :cond_9

    .line 164
    .line 165
    const v3, 0x7f09036a

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    move-object/from16 v19, v4

    .line 173
    .line 174
    check-cast v19, Landroid/widget/LinearLayout;

    .line 175
    .line 176
    if-eqz v19, :cond_9

    .line 177
    .line 178
    const v3, 0x7f09036b

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    move-object/from16 v20, v4

    .line 186
    .line 187
    check-cast v20, Landroid/widget/LinearLayout;

    .line 188
    .line 189
    if-eqz v20, :cond_9

    .line 190
    .line 191
    const v3, 0x7f09068e

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    move-object/from16 v21, v4

    .line 199
    .line 200
    check-cast v21, Landroid/widget/TextView;

    .line 201
    .line 202
    if-eqz v21, :cond_9

    .line 203
    .line 204
    const v3, 0x7f0907a4

    .line 205
    .line 206
    .line 207
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v22

    .line 211
    if-eqz v22, :cond_9

    .line 212
    .line 213
    new-instance v5, Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 214
    .line 215
    move-object v6, v1

    .line 216
    check-cast v6, Landroid/widget/FrameLayout;

    .line 217
    .line 218
    invoke-direct/range {v5 .. v22}, Lorg/wikipedia/databinding/ViewMainDrawerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    iput-object v5, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 222
    .line 223
    invoke-static {}, Lorg/wikipedia/login/LoginClient;->isAccessible()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_1

    .line 228
    .line 229
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isYearInReviewEnabled()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_1

    .line 234
    .line 235
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_0

    .line 240
    .line 241
    const-string v1, "li_profile"

    .line 242
    .line 243
    :goto_0
    move-object v7, v1

    .line 244
    goto :goto_1

    .line 245
    :cond_0
    const-string v1, "lo_profile"

    .line 246
    .line 247
    goto :goto_0

    .line 248
    :goto_1
    const/4 v8, 0x0

    .line 249
    const/16 v3, 0xee

    .line 250
    .line 251
    const/4 v4, 0x0

    .line 252
    const-string v5, "impression"

    .line 253
    .line 254
    const/4 v6, 0x0

    .line 255
    invoke-static/range {v3 .. v8}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_1
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerYearInReviewContainer:Landroid/view/ViewGroup;

    .line 264
    .line 265
    check-cast v1, Landroid/widget/LinearLayout;

    .line 266
    .line 267
    invoke-static {}, Lorg/wikipedia/login/LoginClient;->isAccessible()Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    const/16 v4, 0x8

    .line 272
    .line 273
    if-eqz v3, :cond_2

    .line 274
    .line 275
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isYearInReviewEnabled()Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-eqz v3, :cond_2

    .line 280
    .line 281
    move v3, v2

    .line 282
    goto :goto_2

    .line 283
    :cond_2
    move v3, v4

    .line 284
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountContainer:Landroid/widget/LinearLayout;

    .line 293
    .line 294
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 295
    .line 296
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 308
    .line 309
    check-cast v1, Landroid/widget/LinearLayout;

    .line 310
    .line 311
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 312
    .line 313
    const/4 v5, 0x1

    .line 314
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerWatchlistContainer:Landroid/view/View;

    .line 326
    .line 327
    check-cast v1, Landroid/widget/LinearLayout;

    .line 328
    .line 329
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    const/4 v5, 0x2

    .line 332
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 344
    .line 345
    check-cast v1, Landroid/widget/LinearLayout;

    .line 346
    .line 347
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 348
    .line 349
    const/4 v6, 0x3

    .line 350
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerPlacesContainer:Landroid/view/View;

    .line 362
    .line 363
    check-cast v1, Landroid/widget/LinearLayout;

    .line 364
    .line 365
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 366
    .line 367
    const/4 v6, 0x4

    .line 368
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    .line 373
    .line 374
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerSettingsContainer:Landroid/view/View;

    .line 380
    .line 381
    check-cast v1, Landroid/widget/LinearLayout;

    .line 382
    .line 383
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 384
    .line 385
    const/4 v6, 0x5

    .line 386
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    .line 391
    .line 392
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerContribsContainer:Landroid/widget/LinearLayout;

    .line 398
    .line 399
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 400
    .line 401
    const/4 v6, 0x6

    .line 402
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 409
    .line 410
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerDonateContainer:Landroid/widget/LinearLayout;

    .line 414
    .line 415
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 416
    .line 417
    const/4 v6, 0x7

    .line 418
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerYearInReviewContainer:Landroid/view/ViewGroup;

    .line 430
    .line 431
    check-cast v1, Landroid/widget/LinearLayout;

    .line 432
    .line 433
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 434
    .line 435
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    .line 440
    .line 441
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->yearInReviewRedDot:Landroid/view/View;

    .line 447
    .line 448
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 449
    .line 450
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewVisited()Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-nez v3, :cond_3

    .line 455
    .line 456
    move v3, v2

    .line 457
    goto :goto_3

    .line 458
    :cond_3
    move v3, v4

    .line 459
    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    .line 461
    .line 462
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerEditContainer:Landroid/view/ViewGroup;

    .line 468
    .line 469
    check-cast v1, Landroid/widget/LinearLayout;

    .line 470
    .line 471
    new-instance v3, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;

    .line 472
    .line 473
    const/16 v6, 0x9

    .line 474
    .line 475
    invoke-direct {v3, v0, v6}, Lorg/wikipedia/navtab/MenuNavTabDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/navtab/MenuNavTabDialog;I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    .line 480
    .line 481
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    const v3, 0x7f1203ac

    .line 486
    .line 487
    .line 488
    const v6, 0x7f08019c

    .line 489
    .line 490
    .line 491
    const v7, 0x7f040520

    .line 492
    .line 493
    .line 494
    if-eqz v1, :cond_7

    .line 495
    .line 496
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    iget-object v8, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 501
    .line 502
    if-eqz v1, :cond_4

    .line 503
    .line 504
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    iget-object v1, v8, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 508
    .line 509
    check-cast v1, Landroid/widget/ImageView;

    .line 510
    .line 511
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    .line 513
    .line 514
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 520
    .line 521
    check-cast v1, Landroid/widget/ImageView;

    .line 522
    .line 523
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    invoke-static {v6, v7}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 532
    .line 533
    .line 534
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 535
    .line 536
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->tempAccountName:Landroid/view/View;

    .line 540
    .line 541
    check-cast v1, Landroid/widget/TextView;

    .line 542
    .line 543
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    .line 549
    .line 550
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountName:Landroid/widget/TextView;

    .line 556
    .line 557
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 558
    .line 559
    .line 560
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 561
    .line 562
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 566
    .line 567
    invoke-virtual {v1, v5}, Landroid/view/View;->setTextAlignment(I)V

    .line 568
    .line 569
    .line 570
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 571
    .line 572
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 576
    .line 577
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    .line 583
    .line 584
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 585
    .line 586
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 590
    .line 591
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    invoke-static {v3, v7}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 600
    .line 601
    .line 602
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 603
    .line 604
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 608
    .line 609
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    .line 611
    .line 612
    goto :goto_4

    .line 613
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    iget-object v1, v8, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 617
    .line 618
    check-cast v1, Landroid/widget/ImageView;

    .line 619
    .line 620
    const v3, 0x7f080124

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 624
    .line 625
    .line 626
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 632
    .line 633
    check-cast v1, Landroid/widget/ImageView;

    .line 634
    .line 635
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    const v5, 0x7f04054f

    .line 640
    .line 641
    .line 642
    invoke-static {v3, v5}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 647
    .line 648
    .line 649
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 650
    .line 651
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountName:Landroid/widget/TextView;

    .line 655
    .line 656
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    .line 662
    .line 663
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountName:Landroid/widget/TextView;

    .line 669
    .line 670
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 671
    .line 672
    .line 673
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 674
    .line 675
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 679
    .line 680
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 681
    .line 682
    .line 683
    :goto_4
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 684
    .line 685
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 689
    .line 690
    check-cast v1, Landroid/widget/LinearLayout;

    .line 691
    .line 692
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    .line 694
    .line 695
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 696
    .line 697
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTempAccountContainer:Landroid/view/View;

    .line 701
    .line 702
    check-cast v1, Landroid/widget/LinearLayout;

    .line 703
    .line 704
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    if-eqz v3, :cond_5

    .line 709
    .line 710
    move v3, v2

    .line 711
    goto :goto_5

    .line 712
    :cond_5
    move v3, v4

    .line 713
    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 714
    .line 715
    .line 716
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 717
    .line 718
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 719
    .line 720
    .line 721
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerWatchlistContainer:Landroid/view/View;

    .line 722
    .line 723
    check-cast v1, Landroid/widget/LinearLayout;

    .line 724
    .line 725
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 726
    .line 727
    .line 728
    move-result v3

    .line 729
    if-nez v3, :cond_6

    .line 730
    .line 731
    move v3, v2

    .line 732
    goto :goto_6

    .line 733
    :cond_6
    move v3, v4

    .line 734
    :goto_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 735
    .line 736
    .line 737
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 738
    .line 739
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerContribsContainer:Landroid/widget/LinearLayout;

    .line 743
    .line 744
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 745
    .line 746
    .line 747
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 748
    .line 749
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerEditContainer:Landroid/view/ViewGroup;

    .line 753
    .line 754
    check-cast v1, Landroid/widget/LinearLayout;

    .line 755
    .line 756
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_7

    .line 760
    .line 761
    :cond_7
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 762
    .line 763
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 764
    .line 765
    .line 766
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 767
    .line 768
    check-cast v1, Landroid/widget/ImageView;

    .line 769
    .line 770
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 771
    .line 772
    .line 773
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 774
    .line 775
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountAvatar:Landroid/view/View;

    .line 779
    .line 780
    check-cast v1, Landroid/widget/ImageView;

    .line 781
    .line 782
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 783
    .line 784
    .line 785
    move-result-object v6

    .line 786
    invoke-static {v6, v7}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 787
    .line 788
    .line 789
    move-result-object v6

    .line 790
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 791
    .line 792
    .line 793
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 794
    .line 795
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    .line 797
    .line 798
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerAccountName:Landroid/widget/TextView;

    .line 799
    .line 800
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 801
    .line 802
    .line 803
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 804
    .line 805
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    .line 807
    .line 808
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTempAccountContainer:Landroid/view/View;

    .line 809
    .line 810
    check-cast v1, Landroid/widget/LinearLayout;

    .line 811
    .line 812
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 813
    .line 814
    .line 815
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 816
    .line 817
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    .line 819
    .line 820
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 821
    .line 822
    invoke-virtual {v1, v5}, Landroid/view/View;->setTextAlignment(I)V

    .line 823
    .line 824
    .line 825
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 826
    .line 827
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 831
    .line 832
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    .line 838
    .line 839
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 840
    .line 841
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 842
    .line 843
    .line 844
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerLoginButton:Landroid/widget/TextView;

    .line 845
    .line 846
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    invoke-static {v3, v7}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 855
    .line 856
    .line 857
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 858
    .line 859
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 860
    .line 861
    .line 862
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 863
    .line 864
    check-cast v1, Landroid/widget/LinearLayout;

    .line 865
    .line 866
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 867
    .line 868
    .line 869
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 870
    .line 871
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 872
    .line 873
    .line 874
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerWatchlistContainer:Landroid/view/View;

    .line 875
    .line 876
    check-cast v1, Landroid/widget/LinearLayout;

    .line 877
    .line 878
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 879
    .line 880
    .line 881
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 882
    .line 883
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerContribsContainer:Landroid/widget/LinearLayout;

    .line 887
    .line 888
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 889
    .line 890
    .line 891
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 892
    .line 893
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 894
    .line 895
    .line 896
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerEditContainer:Landroid/view/ViewGroup;

    .line 897
    .line 898
    check-cast v1, Landroid/widget/LinearLayout;

    .line 899
    .line 900
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 901
    .line 902
    .line 903
    :goto_7
    iget-object v1, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 904
    .line 905
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    .line 907
    .line 908
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 909
    .line 910
    check-cast v1, Landroid/widget/LinearLayout;

    .line 911
    .line 912
    sget-object v3, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 913
    .line 914
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 915
    .line 916
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 917
    .line 918
    .line 919
    move-result-object v5

    .line 920
    new-array v6, v2, [Ljava/lang/String;

    .line 921
    .line 922
    check-cast v5, Ljava/util/ArrayList;

    .line 923
    .line 924
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v5

    .line 928
    check-cast v5, [Ljava/lang/String;

    .line 929
    .line 930
    array-length v6, v5

    .line 931
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v5

    .line 935
    check-cast v5, [Ljava/lang/String;

    .line 936
    .line 937
    invoke-virtual {v3, v5}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    if-eqz v3, :cond_8

    .line 942
    .line 943
    goto :goto_8

    .line 944
    :cond_8
    move v2, v4

    .line 945
    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 946
    .line 947
    .line 948
    iget-object v0, v0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 949
    .line 950
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 951
    .line 952
    .line 953
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 954
    .line 955
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 956
    .line 957
    .line 958
    return-object v0

    .line 959
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    const-string v1, "Missing required view with ID: "

    .line 968
    .line 969
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    const/4 v0, 0x0

    .line 977
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/navtab/MenuNavTabDialog;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p0, Landroid/view/View;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 25
    .line 26
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
