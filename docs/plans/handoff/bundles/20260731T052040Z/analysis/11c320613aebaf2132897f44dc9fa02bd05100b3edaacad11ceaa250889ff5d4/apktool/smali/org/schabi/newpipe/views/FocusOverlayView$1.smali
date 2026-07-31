.class public final Lorg/schabi/newpipe/views/FocusOverlayView$1;
.super Landroid/os/Handler;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->$r8$classId:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget p1, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 41
    .line 42
    if-eqz v0, :cond_7

    .line 43
    .line 44
    iget-object v3, v0, Landroidx/media/MediaBrowserServiceCompat;->mServiceBinderImpl:Lcoil3/memory/MemoryCacheService;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    const-string v4, "data_callback_token"

    .line 54
    .line 55
    const-string v5, "data_calling_uid"

    .line 56
    .line 57
    const-string v6, "data_calling_pid"

    .line 58
    .line 59
    const-string v7, "data_package_name"

    .line 60
    .line 61
    const-string v8, "data_root_hints"

    .line 62
    .line 63
    const-string v9, "data_media_item_id"

    .line 64
    .line 65
    const-string v10, "data_result_receiver"

    .line 66
    .line 67
    packed-switch v0, :pswitch_data_1

    .line 68
    .line 69
    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "Unhandled message: "

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, "\n  Service version: 2\n  Client version: "

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "MBServiceCompat"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :pswitch_1
    const-string v0, "data_custom_action_extras"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "data_custom_action"

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    move-object v7, p0

    .line 121
    check-cast v7, Landroid/support/v4/os/ResultReceiver;

    .line 122
    .line 123
    new-instance v4, Lcoil3/memory/MemoryCacheService;

    .line 124
    .line 125
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 126
    .line 127
    invoke-direct {v4, p0}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-nez p0, :cond_8

    .line 138
    .line 139
    if-nez v7, :cond_2

    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :cond_2
    iget-object p0, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat;

    .line 146
    .line 147
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 148
    .line 149
    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;

    .line 150
    .line 151
    invoke-direct/range {v2 .. v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;-><init>(Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :pswitch_2
    const-string v0, "data_search_extras"

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    const-string v0, "data_search_query"

    .line 169
    .line 170
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    move-object v7, p0

    .line 179
    check-cast v7, Landroid/support/v4/os/ResultReceiver;

    .line 180
    .line 181
    new-instance v4, Lcoil3/memory/MemoryCacheService;

    .line 182
    .line 183
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 184
    .line 185
    invoke-direct {v4, p0}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_8

    .line 196
    .line 197
    if-nez v7, :cond_3

    .line 198
    .line 199
    goto/16 :goto_2

    .line 200
    .line 201
    :cond_3
    iget-object p0, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat;

    .line 204
    .line 205
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 206
    .line 207
    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;

    .line 208
    .line 209
    invoke-direct/range {v2 .. v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;-><init>(Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :pswitch_3
    new-instance p0, Lcoil3/memory/MemoryCacheService;

    .line 218
    .line 219
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 220
    .line 221
    invoke-direct {p0, p1}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p1, Landroidx/media/MediaBrowserServiceCompat;

    .line 227
    .line 228
    iget-object p1, p1, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 229
    .line 230
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;

    .line 231
    .line 232
    invoke-direct {v0, v3, p0, v1}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;-><init>(Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :pswitch_4
    move-object v0, v5

    .line 241
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 246
    .line 247
    .line 248
    move-object v1, v7

    .line 249
    new-instance v7, Lcoil3/memory/MemoryCacheService;

    .line 250
    .line 251
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 252
    .line 253
    invoke-direct {v7, p1}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    move-object v6, v3

    .line 265
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    iget-object p0, v6, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat;

    .line 272
    .line 273
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 274
    .line 275
    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;

    .line 276
    .line 277
    invoke-direct/range {v2 .. v8}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;-><init>(IILandroid/os/Bundle;Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :pswitch_5
    invoke-virtual {p0, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    check-cast p0, Landroid/support/v4/os/ResultReceiver;

    .line 294
    .line 295
    new-instance v1, Lcoil3/memory/MemoryCacheService;

    .line 296
    .line 297
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 298
    .line 299
    invoke-direct {v1, p1}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-nez p1, :cond_8

    .line 310
    .line 311
    if-nez p0, :cond_4

    .line 312
    .line 313
    goto/16 :goto_2

    .line 314
    .line 315
    :cond_4
    iget-object p1, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast p1, Landroidx/media/MediaBrowserServiceCompat;

    .line 318
    .line 319
    iget-object p1, p1, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 320
    .line 321
    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;

    .line 322
    .line 323
    invoke-direct {v2, v3, v1, v0, p0}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;-><init>(Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :pswitch_6
    invoke-virtual {p0, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    new-instance v4, Lcoil3/memory/MemoryCacheService;

    .line 340
    .line 341
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 342
    .line 343
    invoke-direct {v4, p0}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    iget-object p0, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat;

    .line 349
    .line 350
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 351
    .line 352
    new-instance v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;

    .line 353
    .line 354
    const/4 v7, 0x2

    .line 355
    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_2

    .line 362
    .line 363
    :pswitch_7
    const-string v0, "data_options"

    .line 364
    .line 365
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    new-instance v4, Lcoil3/memory/MemoryCacheService;

    .line 381
    .line 382
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 383
    .line 384
    invoke-direct {v4, p0}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    iget-object p0, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat;

    .line 390
    .line 391
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 392
    .line 393
    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;

    .line 394
    .line 395
    invoke-direct/range {v2 .. v7}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;-><init>(Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_2

    .line 402
    .line 403
    :pswitch_8
    new-instance p0, Lcoil3/memory/MemoryCacheService;

    .line 404
    .line 405
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 406
    .line 407
    invoke-direct {p0, p1}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    iget-object p1, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast p1, Landroidx/media/MediaBrowserServiceCompat;

    .line 413
    .line 414
    iget-object p1, p1, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 415
    .line 416
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;

    .line 417
    .line 418
    invoke-direct {v0, v3, p0, v2}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;-><init>(Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 422
    .line 423
    .line 424
    goto :goto_2

    .line 425
    :pswitch_9
    move-object v0, v5

    .line 426
    move-object v1, v7

    .line 427
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Landroid/os/Bundle;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    new-instance v7, Lcoil3/memory/MemoryCacheService;

    .line 447
    .line 448
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 449
    .line 450
    invoke-direct {v7, p0}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    iget-object p0, v3, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast p0, Landroidx/media/MediaBrowserServiceCompat;

    .line 456
    .line 457
    if-eqz v8, :cond_6

    .line 458
    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    array-length v0, p1

    .line 468
    :goto_1
    if-ge v2, v0, :cond_6

    .line 469
    .line 470
    aget-object v6, p1, v2

    .line 471
    .line 472
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-eqz v6, :cond_5

    .line 477
    .line 478
    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat;->mHandler:Lorg/schabi/newpipe/views/FocusOverlayView$1;

    .line 479
    .line 480
    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;

    .line 481
    .line 482
    move-object v6, v3

    .line 483
    move v3, v1

    .line 484
    invoke-direct/range {v2 .. v8}, Landroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;-><init>(IILandroid/os/Bundle;Lcoil3/memory/MemoryCacheService;Lcoil3/memory/MemoryCacheService;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/views/FocusOverlayView$1;->postOrRun(Ljava/lang/Runnable;)V

    .line 488
    .line 489
    .line 490
    goto :goto_2

    .line 491
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 492
    .line 493
    goto :goto_1

    .line 494
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 495
    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    const-string v0, "Package/uid mismatch: uid="

    .line 499
    .line 500
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v0, " package="

    .line 507
    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw p0

    .line 522
    :cond_7
    const/4 p1, 0x0

    .line 523
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    :cond_8
    :goto_2
    return-void

    .line 527
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->what:I

    .line 528
    .line 529
    const/4 v2, -0x3

    .line 530
    if-eq v0, v2, :cond_a

    .line 531
    .line 532
    const/4 v2, -0x2

    .line 533
    if-eq v0, v2, :cond_a

    .line 534
    .line 535
    const/4 v2, -0x1

    .line 536
    if-eq v0, v2, :cond_a

    .line 537
    .line 538
    if-eq v0, v1, :cond_9

    .line 539
    .line 540
    goto :goto_3

    .line 541
    :cond_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast p0, Landroid/content/DialogInterface;

    .line 544
    .line 545
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 546
    .line 547
    .line 548
    goto :goto_3

    .line 549
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 552
    .line 553
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->this$0:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 556
    .line 557
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object p0

    .line 561
    check-cast p0, Landroid/content/DialogInterface;

    .line 562
    .line 563
    iget p1, p1, Landroid/os/Message;->what:I

    .line 564
    .line 565
    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 566
    .line 567
    .line 568
    :goto_3
    return-void

    .line 569
    :pswitch_b
    iget-object p0, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->this$0:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast p0, Lorg/schabi/newpipe/views/FocusOverlayView;

    .line 572
    .line 573
    invoke-virtual {p0}, Lorg/schabi/newpipe/views/FocusOverlayView;->updateRect()V

    .line 574
    .line 575
    .line 576
    return-void

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_0
    .end packed-switch

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public postOrRun(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/views/FocusOverlayView$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "data_calling_uid"

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "data_calling_pid"

    .line 38
    .line 39
    if-lez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
