.class public final Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderedFirstFrame"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;",
        "Lexpo/modules/video/player/PlayerEvent;",
        "<init>",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "emitToJS",
        "",
        "getEmitToJS",
        "()Z",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    const-string v0, "renderFirstFrame"

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmitToJS()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;->emitToJS:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;->name:Ljava/lang/String;

    return-object v0
.end method
