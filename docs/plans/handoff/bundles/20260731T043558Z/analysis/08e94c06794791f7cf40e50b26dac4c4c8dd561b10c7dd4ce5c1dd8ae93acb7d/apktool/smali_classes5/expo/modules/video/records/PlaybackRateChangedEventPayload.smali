.class public final Lexpo/modules/video/records/PlaybackRateChangedEventPayload;
.super Ljava/lang/Object;
.source "VideoEventPayloads.kt"

# interfaces
.implements Lexpo/modules/video/records/VideoEventPayload;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u000e\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/video/records/PlaybackRateChangedEventPayload;",
        "Lexpo/modules/video/records/VideoEventPayload;",
        "playbackRate",
        "",
        "oldPlaybackRate",
        "<init>",
        "(FLjava/lang/Float;)V",
        "getPlaybackRate$annotations",
        "()V",
        "getPlaybackRate",
        "()F",
        "getOldPlaybackRate$annotations",
        "getOldPlaybackRate",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
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
.field private final oldPlaybackRate:Ljava/lang/Float;

.field private final playbackRate:F


# direct methods
.method public constructor <init>(FLjava/lang/Float;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lexpo/modules/video/records/PlaybackRateChangedEventPayload;->playbackRate:F

    .line 38
    iput-object p2, p0, Lexpo/modules/video/records/PlaybackRateChangedEventPayload;->oldPlaybackRate:Ljava/lang/Float;

    return-void
.end method

.method public static synthetic getOldPlaybackRate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getPlaybackRate$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getOldPlaybackRate()Ljava/lang/Float;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/video/records/PlaybackRateChangedEventPayload;->oldPlaybackRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getPlaybackRate()F
    .locals 1

    .line 37
    iget v0, p0, Lexpo/modules/video/records/PlaybackRateChangedEventPayload;->playbackRate:F

    return v0
.end method
