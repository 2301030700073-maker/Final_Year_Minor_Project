.class public abstract Lorg/schabi/newpipe/extractor/ServiceList;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final MediaCCC:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

.field public static final PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

.field public static final SERVICES:Ljava/util/List;

.field public static final SoundCloud:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

.field public static final YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 4
    .line 5
    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 6
    .line 7
    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->LIVE:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 8
    .line 9
    sget-object v4, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v6, "YouTube"

    .line 17
    .line 18
    invoke-direct {v0, v5, v6, v3}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/EnumSet;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 22
    .line 23
    new-instance v3, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 24
    .line 25
    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/4 v7, 0x1

    .line 30
    const-string v8, "SoundCloud"

    .line 31
    .line 32
    const/4 v9, 0x2

    .line 33
    invoke-direct {v3, v7, v8, v6, v9}, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;-><init>(ILjava/lang/String;Ljava/util/EnumSet;I)V

    .line 34
    .line 35
    .line 36
    sput-object v3, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 37
    .line 38
    new-instance v6, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 39
    .line 40
    const-string v8, "media.ccc.de"

    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-direct {v6, v9, v8, v10, v7}, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;-><init>(ILjava/lang/String;Ljava/util/EnumSet;I)V

    .line 47
    .line 48
    .line 49
    sput-object v6, Lorg/schabi/newpipe/extractor/ServiceList;->MediaCCC:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 50
    .line 51
    new-instance v8, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    .line 52
    .line 53
    const-string v10, "PeerTube"

    .line 54
    .line 55
    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v11, 0x3

    .line 60
    invoke-direct {v8, v11, v10, v2}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/EnumSet;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->DEFAULT_INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 64
    .line 65
    iput-object v2, v8, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 66
    .line 67
    sput-object v8, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    .line 68
    .line 69
    new-instance v2, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 70
    .line 71
    const-string v10, "Bandcamp"

    .line 72
    .line 73
    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/4 v4, 0x4

    .line 78
    invoke-direct {v2, v4, v10, v1, v5}, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;-><init>(ILjava/lang/String;Ljava/util/EnumSet;I)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x5

    .line 82
    new-array v10, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v0, v10, v5

    .line 85
    .line 86
    aput-object v3, v10, v7

    .line 87
    .line 88
    aput-object v6, v10, v9

    .line 89
    .line 90
    aput-object v8, v10, v11

    .line 91
    .line 92
    aput-object v2, v10, v4

    .line 93
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    if-ge v5, v1, :cond_0

    .line 100
    .line 101
    aget-object v2, v10, v5

    .line 102
    .line 103
    invoke-static {v2, v0, v2, v5, v7}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    .line 113
    .line 114
    return-void
.end method
