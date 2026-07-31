.class public final synthetic Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;->f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;->f$0:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->showForPlayQueue(Lorg/schabi/newpipe/player/Player;Landroidx/fragment/app/FragmentManager;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 25
    .line 26
    float-to-double v1, v0

    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 32
    .line 33
    float-to-double v3, v0

    .line 34
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlaybackSkipSilence()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    new-instance v6, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda26;

    .line 39
    .line 40
    invoke-direct {v6, p0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda26;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 41
    .line 42
    .line 43
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->newInstance(DDZLorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;)Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 57
    .line 58
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-static {p1, p0, v0}, Landroidx/sqlite/SQLite;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
