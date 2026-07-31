.class public final Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsPlayingChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ$\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u000cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0007R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;",
        "Lexpo/modules/video/player/PlayerEvent;",
        "isPlaying",
        "",
        "oldIsPlaying",
        "<init>",
        "(ZLjava/lang/Boolean;)V",
        "()Z",
        "getOldIsPlaying",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "jsEventPayload",
        "Lexpo/modules/video/records/IsPlayingEventPayload;",
        "getJsEventPayload",
        "()Lexpo/modules/video/records/IsPlayingEventPayload;",
        "component1",
        "component2",
        "copy",
        "(ZLjava/lang/Boolean;)Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;",
        "equals",
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
.field private final isPlaying:Z

.field private final jsEventPayload:Lexpo/modules/video/records/IsPlayingEventPayload;

.field private final name:Ljava/lang/String;

.field private final oldIsPlaying:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(ZLjava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying:Z

    iput-object p2, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->oldIsPlaying:Ljava/lang/Boolean;

    .line 41
    const-string v0, "playingChange"

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->name:Ljava/lang/String;

    .line 42
    new-instance v0, Lexpo/modules/video/records/IsPlayingEventPayload;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/records/IsPlayingEventPayload;-><init>(ZLjava/lang/Boolean;)V

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->jsEventPayload:Lexpo/modules/video/records/IsPlayingEventPayload;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;ZLjava/lang/Boolean;ILjava/lang/Object;)Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->oldIsPlaying:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->copy(ZLjava/lang/Boolean;)Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying:Z

    return v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->oldIsPlaying:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(ZLjava/lang/Boolean;)Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;
    .locals 1

    new-instance v0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;-><init>(ZLjava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;

    iget-boolean v1, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying:Z

    iget-boolean v3, p1, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->oldIsPlaying:Ljava/lang/Boolean;

    iget-object p1, p1, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->oldIsPlaying:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getJsEventPayload()Lexpo/modules/video/records/IsPlayingEventPayload;
    .locals 1

    .line 42
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->jsEventPayload:Lexpo/modules/video/records/IsPlayingEventPayload;

    return-object v0
.end method

.method public bridge synthetic getJsEventPayload()Lexpo/modules/video/records/VideoEventPayload;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->getJsEventPayload()Lexpo/modules/video/records/IsPlayingEventPayload;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/VideoEventPayload;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOldIsPlaying()Ljava/lang/Boolean;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->oldIsPlaying:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->oldIsPlaying:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying:Z

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->oldIsPlaying:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IsPlayingChanged(isPlaying="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldIsPlaying="

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
