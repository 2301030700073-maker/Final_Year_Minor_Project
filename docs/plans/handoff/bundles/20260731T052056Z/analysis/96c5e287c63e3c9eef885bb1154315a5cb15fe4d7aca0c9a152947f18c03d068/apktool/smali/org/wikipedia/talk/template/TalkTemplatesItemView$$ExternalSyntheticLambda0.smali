.class public final synthetic Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "adapter"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, v0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 18
    .line 19
    iget-object v1, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 24
    .line 25
    sub-int/2addr v6, v5

    .line 26
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->toggleSelectedLanguage(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v4

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "invokeSource"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lorg/wikipedia/Constants$InvokeSource;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->SEARCH:Lorg/wikipedia/Constants$InvokeSource;

    .line 66
    .line 67
    if-eq v1, v2, :cond_2

    .line 68
    .line 69
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPICS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 70
    .line 71
    if-eq v1, v2, :cond_2

    .line 72
    .line 73
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->USER_CONTRIB_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 74
    .line 75
    if-ne v1, v2, :cond_3

    .line 76
    .line 77
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "activity_result_lang_position_data"

    .line 83
    .line 84
    sub-int/2addr v6, v5

    .line 85
    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const/4 v3, -0x1

    .line 93
    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_0
    return-void

    .line 104
    :pswitch_0
    check-cast v0, Lorg/wikipedia/readinglist/SortReadingListsDialog;

    .line 105
    .line 106
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-class v3, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 124
    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_7

    .line 164
    .line 165
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    :cond_7
    :goto_1
    check-cast v4, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 170
    .line 171
    if-eqz v4, :cond_c

    .line 172
    .line 173
    const v1, 0x7f120658

    .line 174
    .line 175
    .line 176
    if-eqz v6, :cond_b

    .line 177
    .line 178
    if-eq v6, v5, :cond_a

    .line 179
    .line 180
    const/4 v3, 0x2

    .line 181
    if-eq v6, v3, :cond_9

    .line 182
    .line 183
    const/4 v3, 0x3

    .line 184
    if-eq v6, v3, :cond_8

    .line 185
    .line 186
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 187
    .line 188
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_8
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 193
    .line 194
    invoke-static {v1, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_9
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 199
    .line 200
    invoke-static {v1, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_a
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 205
    .line 206
    invoke-static {v1, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_b
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 211
    .line 212
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 213
    .line 214
    .line 215
    :goto_2
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 216
    .line 217
    .line 218
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :pswitch_1
    check-cast v0, Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 223
    .line 224
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->callback:Lorg/wikipedia/talk/template/TalkTemplatesItemView$Callback;

    .line 225
    .line 226
    if-eqz v0, :cond_12

    .line 227
    .line 228
    check-cast v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 229
    .line 230
    iget-object v1, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 231
    .line 232
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 233
    .line 234
    iget-object v7, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iget-object v7, v7, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v7, Lcom/google/android/material/tabs/TabLayout;

    .line 242
    .line 243
    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-ne v7, v5, :cond_d

    .line 248
    .line 249
    move/from16 v21, v5

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_d
    move/from16 v21, v2

    .line 253
    .line 254
    :goto_3
    if-nez v6, :cond_e

    .line 255
    .line 256
    if-eqz v21, :cond_e

    .line 257
    .line 258
    goto/16 :goto_6

    .line 259
    .line 260
    :cond_e
    iget-object v2, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 261
    .line 262
    if-eqz v2, :cond_10

    .line 263
    .line 264
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    check-cast v1, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->toggleSelectedItem(Lorg/wikipedia/talk/db/TalkTemplate;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 274
    .line 275
    if-eqz v0, :cond_f

    .line 276
    .line 277
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v4

    .line 285
    :cond_10
    if-eqz v21, :cond_11

    .line 286
    .line 287
    const-string v2, "example_message_select_click"

    .line 288
    .line 289
    :goto_4
    move-object v8, v2

    .line 290
    goto :goto_5

    .line 291
    :cond_11
    const-string v2, "saved_message_select_click"

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :goto_5
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 295
    .line 296
    new-instance v7, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 297
    .line 298
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 299
    .line 300
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 305
    .line 306
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v12

    .line 310
    const-string v13, "app_patroller_experience"

    .line 311
    .line 312
    const-string v9, "pt_warning_messages"

    .line 313
    .line 314
    const-string v10, ""

    .line 315
    .line 316
    invoke-direct/range {v7 .. v13}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v7}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 320
    .line 321
    .line 322
    iget-object v2, v0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->requestEditTemplate:Landroidx/fragment/app/Fragment$10;

    .line 323
    .line 324
    sget-object v3, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 325
    .line 326
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    iget-object v9, v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 335
    .line 336
    sget-object v12, Lorg/wikipedia/Constants$InvokeSource;->DIFF_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 337
    .line 338
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    move-object v15, v1

    .line 343
    check-cast v15, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 344
    .line 345
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    iget-boolean v1, v1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->templateManagementMode:Z

    .line 350
    .line 351
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    iget-wide v5, v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->fromRevisionId:J

    .line 356
    .line 357
    invoke-virtual {v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    iget-wide v10, v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->toRevisionId:J

    .line 362
    .line 363
    const/4 v14, 0x0

    .line 364
    const/16 v22, 0x60

    .line 365
    .line 366
    move-wide/from16 v16, v10

    .line 367
    .line 368
    const/4 v10, 0x0

    .line 369
    const/4 v11, 0x0

    .line 370
    const/4 v13, 0x0

    .line 371
    move/from16 v20, v1

    .line 372
    .line 373
    move-wide/from16 v18, v5

    .line 374
    .line 375
    invoke-static/range {v8 .. v22}, Lorg/wikipedia/talk/UserTalkPopupHelper;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/wikipedia/talk/db/TalkTemplate;JJZZI)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v2, v0, v4}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 380
    .line 381
    .line 382
    :cond_12
    :goto_6
    return-void

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
