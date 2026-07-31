.class public final Lexpo/modules/video/player/VideoPlayer;
.super Lexpo/modules/kotlin/sharedobjects/SharedObject;
.source "VideoPlayer.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lexpo/modules/video/IntervalUpdateEmitter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlayer.kt\nexpo/modules/video/player/VideoPlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,461:1\n1734#2,3:462\n1611#2,9:465\n1863#2:474\n1864#2:476\n1620#2:477\n1#3:475\n*S KotlinDebug\n*F\n+ 1 VideoPlayer.kt\nexpo/modules/video/player/VideoPlayer\n*L\n387#1:462,3\n398#1:465,9\n398#1:474\n398#1:476\n398#1:477\n398#1:475\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0004\u0098\u0001\u009b\u0001\u0008\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u00032\u00020\u0004B!\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\n\u0010\u009d\u0001\u001a\u00030\u009e\u0001H\u0016J\n\u0010\u009f\u0001\u001a\u00030\u009e\u0001H\u0016J\u0013\u0010\u00a0\u0001\u001a\u00030\u009e\u00012\t\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0017J\u0008\u0010\u00a2\u0001\u001a\u00030\u009e\u0001J\u0011\u0010\u00a3\u0001\u001a\u00020n2\u0006\u0010o\u001a\u00020nH\u0002J\u0013\u0010\u00a4\u0001\u001a\u00020O2\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001H\u0002J\u001d\u0010R\u001a\u00030\u009e\u00012\u0006\u0010N\u001a\u00020O2\n\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a8\u0001H\u0002J\u0011\u0010\u00a9\u0001\u001a\u00030\u009e\u00012\u0007\u0010\u00aa\u0001\u001a\u00020\u0014J\u0011\u0010\u00ab\u0001\u001a\u00030\u009e\u00012\u0007\u0010\u00aa\u0001\u001a\u00020\u0014J\u0014\u0010\u00ac\u0001\u001a\u00030\u009e\u00012\u0008\u0010\u00ad\u0001\u001a\u00030\u00ae\u0001H\u0002J\t\u0010\u00af\u0001\u001a\u00020-H\u0002J\n\u0010\u00b0\u0001\u001a\u00030\u009e\u0001H\u0016J\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010$\u001a\u00020%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010(\u001a\u00020)\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010.\u001a\u00020/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u0011\u00102\u001a\u000203\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R+\u00108\u001a\u0002072\u0006\u00106\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001c\u0010?\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR/\u0010D\u001a\u0004\u0018\u00010\n2\u0008\u00106\u001a\u0004\u0018\u00010\n8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008G\u0010>\u001a\u0004\u0008E\u0010A\"\u0004\u0008F\u0010CR\u001a\u0010H\u001a\u00020IX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001a\u0010N\u001a\u00020OX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\u001a\u0010T\u001a\u000207X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010:\"\u0004\u0008V\u0010<R\u001a\u0010W\u001a\u000207X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010:\"\u0004\u0008Y\u0010<R$\u0010Z\u001a\u0002072\u0006\u0010Z\u001a\u000207@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010:\"\u0004\u0008\\\u0010<R$\u0010^\u001a\u0002072\u0006\u0010]\u001a\u000207@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010:\"\u0004\u0008`\u0010<R\u001a\u0010a\u001a\u00020IX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010K\"\u0004\u0008c\u0010MR\u001a\u0010d\u001a\u000207X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010:\"\u0004\u0008e\u0010<R+\u0010f\u001a\u00020I2\u0006\u00106\u001a\u00020I8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008i\u0010>\u001a\u0004\u0008g\u0010K\"\u0004\u0008h\u0010MR+\u0010j\u001a\u0002072\u0006\u00106\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008m\u0010>\u001a\u0004\u0008k\u0010:\"\u0004\u0008l\u0010<R+\u0010o\u001a\u00020n2\u0006\u00106\u001a\u00020n8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008t\u0010>\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR\u0013\u0010u\u001a\u0004\u0018\u00010I8F\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010wR\u0013\u0010x\u001a\u0004\u0018\u00010y8F\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010{R&\u0010}\u001a\u00020|2\u0006\u0010]\u001a\u00020|@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0015\u0010\u0082\u0001\u001a\u00030\u0083\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001R+\u0010\u0087\u0001\u001a\u00030\u0086\u00012\u0007\u0010]\u001a\u00030\u0086\u0001@FX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\"\u0006\u0008\u008a\u0001\u0010\u008b\u0001R \u0010\u008c\u0001\u001a\u0002072\u0006\u0010]\u001a\u000207@BX\u0086\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u008c\u0001\u0010:R/\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00012\t\u0010]\u001a\u0005\u0018\u00010\u008d\u0001@BX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001\"\u0006\u0008\u0091\u0001\u0010\u0092\u0001R1\u0010\u0094\u0001\u001a\n\u0012\u0005\u0012\u00030\u008d\u00010\u0093\u00012\u000e\u0010]\u001a\n\u0012\u0005\u0012\u00030\u008d\u00010\u0093\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u0013\u0010\u0097\u0001\u001a\u00030\u0098\u0001X\u0082\u0004\u00a2\u0006\u0005\n\u0003\u0010\u0099\u0001R\u0013\u0010\u009a\u0001\u001a\u00030\u009b\u0001X\u0082\u0004\u00a2\u0006\u0005\n\u0003\u0010\u009c\u0001\u00a8\u0006\u00b3\u0001"
    }
    d2 = {
        "Lexpo/modules/video/player/VideoPlayer;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "Lexpo/modules/kotlin/sharedobjects/SharedObject;",
        "Lexpo/modules/video/IntervalUpdateEmitter;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "source",
        "Lexpo/modules/video/records/VideoSource;",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;)V",
        "getContext",
        "()Landroid/content/Context;",
        "renderersFactory",
        "Landroidx/media3/exoplayer/DefaultRenderersFactory;",
        "listeners",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/video/player/VideoPlayerListener;",
        "currentPlayerView",
        "Lexpo/modules/video/utils/MutableWeakReference;",
        "Landroidx/media3/ui/PlayerView;",
        "loadControl",
        "Lexpo/modules/video/player/VideoPlayerLoadControl;",
        "getLoadControl",
        "()Lexpo/modules/video/player/VideoPlayerLoadControl;",
        "subtitles",
        "Lexpo/modules/video/player/VideoPlayerSubtitles;",
        "getSubtitles",
        "()Lexpo/modules/video/player/VideoPlayerSubtitles;",
        "audioTracks",
        "Lexpo/modules/video/player/VideoPlayerAudioTracks;",
        "getAudioTracks",
        "()Lexpo/modules/video/player/VideoPlayerAudioTracks;",
        "trackSelector",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
        "getTrackSelector",
        "()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;",
        "player",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "getPlayer",
        "()Landroidx/media3/exoplayer/ExoPlayer;",
        "firstFrameEventGenerator",
        "Lexpo/modules/video/player/FirstFrameEventGenerator;",
        "serviceConnection",
        "Lexpo/modules/video/playbackService/PlaybackServiceConnection;",
        "getServiceConnection",
        "()Lexpo/modules/video/playbackService/PlaybackServiceConnection;",
        "intervalUpdateClock",
        "Lexpo/modules/video/IntervalUpdateClock;",
        "getIntervalUpdateClock",
        "()Lexpo/modules/video/IntervalUpdateClock;",
        "<set-?>",
        "",
        "playing",
        "getPlaying",
        "()Z",
        "setPlaying",
        "(Z)V",
        "playing$delegate",
        "Lexpo/modules/video/delegates/IgnoreSameSet;",
        "uncommittedSource",
        "getUncommittedSource",
        "()Lexpo/modules/video/records/VideoSource;",
        "setUncommittedSource",
        "(Lexpo/modules/video/records/VideoSource;)V",
        "commitedSource",
        "getCommitedSource",
        "setCommitedSource",
        "commitedSource$delegate",
        "userVolume",
        "",
        "getUserVolume",
        "()F",
        "setUserVolume",
        "(F)V",
        "status",
        "Lexpo/modules/video/enums/PlayerStatus;",
        "getStatus",
        "()Lexpo/modules/video/enums/PlayerStatus;",
        "setStatus",
        "(Lexpo/modules/video/enums/PlayerStatus;)V",
        "requiresLinearPlayback",
        "getRequiresLinearPlayback",
        "setRequiresLinearPlayback",
        "staysActiveInBackground",
        "getStaysActiveInBackground",
        "setStaysActiveInBackground",
        "preservesPitch",
        "getPreservesPitch",
        "setPreservesPitch",
        "value",
        "showNowPlayingNotification",
        "getShowNowPlayingNotification",
        "setShowNowPlayingNotification",
        "duration",
        "getDuration",
        "setDuration",
        "isLive",
        "setLive",
        "volume",
        "getVolume",
        "setVolume",
        "volume$delegate",
        "muted",
        "getMuted",
        "setMuted",
        "muted$delegate",
        "Landroidx/media3/common/PlaybackParameters;",
        "playbackParameters",
        "getPlaybackParameters",
        "()Landroidx/media3/common/PlaybackParameters;",
        "setPlaybackParameters",
        "(Landroidx/media3/common/PlaybackParameters;)V",
        "playbackParameters$delegate",
        "currentOffsetFromLive",
        "getCurrentOffsetFromLive",
        "()Ljava/lang/Float;",
        "currentLiveTimestamp",
        "",
        "getCurrentLiveTimestamp",
        "()Ljava/lang/Long;",
        "Lexpo/modules/video/records/BufferOptions;",
        "bufferOptions",
        "getBufferOptions",
        "()Lexpo/modules/video/records/BufferOptions;",
        "setBufferOptions",
        "(Lexpo/modules/video/records/BufferOptions;)V",
        "bufferedPosition",
        "",
        "getBufferedPosition",
        "()D",
        "Lexpo/modules/video/enums/AudioMixingMode;",
        "audioMixingMode",
        "getAudioMixingMode",
        "()Lexpo/modules/video/enums/AudioMixingMode;",
        "setAudioMixingMode",
        "(Lexpo/modules/video/enums/AudioMixingMode;)V",
        "isLoadingNewSource",
        "Lexpo/modules/video/records/VideoTrack;",
        "currentVideoTrack",
        "getCurrentVideoTrack",
        "()Lexpo/modules/video/records/VideoTrack;",
        "setCurrentVideoTrack",
        "(Lexpo/modules/video/records/VideoTrack;)V",
        "",
        "availableVideoTracks",
        "getAvailableVideoTracks",
        "()Ljava/util/List;",
        "playerListener",
        "expo/modules/video/player/VideoPlayer$playerListener$1",
        "Lexpo/modules/video/player/VideoPlayer$playerListener$1;",
        "analyticsListener",
        "expo/modules/video/player/VideoPlayer$analyticsListener$1",
        "Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;",
        "close",
        "",
        "deallocate",
        "changePlayerView",
        "playerView",
        "prepare",
        "applyPitchCorrection",
        "playerStateToPlayerStatus",
        "state",
        "",
        "error",
        "Landroidx/media3/common/PlaybackException;",
        "addListener",
        "videoPlayerListener",
        "removeListener",
        "sendEvent",
        "event",
        "Lexpo/modules/video/player/PlayerEvent;",
        "createFirstFrameEventGenerator",
        "emitTimeUpdate",
        "toMetadataRetriever",
        "Landroid/media/MediaMetadataRetriever;",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final analyticsListener:Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;

