.class public final Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;
.super Ljava/lang/Object;
.source "VideoPlayer.kt"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/player/VideoPlayer;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlayer.kt\nexpo/modules/video/player/VideoPlayer$analyticsListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,461:1\n295#2,2:462\n*S KotlinDebug\n*F\n+ 1 VideoPlayer.kt\nexpo/modules/video/player/VideoPlayer$analyticsListener$1\n*L\n285#1:462,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "expo/modules/video/player/VideoPlayer$analyticsListener$1",
        "Landroidx/media3/exoplayer/analytics/AnalyticsListener;",
        "onVideoInputFormatChanged",
        "",
        "eventTime",
        "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
        "format",
        "Landroidx/media3/common/Format;",
        "decoderReuseEvaluation",
        "Landroidx/media3/exoplayer/DecoderReuseEvaluation;",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/video/player/VideoPlayer;


# direct methods
.method constructor <init>(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 5

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getAvailableVideoTracks()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 462
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lexpo/modules/video/records/VideoTrack;

    .line 285
    invoke-virtual {v4}, Lexpo/modules/video/records/VideoTrack;->getFormat()Landroidx/media3/common/Format;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v3, v4, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    :cond_1
    iget-object v4, p2, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 463
    :cond_2
    check-cast v3, Lexpo/modules/video/records/VideoTrack;

    .line 285
    invoke-static {v0, v3}, Lexpo/modules/video/player/VideoPlayer;->access$setCurrentVideoTrack(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;)V

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method
