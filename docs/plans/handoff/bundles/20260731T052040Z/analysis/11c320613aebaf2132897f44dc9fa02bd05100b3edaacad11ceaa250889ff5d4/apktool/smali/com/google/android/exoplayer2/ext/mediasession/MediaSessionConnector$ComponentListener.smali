.class Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentListener"
.end annotation


# instance fields
.field private currentMediaItemIndex:I

.field private currentWindowCount:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)V

    return-void
.end method


# virtual methods
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;->onAddQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;->onAddQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;I)V

    :cond_0
    return-void
.end method

.method public final synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onAudioSessionIdChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v2, v3, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;->onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1100(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge v0, v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1100(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;->onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_2
    return-void
.end method

.method public final synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 2
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CustomActionProvider;->onCustomAction(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 7

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Player$Events;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentMediaItemIndex:I

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onCurrentMediaItemIndexChanged(Lcom/google/android/exoplayer2/Player;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v2

    .line 39
    :goto_0
    move v3, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v0, v2

    .line 42
    move v3, v0

    .line 43
    :goto_1
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/Player$Events;->contains(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_6

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 62
    .line 63
    invoke-static {v4}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_2
    move v3, v1

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentWindowCount:I

    .line 81
    .line 82
    if-ne v4, v0, :cond_3

    .line 83
    .line 84
    iget v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentMediaItemIndex:I

    .line 85
    .line 86
    if-eq v4, v2, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    :goto_3
    iput v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentWindowCount:I

    .line 90
    .line 91
    move v0, v1

    .line 92
    :cond_6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->currentMediaItemIndex:I

    .line 97
    .line 98
    const/16 p1, 0x8

    .line 99
    .line 100
    const/16 v2, 0xc

    .line 101
    .line 102
    const/4 v4, 0x4

    .line 103
    const/4 v5, 0x5

    .line 104
    const/4 v6, 0x7

    .line 105
    filled-new-array {v4, v5, v6, p1, v2}, [I

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    move v3, v1

    .line 116
    :cond_7
    const/16 p1, 0x9

    .line 117
    .line 118
    filled-new-array {p1}, [I

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Player$Events;->containsAny([I)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionQueue()V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_8
    move v1, v3

    .line 135
    :goto_4
    if-eqz v1, :cond_9

    .line 136
    .line 137
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionPlaybackState()V

    .line 140
    .line 141
    .line 142
    :cond_9
    if-eqz v0, :cond_a

    .line 143
    .line 144
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->invalidateMediaSessionMetadata()V

    .line 147
    .line 148
    .line 149
    :cond_a
    return-void
.end method

.method public onFastForward()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x40

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onLoadingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1900(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$2000(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaButtonEventHandler;->onMediaButtonEvent(Lcom/google/android/exoplayer2/Player;Landroid/content/Intent;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    :goto_0
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x2

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->pause()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepare(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x4

    .line 59
    if-ne v0, v1, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/Player;IJ)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 86
    .line 87
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Lcom/google/android/exoplayer2/Player;

    .line 96
    .line 97
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->play()V

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x400

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromMediaId(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x2000

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromUri(Landroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPlaybackStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 2
    return-void
.end method

.method public onPrepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x4000

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepare(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/32 v1, 0x8000

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromMediaId(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/32 v1, 0x10000

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/32 v1, 0x20000

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;->onPrepareFromUri(Landroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1500(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;->onRemoveQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRewind()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x100

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$600(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;Lcom/google/android/exoplayer2/Player;IJ)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1700(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CaptionCallback;->onSetCaptioningEnabled(Lcom/google/android/exoplayer2/Player;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/32 v1, 0x400000

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    cmpl-float v0, p1, v0

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;->onSetRating(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/RatingCompat;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$1400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$RatingCallback;->onSetRating(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/32 v1, 0x40000

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/32 v1, 0x200000

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSkipToNext()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x20

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onSkipToNext(Lcom/google/android/exoplayer2/Player;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x10

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onSkipToPrevious(Lcom/google/android/exoplayer2/Player;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x1000

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$800(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$200(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;->onSkipToQueueItem(Lcom/google/android/exoplayer2/Player;J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$300(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$700(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;->access$400(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector;)Lcom/google/android/exoplayer2/Player;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->clearMediaItems()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    return-void
.end method
