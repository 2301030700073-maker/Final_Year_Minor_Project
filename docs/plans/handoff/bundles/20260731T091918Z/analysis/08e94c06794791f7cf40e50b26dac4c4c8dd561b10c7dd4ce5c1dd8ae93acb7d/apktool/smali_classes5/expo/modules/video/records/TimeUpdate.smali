.class public final Lexpo/modules/video/records/TimeUpdate;
.super Ljava/lang/Object;
.source "VideoEventPayloads.kt"

# interfaces
.implements Lexpo/modules/video/records/VideoEventPayload;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0019\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0016\u0012\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u001c\u0012\u0004\u0008\u0017\u0010\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR$\u0010\u0008\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001d\u0010\u000c\u001a\u0004\u0008\u001e\u0010\u000e\"\u0004\u0008\u001f\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/video/records/TimeUpdate;",
        "Lexpo/modules/video/records/VideoEventPayload;",
        "currentTime",
        "",
        "currentOffsetFromLive",
        "",
        "currentLiveTimestamp",
        "",
        "bufferedPosition",
        "<init>",
        "(DLjava/lang/Float;Ljava/lang/Long;D)V",
        "getCurrentTime$annotations",
        "()V",
        "getCurrentTime",
        "()D",
        "setCurrentTime",
        "(D)V",
        "getCurrentOffsetFromLive$annotations",
        "getCurrentOffsetFromLive",
        "()Ljava/lang/Float;",
        "setCurrentOffsetFromLive",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "getCurrentLiveTimestamp$annotations",
        "getCurrentLiveTimestamp",
        "()Ljava/lang/Long;",
        "setCurrentLiveTimestamp",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getBufferedPosition$annotations",
        "getBufferedPosition",
        "setBufferedPosition",
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
.field private bufferedPosition:D

.field private currentLiveTimestamp:Ljava/lang/Long;

.field private currentOffsetFromLive:Ljava/lang/Float;

.field private currentTime:D


# direct methods
.method public constructor <init>(DLjava/lang/Float;Ljava/lang/Long;D)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lexpo/modules/video/records/TimeUpdate;->currentTime:D

    .line 43
    iput-object p3, p0, Lexpo/modules/video/records/TimeUpdate;->currentOffsetFromLive:Ljava/lang/Float;

    .line 44
    iput-object p4, p0, Lexpo/modules/video/records/TimeUpdate;->currentLiveTimestamp:Ljava/lang/Long;

    .line 45
    iput-wide p5, p0, Lexpo/modules/video/records/TimeUpdate;->bufferedPosition:D

    return-void
.end method

.method public synthetic constructor <init>(DLjava/lang/Float;Ljava/lang/Long;DILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p7, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide v4, p1

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide v8, p5

    :goto_1
    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    .line 41
    invoke-direct/range {v3 .. v9}, Lexpo/modules/video/records/TimeUpdate;-><init>(DLjava/lang/Float;Ljava/lang/Long;D)V

    return-void
.end method

.method public static synthetic getBufferedPosition$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCurrentLiveTimestamp$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCurrentOffsetFromLive$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCurrentTime$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBufferedPosition()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lexpo/modules/video/records/TimeUpdate;->bufferedPosition:D

    return-wide v0
.end method

.method public final getCurrentLiveTimestamp()Ljava/lang/Long;
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/video/records/TimeUpdate;->currentLiveTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCurrentOffsetFromLive()Ljava/lang/Float;
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/video/records/TimeUpdate;->currentOffsetFromLive:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCurrentTime()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lexpo/modules/video/records/TimeUpdate;->currentTime:D

    return-wide v0
.end method

.method public final setBufferedPosition(D)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lexpo/modules/video/records/TimeUpdate;->bufferedPosition:D

    return-void
.end method

.method public final setCurrentLiveTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lexpo/modules/video/records/TimeUpdate;->currentLiveTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public final setCurrentOffsetFromLive(Ljava/lang/Float;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lexpo/modules/video/records/TimeUpdate;->currentOffsetFromLive:Ljava/lang/Float;

    return-void
.end method

.method public final setCurrentTime(D)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lexpo/modules/video/records/TimeUpdate;->currentTime:D

    return-void
.end method
