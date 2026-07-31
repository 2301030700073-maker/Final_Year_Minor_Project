.class public final Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoSourceLoaded"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J\u000f\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007H\u00c6\u0003J\u000f\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007H\u00c6\u0003JO\u0010$\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00072\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007H\u00c6\u0001J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u00d6\u0003J\t\u0010)\u001a\u00020*H\u00d6\u0001J\t\u0010+\u001a\u00020\u0018H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u0018X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006,"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;",
        "Lexpo/modules/video/player/PlayerEvent;",
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
        "getVideoSource",
        "()Lexpo/modules/video/records/VideoSource;",
        "getDuration",
        "()D",
        "getAvailableVideoTracks",
        "()Ljava/util/List;",
        "getAvailableSubtitleTracks",
        "getAvailableAudioTracks",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "jsEventPayload",
        "Lexpo/modules/video/records/VideoSourceLoadedEventPayload;",
        "getJsEventPayload",
        "()Lexpo/modules/video/records/VideoSourceLoadedEventPayload;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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

.field private final jsEventPayload:Lexpo/modules/video/records/VideoSourceLoadedEventPayload;

.field private final name:Ljava/lang/String;

.field private final videoSource:Lexpo/modules/video/records/VideoSource;


# direct methods
.method public constructor <init>(Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
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

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->videoSource:Lexpo/modules/video/records/VideoSource;

    .line 115
    iput-wide p2, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->duration:D

    .line 116
    iput-object p4, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableVideoTracks:Ljava/util/List;

    .line 117
    iput-object p5, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableSubtitleTracks:Ljava/util/List;

    .line 118
    iput-object p6, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableAudioTracks:Ljava/util/List;

    .line 120
    const-string v0, "sourceLoad"

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->name:Ljava/lang/String;

    .line 121
    new-instance v0, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lexpo/modules/video/records/VideoSourceLoadedEventPayload;-><init>(Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->jsEventPayload:Lexpo/modules/video/records/VideoSourceLoadedEventPayload;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->videoSource:Lexpo/modules/video/records/VideoSource;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->duration:D

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p4, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableVideoTracks:Ljava/util/List;

    :cond_2
    move-object p8, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableSubtitleTracks:Ljava/util/List;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableAudioTracks:Ljava/util/List;

    :cond_4
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-object p6, p8

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->copy(Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;)Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/video/records/VideoSource;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->videoSource:Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->duration:D

    return-wide v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableVideoTracks:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableSubtitleTracks:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableAudioTracks:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;)Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;
    .locals 8
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
            ">;)",
            "Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;"
        }
    .end annotation

    const-string v0, "availableVideoTracks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableSubtitleTracks"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableAudioTracks"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;-><init>(Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->videoSource:Lexpo/modules/video/records/VideoSource;

    iget-object v3, p1, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->videoSource:Lexpo/modules/video/records/VideoSource;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->duration:D

    iget-wide v5, p1, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->duration:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableVideoTracks:Ljava/util/List;

    iget-object v3, p1, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableVideoTracks:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableSubtitleTracks:Ljava/util/List;

    iget-object v3, p1, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableSubtitleTracks:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableAudioTracks:Ljava/util/List;

    iget-object p1, p1, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableAudioTracks:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

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

    .line 118
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableAudioTracks:Ljava/util/List;

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

    .line 117
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableSubtitleTracks:Ljava/util/List;

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

    .line 116
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableVideoTracks:Ljava/util/List;

    return-object v0
.end method

.method public final getDuration()D
    .locals 2

    .line 115
    iget-wide v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->duration:D

    return-wide v0
.end method

.method public bridge synthetic getJsEventPayload()Lexpo/modules/video/records/VideoEventPayload;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->getJsEventPayload()Lexpo/modules/video/records/VideoSourceLoadedEventPayload;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/VideoEventPayload;

    return-object v0
.end method

.method public getJsEventPayload()Lexpo/modules/video/records/VideoSourceLoadedEventPayload;
    .locals 1

    .line 121
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->jsEventPayload:Lexpo/modules/video/records/VideoSourceLoadedEventPayload;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoSource()Lexpo/modules/video/records/VideoSource;
    .locals 1

    .line 114
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->videoSource:Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->videoSource:Lexpo/modules/video/records/VideoSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lexpo/modules/video/records/VideoSource;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->duration:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableVideoTracks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableSubtitleTracks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableAudioTracks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->videoSource:Lexpo/modules/video/records/VideoSource;

    iget-wide v1, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->duration:D

    iget-object v3, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableVideoTracks:Ljava/util/List;

    iget-object v4, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableSubtitleTracks:Ljava/util/List;

    iget-object v5, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->availableAudioTracks:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VideoSourceLoaded(videoSource="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", duration="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availableVideoTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availableSubtitleTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availableAudioTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