.field private audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

.field private final audioTracks:Lexpo/modules/video/player/VideoPlayerAudioTracks;

.field private availableVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field private bufferOptions:Lexpo/modules/video/records/BufferOptions;

.field private final commitedSource$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private final context:Landroid/content/Context;

.field private currentPlayerView:Lexpo/modules/video/utils/MutableWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/video/utils/MutableWeakReference<",
            "Landroidx/media3/ui/PlayerView;",
            ">;"
        }
    .end annotation
.end field

.field private currentVideoTrack:Lexpo/modules/video/records/VideoTrack;

.field private duration:F

.field private final firstFrameEventGenerator:Lexpo/modules/video/player/FirstFrameEventGenerator;

.field private final intervalUpdateClock:Lexpo/modules/video/IntervalUpdateClock;

.field private isLive:Z

.field private isLoadingNewSource:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loadControl:Lexpo/modules/video/player/VideoPlayerLoadControl;

.field private final muted$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private final playbackParameters$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private final player:Landroidx/media3/exoplayer/ExoPlayer;

.field private final playerListener:Lexpo/modules/video/player/VideoPlayer$playerListener$1;

.field private final playing$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private preservesPitch:Z

.field private renderersFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

.field private requiresLinearPlayback:Z

.field private final serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

.field private showNowPlayingNotification:Z

