.class public final Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueEditor;
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$CommandReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaIdEqualityChecker;,
        Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;,
        Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionConverter;,
        Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionEqualityChecker;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COMMAND_MOVE_QUEUE_ITEM:Ljava/lang/String; = "exo_move_window"

.field public static final EXTRA_FROM_INDEX:Ljava/lang/String; = "from_index"

.field public static final EXTRA_TO_INDEX:Ljava/lang/String; = "to_index"


# instance fields
.field private final equalityChecker:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionEqualityChecker;

.field private final mediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private final mediaDescriptionConverter:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionConverter;

.field private final queueDataAdapter:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionConverter;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaIdEqualityChecker;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaIdEqualityChecker;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionConverter;Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionEqualityChecker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionConverter;Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionEqualityChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->mediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->queueDataAdapter:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->mediaDescriptionConverter:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionConverter;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->equalityChecker:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionEqualityChecker;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAddQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    .line 18
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->onAddQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-void
.end method

.method public onAddQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->mediaDescriptionConverter:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionConverter;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionConverter;->convert(Landroid/support/v4/media/MediaDescriptionCompat;)Lcom/google/android/exoplayer2/MediaItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->queueDataAdapter:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;

    .line 10
    .line 11
    invoke-interface {p0, p3, p2}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;->add(ILandroid/support/v4/media/MediaDescriptionCompat;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p3, v0}, Lcom/google/android/exoplayer2/Player;->addMediaItem(ILcom/google/android/exoplayer2/MediaItem;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 1

    .line 1
    const-string p4, "exo_move_window"

    .line 2
    .line 3
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p2, "from_index"

    .line 13
    .line 14
    const/4 p4, -0x1

    .line 15
    invoke-virtual {p3, p2, p4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const-string/jumbo v0, "to_index"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v0, p4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eq p2, p4, :cond_1

    .line 27
    .line 28
    if-eq p3, p4, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->queueDataAdapter:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;

    .line 31
    .line 32
    invoke-interface {p0, p2, p3}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;->move(II)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->moveMediaItem(II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public onRemoveQueueItem(Lcom/google/android/exoplayer2/Player;Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->mediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueue()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->equalityChecker:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionEqualityChecker;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 21
    .line 22
    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 23
    .line 24
    invoke-interface {v2, v3, p2}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$MediaDescriptionEqualityChecker;->equals(Landroid/support/v4/media/MediaDescriptionCompat;Landroid/support/v4/media/MediaDescriptionCompat;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor;->queueDataAdapter:Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;

    .line 31
    .line 32
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueEditor$QueueDataAdapter;->remove(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->removeMediaItem(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method
