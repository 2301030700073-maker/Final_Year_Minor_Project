.class public final Lorg/schabi/newpipe/player/helper/PlayerHolder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;


# instance fields
.field public bound:Z

.field public final internalListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

.field public listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

.field public playerService:Lorg/schabi/newpipe/player/PlayerService;

.field public final playerStateListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

.field public final serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;-><init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    .line 10
    .line 11
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder$1;-><init>(Lorg/schabi/newpipe/player/helper/PlayerHolder;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->internalListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$1;

    .line 17
    .line 18
    new-instance v0, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerStateListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;
    .locals 2

    .line 1
    const-class v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->instance:Lorg/schabi/newpipe/player/helper/PlayerHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public final getPlayer()Lj$/util/Optional;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getType()Lorg/schabi/newpipe/player/PlayerType;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 6
    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lorg/schabi/newpipe/player/PlayerType;

    .line 22
    .line 23
    return-object p0
.end method

.method public final startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 17
    .line 18
    iput-object v1, p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 19
    .line 20
    iget-object p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerStateListener:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    iput-object p2, v1, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    iget-object v1, v1, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v1, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->unbind(Lorg/schabi/newpipe/App;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Landroid/content/Intent;

    .line 51
    .line 52
    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    .line 53
    .line 54
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    const-string v2, "should_start_foreground_extra"

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p2}, Lcoil3/decode/StaticImageDecoderKt;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    .line 67
    .line 68
    iput-boolean p1, p2, Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;->playAfterConnect:Z

    .line 69
    .line 70
    new-instance p1, Landroid/content/Intent;

    .line 71
    .line 72
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "bind_player_holder_action"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, p2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method public final stopService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->unbind(Lorg/schabi/newpipe/App;)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final unbind(Lorg/schabi/newpipe/App;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->serviceConnection:Lorg/schabi/newpipe/player/helper/PlayerHolder$PlayerServiceConnection;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    .line 12
    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput-object v1, v0, Lorg/schabi/newpipe/player/PlayerService;->onPlayerStartedOrStopped:Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v2, p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHolder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 33
    .line 34
    iget-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 39
    .line 40
    iput-object v1, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 41
    .line 42
    iget-object v0, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultBrightness()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 50
    .line 51
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 52
    .line 53
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 54
    .line 55
    :cond_2
    return-void
.end method
