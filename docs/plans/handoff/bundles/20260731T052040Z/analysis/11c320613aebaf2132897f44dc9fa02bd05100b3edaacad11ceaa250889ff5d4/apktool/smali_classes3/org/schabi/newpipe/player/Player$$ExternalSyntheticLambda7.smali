.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 6
    .line 7
    iput-boolean p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$2:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$2:Z

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/Throwable;

    .line 13
    .line 14
    invoke-virtual {p0, v2, v1}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-virtual {p1, v3, v4}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isFinished(J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-wide v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 42
    .line 43
    invoke-virtual {v2, v0, v3, v4}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setRecovery(IJ)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0, v2, v1}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$2:Z

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
