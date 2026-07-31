.class public final synthetic Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Landroidx/activity/result/ActivityResult;

    .line 14
    .line 15
    sget v3, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget v3, v1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 21
    .line 22
    const/16 v4, 0x64

    .line 23
    .line 24
    if-ne v3, v4, :cond_d

    .line 25
    .line 26
    iget-object v1, v1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 27
    .line 28
    if-eqz v1, :cond_e

    .line 29
    .line 30
    const-class v3, Lorg/wikipedia/page/PageTitle;

    .line 31
    .line 32
    const-string v4, "imageTitle"

    .line 33
    .line 34
    invoke-static {v1, v4, v3}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/os/Parcelable;

    .line 39
    .line 40
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 41
    .line 42
    const-string v5, "resultImageCaption"

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "resultImageAlt"

    .line 49
    .line 50
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const-string v9, "resultImageSize"

    .line 55
    .line 56
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    const-string v11, "resultImageType"

    .line 61
    .line 62
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    const-string v13, "resultImagePos"

    .line 67
    .line 68
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    invoke-virtual {v14, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    sget-object v4, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->infoboxVarsByLang:Ljava/util/Map;

    .line 115
    .line 116
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iget-object v4, v4, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 121
    .line 122
    iget-object v4, v4, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 123
    .line 124
    iget-object v13, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-object v4, v4, Lorg/wikipedia/edit/EditSectionViewModel;->sectionWikitext:Ljava/lang/String;

    .line 131
    .line 132
    const-string v5, ""

    .line 133
    .line 134
    if-nez v4, :cond_0

    .line 135
    .line 136
    move-object v14, v5

    .line 137
    goto :goto_0

    .line 138
    :cond_0
    move-object v14, v4

    .line 139
    :goto_0
    const/4 v4, 0x0

    .line 140
    if-eqz v3, :cond_1

    .line 141
    .line 142
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    goto :goto_1

    .line 147
    :cond_1
    move-object v3, v4

    .line 148
    :goto_1
    if-nez v3, :cond_2

    .line 149
    .line 150
    move-object v15, v5

    .line 151
    goto :goto_2

    .line 152
    :cond_2
    move-object v15, v3

    .line 153
    :goto_2
    if-nez v6, :cond_3

    .line 154
    .line 155
    move-object/from16 v16, v5

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    move-object/from16 v16, v6

    .line 159
    .line 160
    :goto_3
    if-nez v8, :cond_4

    .line 161
    .line 162
    move-object/from16 v17, v5

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_4
    move-object/from16 v17, v8

    .line 166
    .line 167
    :goto_4
    if-nez v10, :cond_5

    .line 168
    .line 169
    move-object/from16 v18, v5

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_5
    move-object/from16 v18, v10

    .line 173
    .line 174
    :goto_5
    if-nez v12, :cond_6

    .line 175
    .line 176
    move-object/from16 v19, v5

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_6
    move-object/from16 v19, v12

    .line 180
    .line 181
    :goto_6
    if-nez v1, :cond_7

    .line 182
    .line 183
    move-object/from16 v20, v5

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_7
    move-object/from16 v20, v1

    .line 187
    .line 188
    :goto_7
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 193
    .line 194
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 195
    .line 196
    const-string v5, "binding"

    .line 197
    .line 198
    const/4 v6, 0x0

    .line 199
    if-ne v1, v3, :cond_8

    .line 200
    .line 201
    move/from16 v21, v6

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_8
    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 205
    .line 206
    if-eqz v1, :cond_c

    .line 207
    .line 208
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v1, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    move/from16 v21, v1

    .line 217
    .line 218
    :goto_8
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 223
    .line 224
    if-ne v1, v3, :cond_9

    .line 225
    .line 226
    move/from16 v22, v2

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_9
    move/from16 v22, v6

    .line 230
    .line 231
    :goto_9
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v2, "attemptInsertIntoInfobox"

    .line 236
    .line 237
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 238
    .line 239
    .line 240
    move-result v23

    .line 241
    invoke-static/range {v13 .. v23}, Lokio/Okio__JvmOkioKt;->insertImageIntoWikiText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lkotlin/Triple;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget-object v2, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 246
    .line 247
    if-eqz v2, :cond_b

    .line 248
    .line 249
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v2, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 252
    .line 253
    iget-object v6, v1, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v6, Ljava/lang/CharSequence;

    .line 256
    .line 257
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    iget-object v6, v1, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v6, Ljava/lang/Boolean;

    .line 267
    .line 268
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    const-string v7, "insertedIntoInfobox"

    .line 273
    .line 274
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    iget-object v1, v1, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v1, Lkotlin/Pair;

    .line 280
    .line 281
    iget-object v2, v0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 282
    .line 283
    if-eqz v2, :cond_a

    .line 284
    .line 285
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v2, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 288
    .line 289
    iget-object v4, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v4, Ljava/lang/Number;

    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    iget-object v5, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v5, Ljava/lang/Number;

    .line 300
    .line 301
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v1, Ljava/lang/Number;

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    add-int/2addr v1, v5

    .line 314
    invoke-virtual {v2, v4, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 322
    .line 323
    if-ne v1, v3, :cond_e

    .line 324
    .line 325
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->clickNextButton()V

    .line 326
    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw v4

    .line 333
    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v4

    .line 337
    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v4

    .line 341
    :cond_d
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 346
    .line 347
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 348
    .line 349
    if-ne v1, v2, :cond_e

    .line 350
    .line 351
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 352
    .line 353
    .line 354
    :cond_e
    :goto_a
    return-void

    .line 355
    :pswitch_0
    move-object/from16 v1, p1

    .line 356
    .line 357
    check-cast v1, Landroidx/activity/result/ActivityResult;

    .line 358
    .line 359
    sget v3, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget v1, v1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 365
    .line 366
    if-ne v1, v2, :cond_f

    .line 367
    .line 368
    invoke-virtual {v0}, Lorg/wikipedia/edit/EditSectionActivity;->updateEditLicenseText()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 372
    .line 373
    .line 374
    const v1, 0x7f120351

    .line 375
    .line 376
    .line 377
    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 378
    .line 379
    .line 380
    :cond_f
    return-void

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
