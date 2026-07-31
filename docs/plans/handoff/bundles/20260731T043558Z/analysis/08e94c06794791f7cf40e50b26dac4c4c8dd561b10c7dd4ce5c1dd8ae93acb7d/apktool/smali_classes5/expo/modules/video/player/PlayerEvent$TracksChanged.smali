.class public final Lexpo/modules/video/player/PlayerEvent$TracksChanged;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TracksChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$TracksChanged;",
        "Lexpo/modules/video/player/PlayerEvent;",
        "tracks",
        "Landroidx/media3/common/Tracks;",
        "<init>",
        "(Landroidx/media3/common/Tracks;)V",
        "getTracks",
        "()Landroidx/media3/common/Tracks;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "emitToJS",
        "",
        "getEmitToJS",
        "()Z",
        "component1",
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
.field private final emitToJS:Z

.field private final name:Ljava/lang/String;

.field private final tracks:Landroidx/media3/common/Tracks;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Tracks;)V
    .locals 1

    const-string v0, "tracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->tracks:Landroidx/media3/common/Tracks;

    .line 66
    const-string p1, "tracksChange"

    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/player/PlayerEvent$TracksChanged;Landroidx/media3/common/Tracks;ILjava/lang/Object;)Lexpo/modules/video/player/PlayerEvent$TracksChanged;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->tracks:Landroidx/media3/common/Tracks;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->copy(Landroidx/media3/common/Tracks;)Lexpo/modules/video/player/PlayerEvent$TracksChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/media3/common/Tracks;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->tracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public final copy(Landroidx/media3/common/Tracks;)Lexpo/modules/video/player/PlayerEvent$TracksChanged;
    .locals 1

    const-string v0, "tracks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;

    invoke-direct {v0, p1}, Lexpo/modules/video/player/PlayerEvent$TracksChanged;-><init>(Landroidx/media3/common/Tracks;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/video/player/PlayerEvent$TracksChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/video/player/PlayerEvent$TracksChanged;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->tracks:Landroidx/media3/common/Tracks;

    iget-object p1, p1, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->tracks:Landroidx/media3/common/Tracks;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getEmitToJS()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->emitToJS:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 65
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->tracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->tracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->tracks:Landroidx/media3/common/Tracks;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TracksChanged(tracks="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
