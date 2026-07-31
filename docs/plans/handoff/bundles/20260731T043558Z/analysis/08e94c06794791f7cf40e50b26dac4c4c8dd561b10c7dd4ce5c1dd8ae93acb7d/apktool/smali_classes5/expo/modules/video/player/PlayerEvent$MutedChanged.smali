.class public final Lexpo/modules/video/player/PlayerEvent$MutedChanged;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutedChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ$\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\rH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\rX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$MutedChanged;",
        "Lexpo/modules/video/player/PlayerEvent;",
        "muted",
        "",
        "oldMuted",
        "<init>",
        "(ZLjava/lang/Boolean;)V",
        "getMuted",
        "()Z",
        "getOldMuted",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "jsEventPayload",
        "Lexpo/modules/video/records/MutedChangedEventPayload;",
        "getJsEventPayload",
        "()Lexpo/modules/video/records/MutedChangedEventPayload;",
        "component1",
        "component2",
        "copy",
        "(ZLjava/lang/Boolean;)Lexpo/modules/video/player/PlayerEvent$MutedChanged;",
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
.field private final jsEventPayload:Lexpo/modules/video/records/MutedChangedEventPayload;

.field private final muted:Z

.field private final name:Ljava/lang/String;

.field private final oldMuted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(ZLjava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->muted:Z

    iput-object p2, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->oldMuted:Ljava/lang/Boolean;

    .line 51
    const-string v0, "mutedChange"

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->name:Ljava/lang/String;

    .line 52
    new-instance v0, Lexpo/modules/video/records/MutedChangedEventPayload;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/records/MutedChangedEventPayload;-><init>(ZLjava/lang/Boolean;)V

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->jsEventPayload:Lexpo/modules/video/records/MutedChangedEventPayload;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/player/PlayerEvent$MutedChanged;ZLjava/lang/Boolean;ILjava/lang/Object;)Lexpo/modules/video/player/PlayerEvent$MutedChanged;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->muted:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->oldMuted:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->copy(ZLjava/lang/Boolean;)Lexpo/modules/video/player/PlayerEvent$MutedChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->muted:Z

    return v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->oldMuted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(ZLjava/lang/Boolean;)Lexpo/modules/video/player/PlayerEvent$MutedChanged;
    .locals 1

    new-instance v0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$MutedChanged;-><init>(ZLjava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/video/player/PlayerEvent$MutedChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/video/player/PlayerEvent$MutedChanged;

    iget-boolean v1, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->muted:Z

    iget-boolean v3, p1, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->muted:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->oldMuted:Ljava/lang/Boolean;

    iget-object p1, p1, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->oldMuted:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getJsEventPayload()Lexpo/modules/video/records/MutedChangedEventPayload;
    .locals 1

    .line 52
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->jsEventPayload:Lexpo/modules/video/records/MutedChangedEventPayload;

    return-object v0
.end method

.method public bridge synthetic getJsEventPayload()Lexpo/modules/video/records/VideoEventPayload;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->getJsEventPayload()Lexpo/modules/video/records/MutedChangedEventPayload;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/VideoEventPayload;

    return-object v0
.end method

.method public final getMuted()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->muted:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOldMuted()Ljava/lang/Boolean;
    .locals 1

    .line 50
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->oldMuted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->muted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->oldMuted:Ljava/lang/Boolean;

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

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->muted:Z

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->oldMuted:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MutedChanged(muted="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldMuted="

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
