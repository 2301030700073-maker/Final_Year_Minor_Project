.class public final synthetic Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$0:I

    .line 5
    .line 6
    iput-object p3, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    iput p2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$2:I

    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    iput p2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$0:I

    iput p3, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$2:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$0:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$2:I

    .line 8
    .line 9
    check-cast p1, Lorg/schabi/newpipe/extractor/Info;

    .line 10
    .line 11
    sget-object v2, Lorg/schabi/newpipe/util/ExtractorHelper;->CACHE:Lorg/schabi/newpipe/util/InfoCache;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sget-object v3, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 21
    .line 22
    sget-object v3, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 23
    .line 24
    iget v3, v3, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    const-wide/32 v2, 0x493e0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide/32 v2, 0x36ee80

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v4, Lorg/schabi/newpipe/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    .line 36
    .line 37
    monitor-enter v4

    .line 38
    :try_start_0
    new-instance v5, Lorg/schabi/newpipe/util/InfoCache$CacheData;

    .line 39
    .line 40
    invoke-direct {v5, p1, v2, v3}, Lorg/schabi/newpipe/util/InfoCache$CacheData;-><init>(Lorg/schabi/newpipe/extractor/Info;J)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Lorg/schabi/newpipe/util/InfoCache;->keyOf(IILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v4, p0, v5}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    monitor-exit v4

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$1:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 4
    .line 5
    iget v1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 8
    .line 9
    iget p0, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda14;->f$0:I

    .line 10
    .line 11
    invoke-static {v0, p0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$UV_W7Ux_geKjeQe7k7VtAoOibxc(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
