.class public final Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

.field public static final DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

.field public static final EMPTY_CALLBACKS:Lokio/AsyncTimeout$Companion;

.field public static final FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

.field public static final NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

.field public static final OPTIONS_QUEUE:Ljava/util/ArrayDeque;

.field public static final PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;


# instance fields
.field public final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

.field public final displayMetrics:Landroid/util/DisplayMetrics;

.field public final hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

.field public final parsers:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    .line 3
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/load/Option;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    sget-object v2, Lcom/bumptech/glide/load/Option;->EMPTY_UPDATER:Lcom/bumptech/glide/load/Option$1;

    .line 15
    .line 16
    const-string v3, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    .line 22
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 24
    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    .line 34
    .line 35
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 44
    .line 45
    const-string v1, "image/vnd.wap.wbmp"

    .line 46
    .line 47
    const-string v2, "image/x-ico"

    .line 48
    .line 49
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    .line 65
    .line 66
    new-instance v0, Lokio/AsyncTimeout$Companion;

    .line 67
    .line 68
    const/16 v1, 0xf

    .line 69
    .line 70
    invoke-direct {v0, v1}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->EMPTY_CALLBACKS:Lokio/AsyncTimeout$Companion;

    .line 74
    .line 75
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 76
    .line 77
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 78
    .line 79
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 80
    .line 81
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/util/ArrayDeque;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/ArrayDeque;

    .line 95
    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->parsers:Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string p1, "Argument must not be null"

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-static {p3, p1}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 23
    .line 24
    invoke-static {p4, p1}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 28
    .line 29
    return-void
.end method

