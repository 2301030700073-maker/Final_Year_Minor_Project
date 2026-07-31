.class public final Lexpo/modules/video/records/SubtitleTrackChangedEventPayload;
.super Ljava/lang/Object;
.source "VideoEventPayloads.kt"

# interfaces
.implements Lexpo/modules/video/records/VideoEventPayload;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/video/records/SubtitleTrackChangedEventPayload;",
        "Lexpo/modules/video/records/VideoEventPayload;",
        "subtitleTrack",
        "Lexpo/modules/video/records/SubtitleTrack;",
        "oldSubtitleTrack",
        "<init>",
        "(Lexpo/modules/video/records/SubtitleTrack;Lexpo/modules/video/records/SubtitleTrack;)V",
        "getSubtitleTrack$annotations",
        "()V",
        "getSubtitleTrack",
        "()Lexpo/modules/video/records/SubtitleTrack;",
        "getOldSubtitleTrack$annotations",
        "getOldSubtitleTrack",
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
.field private final oldSubtitleTrack:Lexpo/modules/video/records/SubtitleTrack;

.field private final subtitleTrack:Lexpo/modules/video/records/SubtitleTrack;


# direct methods
.method public constructor <init>(Lexpo/modules/video/records/SubtitleTrack;Lexpo/modules/video/records/SubtitleTrack;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lexpo/modules/video/records/SubtitleTrackChangedEventPayload;->subtitleTrack:Lexpo/modules/video/records/SubtitleTrack;

    .line 50
    iput-object p2, p0, Lexpo/modules/video/records/SubtitleTrackChangedEventPayload;->oldSubtitleTrack:Lexpo/modules/video/records/SubtitleTrack;

    return-void
.end method

.method public static synthetic getOldSubtitleTrack$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSubtitleTrack$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getOldSubtitleTrack()Lexpo/modules/video/records/SubtitleTrack;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/video/records/SubtitleTrackChangedEventPayload;->oldSubtitleTrack:Lexpo/modules/video/records/SubtitleTrack;

    return-object v0
.end method

.method public final getSubtitleTrack()Lexpo/modules/video/records/SubtitleTrack;
    .locals 1

    .line 49
    iget-object v0, p0, Lexpo/modules/video/records/SubtitleTrackChangedEventPayload;->subtitleTrack:Lexpo/modules/video/records/SubtitleTrack;

    return-object v0
.end method
