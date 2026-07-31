.class public final Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioMixingModeChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u001f\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u000bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0014\u0010\n\u001a\u00020\u000bX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;",
        "Lexpo/modules/video/player/PlayerEvent;",
        "audioMixingMode",
        "Lexpo/modules/video/enums/AudioMixingMode;",
        "oldAudioMixingMode",
        "<init>",
        "(Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V",
        "getAudioMixingMode",
        "()Lexpo/modules/video/enums/AudioMixingMode;",
        "getOldAudioMixingMode",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "emitToJS",
        "",
        "getEmitToJS",
        "()Z",
        "component1",
        "component2",
        "copy",
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
.field private final audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

.field private final emitToJS:Z

.field private final name:Ljava/lang/String;

.field private final oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;


# direct methods
.method public constructor <init>(Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V
    .locals 1

    const-string v0, "audioMixingMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    iput-object p2, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    .line 136
    const-string p1, "audioMixingModeChange"

    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;ILjava/lang/Object;)Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->copy(Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/video/enums/AudioMixingMode;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-object v0
.end method

.method public final component2()Lexpo/modules/video/enums/AudioMixingMode;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-object v0
.end method

.method public final copy(Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;
    .locals 1

    const-string v0, "audioMixingMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;-><init>(Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    iget-object v3, p1, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    iget-object p1, p1, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;
    .locals 1

    .line 135
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-object v0
.end method

.method public getEmitToJS()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->emitToJS:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOldAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;
    .locals 1

    .line 135
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    invoke-virtual {v0}, Lexpo/modules/video/enums/AudioMixingMode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lexpo/modules/video/enums/AudioMixingMode;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->oldAudioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioMixingModeChanged(audioMixingMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldAudioMixingMode="

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
