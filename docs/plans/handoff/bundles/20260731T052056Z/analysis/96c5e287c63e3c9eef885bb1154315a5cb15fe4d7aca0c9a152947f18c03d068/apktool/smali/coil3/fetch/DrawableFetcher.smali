.class public final Lcoil3/fetch/DrawableFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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
    .locals 10

    .line 1
    iget p1, p0, Lcoil3/fetch/DrawableFetcher;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcoil3/fetch/DrawableFetcher;->options:Lcoil3/request/Options;

    .line 5
    .line 6
    iget-object p0, p0, Lcoil3/fetch/DrawableFetcher;->data:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcoil3/fetch/SourceFetchResult;

    .line 12
    .line 13
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    new-instance v2, Lcoil3/fetch/ByteBufferFetcherKt$asSource$1;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcoil3/fetch/ByteBufferFetcherKt$asSource$1;-><init>(Ljava/nio/ByteBuffer;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lokio/RealBufferedSource;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 26
    .line 27
    new-instance v2, Lcoil3/decode/ByteBufferMetadata;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcoil3/decode/ByteBufferMetadata;-><init>(Ljava/nio/ByteBuffer;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lcoil3/decode/SourceImageSource;

    .line 33
    .line 34
    invoke-direct {p0, v3, v1, v2}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/util/UtilsKt;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

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
    array-length v2, p0

    .line 54
    invoke-virtual {p1, v2, p0}, Lokio/Buffer;->write(I[B)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v1, Lcoil3/request/Options;->fileSystem:Lokio/FileSystem;

    .line 58
    .line 59
    invoke-static {p1, p0}, Lkotlin/text/RegexKt;->ImageSource$default(Lokio/BufferedSource;Lokio/FileSystem;)Lcoil3/decode/SourceImageSource;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object p1, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    .line 64
    .line 65
    new-instance v1, Lcoil3/fetch/SourceFetchResult;

    .line 66
    .line 67
    invoke-direct {v1, p0, v0, p1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :pswitch_1
    move-object v2, p0

    .line 72
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    sget-object p0, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 75
    .line 76
    instance-of p0, v2, Landroid/graphics/drawable/VectorDrawable;

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    const/4 v0, 0x0

    .line 80
    if-nez p0, :cond_1

    .line 81
    .line 82
    instance-of p0, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 83
    .line 84
    if-eqz p0, :cond_0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move p0, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    move p0, p1

    .line 90
    :goto_1
    new-instance v8, Lcoil3/fetch/ImageFetchResult;

    .line 91
    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    invoke-static {v1}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v4, v1, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 99
    .line 100
    iget-object v5, v1, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 101
    .line 102
    sget-object v6, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 103
    .line 104
    invoke-static {v1, v6}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Lcoil3/size/Size;

    .line 109
    .line 110
    iget-object v7, v1, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 111
    .line 112
    sget-object v9, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 113
    .line 114
    if-ne v7, v9, :cond_2

    .line 115
    .line 116
    move v7, p1

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move v7, v0

    .line 119
    :goto_2
    invoke-static/range {v2 .. v7}, Lkotlin/ResultKt;->convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v0, v1, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    .line 131
    invoke-direct {v2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-static {v2}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    sget-object v0, Lcoil3/decode/DataSource;->MEMORY:Lcoil3/decode/DataSource;

    .line 139
    .line 140
    invoke-direct {v8, p1, p0, v0}, Lcoil3/fetch/ImageFetchResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;)V

    .line 141
    .line 142
    .line 143
    return-object v8

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
