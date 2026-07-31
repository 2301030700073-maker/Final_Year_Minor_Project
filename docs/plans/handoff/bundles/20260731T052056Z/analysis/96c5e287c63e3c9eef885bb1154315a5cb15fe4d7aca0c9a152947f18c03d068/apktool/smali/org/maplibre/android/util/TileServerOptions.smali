.class public Lorg/maplibre/android/util/TileServerOptions;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/util/TileServerOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiKeyParameterName:Ljava/lang/String;

.field private apiKeyRequired:Z

.field private baseURL:Ljava/lang/String;

.field private defaultStyle:Ljava/lang/String;

.field private defaultStyles:[Lorg/maplibre/android/util/DefaultStyle;

.field private glyphsDomainName:Ljava/lang/String;

.field private glyphsTemplate:Ljava/lang/String;

.field private glyphsVersionPrefix:Ljava/lang/String;

.field private sourceDomainName:Ljava/lang/String;

.field private sourceTemplate:Ljava/lang/String;

.field private sourceVersionPrefix:Ljava/lang/String;

.field private spritesDomainName:Ljava/lang/String;

.field private spritesTemplate:Ljava/lang/String;

.field private spritesVersionPrefix:Ljava/lang/String;

.field private styleDomainName:Ljava/lang/String;

.field private styleTemplate:Ljava/lang/String;

.field private styleVersionPrefix:Ljava/lang/String;

.field private tileDomainName:Ljava/lang/String;

.field private tileTemplate:Ljava/lang/String;

.field private tileVersionPrefix:Ljava/lang/String;

.field private uriSchemeAlias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/util/DefaultStyle$1;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/maplibre/android/util/DefaultStyle$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/maplibre/android/util/TileServerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->baseURL:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->uriSchemeAlias:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceTemplate:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceDomainName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceVersionPrefix:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->styleTemplate:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->styleDomainName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->styleVersionPrefix:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesTemplate:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesDomainName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesVersionPrefix:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsTemplate:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsDomainName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsVersionPrefix:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->tileTemplate:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->tileDomainName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->tileVersionPrefix:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->apiKeyParameterName:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    .line 118
    const/4 v0, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    iput-boolean v0, p0, Lorg/maplibre/android/util/TileServerOptions;->apiKeyRequired:Z

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lorg/maplibre/android/util/TileServerOptions;->defaultStyle:Ljava/lang/String;

    .line 128
    .line 129
    sget-object p0, Lorg/maplibre/android/util/DefaultStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[Lorg/maplibre/android/util/DefaultStyle;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lorg/maplibre/android/util/TileServerOptions;->baseURL:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->uriSchemeAlias:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceTemplate:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceDomainName:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceVersionPrefix:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Lorg/maplibre/android/util/TileServerOptions;->styleTemplate:Ljava/lang/String;

    .line 142
    iput-object p7, p0, Lorg/maplibre/android/util/TileServerOptions;->styleDomainName:Ljava/lang/String;

    .line 143
    iput-object p8, p0, Lorg/maplibre/android/util/TileServerOptions;->styleVersionPrefix:Ljava/lang/String;

    .line 144
    iput-object p9, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesTemplate:Ljava/lang/String;

    .line 145
    iput-object p10, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesDomainName:Ljava/lang/String;

    .line 146
    iput-object p11, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesVersionPrefix:Ljava/lang/String;

    .line 147
    iput-object p12, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsTemplate:Ljava/lang/String;

    .line 148
    iput-object p13, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsDomainName:Ljava/lang/String;

    .line 149
    iput-object p14, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsVersionPrefix:Ljava/lang/String;

    .line 150
    iput-object p15, p0, Lorg/maplibre/android/util/TileServerOptions;->tileTemplate:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 151
    iput-object p1, p0, Lorg/maplibre/android/util/TileServerOptions;->tileDomainName:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 152
    iput-object p1, p0, Lorg/maplibre/android/util/TileServerOptions;->tileVersionPrefix:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 153
    iput-object p1, p0, Lorg/maplibre/android/util/TileServerOptions;->apiKeyParameterName:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 154
    iput-object p1, p0, Lorg/maplibre/android/util/TileServerOptions;->defaultStyles:[Lorg/maplibre/android/util/DefaultStyle;

    move-object/from16 p1, p20

    .line 155
    iput-object p1, p0, Lorg/maplibre/android/util/TileServerOptions;->defaultStyle:Ljava/lang/String;

    move/from16 p1, p19

    .line 156
    iput-boolean p1, p0, Lorg/maplibre/android/util/TileServerOptions;->apiKeyRequired:Z

    return-void
.end method

.method private static native defaultConfiguration()Lorg/maplibre/android/util/TileServerOptions;
.end method

.method public static get(Lorg/maplibre/android/WellKnownTileServer;)Lorg/maplibre/android/util/TileServerOptions;
    .locals 1

    .line 1
    sget-object v0, Lorg/maplibre/android/util/TileServerOptions$2;->$SwitchMap$org$maplibre$android$WellKnownTileServer:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lorg/maplibre/android/util/TileServerOptions;->mapLibreConfiguration()Lorg/maplibre/android/util/TileServerOptions;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Lcoil3/network/HttpException;

    .line 24
    .line 25
    const-string v0, "Unknown tile server"

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-static {}, Lorg/maplibre/android/util/TileServerOptions;->mapTilerConfiguration()Lorg/maplibre/android/util/TileServerOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    invoke-static {}, Lorg/maplibre/android/util/TileServerOptions;->mapboxConfiguration()Lorg/maplibre/android/util/TileServerOptions;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private static native mapLibreConfiguration()Lorg/maplibre/android/util/TileServerOptions;
.end method

.method private static native mapTilerConfiguration()Lorg/maplibre/android/util/TileServerOptions;
.end method

.method private static native mapboxConfiguration()Lorg/maplibre/android/util/TileServerOptions;
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getDefaultStyles()[Lorg/maplibre/android/util/DefaultStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/util/TileServerOptions;->defaultStyles:[Lorg/maplibre/android/util/DefaultStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->baseURL:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->uriSchemeAlias:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceTemplate:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceDomainName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->sourceVersionPrefix:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->styleTemplate:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->styleDomainName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->styleVersionPrefix:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesTemplate:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesDomainName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->spritesVersionPrefix:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsTemplate:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsDomainName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->glyphsVersionPrefix:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->tileTemplate:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->tileDomainName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->tileVersionPrefix:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->apiKeyParameterName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean p2, p0, Lorg/maplibre/android/util/TileServerOptions;->apiKeyRequired:Z

    .line 92
    .line 93
    int-to-byte p2, p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lorg/maplibre/android/util/TileServerOptions;->defaultStyle:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lorg/maplibre/android/util/TileServerOptions;->defaultStyles:[Lorg/maplibre/android/util/DefaultStyle;

    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
