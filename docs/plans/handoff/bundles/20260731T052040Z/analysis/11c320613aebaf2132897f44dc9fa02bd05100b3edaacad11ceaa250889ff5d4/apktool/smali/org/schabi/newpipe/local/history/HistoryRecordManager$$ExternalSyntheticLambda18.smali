.class public final synthetic Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lio/reactivex/rxjava3/functions/Action;
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$2:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v2, v0

    .line 4
    check-cast v2, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v3, v0

    .line 9
    check-cast v3, Ljava/util/List;

    .line 10
    .line 11
    move-object v6, p1

    .line 12
    check-cast v6, Ljava/lang/Integer;

    .line 13
    .line 14
    iget-object p1, v2, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lorg/schabi/newpipe/database/AppDatabase;

    .line 17
    .line 18
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;

    .line 19
    .line 20
    iget-wide v4, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$2:J

    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager$$ExternalSyntheticLambda9;-><init>(Lokhttp3/Dispatcher;Ljava/util/List;JLjava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/16 v0, 0xe

    .line 28
    .line 29
    invoke-direct {p0, v1, v0}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/util/List;

    .line 37
    .line 38
    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 4
    .line 5
    iget-wide v1, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$2:J

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v0, p0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$XtFpDlqjtNpC9DTBF54lU2Evln8(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v5, v0

    .line 4
    check-cast v5, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v6, v0

    .line 9
    check-cast v6, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 10
    .line 11
    iget-object v0, v5, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->rootView:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lorg/schabi/newpipe/database/AppDatabase;

    .line 14
    .line 15
    new-instance v1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget-wide v3, p0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;->f$2:J

    .line 19
    .line 20
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda19;-><init>(IJLjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/16 v2, 0xf

    .line 29
    .line 30
    invoke-direct {p0, v1, v2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method
