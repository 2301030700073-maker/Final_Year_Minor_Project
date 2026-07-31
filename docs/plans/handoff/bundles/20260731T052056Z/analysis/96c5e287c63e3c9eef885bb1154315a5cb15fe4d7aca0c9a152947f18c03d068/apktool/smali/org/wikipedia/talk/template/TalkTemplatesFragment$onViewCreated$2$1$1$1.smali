.class public final Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2$1$1$1;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$onViewCreated$2$1$1$1;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 9
    .line 10
    packed-switch p2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState;

    .line 14
    .line 15
    instance-of p2, p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Deleted;

    .line 16
    .line 17
    if-eqz p2, :cond_4

    .line 18
    .line 19
    check-cast p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Deleted;

    .line 20
    .line 21
    iget p1, p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Deleted;->size:I

    .line 22
    .line 23
    const-string p2, "message_deleted_toast"

    .line 24
    .line 25
    const-string v3, "pt_templates"

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    invoke-static {p2, v3, v4}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "delete_message_success"

    .line 33
    .line 34
    const-string v5, "pt_warning_messages"

    .line 35
    .line 36
    invoke-static {p2, v5, v4}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const v5, 0x7f100039

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v5, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 61
    .line 62
    invoke-static {p2, p1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/view/View;Ljava/lang/String;)Lcom/google/android/material/snackbar/Snackbar;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;

    .line 67
    .line 68
    const/4 v5, 0x3

    .line 69
    invoke-direct {p2, p0, v5}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;I)V

    .line 70
    .line 71
    .line 72
    const v5, 0x7f120775

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v5, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Landroid/widget/LinearLayout;

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object p2, p2, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_0

    .line 101
    .line 102
    move p2, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    move p2, v2

    .line 105
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->getViewModel()Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iget-object p2, p2, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    move v1, v2

    .line 131
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_2

    .line 148
    .line 149
    const-string p1, "templates_empty_impression"

    .line 150
    .line 151
    invoke-static {p1, v3, v4}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 155
    .line 156
    if-eqz p1, :cond_3

    .line 157
    .line 158
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 159
    .line 160
    .line 161
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->unselectAllTalkTemplates()V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    instance-of p2, p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Error;

    .line 166
    .line 167
    if-eqz p2, :cond_5

    .line 168
    .line 169
    check-cast p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Error;

    .line 170
    .line 171
    iget-object p1, p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Error;->throwable:Ljava/lang/Throwable;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    instance-of p1, p1, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Added;

    .line 182
    .line 183
    if-eqz p1, :cond_6

    .line 184
    .line 185
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateAndNotifyAdapter()V

    .line 186
    .line 187
    .line 188
    :cond_6
    :goto_2
    return-object v0

    .line 189
    :pswitch_0
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 190
    .line 191
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Loading;

    .line 192
    .line 193
    if-eqz p2, :cond_7

    .line 194
    .line 195
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p1, Landroid/widget/LinearLayout;

    .line 203
    .line 204
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    .line 216
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 220
    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 227
    .line 228
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :cond_7
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 234
    .line 235
    const/4 v3, 0x0

    .line 236
    if-eqz p2, :cond_9

    .line 237
    .line 238
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 246
    .line 247
    const/4 p2, 0x1

    .line 248
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 249
    .line 250
    .line 251
    new-instance p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 252
    .line 253
    invoke-direct {p1, p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesFragment;)V

    .line 254
    .line 255
    .line 256
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 257
    .line 258
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 266
    .line 267
    iget-object v4, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 268
    .line 269
    if-eqz v4, :cond_8

    .line 270
    .line 271
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 282
    .line 283
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 284
    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    invoke-direct {v3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 302
    .line 303
    new-instance v3, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 304
    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    const/16 v5, 0x10

    .line 310
    .line 311
    invoke-direct {v3, v4, p2, v1, v5}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZI)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateAndNotifyAdapter()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateToolbarEditButton()V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 331
    .line 332
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast p1, Landroid/widget/ProgressBar;

    .line 343
    .line 344
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 348
    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->login2faText:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast p0, Landroid/widget/LinearLayout;

    .line 355
    .line 356
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 357
    .line 358
    .line 359
    move-result p0

    .line 360
    if-nez p0, :cond_a

    .line 361
    .line 362
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 363
    .line 364
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 365
    .line 366
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 367
    .line 368
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 373
    .line 374
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    const-string v7, "app_patroller_experience"

    .line 379
    .line 380
    const-string v2, "templates_empty_impression"

    .line 381
    .line 382
    const-string v3, "pt_templates"

    .line 383
    .line 384
    const-string v4, ""

    .line 385
    .line 386
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_8
    const-string p0, "adapter"

    .line 394
    .line 395
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v3

    .line 399
    :cond_9
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 400
    .line 401
    if-eqz p2, :cond_a

    .line 402
    .line 403
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 404
    .line 405
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 406
    .line 407
    iget-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 408
    .line 409
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginUsernameText:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast p2, Landroid/widget/ProgressBar;

    .line 415
    .line 416
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    iget-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 420
    .line 421
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    .line 427
    .line 428
    sget v2, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 429
    .line 430
    invoke-virtual {p2, p1, v3}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 431
    .line 432
    .line 433
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 434
    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 441
    .line 442
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    .line 444
    .line 445
    :cond_a
    :goto_3
    return-object v0

    .line 446
    nop

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
