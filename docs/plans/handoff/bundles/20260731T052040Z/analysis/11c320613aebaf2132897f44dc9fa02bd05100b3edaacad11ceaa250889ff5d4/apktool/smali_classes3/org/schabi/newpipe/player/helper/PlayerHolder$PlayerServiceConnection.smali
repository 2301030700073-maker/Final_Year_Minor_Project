.class public final Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public playAfterConnect:Z

.field public final synthetic this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->playAfterConnect:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    sget-object p1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    check-cast p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    .line 4
    .line 5
    iget-object p1, p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->playerService:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/schabi/newpipe/player/PlayerService;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 22
    .line 23
    iput-object p1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 24
    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerStateListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    iput-object v0, p1, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    iget-object p0, p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->playerService:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lorg/schabi/newpipe/player/PlayerService;

    .line 64
    .line 65
    new-instance p1, Landroid/content/Intent;

    .line 66
    .line 67
    const-string p2, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    sget-object p1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    sget-object p1, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->this$0:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->unbind(Lorg/schabi/newpipe/App;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