.method public static decodeStream(Lcom/fsck/k9/backend/imap/ImapSync;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "Downsampler"

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onObtainBounds()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 26
    .line 27
    array-length v2, v2

    .line 28
    iput v2, v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    :pswitch_1
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/fsck/k9/backend/imap/ImapSync;->decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception v4

    .line 55
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    .line 56
    .line 57
    const-string v6, "Exception decoding bitmap, outWidth: "

    .line 58
    .line 59
    const-string v7, ", outHeight: "

    .line 60
    .line 61
    const-string v8, ", outMimeType: "

    .line 62
    .line 63
    invoke-static {v6, v1, v7, v2, v8}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ", inBitmap: "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v5, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x3

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 99
    .line 100
    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    :try_start_4
    invoke-interface {p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 112
    .line 113
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/fsck/k9/backend/imap/ImapSync;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 114
    .line 115
    .line 116
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :catch_1
    :try_start_5
    throw v5

    .line 124
    :cond_2
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, " ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "["

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "x"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, "] "

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1a

    .line 23
    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    .line 33
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 34
    .line 35
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 36
    .line 37
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final decode(Lcom/fsck/k9/backend/imap/ImapSync;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    .locals 13

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 4
    .line 5
    const/high16 v3, 0x10000

    .line 6
    .line 7
    const-class v4, [B

    .line 8
    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    move-object v12, v2

    .line 14
    check-cast v12, [B

    .line 15
    .line 16
    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/graphics/BitmapFactory$Options;

    .line 27
    .line 28
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_0
    move-object v3, v4

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_3

    .line 43
    :goto_0
    monitor-exit v2

    .line 44
    iput-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 45
    .line 46
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    move-object v5, v2

    .line 53
    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 54
    .line 55
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v6, v2

    .line 62
    check-cast v6, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 63
    .line 64
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->OPTION:Lcom/bumptech/glide/load/Option;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object v4, v2

    .line 71
    check-cast v4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;

    .line 72
    .line 73
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-eqz v7, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    :goto_1
    move-object v1, p0

    .line 107
    move-object v2, p1

    .line 108
    move v8, p2

    .line 109
    move/from16 v9, p3

    .line 110
    .line 111
    move-object/from16 v11, p5

    .line 112
    .line 113
    move v7, v0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 116
    goto :goto_1

    .line 117
    :goto_2
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeFromWrappedStreams(Lcom/fsck/k9/backend/imap/ImapSync;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 122
    .line 123
    invoke-static {v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 124
    .line 125
    .line 126
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 131
    .line 132
    invoke-virtual {v1, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->put(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 141
    .line 142
    invoke-virtual {v1, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->put(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :catchall_2
    move-exception v0

    .line 147
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 148
    :try_start_5
    throw v0

    .line 149
    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    throw v0
.end method

.method public final decodeFromWrappedStreams(Lcom/fsck/k9/backend/imap/ImapSync;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 43

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move/from16 v6, p7

    .line 10
    .line 11
    move/from16 v7, p8

    .line 12
    .line 13
    move-object/from16 v8, p10

    .line 14
    .line 15
    sget v9, Lcom/bumptech/glide/util/LogTime;->$r8$clinit:I

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 18
    .line 19
    .line 20
    move-result-wide v9

    .line 21
    const/4 v11, 0x1

    .line 22
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    .line 24
    iget-object v12, v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 25
    .line 26
    invoke-static {v2, v3, v8, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/fsck/k9/backend/imap/ImapSync;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    const/4 v13, 0x0

    .line 30
    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 31
    .line 32
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 33
    .line 34
    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 35
    .line 36
    filled-new-array {v14, v15}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    aget v15, v14, v13

    .line 41
    .line 42
    aget v14, v14, v11

    .line 43
    .line 44
    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v13, -0x1

    .line 47
    if-eq v15, v13, :cond_1

    .line 48
    .line 49
    if-ne v14, v13, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move/from16 v17, p6

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    const/16 v17, 0x0

    .line 56
    .line 57
    :goto_1
    iget v13, v2, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 58
    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    packed-switch v13, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    iget-object v13, v2, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v13, Ljava/util/List;

    .line 67
    .line 68
    move-wide/from16 v20, v9

    .line 69
    .line 70
    iget-object v9, v2, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v9, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 73
    .line 74
    iget-object v10, v2, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v10, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 77
    .line 78
    move-object/from16 p6, v9

    .line 79
    .line 80
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    move-object/from16 v22, v11

    .line 85
    .line 86
    const/4 v11, 0x0

    .line 87
    :goto_2
    if-ge v11, v9, :cond_4

    .line 88
    .line 89
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v23

    .line 93
    move/from16 v24, v9

    .line 94
    .line 95
    move-object/from16 v9, v23

    .line 96
    .line 97
    check-cast v9, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 98
    .line 99
    move/from16 v23, v11

    .line 100
    .line 101
    :try_start_0
    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 102
    .line 103
    move-object/from16 v25, v13

    .line 104
    .line 105
    new-instance v13, Ljava/io/FileInputStream;

    .line 106
    .line 107
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 108
    .line 109
    .line 110
    move-result-object v26

    .line 111
    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v11, v13, v10}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    .line 120
    .line 121
    :try_start_1
    invoke-interface {v9, v11, v10}, Lcom/bumptech/glide/load/ImageHeaderParser;->getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)I

    .line 122
    .line 123
    .line 124
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {v11}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 129
    .line 130
    .line 131
    const/4 v9, -0x1

    .line 132
    if-eq v5, v9, :cond_2

    .line 133
    .line 134
    :goto_3
    move v13, v5

    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :cond_2
    add-int/lit8 v11, v23, 0x1

    .line 138
    .line 139
    move/from16 v9, v24

    .line 140
    .line 141
    move-object/from16 v13, v25

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    move-object/from16 v19, v11

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    :goto_4
    if-eqz v19, :cond_3

    .line 150
    .line 151
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    .line 152
    .line 153
    .line 154
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_4
    const/4 v13, -0x1

    .line 159
    goto :goto_7

    .line 160
    :pswitch_0
    move-wide/from16 v20, v9

    .line 161
    .line 162
    move-object/from16 v22, v11

    .line 163
    .line 164
    iget-object v5, v2, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v5, Ljava/util/List;

    .line 167
    .line 168
    iget-object v9, v2, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v9, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 171
    .line 172
    iget-object v9, v9, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v9, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 175
    .line 176
    invoke-virtual {v9}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->reset()V

    .line 177
    .line 178
    .line 179
    iget-object v10, v2, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v10, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 182
    .line 183
    invoke-static {v5, v9, v10}, Landroidx/work/OperationKt;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)I

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    goto :goto_7

    .line 188
    :pswitch_1
    move-wide/from16 v20, v9

    .line 189
    .line 190
    move-object/from16 v22, v11

    .line 191
    .line 192
    iget-object v5, v2, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v5, Ljava/util/List;

    .line 195
    .line 196
    iget-object v9, v2, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v9, Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    invoke-static {v9}, Lcom/bumptech/glide/util/ByteBufferUtil;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    iget-object v10, v2, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v10, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 207
    .line 208
    if-nez v9, :cond_6

    .line 209
    .line 210
    :cond_5
    const/4 v10, -0x1

    .line 211
    goto :goto_6

    .line 212
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    const/4 v13, 0x0

    .line 217
    :goto_5
    if-ge v13, v11, :cond_5

    .line 218
    .line 219
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v23

    .line 223
    move-object/from16 p6, v5

    .line 224
    .line 225
    move-object/from16 v5, v23

    .line 226
    .line 227
    check-cast v5, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 228
    .line 229
    :try_start_2
    invoke-interface {v5, v9, v10}, Lcom/bumptech/glide/load/ImageHeaderParser;->getOrientation(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)I

    .line 230
    .line 231
    .line 232
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 233
    move-object/from16 v23, v10

    .line 234
    .line 235
    const/4 v10, 0x0

    .line 236
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 237
    .line 238
    .line 239
    move-result-object v16

    .line 240
    check-cast v16, Ljava/nio/ByteBuffer;

    .line 241
    .line 242
    const/4 v10, -0x1

    .line 243
    if-eq v5, v10, :cond_7

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 247
    .line 248
    move-object/from16 v5, p6

    .line 249
    .line 250
    move-object/from16 v10, v23

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :catchall_2
    move-exception v0

    .line 254
    const/4 v10, 0x0

    .line 255
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 260
    .line 261
    throw v0

    .line 262
    :goto_6
    move v13, v10

    .line 263
    :goto_7
    const/16 v5, 0x5a

    .line 264
    .line 265
    packed-switch v13, :pswitch_data_1

    .line 266
    .line 267
    .line 268
    const/4 v10, 0x0

    .line 269
    goto :goto_8

    .line 270
    :pswitch_2
    const/16 v10, 0x10e

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :pswitch_3
    move v10, v5

    .line 274
    goto :goto_8

    .line 275
    :pswitch_4
    const/16 v10, 0xb4

    .line 276
    .line 277
    :goto_8
    packed-switch v13, :pswitch_data_2

    .line 278
    .line 279
    .line 280
    const/4 v11, 0x0

    .line 281
    goto :goto_9

    .line 282
    :pswitch_5
    const/4 v11, 0x1

    .line 283
    :goto_9
    const/high16 v9, -0x80000000

    .line 284
    .line 285
    if-ne v6, v9, :cond_a

    .line 286
    .line 287
    if-eq v10, v5, :cond_9

    .line 288
    .line 289
    const/16 v5, 0x10e

    .line 290
    .line 291
    if-ne v10, v5, :cond_8

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_8
    move/from16 v27, v15

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_9
    const/16 v5, 0x10e

    .line 298
    .line 299
    :goto_a
    move/from16 v27, v14

    .line 300
    .line 301
    goto :goto_b

    .line 302
    :cond_a
    const/16 v5, 0x10e

    .line 303
    .line 304
    move/from16 v27, v6

    .line 305
    .line 306
    :goto_b
    if-ne v7, v9, :cond_d

    .line 307
    .line 308
    const/16 v9, 0x5a

    .line 309
    .line 310
    if-eq v10, v9, :cond_c

    .line 311
    .line 312
    if-ne v10, v5, :cond_b

    .line 313
    .line 314
    goto :goto_c

    .line 315
    :cond_b
    move v5, v14

    .line 316
    goto :goto_d

    .line 317
    :cond_c
    :goto_c
    move v5, v15

    .line 318
    goto :goto_d

    .line 319
    :cond_d
    move v5, v7

    .line 320
    :goto_d
    invoke-virtual {v2}, Lcom/fsck/k9/backend/imap/ImapSync;->getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    move/from16 v23, v13

    .line 325
    .line 326
    const-string v13, ", target density: "

    .line 327
    .line 328
    const/16 v25, 0x0

    .line 329
    .line 330
    const-string v7, ", density: "

    .line 331
    .line 332
    const/high16 v28, 0x3f800000    # 1.0f

    .line 333
    .line 334
    const-string/jumbo v6, "x"

    .line 335
    .line 336
    .line 337
    const-string v4, "Downsampler"

    .line 338
    .line 339
    move/from16 v29, v11

    .line 340
    .line 341
    const-string v11, "]"

    .line 342
    .line 343
    if-lez v15, :cond_e

    .line 344
    .line 345
    if-gtz v14, :cond_f

    .line 346
    .line 347
    :cond_e
    move-object v8, v7

    .line 348
    move-object v0, v11

    .line 349
    move-object/from16 p3, v12

    .line 350
    .line 351
    move-object v7, v13

    .line 352
    move/from16 v1, v27

    .line 353
    .line 354
    const/4 v10, 0x3

    .line 355
    goto/16 :goto_1d

    .line 356
    .line 357
    :cond_f
    const/16 v1, 0x5a

    .line 358
    .line 359
    if-eq v10, v1, :cond_11

    .line 360
    .line 361
    const/16 v1, 0x10e

    .line 362
    .line 363
    if-ne v10, v1, :cond_10

    .line 364
    .line 365
    goto :goto_f

    .line 366
    :cond_10
    move-object/from16 v18, v7

    .line 367
    .line 368
    move-object/from16 p6, v11

    .line 369
    .line 370
    move v7, v14

    .line 371
    move v11, v15

    .line 372
    :goto_e
    move/from16 v1, v27

    .line 373
    .line 374
    move-object/from16 v27, v13

    .line 375
    .line 376
    goto :goto_10

    .line 377
    :cond_11
    :goto_f
    move-object/from16 v18, v7

    .line 378
    .line 379
    move-object/from16 p6, v11

    .line 380
    .line 381
    move v11, v14

    .line 382
    move v7, v15

    .line 383
    goto :goto_e

    .line 384
    :goto_10
    invoke-virtual {v0, v11, v7, v1, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->getScaleFactor(IIII)F

    .line 385
    .line 386
    .line 387
    move-result v13

    .line 388
    cmpg-float v30, v13, v25

    .line 389
    .line 390
    if-lez v30, :cond_24

    .line 391
    .line 392
    move/from16 v30, v13

    .line 393
    .line 394
    invoke-virtual {v0, v11, v7, v1, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->getSampleSizeRounding(IIII)I

    .line 395
    .line 396
    .line 397
    move-result v13

    .line 398
    if-eqz v13, :cond_23

    .line 399
    .line 400
    move/from16 v31, v10

    .line 401
    .line 402
    int-to-float v10, v11

    .line 403
    move/from16 p6, v10

    .line 404
    .line 405
    mul-float v10, v30, p6

    .line 406
    .line 407
    move/from16 v32, v11

    .line 408
    .line 409
    float-to-double v10, v10

    .line 410
    const-wide/high16 v33, 0x3fe0000000000000L    # 0.5

    .line 411
    .line 412
    add-double v10, v10, v33

    .line 413
    .line 414
    double-to-int v10, v10

    .line 415
    int-to-float v11, v7

    .line 416
    move/from16 v35, v7

    .line 417
    .line 418
    mul-float v7, v30, v11

    .line 419
    .line 420
    move/from16 v36, v10

    .line 421
    .line 422
    move/from16 v37, v11

    .line 423
    .line 424
    float-to-double v10, v7

    .line 425
    add-double v10, v10, v33

    .line 426
    .line 427
    double-to-int v7, v10

    .line 428
    div-int v11, v32, v36

    .line 429
    .line 430
    div-int v7, v35, v7

    .line 431
    .line 432
    const/4 v10, 0x1

    .line 433
    if-ne v13, v10, :cond_12

    .line 434
    .line 435
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    .line 436
    .line 437
    .line 438
    move-result v7

    .line 439
    goto :goto_11

    .line 440
    :cond_12
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    :goto_11
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 445
    .line 446
    const/16 v11, 0x17

    .line 447
    .line 448
    if-gt v10, v11, :cond_13

    .line 449
    .line 450
    sget-object v11, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NO_DOWNSAMPLE_PRE_N_MIME_TYPES:Ljava/util/Set;

    .line 451
    .line 452
    move/from16 v36, v7

    .line 453
    .line 454
    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 455
    .line 456
    invoke-interface {v11, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    if-eqz v7, :cond_14

    .line 461
    .line 462
    const/4 v7, 0x1

    .line 463
    goto :goto_12

    .line 464
    :cond_13
    move/from16 v36, v7

    .line 465
    .line 466
    :cond_14
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    const/4 v11, 0x1

    .line 471
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    .line 472
    .line 473
    .line 474
    move-result v7

    .line 475
    if-ne v13, v11, :cond_15

    .line 476
    .line 477
    int-to-float v11, v7

    .line 478
    div-float v13, v28, v30

    .line 479
    .line 480
    cmpg-float v11, v11, v13

    .line 481
    .line 482
    if-gez v11, :cond_15

    .line 483
    .line 484
    shl-int/lit8 v7, v7, 0x1

    .line 485
    .line 486
    :cond_15
    :goto_12
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 487
    .line 488
    sget-object v11, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 489
    .line 490
    if-ne v9, v11, :cond_16

    .line 491
    .line 492
    const/16 v9, 0x8

    .line 493
    .line 494
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    int-to-float v9, v9

    .line 499
    div-float v10, p6, v9

    .line 500
    .line 501
    float-to-double v10, v10

    .line 502
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 503
    .line 504
    .line 505
    move-result-wide v10

    .line 506
    double-to-int v10, v10

    .line 507
    div-float v11, v37, v9

    .line 508
    .line 509
    move v13, v10

    .line 510
    float-to-double v9, v11

    .line 511
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 512
    .line 513
    .line 514
    move-result-wide v9

    .line 515
    double-to-int v9, v9

    .line 516
    div-int/lit8 v10, v7, 0x8

    .line 517
    .line 518
    if-lez v10, :cond_19

    .line 519
    .line 520
    div-int v11, v13, v10

    .line 521
    .line 522
    div-int/2addr v9, v10

    .line 523
    move v10, v11

    .line 524
    goto/16 :goto_17

    .line 525
    .line 526
    :cond_16
    sget-object v11, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 527
    .line 528
    if-eq v9, v11, :cond_1d

    .line 529
    .line 530
    sget-object v11, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 531
    .line 532
    if-ne v9, v11, :cond_17

    .line 533
    .line 534
    goto :goto_16

    .line 535
    :cond_17
    invoke-virtual {v9}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    .line 536
    .line 537
    .line 538
    move-result v9

    .line 539
    if-eqz v9, :cond_1a

    .line 540
    .line 541
    const/16 v9, 0x18

    .line 542
    .line 543
    if-lt v10, v9, :cond_18

    .line 544
    .line 545
    int-to-float v9, v7

    .line 546
    div-float v10, p6, v9

    .line 547
    .line 548
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 549
    .line 550
    .line 551
    move-result v10

    .line 552
    div-float v11, v37, v9

    .line 553
    .line 554
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 555
    .line 556
    .line 557
    move-result v9

    .line 558
    goto :goto_17

    .line 559
    :cond_18
    int-to-float v9, v7

    .line 560
    div-float v10, p6, v9

    .line 561
    .line 562
    float-to-double v10, v10

    .line 563
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 564
    .line 565
    .line 566
    move-result-wide v10

    .line 567
    double-to-int v10, v10

    .line 568
    div-float v11, v37, v9

    .line 569
    .line 570
    move v13, v10

    .line 571
    float-to-double v9, v11

    .line 572
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 573
    .line 574
    .line 575
    move-result-wide v9

    .line 576
    :goto_13
    double-to-int v9, v9

    .line 577
    :cond_19
    :goto_14
    move v10, v13

    .line 578
    goto :goto_17

    .line 579
    :cond_1a
    rem-int v11, v32, v7

    .line 580
    .line 581
    if-nez v11, :cond_1b

    .line 582
    .line 583
    rem-int v9, v35, v7

    .line 584
    .line 585
    if-eqz v9, :cond_1c

    .line 586
    .line 587
    :cond_1b
    const/4 v10, 0x1

    .line 588
    goto :goto_15

    .line 589
    :cond_1c
    div-int v10, v32, v7

    .line 590
    .line 591
    div-int v9, v35, v7

    .line 592
    .line 593
    goto :goto_17

    .line 594
    :goto_15
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 595
    .line 596
    invoke-static {v2, v3, v8, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/fsck/k9/backend/imap/ImapSync;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 597
    .line 598
    .line 599
    const/4 v9, 0x0

    .line 600
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 601
    .line 602
    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 603
    .line 604
    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 605
    .line 606
    filled-new-array {v11, v13}, [I

    .line 607
    .line 608
    .line 609
    move-result-object v11

    .line 610
    aget v13, v11, v9

    .line 611
    .line 612
    aget v9, v11, v10

    .line 613
    .line 614
    goto :goto_14

    .line 615
    :cond_1d
    :goto_16
    int-to-float v9, v7

    .line 616
    div-float v10, p6, v9

    .line 617
    .line 618
    float-to-double v10, v10

    .line 619
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 620
    .line 621
    .line 622
    move-result-wide v10

    .line 623
    double-to-int v10, v10

    .line 624
    div-float v11, v37, v9

    .line 625
    .line 626
    move v13, v10

    .line 627
    float-to-double v9, v11

    .line 628
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 629
    .line 630
    .line 631
    move-result-wide v9

    .line 632
    goto :goto_13

    .line 633
    :goto_17
    invoke-virtual {v0, v10, v9, v1, v5}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->getScaleFactor(IIII)F

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    move-object v13, v12

    .line 638
    float-to-double v11, v0

    .line 639
    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    .line 640
    .line 641
    cmpg-double v0, v11, v35

    .line 642
    .line 643
    if-gtz v0, :cond_1e

    .line 644
    .line 645
    move-wide/from16 v37, v11

    .line 646
    .line 647
    goto :goto_18

    .line 648
    :cond_1e
    div-double v37, v35, v11

    .line 649
    .line 650
    :goto_18
    const-wide v39, 0x41dfffffffc00000L    # 2.147483647E9

    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    mul-double v37, v37, v39

    .line 656
    .line 657
    move-wide/from16 v41, v11

    .line 658
    .line 659
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->round(D)J

    .line 660
    .line 661
    .line 662
    move-result-wide v11

    .line 663
    long-to-int v11, v11

    .line 664
    move-object/from16 p3, v13

    .line 665
    .line 666
    int-to-double v12, v11

    .line 667
    mul-double v12, v12, v41

    .line 668
    .line 669
    add-double v12, v12, v33

    .line 670
    .line 671
    double-to-int v12, v12

    .line 672
    int-to-float v13, v12

    .line 673
    int-to-float v11, v11

    .line 674
    div-float/2addr v13, v11

    .line 675
    move v11, v7

    .line 676
    float-to-double v7, v13

    .line 677
    div-double v7, v41, v7

    .line 678
    .line 679
    int-to-double v12, v12

    .line 680
    mul-double/2addr v7, v12

    .line 681
    add-double v7, v7, v33

    .line 682
    .line 683
    double-to-int v7, v7

    .line 684
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 685
    .line 686
    if-gtz v0, :cond_1f

    .line 687
    .line 688
    move-wide/from16 v35, v41

    .line 689
    .line 690
    goto :goto_19

    .line 691
    :cond_1f
    div-double v35, v35, v41

    .line 692
    .line 693
    :goto_19
    mul-double v35, v35, v39

    .line 694
    .line 695
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->round(D)J

    .line 696
    .line 697
    .line 698
    move-result-wide v7

    .line 699
    long-to-int v0, v7

    .line 700
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 701
    .line 702
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 703
    .line 704
    if-lez v7, :cond_20

    .line 705
    .line 706
    if-lez v0, :cond_20

    .line 707
    .line 708
    if-eq v7, v0, :cond_20

    .line 709
    .line 710
    const/4 v7, 0x1

    .line 711
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 712
    .line 713
    :goto_1a
    const/4 v7, 0x2

    .line 714
    goto :goto_1b

    .line 715
    :cond_20
    const/4 v7, 0x0

    .line 716
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 717
    .line 718
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 719
    .line 720
    goto :goto_1a

    .line 721
    :goto_1b
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    if-eqz v0, :cond_22

    .line 726
    .line 727
    const-string v0, "Calculate scaling, source: ["

    .line 728
    .line 729
    const-string v7, "], degreesToRotate: "

    .line 730
    .line 731
    invoke-static {v0, v15, v6, v14, v7}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    const-string v7, ", target: ["

    .line 736
    .line 737
    move/from16 v8, v31

    .line 738
    .line 739
    invoke-static {v0, v8, v7, v1, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 740
    .line 741
    .line 742
    const-string v7, "], power of two scaled: ["

    .line 743
    .line 744
    invoke-static {v0, v5, v7, v10, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v7, "], exact scale factor: "

    .line 751
    .line 752
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    move/from16 v7, v30

    .line 756
    .line 757
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    const-string v7, ", power of 2 sample size: "

    .line 761
    .line 762
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    const-string v7, ", adjusted scale factor: "

    .line 769
    .line 770
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    move-wide/from16 v7, v41

    .line 774
    .line 775
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    move-object/from16 v7, v27

    .line 779
    .line 780
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 784
    .line 785
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    move-object/from16 v8, v18

    .line 789
    .line 790
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 794
    .line 795
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    :cond_21
    :goto_1c
    move-object/from16 v9, p0

    .line 806
    .line 807
    goto :goto_1e

    .line 808
    :cond_22
    move-object/from16 v8, v18

    .line 809
    .line 810
    move-object/from16 v7, v27

    .line 811
    .line 812
    goto :goto_1c

    .line 813
    :cond_23
    const-string v0, "Cannot round with null rounding"

    .line 814
    .line 815
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    return-object v19

    .line 819
    :cond_24
    move v7, v13

    .line 820
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 821
    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    .line 823
    .line 824
    const-string v4, "Cannot scale with factor: "

    .line 825
    .line 826
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    const-string v4, " from: "

    .line 833
    .line 834
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    const-string v0, ", source: ["

    .line 841
    .line 842
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    const-string v0, "], target: ["

    .line 846
    .line 847
    invoke-static {v3, v15, v6, v14, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    move-object/from16 v0, p6

    .line 860
    .line 861
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    throw v2

    .line 872
    :goto_1d
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 873
    .line 874
    .line 875
    move-result v11

    .line 876
    if-eqz v11, :cond_21

    .line 877
    .line 878
    new-instance v10, Ljava/lang/StringBuilder;

    .line 879
    .line 880
    const-string v11, "Unable to determine dimensions for: "

    .line 881
    .line 882
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    const-string v9, " with target ["

    .line 889
    .line 890
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    .line 911
    .line 912
    goto :goto_1c

    .line 913
    :goto_1e
    iget-object v0, v9, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->hardwareConfigState:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 914
    .line 915
    move/from16 v10, v17

    .line 916
    .line 917
    move/from16 v11, v29

    .line 918
    .line 919
    invoke-virtual {v0, v1, v5, v10, v11}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed(IIZZ)Z

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    if-eqz v0, :cond_25

    .line 924
    .line 925
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda2;->m$1()Landroid/graphics/Bitmap$Config;

    .line 926
    .line 927
    .line 928
    move-result-object v10

    .line 929
    iput-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 930
    .line 931
    const/4 v10, 0x0

    .line 932
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 933
    .line 934
    goto :goto_1f

    .line 935
    :cond_25
    const/4 v10, 0x0

    .line 936
    :goto_1f
    if-eqz v0, :cond_26

    .line 937
    .line 938
    goto :goto_22

    .line 939
    :cond_26
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 940
    .line 941
    move-object/from16 v11, p4

    .line 942
    .line 943
    if-eq v11, v0, :cond_29

    .line 944
    .line 945
    :try_start_3
    invoke-virtual {v2}, Lcom/fsck/k9/backend/imap/ImapSync;->getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    .line 950
    .line 951
    .line 952
    move-result v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 953
    goto :goto_20

    .line 954
    :catch_0
    move-exception v0

    .line 955
    const/4 v12, 0x3

    .line 956
    invoke-static {v4, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 957
    .line 958
    .line 959
    move-result v12

    .line 960
    if-eqz v12, :cond_27

    .line 961
    .line 962
    new-instance v12, Ljava/lang/StringBuilder;

    .line 963
    .line 964
    const-string v13, "Cannot determine whether the image has alpha or not from header, format "

    .line 965
    .line 966
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v11

    .line 976
    invoke-static {v4, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    .line 978
    .line 979
    :cond_27
    move v13, v10

    .line 980
    :goto_20
    if-eqz v13, :cond_28

    .line 981
    .line 982
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 983
    .line 984
    goto :goto_21

    .line 985
    :cond_28
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 986
    .line 987
    :goto_21
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 988
    .line 989
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 990
    .line 991
    if-ne v0, v10, :cond_2a

    .line 992
    .line 993
    const/4 v10, 0x1

    .line 994
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 995
    .line 996
    goto :goto_22

    .line 997
    :cond_29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 998
    .line 999
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1000
    .line 1001
    :cond_2a
    :goto_22
    if-ltz v15, :cond_2b

    .line 1002
    .line 1003
    if-ltz v14, :cond_2b

    .line 1004
    .line 1005
    if-eqz p9, :cond_2b

    .line 1006
    .line 1007
    goto :goto_24

    .line 1008
    :cond_2b
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1009
    .line 1010
    if-lez v0, :cond_2c

    .line 1011
    .line 1012
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1013
    .line 1014
    if-lez v1, :cond_2c

    .line 1015
    .line 1016
    if-eq v0, v1, :cond_2c

    .line 1017
    .line 1018
    int-to-float v0, v0

    .line 1019
    int-to-float v1, v1

    .line 1020
    div-float/2addr v0, v1

    .line 1021
    goto :goto_23

    .line 1022
    :cond_2c
    move/from16 v0, v28

    .line 1023
    .line 1024
    :goto_23
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1025
    .line 1026
    int-to-float v5, v15

    .line 1027
    int-to-float v10, v1

    .line 1028
    div-float/2addr v5, v10

    .line 1029
    float-to-double v11, v5

    .line 1030
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v11

    .line 1034
    double-to-int v5, v11

    .line 1035
    int-to-float v11, v14

    .line 1036
    div-float/2addr v11, v10

    .line 1037
    float-to-double v10, v11

    .line 1038
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 1039
    .line 1040
    .line 1041
    move-result-wide v10

    .line 1042
    double-to-int v10, v10

    .line 1043
    int-to-float v5, v5

    .line 1044
    mul-float/2addr v5, v0

    .line 1045
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 1046
    .line 1047
    .line 1048
    move-result v5

    .line 1049
    int-to-float v10, v10

    .line 1050
    mul-float/2addr v10, v0

    .line 1051
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 1052
    .line 1053
    .line 1054
    move-result v10

    .line 1055
    const/4 v11, 0x2

    .line 1056
    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v12

    .line 1060
    if-eqz v12, :cond_2d

    .line 1061
    .line 1062
    const-string v11, "Calculated target ["

    .line 1063
    .line 1064
    const-string v12, "] for source ["

    .line 1065
    .line 1066
    invoke-static {v11, v5, v6, v10, v12}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v11

    .line 1070
    const-string v12, "], sampleSize: "

    .line 1071
    .line 1072
    invoke-static {v11, v15, v6, v14, v12}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    const-string v1, ", targetDensity: "

    .line 1079
    .line 1080
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1084
    .line 1085
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1092
    .line 1093
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    .line 1096
    const-string v1, ", density multiplier: "

    .line 1097
    .line 1098
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .line 1110
    .line 1111
    :cond_2d
    move v1, v5

    .line 1112
    move v5, v10

    .line 1113
    :goto_24
    const/16 v0, 0x1a

    .line 1114
    .line 1115
    if-lez v1, :cond_31

    .line 1116
    .line 1117
    if-lez v5, :cond_31

    .line 1118
    .line 1119
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1120
    .line 1121
    if-lt v10, v0, :cond_2f

    .line 1122
    .line 1123
    iget-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1124
    .line 1125
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda2;->m$1()Landroid/graphics/Bitmap$Config;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v11

    .line 1129
    if-ne v10, v11, :cond_2e

    .line 1130
    .line 1131
    goto :goto_26

    .line 1132
    :cond_2e
    invoke-static {v3}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v10

    .line 1136
    goto :goto_25

    .line 1137
    :cond_2f
    move-object/from16 v10, v19

    .line 1138
    .line 1139
    :goto_25
    if-nez v10, :cond_30

    .line 1140
    .line 1141
    iget-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1142
    .line 1143
    :cond_30
    move-object/from16 v13, p3

    .line 1144
    .line 1145
    invoke-interface {v13, v1, v5, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 1150
    .line 1151
    goto :goto_27

    .line 1152
    :cond_31
    :goto_26
    move-object/from16 v13, p3

    .line 1153
    .line 1154
    :goto_27
    if-eqz p5, :cond_33

    .line 1155
    .line 1156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1157
    .line 1158
    const/16 v5, 0x1c

    .line 1159
    .line 1160
    if-lt v1, v5, :cond_34

    .line 1161
    .line 1162
    sget-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 1163
    .line 1164
    move-object/from16 v5, p5

    .line 1165
    .line 1166
    if-ne v5, v0, :cond_32

    .line 1167
    .line 1168
    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 1169
    .line 1170
    if-eqz v0, :cond_32

    .line 1171
    .line 1172
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    .line 1173
    .line 1174
    .line 1175
    move-result v0

    .line 1176
    if-eqz v0, :cond_32

    .line 1177
    .line 1178
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()Landroid/graphics/ColorSpace$Named;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    goto :goto_28

    .line 1183
    :cond_32
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1()Landroid/graphics/ColorSpace$Named;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v0

    .line 1187
    :goto_28
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    invoke-static {v3, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 1192
    .line 1193
    .line 1194
    :cond_33
    :goto_29
    move-object/from16 v1, p10

    .line 1195
    .line 1196
    goto :goto_2a

    .line 1197
    :cond_34
    if-lt v1, v0, :cond_33

    .line 1198
    .line 1199
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1()Landroid/graphics/ColorSpace$Named;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    invoke-static {v3, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 1208
    .line 1209
    .line 1210
    goto :goto_29

    .line 1211
    :goto_2a
    invoke-static {v2, v3, v1, v13}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/fsck/k9/backend/imap/ImapSync;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    invoke-interface {v1, v0, v13}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onDecodeComplete(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 1216
    .line 1217
    .line 1218
    const/4 v11, 0x2

    .line 1219
    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v1

    .line 1223
    if-eqz v1, :cond_35

    .line 1224
    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    const-string v2, "Decoded "

    .line 1228
    .line 1229
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    const-string v2, " from ["

    .line 1240
    .line 1241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    .line 1253
    const-string v2, "] "

    .line 1254
    .line 1255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    .line 1258
    move-object/from16 v2, v22

    .line 1259
    .line 1260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    const-string v2, " with inBitmap "

    .line 1264
    .line 1265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 1269
    .line 1270
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v2

    .line 1274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    const-string v2, " for ["

    .line 1278
    .line 1279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    move/from16 v2, p7

    .line 1283
    .line 1284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    move/from16 v2, p8

    .line 1291
    .line 1292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    .line 1295
    const-string v2, "], sample size: "

    .line 1296
    .line 1297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1301
    .line 1302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1309
    .line 1310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1317
    .line 1318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    .line 1321
    const-string v2, ", thread: "

    .line 1322
    .line 1323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    .line 1326
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v2

    .line 1330
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v2

    .line 1334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    .line 1336
    .line 1337
    const-string v2, ", duration: "

    .line 1338
    .line 1339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    .line 1342
    invoke-static/range {v20 .. v21}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    .line 1343
    .line 1344
    .line 1345
    move-result-wide v2

    .line 1346
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v1

    .line 1353
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    .line 1355
    .line 1356
    :cond_35
    if-eqz v0, :cond_38

    .line 1357
    .line 1358
    iget-object v1, v9, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 1359
    .line 1360
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1361
    .line 1362
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1363
    .line 1364
    .line 1365
    packed-switch v23, :pswitch_data_3

    .line 1366
    .line 1367
    .line 1368
    move-object v3, v0

    .line 1369
    goto/16 :goto_2d

    .line 1370
    .line 1371
    :pswitch_6
    new-instance v1, Landroid/graphics/Matrix;

    .line 1372
    .line 1373
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1374
    .line 1375
    .line 1376
    const/high16 v2, 0x43340000    # 180.0f

    .line 1377
    .line 1378
    const/high16 v3, 0x42b40000    # 90.0f

    .line 1379
    .line 1380
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 1381
    .line 1382
    const/high16 v5, -0x40800000    # -1.0f

    .line 1383
    .line 1384
    packed-switch v23, :pswitch_data_4

    .line 1385
    .line 1386
    .line 1387
    goto :goto_2b

    .line 1388
    :pswitch_7
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1389
    .line 1390
    .line 1391
    goto :goto_2b

    .line 1392
    :pswitch_8
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1393
    .line 1394
    .line 1395
    move/from16 v4, v28

    .line 1396
    .line 1397
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1398
    .line 1399
    .line 1400
    goto :goto_2b

    .line 1401
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1402
    .line 1403
    .line 1404
    goto :goto_2b

    .line 1405
    :pswitch_a
    move/from16 v4, v28

    .line 1406
    .line 1407
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1411
    .line 1412
    .line 1413
    goto :goto_2b

    .line 1414
    :pswitch_b
    move/from16 v4, v28

    .line 1415
    .line 1416
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1420
    .line 1421
    .line 1422
    goto :goto_2b

    .line 1423
    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1424
    .line 1425
    .line 1426
    goto :goto_2b

    .line 1427
    :pswitch_d
    move/from16 v4, v28

    .line 1428
    .line 1429
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1430
    .line 1431
    .line 1432
    :goto_2b
    new-instance v2, Landroid/graphics/RectF;

    .line 1433
    .line 1434
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1435
    .line 1436
    .line 1437
    move-result v3

    .line 1438
    int-to-float v3, v3

    .line 1439
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1440
    .line 1441
    .line 1442
    move-result v4

    .line 1443
    int-to-float v4, v4

    .line 1444
    move/from16 v5, v25

    .line 1445
    .line 1446
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 1453
    .line 1454
    .line 1455
    move-result v3

    .line 1456
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 1457
    .line 1458
    .line 1459
    move-result v3

    .line 1460
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 1461
    .line 1462
    .line 1463
    move-result v4

    .line 1464
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 1465
    .line 1466
    .line 1467
    move-result v4

    .line 1468
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v5

    .line 1472
    if-eqz v5, :cond_36

    .line 1473
    .line 1474
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v5

    .line 1478
    goto :goto_2c

    .line 1479
    :cond_36
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1480
    .line 1481
    :goto_2c
    invoke-interface {v13, v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v3

    .line 1485
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 1486
    .line 1487
    neg-float v4, v4

    .line 1488
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 1489
    .line 1490
    neg-float v2, v2

    .line 1491
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 1495
    .line 1496
    .line 1497
    move-result v2

    .line 1498
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1499
    .line 1500
    .line 1501
    invoke-static {v0, v3, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 1502
    .line 1503
    .line 1504
    :goto_2d
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1505
    .line 1506
    .line 1507
    move-result v1

    .line 1508
    if-nez v1, :cond_37

    .line 1509
    .line 1510
    invoke-interface {v13, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 1511
    .line 1512
    .line 1513
    :cond_37
    move-object/from16 v19, v3

    .line 1514
    .line 1515
    :cond_38
    return-object v19

    .line 1516
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
