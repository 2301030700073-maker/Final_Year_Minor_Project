.class public final Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bitmapPool:Ljava/lang/Object;

.field public final contactPhotoLoader:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->contactPhotoLoader:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->bitmapPool:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->bitmapPool:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->contactPhotoLoader:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/contacts/ContactPhotoLoader;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->contactPhotoLoader:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->bitmapPool:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/io/InputStream;

    .line 10
    .line 11
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->bitmapPool:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 24
    .line 25
    invoke-direct {v0, p1, v2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :goto_0
    sget-object v2, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->POOL:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;

    .line 37
    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    new-instance v0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_1
    move-object v2, v0

    .line 47
    iput-object p1, v2, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 48
    .line 49
    new-instance v0, Lcom/bumptech/glide/util/MarkEnforcingInputStream;

    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;-><init>(Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;)V

    .line 52
    .line 53
    .line 54
    new-instance v8, Lcom/beetstra/jutf7/Base64Util;

    .line 55
    .line 56
    const/16 v3, 0x13

    .line 57
    .line 58
    invoke-direct {v8, v3, p1, v2}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :try_start_1
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->contactPhotoLoader:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v3, p0

    .line 64
    check-cast v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 65
    .line 66
    new-instance v4, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 67
    .line 68
    iget-object p0, v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-object v5, v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 71
    .line 72
    invoke-direct {v4, v0, p0, v5}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    .line 73
    .line 74
    .line 75
    move v5, p2

    .line 76
    move v6, p3

    .line 77
    move-object v7, p4

    .line 78
    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Lcom/fsck/k9/backend/imap/ImapSync;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-virtual {v2}, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->release()V

    .line 83
    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-object p0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    move-object p0, v0

    .line 93
    invoke-virtual {v2}, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->release()V

    .line 94
    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    .line 99
    .line 100
    .line 101
    :cond_3
    throw p0

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    move-object p0, v0

    .line 104
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    throw p0

    .line 106
    :pswitch_0
    move v5, p2

    .line 107
    move v6, p3

    .line 108
    move-object v7, p4

    .line 109
    check-cast p1, Landroid/net/Uri;

    .line 110
    .line 111
    iget-object p2, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->contactPhotoLoader:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p2, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;

    .line 114
    .line 115
    invoke-virtual {p2, p1, v7}, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;->decode(Landroid/net/Uri;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->get()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->bitmapPool:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 133
    .line 134
    invoke-static {p0, p1, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter;->convert(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    :goto_1
    return-object v3

    .line 139
    :pswitch_1
    move v5, p2

    .line 140
    move v6, p3

    .line 141
    move-object v7, p4

    .line 142
    iget-object p2, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->contactPhotoLoader:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p2, Lcom/bumptech/glide/load/ResourceDecoder;

    .line 145
    .line 146
    invoke-interface {p2, p1, v5, v6, v7}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->bitmapPool:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p0, Landroid/content/res/Resources;

    .line 153
    .line 154
    if-nez p1, :cond_5

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 158
    .line 159
    invoke-direct {v3, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/Resource;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    return-object v3

    .line 163
    :pswitch_2
    move v5, p2

    .line 164
    move v6, p3

    .line 165
    move-object v7, p4

    .line 166
    check-cast p1, Lcom/fsck/k9/contacts/ContactImage;

    .line 167
    .line 168
    iget-object p2, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->bitmapPool:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p2, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object p3, p1, Lcom/fsck/k9/contacts/ContactImage;->address:Lcom/fsck/k9/mail/Address;

    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 181
    .line 182
    .line 183
    move-result p4

    .line 184
    iget-boolean v0, p1, Lcom/fsck/k9/contacts/ContactImage;->contactLetterOnly:Z

    .line 185
    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_6
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->contactPhotoLoader:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p0, Lcom/fsck/k9/contacts/ContactPhotoLoader;

    .line 192
    .line 193
    iget-object v0, p3, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    iget-object v4, p0, Lcom/fsck/k9/contacts/ContactPhotoLoader;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 199
    .line 200
    check-cast v4, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 201
    .line 202
    invoke-virtual {v4, v0}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    if-nez v4, :cond_7

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_7
    :try_start_3
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactPhotoLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 210
    .line 211
    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 212
    .line 213
    .line 214
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 215
    :try_start_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 216
    .line 217
    .line 218
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 219
    :try_start_5
    invoke-static {p0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 220
    .line 221
    .line 222
    move-object v3, v0

    .line 223
    goto :goto_4

    .line 224
    :catch_0
    move-exception v0

    .line 225
    move-object p0, v0

    .line 226
    goto :goto_3

    .line 227
    :catchall_2
    move-exception v0

    .line 228
    move-object v5, v0

    .line 229
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 230
    :catchall_3
    move-exception v0

    .line 231
    :try_start_7
    invoke-static {p0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 235
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v5, "Couldn\'t load contact photo: "

    .line 238
    .line 239
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-array v4, v2, [Ljava/lang/Object;

    .line 250
    .line 251
    invoke-static {p0, v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :goto_4
    if-nez v3, :cond_a

    .line 255
    .line 256
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 257
    .line 258
    invoke-interface {p2, p4, p4, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    iget-object p0, p1, Lcom/fsck/k9/contacts/ContactImage;->contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 266
    .line 267
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    new-instance p1, Landroid/graphics/Canvas;

    .line 271
    .line 272
    invoke-direct {p1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p3}, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;->calcUnknownContactColor(Lcom/fsck/k9/mail/Address;)I

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    invoke-virtual {v3, p0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 280
    .line 281
    .line 282
    iget-object p0, p3, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 283
    .line 284
    if-nez p0, :cond_8

    .line 285
    .line 286
    iget-object p0, p3, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 287
    .line 288
    :cond_8
    sget-object p3, Lcom/fsck/k9/contacts/ContactLetterExtractor;->EXTRACT_LETTER_PATTERN:Lkotlin/text/Regex;

    .line 289
    .line 290
    invoke-virtual {p3, v2, p0}, Lkotlin/text/Regex;->find(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    if-eqz p0, :cond_9

    .line 295
    .line 296
    iget-object p0, p0, Lkotlin/text/MatcherMatchResult;->matcher:Ljava/util/regex/Matcher;

    .line 297
    .line 298
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 306
    .line 307
    invoke-virtual {p0, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_9
    const-string p0, "?"

    .line 316
    .line 317
    :goto_5
    new-instance p3, Landroid/graphics/Paint;

    .line 318
    .line 319
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 323
    .line 324
    .line 325
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 326
    .line 327
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    .line 329
    .line 330
    const/16 v0, 0xff

    .line 331
    .line 332
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 333
    .line 334
    .line 335
    int-to-float p4, p4

    .line 336
    const v0, 0x3f266666    # 0.65f

    .line 337
    .line 338
    .line 339
    mul-float/2addr v0, p4

    .line 340
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 341
    .line 342
    .line 343
    new-instance v0, Landroid/graphics/Rect;

    .line 344
    .line 345
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3, p0, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    const/high16 v2, 0x40000000    # 2.0f

    .line 356
    .line 357
    div-float/2addr p4, v2

    .line 358
    div-float/2addr v1, v2

    .line 359
    sub-float v1, p4, v1

    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    int-to-float v0, v0

    .line 366
    div-float/2addr v0, v2

    .line 367
    add-float/2addr v0, p4

    .line 368
    invoke-virtual {p1, p0, v1, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    .line 370
    .line 371
    :cond_a
    invoke-static {v3, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    return-object p0

    .line 376
    nop

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Ljava/io/InputStream;

    .line 8
    .line 9
    return v1

    .line 10
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 11
    .line 12
    const-string p0, "android.resource"

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :pswitch_1
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;->contactPhotoLoader:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/bumptech/glide/load/ResourceDecoder;

    .line 26
    .line 27
    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/ResourceDecoder;->handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :pswitch_2
    check-cast p1, Lcom/fsck/k9/contacts/ContactImage;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