.field private status:Lexpo/modules/video/enums/PlayerStatus;

.field private staysActiveInBackground:Z

.field private final subtitles:Lexpo/modules/video/player/VideoPlayerSubtitles;

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field private uncommittedSource:Lexpo/modules/video/records/VideoSource;

.field private userVolume:F

.field private final volume$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;


# direct methods
.method public static synthetic $r8$lambda$8F1-mOLa4LPGFex6V2dDKUA-caE(Lexpo/modules/video/player/VideoPlayer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/player/VideoPlayer;->createFirstFrameEventGenerator$lambda$12(Lexpo/modules/video/player/VideoPlayer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NCx40d9kY7txCBgEUbYzAzn4-0o(Lexpo/modules/video/player/VideoPlayerListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->removeListener$lambda$10(Lexpo/modules/video/player/VideoPlayerListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Tu5ugX8jZsZBxuBz0_8Anp5taPs(Lexpo/modules/video/player/VideoPlayer;FF)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->volume_delegate$lambda$2(Lexpo/modules/video/player/VideoPlayer;FF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VMJq-RrjsP198e1hKEDkgH9D4qk(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->muted_delegate$lambda$3(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lm-IOfDujo6ESaG8wpQOkjyRufI(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->playbackParameters_delegate$lambda$4(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mkYlk0Rq-SkI40uTMnln9NzY2B0(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->playing_delegate$lambda$0(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sHxQ56NPMlqSOTyd67KTqXBK_X4(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->commitedSource_delegate$lambda$1(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uDx8q0sAh_wkO_jumdmVZS5rOpY(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/PlaybackParameters;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->playbackParameters_delegate$lambda$5(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/PlaybackParameters;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 70
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "playing"

    const-string v3, "getPlaying()Z"

    const-class v4, Lexpo/modules/video/player/VideoPlayer;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 75
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "commitedSource"

    const-string v3, "getCommitedSource()Lexpo/modules/video/records/VideoSource;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 97
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "volume"

    const-string v3, "getVolume()F"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 103
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "muted"

    const-string v3, "getMuted()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 108
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "playbackParameters"

    const-string v3, "getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "appContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {v0, v2}, Lexpo/modules/kotlin/sharedobjects/SharedObject;-><init>(Lexpo/modules/kotlin/AppContext;)V

    iput-object v1, v0, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    .line 50
    new-instance v3, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v3, v1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->forceEnableMediaCodecAsynchronousQueueing()Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v3

    const/4 v4, 0x1

    .line 52
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v3

    const-string v4, "setEnableDecoderFallback(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lexpo/modules/video/player/VideoPlayer;->renderersFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    .line 54
    new-instance v3, Lexpo/modules/video/utils/MutableWeakReference;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lexpo/modules/video/utils/MutableWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lexpo/modules/video/player/VideoPlayer;->currentPlayerView:Lexpo/modules/video/utils/MutableWeakReference;

    .line 55
    new-instance v3, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;

    invoke-direct {v3}, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;-><init>()V

    invoke-virtual {v3}, Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;->build()Lexpo/modules/video/player/VideoPlayerLoadControl;

    move-result-object v3

    iput-object v3, v0, Lexpo/modules/video/player/VideoPlayer;->loadControl:Lexpo/modules/video/player/VideoPlayerLoadControl;

    .line 56
    new-instance v5, Lexpo/modules/video/player/VideoPlayerSubtitles;

    invoke-direct {v5, v0}, Lexpo/modules/video/player/VideoPlayerSubtitles;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    iput-object v5, v0, Lexpo/modules/video/player/VideoPlayer;->subtitles:Lexpo/modules/video/player/VideoPlayerSubtitles;

    .line 57
    new-instance v5, Lexpo/modules/video/player/VideoPlayerAudioTracks;

    invoke-direct {v5, v0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    iput-object v5, v0, Lexpo/modules/video/player/VideoPlayer;->audioTracks:Lexpo/modules/video/player/VideoPlayerAudioTracks;

    .line 58
    new-instance v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-direct {v5, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lexpo/modules/video/player/VideoPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 61
    new-instance v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->renderersFactory:Landroidx/media3/exoplayer/DefaultRenderersFactory;

    check-cast v6, Landroidx/media3/exoplayer/RenderersFactory;

    invoke-direct {v5, v1, v6}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v5

    .line 63
    check-cast v3, Landroidx/media3/exoplayer/LoadControl;

    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    const-string v5, "build(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 66
    invoke-direct/range {p0 .. p0}, Lexpo/modules/video/player/VideoPlayer;->createFirstFrameEventGenerator()Lexpo/modules/video/player/FirstFrameEventGenerator;

    move-result-object v5

    iput-object v5, v0, Lexpo/modules/video/player/VideoPlayer;->firstFrameEventGenerator:Lexpo/modules/video/player/FirstFrameEventGenerator;

    .line 67
    new-instance v5, Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v5, v0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    .line 68
    new-instance v6, Lexpo/modules/video/IntervalUpdateClock;

    move-object v7, v0

    check-cast v7, Lexpo/modules/video/IntervalUpdateEmitter;

    invoke-direct {v6, v7}, Lexpo/modules/video/IntervalUpdateClock;-><init>(Lexpo/modules/video/IntervalUpdateEmitter;)V

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->intervalUpdateClock:Lexpo/modules/video/IntervalUpdateClock;

    .line 70
    new-instance v6, Lexpo/modules/video/delegates/IgnoreSameSet;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    new-instance v11, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, v6

    move-object v9, v7

    invoke-direct/range {v8 .. v13}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->playing$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    move-object/from16 v6, p3

    .line 74
    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    .line 75
    new-instance v6, Lexpo/modules/video/delegates/IgnoreSameSet;

    new-instance v11, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    const/4 v9, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->commitedSource$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 80
    iput v6, v0, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    .line 81
    sget-object v8, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    iput-object v8, v0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    .line 97
    new-instance v8, Lexpo/modules/video/delegates/IgnoreSameSet;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    new-instance v12, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v0, Lexpo/modules/video/player/VideoPlayer;->volume$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 103
    new-instance v6, Lexpo/modules/video/delegates/IgnoreSameSet;

    new-instance v11, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, v6

    move-object v9, v7

    invoke-direct/range {v8 .. v13}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->muted$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 108
    new-instance v6, Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 109
    sget-object v7, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    .line 110
    new-instance v8, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    .line 111
    new-instance v9, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda5;

    invoke-direct {v9, v0}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda5;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    .line 108
    invoke-direct {v6, v7, v8, v9}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->playbackParameters$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 140
    new-instance v6, Lexpo/modules/video/records/BufferOptions;

    const/16 v17, 0xf

    const/16 v18, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Lexpo/modules/video/records/BufferOptions;-><init>(Ljava/lang/Double;JZDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->bufferOptions:Lexpo/modules/video/records/BufferOptions;

    .line 157
    sget-object v6, Lexpo/modules/video/enums/AudioMixingMode;->AUTO:Lexpo/modules/video/enums/AudioMixingMode;

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    .line 174
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->availableVideoTracks:Ljava/util/List;

    .line 177
    new-instance v6, Lexpo/modules/video/player/VideoPlayer$playerListener$1;

    invoke-direct {v6, v0}, Lexpo/modules/video/player/VideoPlayer$playerListener$1;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    iput-object v6, v0, Lexpo/modules/video/player/VideoPlayer;->playerListener:Lexpo/modules/video/player/VideoPlayer$playerListener$1;

    .line 283
    new-instance v7, Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;

    invoke-direct {v7, v0}, Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    iput-object v7, v0, Lexpo/modules/video/player/VideoPlayer;->analyticsListener:Lexpo/modules/video/player/VideoPlayer$analyticsListener$1;

    .line 291
    sget-object v8, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->Companion:Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;

    invoke-virtual {v8, v2, v1, v5}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService$Companion;->startService(Lexpo/modules/kotlin/AppContext;Landroid/content/Context;Lexpo/modules/video/playbackService/PlaybackServiceConnection;)V

    .line 292
    check-cast v6, Landroidx/media3/common/Player$Listener;

    invoke-interface {v3, v6}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 293
    check-cast v7, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {v3, v7}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 294
    sget-object v1, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    invoke-virtual {v1, v0}, Lexpo/modules/video/VideoManager;->registerVideoPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    new-instance v1, Lexpo/modules/video/player/VideoPlayer$1;

    invoke-direct {v1, v0, v4}, Lexpo/modules/video/player/VideoPlayer$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getCommitedSource(Lexpo/modules/video/player/VideoPlayer;)Lexpo/modules/video/records/VideoSource;
    .locals 0

    .line 47
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayer;->getCommitedSource()Lexpo/modules/video/records/VideoSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPlayerListener$p(Lexpo/modules/video/player/VideoPlayer;)Lexpo/modules/video/player/VideoPlayer$playerListener$1;
    .locals 0

    .line 47
    iget-object p0, p0, Lexpo/modules/video/player/VideoPlayer;->playerListener:Lexpo/modules/video/player/VideoPlayer$playerListener$1;

    return-object p0
.end method

.method public static final synthetic access$playerStateToPlayerStatus(Lexpo/modules/video/player/VideoPlayer;I)Lexpo/modules/video/enums/PlayerStatus;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->playerStateToPlayerStatus(I)Lexpo/modules/video/enums/PlayerStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    return-void
.end method

.method public static final synthetic access$setAvailableVideoTracks$p(Lexpo/modules/video/player/VideoPlayer;Ljava/util/List;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->availableVideoTracks:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setCurrentVideoTrack(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->setCurrentVideoTrack(Lexpo/modules/video/records/VideoTrack;)V

    return-void
.end method

.method public static final synthetic access$setLoadingNewSource$p(Lexpo/modules/video/player/VideoPlayer;Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource:Z

    return-void
.end method

.method public static final synthetic access$setStatus(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->setStatus(Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method private final applyPitchCorrection(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 2

    .line 346
    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 347
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->preservesPitch:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v0, p1

    .line 348
    :goto_0
    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v1, p1, v0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    return-object v1
.end method

.method private static final commitedSource_delegate$lambda$1(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)Lkotlin/Unit;
    .locals 1

    .line 76
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$SourceChanged;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$SourceChanged;-><init>(Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final createFirstFrameEventGenerator()Lexpo/modules/video/player/FirstFrameEventGenerator;
    .locals 4

    .line 409
    new-instance v0, Lexpo/modules/video/player/FirstFrameEventGenerator;

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->currentPlayerView:Lexpo/modules/video/utils/MutableWeakReference;

    new-instance v3, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda6;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    invoke-direct {v0, v1, v2, v3}, Lexpo/modules/video/player/FirstFrameEventGenerator;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Lexpo/modules/video/utils/MutableWeakReference;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method private static final createFirstFrameEventGenerator$lambda$12(Lexpo/modules/video/player/VideoPlayer;)Lkotlin/Unit;
    .locals 1

    .line 410
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;

    invoke-direct {v0}, Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;-><init>()V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 411
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getCommitedSource()Lexpo/modules/video/records/VideoSource;
    .locals 3

    .line 75
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->commitedSource$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method

.method private static final muted_delegate$lambda$3(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;
    .locals 2

    .line 104
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    :goto_0
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    .line 105
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$MutedChanged;-><init>(ZLjava/lang/Boolean;)V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 106
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final playbackParameters_delegate$lambda$4(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->applyPitchCorrection(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method private static final playbackParameters_delegate$lambda$5(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/PlaybackParameters;)Lkotlin/Unit;
    .locals 2

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 114
    iget v0, p2, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget p2, p2, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;-><init>(FLjava/lang/Float;)V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 117
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final playerStateToPlayerStatus(I)Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 365
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 359
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->ERROR:Lexpo/modules/video/enums/PlayerStatus;

    goto :goto_0

    .line 361
    :cond_1
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    goto :goto_0

    .line 355
    :cond_2
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->READY_TO_PLAY:Lexpo/modules/video/enums/PlayerStatus;

    goto :goto_0

    .line 354
    :cond_3
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->LOADING:Lexpo/modules/video/enums/PlayerStatus;

    goto :goto_0

    .line 353
    :cond_4
    sget-object p1, Lexpo/modules/video/enums/PlayerStatus;->IDLE:Lexpo/modules/video/enums/PlayerStatus;

    :goto_0
    return-object p1
.end method

.method private static final playing_delegate$lambda$0(Lexpo/modules/video/player/VideoPlayer;ZZ)Lkotlin/Unit;
    .locals 1

    .line 71
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;-><init>(ZLjava/lang/Boolean;)V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 72
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final removeListener$lambda$10(Lexpo/modules/video/player/VideoPlayerListener;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final sendEvent(Lexpo/modules/video/player/PlayerEvent;)V
    .locals 3

    .line 398
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 474
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 473
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 398
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/player/VideoPlayerListener;

    if-eqz v2, :cond_0

    .line 473
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 400
    invoke-virtual {p1, p0, v1}, Lexpo/modules/video/player/PlayerEvent;->emit(Lexpo/modules/video/player/VideoPlayer;Ljava/util/List;)V

    .line 403
    invoke-virtual {p1}, Lexpo/modules/video/player/PlayerEvent;->getEmitToJS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {p1}, Lexpo/modules/video/player/PlayerEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lexpo/modules/video/player/PlayerEvent;->getJsEventPayload()Lexpo/modules/video/records/VideoEventPayload;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lexpo/modules/video/player/VideoPlayer;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final setCommitedSource(Lexpo/modules/video/records/VideoSource;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->commitedSource$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setCurrentVideoTrack(Lexpo/modules/video/records/VideoTrack;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoTrack:Lexpo/modules/video/records/VideoTrack;

    .line 170
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoTrack:Lexpo/modules/video/records/VideoTrack;

    .line 171
    new-instance v1, Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;

    invoke-direct {v1, p1, v0}, Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;-><init>(Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V

    check-cast v1, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v1}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    return-void
.end method

.method private final setStatus(Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V
    .locals 3

    .line 370
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    .line 371
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    if-eqz p2, :cond_0

    .line 374
    new-instance v1, Lexpo/modules/video/records/PlaybackError;

    invoke-direct {v1, p2}, Lexpo/modules/video/records/PlaybackError;-><init>(Landroidx/media3/common/PlaybackException;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 377
    iget-object p2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 378
    new-instance p2, Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;

    invoke-direct {p2}, Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;-><init>()V

    check-cast p2, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, p2}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 381
    :cond_1
    iget-object p2, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    if-eq p2, v0, :cond_2

    .line 382
    new-instance p2, Lexpo/modules/video/player/PlayerEvent$StatusChanged;

    invoke-direct {p2, p1, v0, v1}, Lexpo/modules/video/player/PlayerEvent$StatusChanged;-><init>(Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    check-cast p2, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, p2}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    :cond_2
    return-void
.end method

.method private static final volume_delegate$lambda$2(Lexpo/modules/video/player/VideoPlayer;FF)Lkotlin/Unit;
    .locals 2

    .line 98
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getMuted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    .line 99
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getVolume()F

    move-result v0

    iput v0, p0, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    .line 100
    new-instance v0, Lexpo/modules/video/player/PlayerEvent$VolumeChanged;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$VolumeChanged;-><init>(FLjava/lang/Float;)V

    check-cast v0, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    .line 101
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final addListener(Lexpo/modules/video/player/VideoPlayerListener;)V
    .locals 2

    const-string v0, "videoPlayerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 462
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 387
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 388
    :cond_2
    :goto_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final changePlayerView(Landroidx/media3/ui/PlayerView;)V
    .locals 2

    .line 321
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    check-cast v0, Landroidx/media3/common/Player;

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->currentPlayerView:Lexpo/modules/video/utils/MutableWeakReference;

    invoke-virtual {v1}, Lexpo/modules/video/utils/MutableWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/PlayerView;

    invoke-static {v0, v1, p1}, Landroidx/media3/ui/PlayerView;->switchTargetView(Landroidx/media3/common/Player;Landroidx/media3/ui/PlayerView;Landroidx/media3/ui/PlayerView;)V

    .line 322
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->currentPlayerView:Lexpo/modules/video/utils/MutableWeakReference;

    invoke-virtual {v0, p1}, Lexpo/modules/video/utils/MutableWeakReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 8

    .line 303
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->unregisterPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 305
    :cond_1
    sget-object v0, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    invoke-virtual {v0, p0}, Lexpo/modules/video/VideoManager;->unregisterVideoPlayer(Lexpo/modules/video/player/VideoPlayer;)V

    .line 307
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lexpo/modules/video/player/VideoPlayer$close$1;

    invoke-direct {v0, p0, v1}, Lexpo/modules/video/player/VideoPlayer$close$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 311
    :cond_2
    iput-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    .line 312
    invoke-direct {p0, v1}, Lexpo/modules/video/player/VideoPlayer;->setCommitedSource(Lexpo/modules/video/records/VideoSource;)V

    return-void
.end method

.method public deallocate()V
    .locals 0

    .line 316
    invoke-super {p0}, Lexpo/modules/kotlin/sharedobjects/SharedObject;->deallocate()V

    .line 317
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->close()V

    return-void
.end method

.method public emitTimeUpdate()V
    .locals 7

    .line 416
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lexpo/modules/video/player/VideoPlayer$emitTimeUpdate$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lexpo/modules/video/player/VideoPlayer$emitTimeUpdate$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final getAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;
    .locals 1

    .line 157
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-object v0
.end method

.method public final getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;
    .locals 1

    .line 57
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->audioTracks:Lexpo/modules/video/player/VideoPlayerAudioTracks;

    return-object v0
.end method

.method public final getAvailableVideoTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->availableVideoTracks:Ljava/util/List;

    return-object v0
.end method

.method public final getBufferOptions()Lexpo/modules/video/records/BufferOptions;
    .locals 1

    .line 140
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->bufferOptions:Lexpo/modules/video/records/BufferOptions;

    return-object v0
.end method

.method public final getBufferedPosition()D
    .locals 4

    .line 148
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 151
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 154
    :cond_1
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 48
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentLiveTimestamp()Ljava/lang/Long;
    .locals 5

    .line 130
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 131
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 134
    :cond_0
    iget-wide v1, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_1
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentOffsetFromLive()Ljava/lang/Float;
    .locals 4

    .line 121
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentLiveOffset()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentLiveOffset()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getCurrentVideoTrack()Lexpo/modules/video/records/VideoTrack;
    .locals 1

    .line 167
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->currentVideoTrack:Lexpo/modules/video/records/VideoTrack;

    return-object v0
.end method

.method public final getDuration()F
    .locals 1

    .line 94
    iget v0, p0, Lexpo/modules/video/player/VideoPlayer;->duration:F

    return v0
.end method

.method public final getIntervalUpdateClock()Lexpo/modules/video/IntervalUpdateClock;
    .locals 1

    .line 68
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->intervalUpdateClock:Lexpo/modules/video/IntervalUpdateClock;

    return-object v0
.end method

.method public final getLoadControl()Lexpo/modules/video/player/VideoPlayerLoadControl;
    .locals 1

    .line 55
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->loadControl:Lexpo/modules/video/player/VideoPlayerLoadControl;

    return-object v0
.end method

.method public final getMuted()Z
    .locals 3

    .line 103
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->muted$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 3

    .line 108
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->playbackParameters$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public final getPlayer()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 1

    .line 60
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object v0
.end method

.method public final getPlaying()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->playing$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getPreservesPitch()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->preservesPitch:Z

    return v0
.end method

.method public final getRequiresLinearPlayback()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->requiresLinearPlayback:Z

    return v0
.end method

.method public final getServiceConnection()Lexpo/modules/video/playbackService/PlaybackServiceConnection;
    .locals 1

    .line 67
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    return-object v0
.end method

.method public final getShowNowPlayingNotification()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->showNowPlayingNotification:Z

    return v0
.end method

.method public final getStatus()Lexpo/modules/video/enums/PlayerStatus;
    .locals 1

    .line 81
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    return-object v0
.end method

.method public final getStaysActiveInBackground()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->staysActiveInBackground:Z

    return v0
.end method

.method public final getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;
    .locals 1

    .line 56
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->subtitles:Lexpo/modules/video/player/VideoPlayerSubtitles;

    return-object v0
.end method

.method public final getTrackSelector()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
    .locals 1

    .line 58
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->trackSelector:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method public final getUncommittedSource()Lexpo/modules/video/records/VideoSource;
    .locals 1

    .line 74
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    return-object v0
.end method

.method public final getUserVolume()F
    .locals 1

    .line 80
    iget v0, p0, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    return v0
.end method

.method public final getVolume()F
    .locals 3

    .line 97
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->volume$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final isLive()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLive:Z

    return v0
.end method

.method public final isLoadingNewSource()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource:Z

    return v0
.end method

.method public final prepare()V
    .locals 4

    .line 326
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->availableVideoTracks:Ljava/util/List;

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, v0}, Lexpo/modules/video/player/VideoPlayer;->setCurrentVideoTrack(Lexpo/modules/video/records/VideoTrack;)V

    .line 329
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    if-eqz v1, :cond_0

    .line 330
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lexpo/modules/video/records/VideoSource;->toMediaSource(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 333
    iget-object v3, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 334
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    .line 335
    invoke-direct {p0, v1}, Lexpo/modules/video/player/VideoPlayer;->setCommitedSource(Lexpo/modules/video/records/VideoSource;)V

    .line 336
    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource:Z

    goto :goto_1

    .line 338
    :cond_1
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/VideoPlayer;

    .line 339
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->clearMediaItems()V

    .line 340
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource:Z

    :goto_1
    return-void
.end method

.method public final removeListener(Lexpo/modules/video/player/VideoPlayerListener;)V
    .locals 2

    const-string v0, "videoPlayerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->listeners:Ljava/util/List;

    new-instance v1, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda7;-><init>(Lexpo/modules/video/player/VideoPlayerListener;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public final setAudioMixingMode(Lexpo/modules/video/enums/AudioMixingMode;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    .line 160
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    .line 161
    new-instance v1, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;

    invoke-direct {v1, p1, v0}, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;-><init>(Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V

    check-cast v1, Lexpo/modules/video/player/PlayerEvent;

    invoke-direct {p0, v1}, Lexpo/modules/video/player/VideoPlayer;->sendEvent(Lexpo/modules/video/player/PlayerEvent;)V

    return-void
.end method

.method public final setBufferOptions(Lexpo/modules/video/records/BufferOptions;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->bufferOptions:Lexpo/modules/video/records/BufferOptions;

    .line 143
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->loadControl:Lexpo/modules/video/player/VideoPlayerLoadControl;

    invoke-virtual {v0, p1}, Lexpo/modules/video/player/VideoPlayerLoadControl;->applyBufferOptions(Lexpo/modules/video/records/BufferOptions;)V

    return-void
.end method

.method public final setDuration(F)V
    .locals 0

    .line 94
    iput p1, p0, Lexpo/modules/video/player/VideoPlayer;->duration:F

    return-void
.end method

.method public final setLive(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->isLive:Z

    return-void
.end method

.method public final setMuted(Z)V
    .locals 3

    .line 103
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->muted$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->playbackParameters$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlaying(Z)V
    .locals 3

    .line 70
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->playing$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPreservesPitch(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->preservesPitch:Z

    .line 87
    invoke-virtual {p0}, Lexpo/modules/video/player/VideoPlayer;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->applyPitchCorrection(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lexpo/modules/video/player/VideoPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final setRequiresLinearPlayback(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->requiresLinearPlayback:Z

    return-void
.end method

.method public final setShowNowPlayingNotification(Z)V
    .locals 2

    .line 91
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->showNowPlayingNotification:Z

    .line 92
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->serviceConnection:Lexpo/modules/video/playbackService/PlaybackServiceConnection;

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceConnection;->getPlaybackServiceBinder()Lexpo/modules/video/playbackService/PlaybackServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/playbackService/PlaybackServiceBinder;->getService()Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, p1, v1}, Lexpo/modules/video/playbackService/ExpoVideoPlaybackService;->setShowNotification(ZLandroidx/media3/exoplayer/ExoPlayer;)V

    :cond_0
    return-void
.end method

.method public final setStatus(Lexpo/modules/video/enums/PlayerStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->status:Lexpo/modules/video/enums/PlayerStatus;

    return-void
.end method

.method public final setStaysActiveInBackground(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lexpo/modules/video/player/VideoPlayer;->staysActiveInBackground:Z

    return-void
.end method

.method public final setUncommittedSource(Lexpo/modules/video/records/VideoSource;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    return-void
.end method

.method public final setUserVolume(F)V
    .locals 0

    .line 80
    iput p1, p0, Lexpo/modules/video/player/VideoPlayer;->userVolume:F

    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    .line 97
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->volume$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/player/VideoPlayer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final toMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .locals 9

    .line 423
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->uncommittedSource:Lexpo/modules/video/records/VideoSource;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayer;->getCommitedSource()Lexpo/modules/video/records/VideoSource;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_5

    .line 424
    invoke-virtual {v0}, Lexpo/modules/video/records/VideoSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 425
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 428
    invoke-static {v2}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 429
    const-string v3, "file://"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-static {v2}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 432
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v2, v1}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/io/FileDescriptor;)Ljava/io/FileInputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/FileInputStream;

    .line 433
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 434
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .line 432
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 435
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 431
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 432
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 431
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 437
    :cond_2
    invoke-virtual {v0}, Lexpo/modules/video/records/VideoSource;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_3
    invoke-virtual {v8, v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_0
    return-object v8

    .line 424
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Video source is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
