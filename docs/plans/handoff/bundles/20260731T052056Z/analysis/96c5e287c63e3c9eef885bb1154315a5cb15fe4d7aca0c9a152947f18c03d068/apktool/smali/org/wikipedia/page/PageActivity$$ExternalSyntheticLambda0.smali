.class public final synthetic Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/PageActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "app"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/PageActivity;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "pageFragment"

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq v0, v3, :cond_0

    .line 26
    .line 27
    if-ne v0, v6, :cond_7

    .line 28
    .line 29
    :cond_0
    iget-object v7, p0, Lorg/wikipedia/page/PageActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/page/PageActivity;

    .line 30
    .line 31
    iget-object p0, v7, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 32
    .line 33
    if-eqz p0, :cond_9

    .line 34
    .line 35
    invoke-static {p0}, Lorg/wikipedia/page/PageFragment;->refreshPage$default(Lorg/wikipedia/page/PageFragment;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 39
    .line 40
    iget-object p1, v7, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 41
    .line 42
    if-eqz p1, :cond_8

    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->getLeadImageEditLang()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const-string p1, ""

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    iget-object p1, v7, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_2
    move-object v10, p1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v4

    .line 76
    :goto_0
    if-eqz p0, :cond_4

    .line 77
    .line 78
    const-string p1, "intentAction"

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    move-object v4, p0

    .line 91
    check-cast v4, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 92
    .line 93
    :cond_4
    move-object v8, v4

    .line 94
    sget-object p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    if-eq v0, v6, :cond_5

    .line 97
    .line 98
    move v9, v6

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    move v9, v2

    .line 101
    :goto_1
    sget-object p0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 102
    .line 103
    if-eq v8, p0, :cond_6

    .line 104
    .line 105
    sget-object p0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 106
    .line 107
    if-eq v8, p0, :cond_6

    .line 108
    .line 109
    move v11, v6

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    move v11, v2

    .line 112
    :goto_2
    new-instance v12, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 113
    .line 114
    const/16 p0, 0x9

    .line 115
    .line 116
    invoke-direct {v12, p0, v7, v8}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-static/range {v7 .. v12}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    return-void

    .line 123
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v4

    .line 127
    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v4

    .line 131
    :pswitch_0
    sget p0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget p0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 137
    .line 138
    iget-object p1, v3, Lorg/wikipedia/page/PageActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 139
    .line 140
    if-eqz p1, :cond_f

    .line 141
    .line 142
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/16 v0, 0xb

    .line 147
    .line 148
    if-nez p1, :cond_a

    .line 149
    .line 150
    if-eq p0, v0, :cond_a

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_a
    if-ne p0, v0, :cond_c

    .line 157
    .line 158
    sget-object p0, Lorg/wikipedia/page/PageActivity$TabPosition;->NEW_TAB_FOREGROUND:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 159
    .line 160
    invoke-virtual {v3, p0}, Lorg/wikipedia/page/PageActivity;->loadMainPage(Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 161
    .line 162
    .line 163
    iget-object p0, v3, Lorg/wikipedia/page/PageActivity;->toolbarHideHandler:Lorg/wikipedia/page/ViewHideHandler;

    .line 164
    .line 165
    if-eqz p0, :cond_b

    .line 166
    .line 167
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->ensureDisplayed()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p0, Lorg/wikipedia/views/TabCountsView;

    .line 177
    .line 178
    invoke-virtual {p0, v6}, Lorg/wikipedia/views/TabCountsView;->updateTabCount(Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_b
    const-string p0, "toolbarHideHandler"

    .line 183
    .line 184
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v4

    .line 188
    :cond_c
    const/16 p1, 0xa

    .line 189
    .line 190
    if-ne p0, p1, :cond_e

    .line 191
    .line 192
    iget-object p0, v3, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 193
    .line 194
    if-eqz p0, :cond_d

    .line 195
    .line 196
    invoke-virtual {p0, v2}, Lorg/wikipedia/page/PageFragment;->reloadFromBackstack(Z)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v4

    .line 204
    :cond_e
    :goto_3
    return-void

    .line 205
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v4

    .line 209
    :pswitch_1
    sget p0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    iget p0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 215
    .line 216
    const/4 p1, 0x2

    .line 217
    if-eq p0, p1, :cond_10

    .line 218
    .line 219
    const/4 p1, 0x3

    .line 220
    if-ne p0, p1, :cond_11

    .line 221
    .line 222
    :cond_10
    iget-object p0, v3, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 223
    .line 224
    if-eqz p0, :cond_12

    .line 225
    .line 226
    sget p1, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 227
    .line 228
    invoke-virtual {p0, v6}, Lorg/wikipedia/page/PageFragment;->reloadFromBackstack(Z)V

    .line 229
    .line 230
    .line 231
    :cond_11
    return-void

    .line 232
    :cond_12
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v4

    .line 236
    :pswitch_2
    sget p0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    iget p0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 242
    .line 243
    if-eq p0, v6, :cond_13

    .line 244
    .line 245
    if-ne p0, v6, :cond_14

    .line 246
    .line 247
    :cond_13
    iget-object p0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 248
    .line 249
    if-eqz p0, :cond_14

    .line 250
    .line 251
    invoke-virtual {v3}, Lorg/wikipedia/page/PageActivity;->getBinding()Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast p1, Landroid/widget/FrameLayout;

    .line 258
    .line 259
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 260
    .line 261
    const/16 v1, 0x18

    .line 262
    .line 263
    invoke-direct {v0, v1, v3, p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 267
    .line 268
    .line 269
    :cond_14
    return-void

    .line 270
    :pswitch_3
    sget p0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    iget p0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 276
    .line 277
    if-ne p0, v6, :cond_16

    .line 278
    .line 279
    const p0, 0x7f1201aa

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    const/16 p1, 0xc

    .line 290
    .line 291
    invoke-static {v3, p0, v2, p1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    new-instance p1, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;

    .line 296
    .line 297
    invoke-direct {p1, v3, v6}, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;-><init>(Landroid/app/Activity;I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 304
    .line 305
    .line 306
    iget-object v7, v3, Lorg/wikipedia/page/PageActivity;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 307
    .line 308
    if-eqz v7, :cond_15

    .line 309
    .line 310
    iget-object p0, v7, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 311
    .line 312
    iget-object p1, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 313
    .line 314
    move-object v8, p1

    .line 315
    check-cast v8, Lorg/wikipedia/page/PageTitle;

    .line 316
    .line 317
    if-eqz v8, :cond_16

    .line 318
    .line 319
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 320
    .line 321
    move-object v9, p0

    .line 322
    check-cast v9, Lorg/wikipedia/history/HistoryEntry;

    .line 323
    .line 324
    if-eqz v9, :cond_16

    .line 325
    .line 326
    const/4 v11, 0x0

    .line 327
    const/4 v12, 0x1

    .line 328
    const/4 v10, 0x0

    .line 329
    invoke-virtual/range {v7 .. v12}, Lorg/wikipedia/page/PageFragment;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;ZZZ)V

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_15
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v4

    .line 337
    :cond_16
    :goto_4
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
