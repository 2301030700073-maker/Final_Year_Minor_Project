.class public final Lcom/google/android/exoplayer2/Format$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessibilityChannel:I

.field private averageBitrate:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;

.field private colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field private containerMimeType:Ljava/lang/String;

.field private cryptoType:I

.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private encoderDelay:I

.field private encoderPadding:I

.field private frameRate:F

.field private height:I

.field private id:Ljava/lang/String;

.field private initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private maxInputSize:I

.field private metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private pcmEncoding:I

.field private peakBitrate:I

.field private pixelWidthHeightRatio:F

.field private projectionData:[B

.field private roleFlags:I

.field private rotationDegrees:I

.field private sampleMimeType:Ljava/lang/String;

.field private sampleRate:I

.field private selectionFlags:I

.field private stereoMode:I

.field private subsampleOffsetUs:J

.field private tileCountHorizontal:I

.field private tileCountVertical:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 135
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 136
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    const-wide v1, 0x7fffffffffffffffL

    .line 137
    iput-wide v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 138
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 139
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 140
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 141
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 142
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 143
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 144
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 145
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 146
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 147
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I

    .line 148
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 15
    .line 16
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 19
    .line 20
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 21
    .line 22
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 23
    .line 24
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 27
    .line 28
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    .line 29
    .line 30
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 31
    .line 32
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 47
    .line 48
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 49
    .line 50
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 51
    .line 52
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 55
    .line 56
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 59
    .line 60
    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 61
    .line 62
    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 63
    .line 64
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 65
    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 67
    .line 68
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    .line 69
    .line 70
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 71
    .line 72
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 73
    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 75
    .line 76
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 77
    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 79
    .line 80
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 81
    .line 82
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 83
    .line 84
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 85
    .line 86
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 87
    .line 88
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 89
    .line 90
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 91
    .line 92
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 95
    .line 96
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 97
    .line 98
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 99
    .line 100
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 101
    .line 102
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 103
    .line 104
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 105
    .line 106
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 107
    .line 108
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 109
    .line 110
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 111
    .line 112
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 113
    .line 114
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    .line 115
    .line 116
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 117
    .line 118
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 119
    .line 120
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->tileCountHorizontal:I

    .line 121
    .line 122
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I

    .line 123
    .line 124
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->tileCountVertical:I

    .line 125
    .line 126
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I

    .line 127
    .line 128
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    .line 129
    .line 130
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 131
    .line 132
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/google/android/exoplayer2/Format$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$1600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1800(Lcom/google/android/exoplayer2/Format$Builder;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1900(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lcom/google/android/exoplayer2/Format$Builder;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2100(Lcom/google/android/exoplayer2/Format$Builder;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2200(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2300(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2500(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2800(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2900(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3000(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3100(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3200(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;Lcom/google/android/exoplayer2/Format$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCryptoType(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setId(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/Format$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setTileCountHorizontal(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountHorizontal:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTileCountVertical(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->tileCountVertical:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 2
    .line 3
    return-object p0
.end method
