.class public final Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;


# static fields
.field public static final DECODER_HINTS:Ljava/util/Map;


# instance fields
.field public final qrCodeListener:Lkotlin/jvm/functions/Function1;

.field public final qrCodeReader:Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/Pair;

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    .line 4
    .line 5
    const-string v2, "UTF-8"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    new-instance v2, Lkotlin/Pair;

    .line 13
    .line 14
    sget-object v3, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    .line 15
    .line 16
    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v1, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v2, v1, v0

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;->DECODER_HINTS:Ljava/util/Map;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;->qrCodeListener:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    new-instance p1, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;->qrCodeReader:Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final analyze(Landroidx/camera/core/SettableImageProxy;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    new-array v5, v3, [B

    .line 22
    .line 23
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    iget v7, p1, Landroidx/camera/core/SettableImageProxy;->mHeight:I

    .line 27
    .line 28
    iget v8, p1, Landroidx/camera/core/SettableImageProxy;->mWidth:I

    .line 29
    .line 30
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    mul-int/2addr v3, v8

    .line 39
    sub-int/2addr v2, v3

    .line 40
    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    div-int/2addr v2, v0

    .line 45
    add-int v6, v2, v8

    .line 46
    .line 47
    new-instance v4, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 48
    .line 49
    move v9, v7

    .line 50
    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIII)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;->qrCodeReader:Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;

    .line 54
    .line 55
    :try_start_0
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    .line 56
    .line 57
    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    .line 58
    .line 59
    invoke-direct {v3, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/PlanarYUVLuminanceSource;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object v3, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;->DECODER_HINTS:Ljava/util/Map;

    .line 66
    .line 67
    invoke-virtual {v2, v0, v3}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    .line 75
    .line 76
    array-length v4, v0

    .line 77
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .line 79
    .line 80
    array-length v4, v0

    .line 81
    move v5, v1

    .line 82
    :goto_0
    if-ge v5, v4, :cond_0

    .line 83
    .line 84
    aget-object v6, v0, v5

    .line 85
    .line 86
    iget-object v6, v6, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    move-object p0, v0

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :try_start_1
    const-string v3, "Error while trying to read QR code"

    .line 99
    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-static {v0, v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    :catch_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :goto_2
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 114
    .line 115
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    .line 131
    iget-object v2, p0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;->qrCodeListener:Lkotlin/jvm/functions/Function1;

    .line 132
    .line 133
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/ForwardingImageProxy;->close()V

    .line 138
    .line 139
    .line 140
    return-void
.end method
