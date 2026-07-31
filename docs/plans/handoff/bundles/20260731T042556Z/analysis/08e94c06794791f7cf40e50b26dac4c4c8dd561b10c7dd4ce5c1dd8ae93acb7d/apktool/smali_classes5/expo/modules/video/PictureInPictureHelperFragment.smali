.class public final Lexpo/modules/video/PictureInPictureHelperFragment;
.super Landroidx/fragment/app/Fragment;
.source "PictureInPictureHelperFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/video/PictureInPictureHelperFragment;",
        "Landroidx/fragment/app/Fragment;",
        "videoView",
        "Lexpo/modules/video/VideoView;",
        "<init>",
        "(Lexpo/modules/video/VideoView;)V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "onPictureInPictureModeChanged",
        "",
        "isInPictureInPictureMode",
        "",
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
.field private final id:Ljava/lang/String;

.field private final videoView:Lexpo/modules/video/VideoView;


# direct methods
.method public constructor <init>(Lexpo/modules/video/VideoView;)V
    .locals 2

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->videoView:Lexpo/modules/video/VideoView;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PictureInPictureHelperFragment_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->videoView:Lexpo/modules/video/VideoView;

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getWasAutoPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->videoView:Lexpo/modules/video/VideoView;

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getPlayerView()Landroidx/media3/ui/PlayerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getPlayer()Landroidx/media3/common/Player;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/common/Player;->play()V

    .line 18
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->videoView:Lexpo/modules/video/VideoView;

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->layoutForPiPEnter()V

    .line 19
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->videoView:Lexpo/modules/video/VideoView;

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getOnPictureInPictureStart()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->videoView:Lexpo/modules/video/VideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lexpo/modules/video/VideoView;->setWillEnterPiP(Z)V

    .line 22
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->videoView:Lexpo/modules/video/VideoView;

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->layoutForPiPExit()V

    .line 23
    iget-object p1, p0, Lexpo/modules/video/PictureInPictureHelperFragment;->videoView:Lexpo/modules/video/VideoView;

    invoke-virtual {p1}, Lexpo/modules/video/VideoView;->getOnPictureInPictureStop()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
