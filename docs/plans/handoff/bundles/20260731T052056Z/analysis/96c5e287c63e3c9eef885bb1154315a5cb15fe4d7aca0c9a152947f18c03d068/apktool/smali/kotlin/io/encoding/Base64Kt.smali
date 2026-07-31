.class public abstract Lkotlin/io/encoding/Base64Kt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final base64DecodeMap:[I

.field public static final base64UrlDecodeMap:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x100

    .line 9
    .line 10
    new-array v3, v2, [I

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x6

    .line 15
    invoke-static {v3, v4, v5, v6}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([IIII)V

    .line 16
    .line 17
    .line 18
    const/16 v7, 0x3d

    .line 19
    .line 20
    const/4 v8, -0x2

    .line 21
    aput v8, v3, v7

    .line 22
    .line 23
    move v9, v5

    .line 24
    move v10, v9

    .line 25
    :goto_0
    if-ge v9, v0, :cond_0

    .line 26
    .line 27
    aget-byte v11, v1, v9

    .line 28
    .line 29
    add-int/lit8 v12, v10, 0x1

    .line 30
    .line 31
    aput v10, v3, v11

    .line 32
    .line 33
    add-int/lit8 v9, v9, 0x1

    .line 34
    .line 35
    move v10, v12

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sput-object v3, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 38
    .line 39
    new-array v1, v0, [B

    .line 40
    .line 41
    fill-array-data v1, :array_1

    .line 42
    .line 43
    .line 44
    new-array v2, v2, [I

    .line 45
    .line 46
    invoke-static {v2, v4, v5, v6}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default([IIII)V

    .line 47
    .line 48
    .line 49
    aput v8, v2, v7

    .line 50
    .line 51
    move v3, v5

    .line 52
    :goto_1
    if-ge v5, v0, :cond_1

    .line 53
    .line 54
    aget-byte v4, v1, v5

    .line 55
    .line 56
    add-int/lit8 v6, v3, 0x1

    .line 57
    .line 58
    aput v3, v2, v4

    .line 59
    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    move v3, v6

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    sput-object v2, Lkotlin/io/encoding/Base64Kt;->base64UrlDecodeMap:[I

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method
