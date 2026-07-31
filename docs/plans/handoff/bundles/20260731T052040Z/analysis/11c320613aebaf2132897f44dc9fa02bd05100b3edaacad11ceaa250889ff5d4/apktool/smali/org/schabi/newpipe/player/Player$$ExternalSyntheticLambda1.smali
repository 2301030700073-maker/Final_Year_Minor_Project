.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    check-cast p1, [B

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 18
    .line 19
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v0, v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultListener;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchResultListener;

    .line 34
    .line 35
    check-cast p0, Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/SettingsActivity;->setSearchActive(Z)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->INSTANCE:Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    .line 42
    .line 43
    iget v2, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->searchIndexItemResId:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->getEntryByPreferencesResId(I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    move-object v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->fragmentClass:Ljava/lang/Class;

    .line 54
    .line 55
    :goto_0
    if-nez v0, :cond_1

    .line 56
    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "Unable to locate fragment class for resId="

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget p1, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->searchIndexItemResId:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p1, "SettingsActivity"

    .line 74
    .line 75
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const v3, 0x7f0a036b

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_2

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager$3;->instantiate(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 129
    .line 130
    .line 131
    const/high16 p0, 0x7f020000

    .line 132
    .line 133
    iput p0, v0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    .line 134
    .line 135
    const v4, 0x7f020001

    .line 136
    .line 137
    .line 138
    iput v4, v0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    .line 139
    .line 140
    iput p0, v0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    .line 141
    .line 142
    iput v4, v0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    .line 143
    .line 144
    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 151
    .line 152
    .line 153
    :cond_2
    instance-of p0, v2, Landroidx/preference/PreferenceFragmentCompat;

    .line 154
    .line 155
    if-eqz p0, :cond_3

    .line 156
    .line 157
    check-cast v2, Landroidx/preference/PreferenceFragmentCompat;

    .line 158
    .line 159
    new-instance p0, Landroid/os/Handler;

    .line 160
    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 169
    .line 170
    const/16 v1, 0x17

    .line 171
    .line 172
    invoke-direct {v0, p1, v2, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_1
    return-void

    .line 179
    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p0, " must implement SearchPreferenceResultListener"

    .line 198
    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 211
    .line 212
    check-cast p1, Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;

    .line 219
    .line 220
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 221
    .line 222
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/info_list/StreamSegmentAdapter;->setItems(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Z

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_3
    check-cast p0, Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 227
    .line 228
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 229
    .line 230
    iput-object p1, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_4
    check-cast p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 234
    .line 235
    check-cast p1, Landroid/graphics/Bitmap;

    .line 236
    .line 237
    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 238
    .line 239
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 240
    .line 241
    .line 242
    const-string v0, "android.media.metadata.DISPLAY_ICON"

    .line 243
    .line 244
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :pswitch_5
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 249
    .line 250
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 251
    .line 252
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_6
    check-cast p0, Landroid/graphics/Bitmap;

    .line 257
    .line 258
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 259
    .line 260
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_7
    check-cast p0, Lcom/google/android/exoplayer2/Tracks;

    .line 265
    .line 266
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 267
    .line 268
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onTextTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :pswitch_8
    check-cast p0, Lcom/google/android/exoplayer2/text/CueGroup;

    .line 273
    .line 274
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 275
    .line 276
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    .line 277
    .line 278
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onCues(Ljava/util/List;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_9
    check-cast p0, Lcom/google/android/exoplayer2/video/VideoSize;

    .line 283
    .line 284
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 285
    .line 286
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_a
    check-cast p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    .line 291
    .line 292
    check-cast p1, Ljava/lang/Boolean;

    .line 293
    .line 294
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    .line 301
    .line 302
    if-eqz p1, :cond_5

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 309
    .line 310
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 311
    .line 312
    .line 313
    move-result p0

    .line 314
    if-eqz p0, :cond_6

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    if-eqz p0, :cond_7

    .line 322
    .line 323
    array-length p0, p0

    .line 324
    if-eqz p0, :cond_7

    .line 325
    .line 326
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_7
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 335
    .line 336
    .line 337
    :goto_3
    return-void

    .line 338
    :pswitch_b
    check-cast p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 339
    .line 340
    check-cast p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 341
    .line 342
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 343
    .line 344
    .line 345
    return-void

    .line 346
    :pswitch_c
    check-cast p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    .line 347
    .line 348
    check-cast p1, Ljava/util/Map$Entry;

    .line 349
    .line 350
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->$r8$lambda$dgKJRGSyQryYCxjm027ZJTCLp4w(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;Ljava/util/Map$Entry;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :pswitch_d
    check-cast p0, Ljava/util/ArrayList;

    .line 355
    .line 356
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 357
    .line 358
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/ArrayList;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-nez v0, :cond_8

    .line 363
    .line 364
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    :cond_8
    return-void

    .line 368
    :pswitch_e
    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 369
    .line 370
    check-cast p1, Ljava/util/Locale;

    .line 371
    .line 372
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioLocale(Ljava/util/Locale;)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :pswitch_f
    check-cast p0, Ljava/util/List;

    .line 377
    .line 378
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 379
    .line 380
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_10
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    .line 385
    .line 386
    check-cast p1, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRelatedPlaylistInfoItemExtractor;

    .line 387
    .line 388
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :pswitch_11
    check-cast p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;

    .line 393
    .line 394
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 395
    .line 396
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    const-string v0, "addToPlaylistDialog"

    .line 401
    .line 402
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :pswitch_12
    check-cast p0, Ljava/util/function/BiConsumer;

    .line 407
    .line 408
    check-cast p1, Ljava/util/Map$Entry;

    .line 409
    .line 410
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :pswitch_13
    check-cast p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;

    .line 423
    .line 424
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;->function:Ljava/util/function/Function;

    .line 425
    .line 426
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    check-cast p1, Lj$/util/Spliterator;

    .line 431
    .line 432
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;->prefix:Lj$/util/Spliterator;

    .line 433
    .line 434
    return-void

    .line 435
    :pswitch_14
    check-cast p0, Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 436
    .line 437
    check-cast p1, Lorg/schabi/newpipe/player/ui/PlayerUi;

    .line 438
    .line 439
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/player/ui/PlayerUi;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
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

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
