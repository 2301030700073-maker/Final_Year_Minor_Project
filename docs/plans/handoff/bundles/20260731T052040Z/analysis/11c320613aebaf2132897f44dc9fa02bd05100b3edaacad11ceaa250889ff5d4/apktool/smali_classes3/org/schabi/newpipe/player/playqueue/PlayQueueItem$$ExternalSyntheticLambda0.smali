.class public final synthetic Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;
.implements Lio/reactivex/rxjava3/functions/Function;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->$r8$lambda$vA-o8T6BkmZw6CP1B3ol9GptCJ0(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;

    .line 15
    .line 16
    const-wide v1, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0, v0, v1, v2}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Exception;J)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    const-wide/16 v3, 0xbb8

    .line 37
    .line 38
    add-long/2addr v1, v3

    .line 39
    invoke-direct {p1, p0, v0, v1, v2}, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Exception;J)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1, v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isValid(J)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
