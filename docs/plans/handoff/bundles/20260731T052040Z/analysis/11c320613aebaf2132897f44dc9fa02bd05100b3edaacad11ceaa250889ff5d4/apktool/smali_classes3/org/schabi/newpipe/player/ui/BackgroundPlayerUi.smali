.class public final Lorg/schabi/newpipe/player/ui/BackgroundPlayerUi;
.super Lorg/schabi/newpipe/player/ui/PlayerUi;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final initPlayback()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/Player;->useVideoAndSubtitles(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
