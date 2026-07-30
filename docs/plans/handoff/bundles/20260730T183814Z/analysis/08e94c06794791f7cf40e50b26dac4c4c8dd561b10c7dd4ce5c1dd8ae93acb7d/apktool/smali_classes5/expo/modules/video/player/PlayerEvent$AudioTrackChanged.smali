.class public final Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioTrackChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J!\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u000bH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0014\u0010\n\u001a\u00020\u000bX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;",
        "Lexpo/modules/video/player/PlayerEvent;",
        "audioTrack",
        "Lexpo/modules/video/records/AudioTrack;",
        "oldAudioTrack",
        "<init>",
        "(Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;)V",
        "getAudioTrack",
        "()Lexpo/modules/video/records/AudioTrack;",
        "getOldAudioTrack",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "jsEventPayload",
        "Lexpo/modules/video/records/AudioTrackChangedEventPayload;",
        "getJsEventPayload",
        "()Lexpo/modules/video/records/AudioTrackChangedEventPayload;",
        "component1",
        "component2",
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
.field private final audioTrack:Lexpo/modules/video/records/AudioTrack;

.field private final jsEventPayload:Lexpo/modules/video/records/AudioTrackChangedEventPayload;

.field private final name:Ljava/lang/String;

.field private final oldAudioTrack:Lexpo/modules/video/records/AudioTrack;


# direct methods
.method public constructor <init>(Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->audioTrack:Lexpo/modules/video/records/AudioTrack;

    iput-object p2, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->oldAudioTrack:Lexpo/modules/video/records/AudioTrack;

    .line 81
    const-string v0, "audioTrackChange"

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->name:Ljava/lang/String;

    .line 82
    new-instance v0, Lexpo/modules/video/records/AudioTrackChangedEventPayload;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/records/AudioTrackChangedEventPayload;-><init>(Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;)V

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->jsEventPayload:Lexpo/modules/video/records/AudioTrackChangedEventPayload;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;ILjava/lang/Object;)Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->audioTrack:Lexpo/modules/video/records/AudioTrack;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->oldAudioTrack:Lexpo/modules/video/records/AudioTrack;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->copy(Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;)Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/video/records/AudioTrack;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->audioTrack:Lexpo/modules/video/records/AudioTrack;

    return-object v0
.end method

.method public final component2()Lexpo/modules/video/records/AudioTrack;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->oldAudioTrack:Lexpo/modules/video/records/AudioTrack;

    return-object v0
.end method

.method public final copy(Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;)Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;
    .locals 1

    new-instance v0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;-><init>(Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->audioTrack:Lexpo/modules/video/records/AudioTrack;

    iget-object v3, p1, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->audioTrack:Lexpo/modules/video/records/AudioTrack;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->oldAudioTrack:Lexpo/modules/video/records/AudioTrack;

    iget-object p1, p1, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->oldAudioTrack:Lexpo/modules/video/records/AudioTrack;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAudioTrack()Lexpo/modules/video/records/AudioTrack;
    .locals 1

    .line 80
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->audioTrack:Lexpo/modules/video/records/AudioTrack;

    return-object v0
.end method

.method public getJsEventPayload()Lexpo/modules/video/records/AudioTrackChangedEventPayload;
    .locals 1

    .line 82
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->jsEventPayload:Lexpo/modules/video/records/AudioTrackChangedEventPayload;

    return-object v0
.end method

.method public bridge synthetic getJsEventPayload()Lexpo/modules/video/records/VideoEventPayload;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->getJsEventPayload()Lexpo/modules/video/records/AudioTrackChangedEventPayload;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/VideoEventPayload;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOldAudioTrack()Lexpo/modules/video/records/AudioTrack;
    .locals 1

    .line 80
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->oldAudioTrack:Lexpo/modules/video/records/AudioTrack;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->audioTrack:Lexpo/modules/video/records/AudioTrack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lexpo/modules/video/records/AudioTrack;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->oldAudioTrack:Lexpo/modules/video/records/AudioTrack;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lexpo/modules/video/records/AudioTrack;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->audioTrack:Lexpo/modules/video/records/AudioTrack;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;->oldAudioTrack:Lexpo/modules/video/records/AudioTrack;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioTrackChanged(audioTrack="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldAudioTrack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
