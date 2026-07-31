.class public final Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DEFAULT_INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;


# instance fields
.field public name:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 2
    .line 3
    const-string v1, "https://framatube.org"

    .line 4
    .line 5
    const-string v2, "FramaTube"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->DEFAULT_INSTANCE:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "PeerTube"

    .line 7
    .line 8
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->name:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->name:Ljava/lang/String;

    return-void
.end method
