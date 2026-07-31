.class public final Lexpo/modules/video/records/VideoSourceLoadedEventPayload;
.super Ljava/lang/Object;
.source "VideoEventPayloads.kt"

# interfaces
.implements Lexpo/modules/video/records/VideoEventPayload;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001BC\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0010\u001a\u0004\u0008\u001a\u0010\u0018R\"\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001b\u0010\u0010\u001a\u0004\u0008\u001c\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lexpo/modules/video/records/VideoSourceLoadedEventPayload;",
        "Lexpo/modules/video/records/VideoEventPayload;",
        "videoSource",
        "Lexpo/modules/video/records/VideoSource;",
        "duration",
        "",
        "availableVideoTracks",
        "",
        "Lexpo/modules/video/records/VideoTrack;",
        "availableSubtitleTracks",
        "Lexpo/modules/video/records/SubtitleTrack;",
        "availableAudioTracks",
        "Lexpo/modules/video/records/AudioTrack;",
        "<init>",
        "(Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getVideoSource$annotations",
        "()V",
        "getVideoSource",
        "()Lexpo/modules/video/records/VideoSource;",
        "getDuration$annotations",
        "getDuration",
        "()D",
        "getAvailableVideoTracks$annotations",
        "getAvailableVideoTracks",
        "()Ljava/util/List;",
        "getAvailableSubtitleTracks$annotations",
        "getAvailableSubtitleTracks",
        "getAvailableAudioTracks$annotations",
        "getAvailableAudioTracks",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final availableAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final availableSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/video/records/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final availableVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final duration:D

.field private final videoSource:Lexpo/modules/video/records/VideoSource;


# direct methods
.method public constructor <init>(Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/records/VideoSource;",
            "D",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/SubtitleTrack;",
            ">;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "availableVideoTracks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableSubtitleTracks"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableAudioTracks"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->videoSource:Lexpo/modules/video/records/VideoSource;

    .line 75
    iput-wide p2, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->duration:D

    .line 76
    iput-object p4, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->availableVideoTracks:Ljava/util/List;

    .line 77
    iput-object p5, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->availableSubtitleTracks:Ljava/util/List;

    .line 78
    iput-object p6, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->availableAudioTracks:Ljava/util/List;

    return-void
.end method

.method public static synthetic getAvailableAudioTracks$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getAvailableSubtitleTracks$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getAvailableVideoTracks$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDuration$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getVideoSource$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAvailableAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->availableAudioTracks:Ljava/util/List;

    return-object v0
.end method

.method public final getAvailableSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/SubtitleTrack;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->availableSubtitleTracks:Ljava/util/List;

    return-object v0
.end method

.method public final getAvailableVideoTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->availableVideoTracks:Ljava/util/List;

    return-object v0
.end method

.method public final getDuration()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->duration:D

    return-wide v0
.end method

.method public final getVideoSource()Lexpo/modules/video/records/VideoSource;
    .locals 1

    .line 74
    iget-object v0, p0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;->videoSource:Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method
