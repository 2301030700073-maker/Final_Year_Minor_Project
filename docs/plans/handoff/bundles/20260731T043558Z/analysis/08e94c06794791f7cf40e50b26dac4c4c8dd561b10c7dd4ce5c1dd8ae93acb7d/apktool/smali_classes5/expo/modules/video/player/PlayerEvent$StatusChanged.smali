.class public final Lexpo/modules/video/player/PlayerEvent$StatusChanged;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J+\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$StatusChanged;",
        "Lexpo/modules/video/player/PlayerEvent;",
        "status",
        "Lexpo/modules/video/enums/PlayerStatus;",
        "oldStatus",
        "error",
        "Lexpo/modules/video/records/PlaybackError;",
        "<init>",
        "(Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V",
        "getStatus",
        "()Lexpo/modules/video/enums/PlayerStatus;",
        "getOldStatus",
        "getError",
        "()Lexpo/modules/video/records/PlaybackError;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "jsEventPayload",
        "Lexpo/modules/video/records/StatusChangedEventPayload;",
        "getJsEventPayload",
        "()Lexpo/modules/video/records/StatusChangedEventPayload;",
        "component1",
        "component2",
        "component3",
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
.field private final error:Lexpo/modules/video/records/PlaybackError;

.field private final jsEventPayload:Lexpo/modules/video/records/StatusChangedEventPayload;

.field private final name:Ljava/lang/String;

.field private final oldStatus:Lexpo/modules/video/enums/PlayerStatus;

.field private final status:Lexpo/modules/video/enums/PlayerStatus;


# direct methods
.method public constructor <init>(Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->status:Lexpo/modules/video/enums/PlayerStatus;

    iput-object p2, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->oldStatus:Lexpo/modules/video/enums/PlayerStatus;

    iput-object p3, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->error:Lexpo/modules/video/records/PlaybackError;

    .line 36
    const-string v0, "statusChange"

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->name:Ljava/lang/String;

    .line 37
    new-instance v0, Lexpo/modules/video/records/StatusChangedEventPayload;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/video/records/StatusChangedEventPayload;-><init>(Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->jsEventPayload:Lexpo/modules/video/records/StatusChangedEventPayload;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/player/PlayerEvent$StatusChanged;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;ILjava/lang/Object;)Lexpo/modules/video/player/PlayerEvent$StatusChanged;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->status:Lexpo/modules/video/enums/PlayerStatus;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->oldStatus:Lexpo/modules/video/enums/PlayerStatus;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->error:Lexpo/modules/video/records/PlaybackError;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->copy(Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)Lexpo/modules/video/player/PlayerEvent$StatusChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->status:Lexpo/modules/video/enums/PlayerStatus;

    return-object v0
.end method

.method public final component2()Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->oldStatus:Lexpo/modules/video/enums/PlayerStatus;

    return-object v0
.end method

.method public final component3()Lexpo/modules/video/records/PlaybackError;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->error:Lexpo/modules/video/records/PlaybackError;

    return-object v0
.end method

.method public final copy(Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)Lexpo/modules/video/player/PlayerEvent$StatusChanged;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/video/player/PlayerEvent$StatusChanged;-><init>(Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/video/player/PlayerEvent$StatusChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/video/player/PlayerEvent$StatusChanged;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->status:Lexpo/modules/video/enums/PlayerStatus;

    iget-object v3, p1, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->status:Lexpo/modules/video/enums/PlayerStatus;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->oldStatus:Lexpo/modules/video/enums/PlayerStatus;

    iget-object v3, p1, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->oldStatus:Lexpo/modules/video/enums/PlayerStatus;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->error:Lexpo/modules/video/records/PlaybackError;

    iget-object p1, p1, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->error:Lexpo/modules/video/records/PlaybackError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getError()Lexpo/modules/video/records/PlaybackError;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->error:Lexpo/modules/video/records/PlaybackError;

    return-object v0
.end method

.method public getJsEventPayload()Lexpo/modules/video/records/StatusChangedEventPayload;
    .locals 1

    .line 37
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->jsEventPayload:Lexpo/modules/video/records/StatusChangedEventPayload;

    return-object v0
.end method

.method public bridge synthetic getJsEventPayload()Lexpo/modules/video/records/VideoEventPayload;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->getJsEventPayload()Lexpo/modules/video/records/StatusChangedEventPayload;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/VideoEventPayload;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOldStatus()Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->oldStatus:Lexpo/modules/video/enums/PlayerStatus;

    return-object v0
.end method

.method public final getStatus()Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->status:Lexpo/modules/video/enums/PlayerStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->status:Lexpo/modules/video/enums/PlayerStatus;

    invoke-virtual {v0}, Lexpo/modules/video/enums/PlayerStatus;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->oldStatus:Lexpo/modules/video/enums/PlayerStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lexpo/modules/video/enums/PlayerStatus;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->error:Lexpo/modules/video/records/PlaybackError;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lexpo/modules/video/records/PlaybackError;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->status:Lexpo/modules/video/enums/PlayerStatus;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->oldStatus:Lexpo/modules/video/enums/PlayerStatus;

    iget-object v2, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->error:Lexpo/modules/video/records/PlaybackError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StatusChanged(status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", oldStatus="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
