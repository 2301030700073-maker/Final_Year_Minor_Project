.class public final Lcoil3/fetch/DrawableFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final data:Ljava/lang/Object;

.field public final options:Lcoil3/request/Options;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcoil3/request/Options;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcoil3/fetch/DrawableFetcher;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/fetch/DrawableFetcher;->data:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcoil3/fetch/DrawableFetcher;->options:Lcoil3/request/Options;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final fetch(Lcoil3/intercept/EngineInterceptor$fetch$1;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget p1, p0, Lcoil3/fetch/DrawableFetcher;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    .line 5
    .line 6
    iget-object v2, p0, Lcoil3/fetch/DrawableFetcher;->options:Lcoil3/request/Options;

    .line 7
    .line 8
    iget-object p0, p0, Lcoil3/fetch/DrawableFetcher;->data:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcoil3/fetch/SourceFetchResult;

    .line 14
    .line 15
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    new-instance v3, Lcoil3/fetch/ByteBufferFetcherKt$asSource$1;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lcoil3/fetch/ByteBufferFetcherKt$asSource$1;-><init>(Ljava/nio/ByteBuffer;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lokio/RealBufferedSource;

    .line 23
    .line 24
    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v2, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 28
    .line 29
    new-instance v3, Lcoil3/decode/ByteBufferMetadata;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcoil3/decode/ByteBufferMetadata;-><init>(Ljava/nio/ByteBuffer;)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Lcoil3/decode/SourceImageSource;

    .line 35
    .line 36
    invoke-direct {p0, v4, v2, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Landroidx/room/Room;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p0, v0, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_0
    new-instance p1, Lokio/Buffer;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    check-cast p0, [B

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    array-length v3, p0

    .line 54
    invoke-virtual {p1, v3, p0}, Lokio/Buffer;->write(I[B)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v2, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 58
    .line 59
    new-instance v2, Lcoil3/decode/SourceImageSource;

    .line 60
    .line 61
    invoke-direct {v2, p1, p0, v0}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Landroidx/room/Room;)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Lcoil3/fetch/SourceFetchResult;

    .line 65
    .line 66
    invoke-direct {p0, v2, v0, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_1
    move-object v3, p0

    .line 71
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    sget-object p0, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 74
    .line 75
    instance-of p0, v3, Landroid/graphics/drawable/VectorDrawable;

    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    const/4 v0, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 80
    .line 81
    instance-of p0, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 82
    .line 83
    if-eqz p0, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    move p0, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    move p0, p1

    .line 89
    :goto_1
    new-instance v9, Lcoil3/fetch/ImageFetchResult;

    .line 90
    .line 91
    if-eqz p0, :cond_3

    .line 92
    .line 93
    invoke-static {v2}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iget-object v5, v2, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 98
    .line 99
    iget-object v6, v2, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 100
    .line 101
    sget-object v7, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 102
    .line 103
    invoke-static {v2, v7}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Lcoil3/size/Size;

    .line 108
    .line 109
    iget-object v8, v2, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 110
    .line 111
    sget-object v10, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 112
    .line 113
    if-ne v8, v10, :cond_2

    .line 114
    .line 115
    move v8, p1

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    move v8, v0

    .line 118
    :goto_2
    invoke-static/range {v3 .. v8}, Lcoil3/util/UtilsKt;->convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v0, v2, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 129
    .line 130
    invoke-direct {v3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-static {v3}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {v9, p1, p0, v1}, Lcoil3/fetch/ImageFetchResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;)V

    .line 138
    .line 139
    .line 140
    return-object v9

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
