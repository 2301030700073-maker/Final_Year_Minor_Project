.class public Lexpo/modules/video/VideoView;
.super Lexpo/modules/kotlin/views/ExpoView;
.source "VideoView.kt"

# interfaces
.implements Lexpo/modules/video/player/VideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/VideoView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoView.kt\nexpo/modules/video/VideoView\n+ 2 ViewEventDelegate.kt\nexpo/modules/kotlin/viewevent/ViewEventDelegateKt\n*L\n1#1,368:1\n27#2,3:369\n27#2,3:372\n27#2,3:375\n27#2,3:378\n27#2,3:381\n*S KotlinDebug\n*F\n+ 1 VideoView.kt\nexpo/modules/video/VideoView\n*L\n49#1:369,3\n50#1:372,3\n51#1:375,3\n52#1:378,3\n53#1:381,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 \u0092\u00012\u00020\u00012\u00020\u0002:\u0002\u0092\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010i\u001a\u00020\u0015J\u0006\u0010j\u001a\u00020\u0015J\u0006\u0010k\u001a\u00020\u0015J\u0006\u0010l\u001a\u00020\u0015J\u0006\u0010m\u001a\u00020\u0015J\n\u0010n\u001a\u0004\u0018\u00010oH\u0002J\u0006\u0010p\u001a\u00020\u0015J\u0006\u0010q\u001a\u00020\u0015JS\u0010r\u001a\u00020\u00152\u0006\u0010s\u001a\u00020[2\u0008\u0010t\u001a\u0004\u0018\u00010u2\u0008\u0010v\u001a\u0004\u0018\u00010w2\u000c\u0010x\u001a\u0008\u0012\u0004\u0012\u00020z0y2\u000c\u0010{\u001a\u0008\u0012\u0004\u0012\u00020|0y2\u000c\u0010}\u001a\u0008\u0012\u0004\u0012\u00020~0yH\u0016\u00a2\u0006\u0002\u0010\u007fJ\u001b\u0010\u0080\u0001\u001a\u00020\u00152\u0006\u0010s\u001a\u00020[2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\u00152\u0006\u0010s\u001a\u00020[H\u0016J\t\u0010\u0084\u0001\u001a\u00020\u0015H\u0016J6\u0010\u0085\u0001\u001a\u00020\u00152\u0007\u0010\u0086\u0001\u001a\u00020\u00082\u0007\u0010\u0087\u0001\u001a\u00020@2\u0007\u0010\u0088\u0001\u001a\u00020@2\u0007\u0010\u0089\u0001\u001a\u00020@2\u0007\u0010\u008a\u0001\u001a\u00020@H\u0014J\t\u0010\u008b\u0001\u001a\u00020\u0015H\u0014J\t\u0010\u008c\u0001\u001a\u00020\u0015H\u0014J\u0015\u0010\u008d\u0001\u001a\u00020\u00082\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H\u0016J\u0015\u0010\u0090\u0001\u001a\u00020\u00082\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H\u0016J\u0011\u0010\u0091\u0001\u001a\u00020@2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R!\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R!\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0019\u001a\u0004\u0008\u001b\u0010\u0017R!\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u0017R!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0019\u001a\u0004\u0008!\u0010\u0017R!\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0019\u001a\u0004\u0008$\u0010\u0017R\u001a\u0010&\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010(\"\u0004\u0008-\u0010*R\u001e\u0010/\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010(R\u001e\u00100\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010(R\u001e\u00102\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010(R\u000e\u00104\u001a\u000205X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u00108\u001a\n :*\u0004\u0018\u00010909X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010;R\u000e\u0010<\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010>\u001a\u0012\u0012\u0004\u0012\u00020@0?j\u0008\u0012\u0004\u0012\u00020@`AX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010B\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010C\u001a\u0004\u0018\u00010DX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010E\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010(\"\u0004\u0008G\u0010*R*\u0010H\u001a\u0004\u0018\u00010\u00082\u0008\u0010.\u001a\u0004\u0018\u00010\u0008@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010M\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR+\u0010O\u001a\u00020\u00082\u0006\u0010N\u001a\u00020\u00088F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008P\u0010(\"\u0004\u0008Q\u0010*R$\u0010U\u001a\u00020T2\u0006\u0010.\u001a\u00020T@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR(\u0010\\\u001a\u0004\u0018\u00010[2\u0008\u0010Z\u001a\u0004\u0018\u00010[@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R$\u0010a\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010(\"\u0004\u0008c\u0010*R$\u0010d\u001a\u00020\u00082\u0006\u0010.\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010(\"\u0004\u0008f\u0010*R\u000e\u0010g\u001a\u00020hX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0093\u0001"
    }
    d2 = {
        "Lexpo/modules/video/VideoView;",
        "Lexpo/modules/kotlin/views/ExpoView;",
        "Lexpo/modules/video/player/VideoPlayerListener;",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "useTextureView",
        "",
        "<init>",
        "(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Z)V",
        "videoViewId",
        "",
        "getVideoViewId",
        "()Ljava/lang/String;",
        "playerView",
        "Landroidx/media3/ui/PlayerView;",
        "getPlayerView",
        "()Landroidx/media3/ui/PlayerView;",
        "onPictureInPictureStart",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "",
        "getOnPictureInPictureStart",
        "()Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "onPictureInPictureStart$delegate",
        "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;",
        "onPictureInPictureStop",
        "getOnPictureInPictureStop",
        "onPictureInPictureStop$delegate",
        "onFullscreenEnter",
        "getOnFullscreenEnter",
        "onFullscreenEnter$delegate",
        "onFullscreenExit",
        "getOnFullscreenExit",
        "onFullscreenExit$delegate",
        "onFirstFrameRender",
        "getOnFirstFrameRender",
        "onFirstFrameRender$delegate",
        "willEnterPiP",
        "getWillEnterPiP",
        "()Z",
        "setWillEnterPiP",
        "(Z)V",
        "wasAutoPaused",
        "getWasAutoPaused",
        "setWasAutoPaused",
        "value",
        "isInFullscreen",
        "showsSubtitlesButton",
        "getShowsSubtitlesButton",
        "showsAudioTracksButton",
        "getShowsAudioTracksButton",
        "currentActivity",
        "Landroid/app/Activity;",
        "decorView",
        "Landroid/view/View;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "kotlin.jvm.PlatformType",
        "Landroid/view/ViewGroup;",
        "touchEventCoalescingKeyHelper",
        "Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;",
        "rootViewChildrenOriginalVisibility",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "pictureInPictureHelperTag",
        "reactNativeEventDispatcher",
        "Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "shouldHideSurfaceView",
        "getShouldHideSurfaceView",
        "setShouldHideSurfaceView",
        "useExoShutter",
        "getUseExoShutter",
        "()Ljava/lang/Boolean;",
        "setUseExoShutter",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "<set-?>",
        "autoEnterPiP",
        "getAutoEnterPiP",
        "setAutoEnterPiP",
        "autoEnterPiP$delegate",
        "Lexpo/modules/video/delegates/IgnoreSameSet;",
        "Lexpo/modules/video/enums/ContentFit;",
        "contentFit",
        "getContentFit",
        "()Lexpo/modules/video/enums/ContentFit;",
        "setContentFit",
        "(Lexpo/modules/video/enums/ContentFit;)V",
        "newPlayer",
        "Lexpo/modules/video/player/VideoPlayer;",
        "videoPlayer",
        "getVideoPlayer",
        "()Lexpo/modules/video/player/VideoPlayer;",
        "setVideoPlayer",
        "(Lexpo/modules/video/player/VideoPlayer;)V",
        "useNativeControls",
        "getUseNativeControls",
        "setUseNativeControls",
        "allowsFullscreen",
        "getAllowsFullscreen",
        "setAllowsFullscreen",
        "mLayoutRunnable",
        "Ljava/lang/Runnable;",
        "applySurfaceViewVisibility",
        "enterFullscreen",
        "attachPlayer",
        "exitFullscreen",
        "enterPictureInPicture",
        "calculateCurrentPipAspectRatio",
        "Landroid/util/Rational;",
        "layoutForPiPEnter",
        "layoutForPiPExit",
        "onVideoSourceLoaded",
        "player",
        "videoSource",
        "Lexpo/modules/video/records/VideoSource;",
        "duration",
        "",
        "availableVideoTracks",
        "",
        "Lexpo/modules/video/records/VideoTrack;",
        "availableSubtitleTracks",
        "Lexpo/modules/video/records/SubtitleTrack;",
        "availableAudioTracks",
        "Lexpo/modules/video/records/AudioTrack;",
        "(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "onTracksChanged",
        "tracks",
        "Landroidx/media3/common/Tracks;",
        "onRenderedFirstFrame",
        "requestLayout",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onInterceptTouchEvent",
        "getPlayerViewLayoutId",
        "Companion",
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

.field public static final Companion:Lexpo/modules/video/VideoView$Companion;


# instance fields
.field private allowsFullscreen:Z

.field private final autoEnterPiP$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

.field private contentFit:Lexpo/modules/video/enums/ContentFit;

.field private final currentActivity:Landroid/app/Activity;

.field private final decorView:Landroid/view/View;

.field private isInFullscreen:Z

.field private final mLayoutRunnable:Ljava/lang/Runnable;

.field private final onFirstFrameRender$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onFullscreenEnter$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onFullscreenExit$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onPictureInPictureStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private final onPictureInPictureStop$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

.field private pictureInPictureHelperTag:Ljava/lang/String;

.field private final playerView:Landroidx/media3/ui/PlayerView;

.field private reactNativeEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private final rootView:Landroid/view/ViewGroup;

.field private final rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shouldHideSurfaceView:Z

.field private showsAudioTracksButton:Z

.field private showsSubtitlesButton:Z

.field private final touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

.field private useExoShutter:Ljava/lang/Boolean;

.field private useNativeControls:Z

.field private videoPlayer:Lexpo/modules/video/player/VideoPlayer;

.field private final videoViewId:Ljava/lang/String;

.field private wasAutoPaused:Z

.field private willEnterPiP:Z


# direct methods
.method public static synthetic $r8$lambda$cf7YjCRbGNLY5hqrokvmBjfVokM(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/VideoView;->_set_allowsFullscreen_$lambda$3(Lexpo/modules/video/VideoView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fyRLuy77KYKRSFwXyIciSye-mg8(Lexpo/modules/video/VideoView;ZZ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/video/VideoView;->autoEnterPiP_delegate$lambda$0(Lexpo/modules/video/VideoView;ZZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vqugp-i0l_zHlNQu8Ja2aZ08vfg(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/VideoView;->_init_$lambda$5(Lexpo/modules/video/VideoView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vwzIb0tA8TSNk-ucAOf7ey4LF40(Lexpo/modules/video/VideoView;)V
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/VideoView;->mLayoutRunnable$lambda$4(Lexpo/modules/video/VideoView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 49
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onPictureInPictureStart"

    const-string v3, "getOnPictureInPictureStart()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    const-class v4, Lexpo/modules/video/VideoView;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 50
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onPictureInPictureStop"

    const-string v3, "getOnPictureInPictureStop()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onFullscreenEnter"

    const-string v3, "getOnFullscreenEnter()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onFullscreenExit"

    const-string v3, "getOnFullscreenExit()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 53
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onFirstFrameRender"

    const-string v3, "getOnFirstFrameRender()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 90
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "autoEnterPiP"

    const-string v3, "getAutoEnterPiP()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lexpo/modules/video/VideoView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/VideoView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/VideoView;->Companion:Lexpo/modules/video/VideoView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Z)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/views/ExpoView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)V

    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/video/VideoView;->videoViewId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0, p3}, Lexpo/modules/video/VideoView;->getPlayerViewLayoutId(Z)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type androidx.media3.ui.PlayerView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/media3/ui/PlayerView;

    iput-object p1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    .line 49
    move-object p3, p0

    check-cast p3, Landroid/view/View;

    .line 371
    new-instance v1, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v1, p3, v0}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 49
    iput-object v1, p0, Lexpo/modules/video/VideoView;->onPictureInPictureStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 374
    new-instance v1, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v1, p3, v0}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 50
    iput-object v1, p0, Lexpo/modules/video/VideoView;->onPictureInPictureStop$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 377
    new-instance v1, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v1, p3, v0}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 51
    iput-object v1, p0, Lexpo/modules/video/VideoView;->onFullscreenEnter$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 380
    new-instance v1, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v1, p3, v0}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 52
    iput-object v1, p0, Lexpo/modules/video/VideoView;->onFullscreenExit$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 383
    new-instance v1, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v1, p3, v0}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 53
    iput-object v1, p0, Lexpo/modules/video/VideoView;->onFirstFrameRender$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 67
    invoke-virtual {p2}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object p3

    iput-object p3, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    .line 68
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    const-string v0, "getDecorView(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lexpo/modules/video/VideoView;->decorView:Landroid/view/View;

    const v0, 0x1020002

    .line 69
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    .line 70
    new-instance p3, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-direct {p3}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;-><init>()V

    iput-object p3, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    .line 72
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lexpo/modules/video/VideoView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    const/4 p3, 0x1

    .line 77
    iput-boolean p3, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    .line 90
    new-instance v6, Lexpo/modules/video/delegates/IgnoreSameSet;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/video/VideoView;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lexpo/modules/video/delegates/IgnoreSameSet;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Lexpo/modules/video/VideoView;->autoEnterPiP$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    .line 94
    sget-object v0, Lexpo/modules/video/enums/ContentFit;->CONTAIN:Lexpo/modules/video/enums/ContentFit;

    iput-object v0, p0, Lexpo/modules/video/VideoView;->contentFit:Lexpo/modules/video/enums/ContentFit;

    .line 115
    iput-boolean p3, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    .line 122
    iput-boolean p3, p0, Lexpo/modules/video/VideoView;->allowsFullscreen:Z

    .line 135
    new-instance p3, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda2;-><init>(Lexpo/modules/video/VideoView;)V

    iput-object p3, p0, Lexpo/modules/video/VideoView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 144
    sget-object p3, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    invoke-virtual {p3, p0}, Lexpo/modules/video/VideoManager;->registerVideoView(Lexpo/modules/video/VideoView;)V

    .line 145
    new-instance p3, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/video/VideoView;)V

    invoke-virtual {p1, p3}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    .line 148
    invoke-virtual {p1, v7}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 151
    invoke-virtual {p1, v7}, Landroidx/media3/ui/PlayerView;->setShutterBackgroundColor(I)V

    .line 152
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 154
    :cond_0
    check-cast p1, Landroid/view/View;

    .line 155
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 153
    invoke-virtual {p0, p1, p3}, Lexpo/modules/video/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {p2}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcher(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/VideoView;->reactNativeEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/video/VideoView;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Z)V

    return-void
.end method

.method private static final _init_$lambda$5(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->enterFullscreen()V

    return-void
.end method

.method private static final _set_allowsFullscreen_$lambda$3(Lexpo/modules/video/VideoView;Z)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->enterFullscreen()V

    return-void
.end method

.method private static final autoEnterPiP_delegate$lambda$0(Lexpo/modules/video/VideoView;ZZ)Lkotlin/Unit;
    .locals 0

    .line 91
    iget-object p2, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lexpo/modules/video/VideoView;->calculateCurrentPipAspectRatio()Landroid/util/Rational;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    .line 92
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final calculateCurrentPipAspectRatio()Landroid/util/Rational;
    .locals 4

    .line 224
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    const-string v1, "getVideoSize(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lexpo/modules/video/VideoView;->contentFit:Lexpo/modules/video/enums/ContentFit;

    invoke-static {v0, v1, v2, v3}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculatePiPAspectRatio(Landroidx/media3/common/VideoSize;IILexpo/modules/video/enums/ContentFit;)Landroid/util/Rational;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getPlayerViewLayoutId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 354
    sget p1, Lexpo/modules/video/R$layout;->texture_player_view:I

    goto :goto_0

    .line 356
    :cond_0
    sget p1, Lexpo/modules/video/R$layout;->surface_player_view:I

    :goto_0
    return p1
.end method

.method private static final mLayoutRunnable$lambda$4(Lexpo/modules/video/VideoView;)V
    .locals 4

    .line 137
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 138
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 136
    invoke-virtual {p0, v0, v1}, Lexpo/modules/video/VideoView;->measure(II)V

    .line 140
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lexpo/modules/video/VideoView;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public final applySurfaceViewVisibility()V
    .locals 2

    .line 165
    iget-object v0, p0, Lexpo/modules/video/VideoView;->useExoShutter:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final attachPlayer()V
    .locals 2

    .line 191
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->changePlayerView(Landroidx/media3/ui/PlayerView;)V

    :cond_0
    return-void
.end method

.method public final enterFullscreen()V
    .locals 3

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lexpo/modules/video/FullscreenPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v1, "player_uuid"

    iget-object v2, p0, Lexpo/modules/video/VideoView;->videoViewId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 176
    iput-boolean v1, p0, Lexpo/modules/video/VideoView;->isInFullscreen:Z

    .line 177
    iget-object v1, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v2, v2}, Landroid/app/Activity;->overrideActivityTransition(III)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 186
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getOnFullscreenEnter()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lexpo/modules/video/VideoView;->calculateCurrentPipAspectRatio()Landroid/util/Rational;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    return-void
.end method

.method public final enterPictureInPicture()V
    .locals 3

    .line 205
    sget-object v0, Lexpo/modules/video/VideoView;->Companion:Lexpo/modules/video/VideoView$Companion;

    iget-object v1, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lexpo/modules/video/VideoView$Companion;->isPictureInPictureSupported(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 212
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getAutoEnterPiP()Z

    move-result v1

    invoke-direct {p0}, Lexpo/modules/video/VideoView;->calculateCurrentPipAspectRatio()Landroid/util/Rational;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lexpo/modules/video/VideoView;->willEnterPiP:Z

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v0, Lexpo/modules/video/PictureInPictureEnterException;

    const-string v1, "No player attached to the VideoView"

    invoke-direct {v0, v1}, Lexpo/modules/video/PictureInPictureEnterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_2
    new-instance v0, Lexpo/modules/video/PictureInPictureUnsupportedException;

    invoke-direct {v0}, Lexpo/modules/video/PictureInPictureUnsupportedException;-><init>()V

    throw v0
.end method

.method public final exitFullscreen()V
    .locals 3

    .line 196
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    sget v1, Landroidx/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    .line 197
    sget v1, Landroidx/media3/ui/R$drawable;->exo_icon_fullscreen_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 198
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->attachPlayer()V

    .line 199
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getOnFullscreenExit()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lexpo/modules/video/VideoView;->isInFullscreen:Z

    .line 201
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getAutoEnterPiP()Z

    move-result v1

    invoke-direct {p0}, Lexpo/modules/video/VideoView;->calculateCurrentPipAspectRatio()Landroid/util/Rational;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    return-void
.end method

.method public final getAllowsFullscreen()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->allowsFullscreen:Z

    return v0
.end method

.method public final getAutoEnterPiP()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lexpo/modules/video/VideoView;->autoEnterPiP$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lexpo/modules/video/delegates/IgnoreSameSet;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getContentFit()Lexpo/modules/video/enums/ContentFit;
    .locals 1

    .line 94
    iget-object v0, p0, Lexpo/modules/video/VideoView;->contentFit:Lexpo/modules/video/enums/ContentFit;

    return-object v0
.end method

.method public final getOnFirstFrameRender()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onFirstFrameRender$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnFullscreenEnter()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onFullscreenEnter$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnFullscreenExit()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onFullscreenExit$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnPictureInPictureStart()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onPictureInPictureStart$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getOnPictureInPictureStop()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lexpo/modules/video/VideoView;->onPictureInPictureStop$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayerView()Landroidx/media3/ui/PlayerView;
    .locals 1

    .line 48
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    return-object v0
.end method

.method public final getShouldHideSurfaceView()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    return v0
.end method

.method public final getShowsAudioTracksButton()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->showsAudioTracksButton:Z

    return v0
.end method

.method public final getShowsSubtitlesButton()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->showsSubtitlesButton:Z

    return v0
.end method

.method public final getUseExoShutter()Ljava/lang/Boolean;
    .locals 1

    .line 79
    iget-object v0, p0, Lexpo/modules/video/VideoView;->useExoShutter:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUseNativeControls()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    return v0
.end method

.method public final getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;
    .locals 1

    .line 100
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    return-object v0
.end method

.method public final getVideoViewId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoViewId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWasAutoPaused()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->wasAutoPaused:Z

    return v0
.end method

.method public final getWillEnterPiP()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->willEnterPiP:Z

    return v0
.end method

.method public final isInFullscreen()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->isInFullscreen:Z

    return v0
.end method

.method public final layoutForPiPEnter()V
    .locals 4

    .line 233
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 234
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 235
    :cond_1
    iget-object v0, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 236
    iget-object v2, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    iget-object v2, p0, Lexpo/modules/video/VideoView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    iget-object v3, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v2, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_3
    iget-object v0, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final layoutForPiPExit()V
    .locals 4

    .line 245
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    iget-boolean v1, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 246
    iget-object v0, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    iget-object v2, p0, Lexpo/modules/video/VideoView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lexpo/modules/video/VideoView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->rootViewChildrenOriginalVisibility:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lexpo/modules/video/VideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 301
    invoke-super {p0}, Lexpo/modules/kotlin/views/ExpoView;->onAttachedToWindow()V

    .line 302
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 303
    new-instance v1, Lexpo/modules/video/PictureInPictureHelperFragment;

    invoke-direct {v1, p0}, Lexpo/modules/video/PictureInPictureHelperFragment;-><init>(Lexpo/modules/video/VideoView;)V

    .line 304
    invoke-virtual {v1}, Lexpo/modules/video/PictureInPictureHelperFragment;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lexpo/modules/video/VideoView;->pictureInPictureHelperTag:Ljava/lang/String;

    .line 305
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 306
    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Lexpo/modules/video/PictureInPictureHelperFragment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 309
    :cond_1
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getAutoEnterPiP()Z

    move-result v1

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3, v2}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams$default(Landroid/app/Activity;ZLandroid/util/Rational;ILjava/lang/Object;)V

    return-void
.end method

.method public onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 313
    invoke-super {p0}, Lexpo/modules/kotlin/views/ExpoView;->onDetachedFromWindow()V

    .line 314
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lexpo/modules/video/VideoView;->pictureInPictureHelperTag:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 317
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 321
    :cond_3
    iget-object v0, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3, v2}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams$default(Landroid/app/Activity;ZLandroid/util/Rational;ILjava/lang/Object;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 342
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 344
    iget-object v2, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->addCoalescingKey(J)V

    .line 345
    iget-object v0, p0, Lexpo/modules/video/VideoView;->reactNativeEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v2, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-static {v0, v1, p1, v2}, Lexpo/modules/video/utils/EventDispatcherUtilsKt;->dispatchMotionEvent(Lcom/facebook/react/uimanager/events/EventDispatcher;Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onIsPlayingChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onIsPlayingChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 293
    invoke-super/range {p0 .. p5}, Lexpo/modules/kotlin/views/ExpoView;->onLayout(ZIIII)V

    .line 296
    iget-object p1, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    iget-object p2, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lexpo/modules/video/player/VideoPlayer;->getRequiresLinearPlayback()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-static {p1, p2}, Lexpo/modules/video/PlayerViewExtensionKt;->setTimeBarInteractive(Landroidx/media3/ui/PlayerView;Z)V

    .line 297
    iget-object p1, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    iget-object p2, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-static {p2}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculateRectHint(Landroidx/media3/ui/PlayerView;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyRectHint(Landroid/app/Activity;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onMutedChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onMutedChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    return-void
.end method

.method public onPlayedToEnd(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onPlayedToEnd(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public onRenderedFirstFrame(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    .line 279
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->applySurfaceViewVisibility()V

    .line 280
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getOnFirstFrameRender()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public onSourceChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onSourceChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V

    return-void
.end method

.method public onStatusChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onStatusChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    return-void
.end method

.method public onTimeUpdate(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTimeUpdate(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 328
    iget-boolean v0, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 330
    iget-object v2, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;->addCoalescingKey(J)V

    .line 331
    iget-object v0, p0, Lexpo/modules/video/VideoView;->reactNativeEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lexpo/modules/video/VideoView;->touchEventCoalescingKeyHelper:Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;

    invoke-static {v0, v1, p1, v2}, Lexpo/modules/video/utils/EventDispatcherUtilsKt;->dispatchMotionEvent(Lcom/facebook/react/uimanager/events/EventDispatcher;Landroid/view/View;Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/TouchEventCoalescingKeyHelper;)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->performClick()Z

    :cond_1
    return v0
.end method

.method public onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayerSubtitles;->getAvailableSubtitleTracks()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lexpo/modules/video/VideoView;->showsSubtitlesButton:Z

    .line 272
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getAvailableAudioTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lexpo/modules/video/VideoView;->showsAudioTracksButton:Z

    .line 273
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    iget-boolean v1, p0, Lexpo/modules/video/VideoView;->showsSubtitlesButton:Z

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setShowSubtitleButton(Z)V

    .line 274
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTracksChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/player/VideoPlayer;",
            "Lexpo/modules/video/records/VideoSource;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/SubtitleTrack;",
            ">;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableVideoTracks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableSubtitleTracks"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableAudioTracks"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/records/VideoTrack;

    if-eqz v0, :cond_0

    .line 263
    new-instance v1, Landroidx/media3/common/VideoSize;

    invoke-virtual {v0}, Lexpo/modules/video/records/VideoTrack;->getSize()Lexpo/modules/video/records/VideoSize;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/video/records/VideoSize;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lexpo/modules/video/records/VideoTrack;->getSize()Lexpo/modules/video/records/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/records/VideoSize;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroidx/media3/common/VideoSize;-><init>(II)V

    .line 264
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lexpo/modules/video/VideoView;->contentFit:Lexpo/modules/video/enums/ContentFit;

    invoke-static {v1, v0, v2, v3}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->calculatePiPAspectRatio(Landroidx/media3/common/VideoSize;IILexpo/modules/video/enums/ContentFit;)Landroid/util/Rational;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lexpo/modules/video/VideoView;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->getAutoEnterPiP()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lexpo/modules/video/utils/PictureInPictureUtilsKt;->applyPiPParams(Landroid/app/Activity;ZLandroid/util/Rational;)V

    .line 267
    :cond_0
    invoke-static/range {p0 .. p6}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V

    return-void
.end method

.method public onVolumeChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onVolumeChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 284
    invoke-super {p0}, Lexpo/modules/kotlin/views/ExpoView;->requestLayout()V

    .line 289
    iget-object v0, p0, Lexpo/modules/video/VideoView;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lexpo/modules/video/VideoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAllowsFullscreen(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    new-instance v1, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lexpo/modules/video/VideoView$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/VideoView;)V

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V

    .line 130
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lexpo/modules/video/PlayerViewExtensionKt;->setFullscreenButtonVisibility(Landroidx/media3/ui/PlayerView;Z)V

    .line 132
    :goto_0
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->allowsFullscreen:Z

    return-void
.end method

.method public final setAutoEnterPiP(Z)V
    .locals 3

    .line 90
    iget-object v0, p0, Lexpo/modules/video/VideoView;->autoEnterPiP$delegate:Lexpo/modules/video/delegates/IgnoreSameSet;

    sget-object v1, Lexpo/modules/video/VideoView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lexpo/modules/video/delegates/IgnoreSameSet;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setContentFit(Lexpo/modules/video/enums/ContentFit;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Lexpo/modules/video/enums/ContentFit;->toResizeMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 97
    iput-object p1, p0, Lexpo/modules/video/VideoView;->contentFit:Lexpo/modules/video/enums/ContentFit;

    return-void
.end method

.method public final setShouldHideSurfaceView(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    return-void
.end method

.method public final setUseExoShutter(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setShutterBackgroundColor(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setShutterBackgroundColor(I)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->applySurfaceViewVisibility()V

    .line 87
    iput-object p1, p0, Lexpo/modules/video/VideoView;->useExoShutter:Ljava/lang/Boolean;

    return-void
.end method

.method public final setUseNativeControls(Z)V
    .locals 1

    .line 117
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 118
    iget-object v0, p0, Lexpo/modules/video/VideoView;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerView;->setShowSubtitleButton(Z)V

    .line 119
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->useNativeControls:Z

    return-void
.end method

.method public final setVideoPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_0

    .line 103
    sget-object v1, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    invoke-virtual {v1, v0, p0}, Lexpo/modules/video/VideoManager;->onVideoPlayerDetachedFromView(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/VideoPlayerListener;

    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->removeListener(Lexpo/modules/video/player/VideoPlayerListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 106
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    invoke-virtual {p1, v0}, Lexpo/modules/video/player/VideoPlayer;->addListener(Lexpo/modules/video/player/VideoPlayerListener;)V

    .line 107
    :cond_2
    iput-object p1, p0, Lexpo/modules/video/VideoView;->videoPlayer:Lexpo/modules/video/player/VideoPlayer;

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lexpo/modules/video/VideoView;->shouldHideSurfaceView:Z

    .line 109
    invoke-virtual {p0}, Lexpo/modules/video/VideoView;->attachPlayer()V

    if-eqz p1, :cond_3

    .line 111
    sget-object v0, Lexpo/modules/video/VideoManager;->INSTANCE:Lexpo/modules/video/VideoManager;

    invoke-virtual {v0, p1, p0}, Lexpo/modules/video/VideoManager;->onVideoPlayerAttachedToView(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/VideoView;)V

    :cond_3
    return-void
.end method

.method public final setWasAutoPaused(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->wasAutoPaused:Z

    return-void
.end method

.method public final setWillEnterPiP(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lexpo/modules/video/VideoView;->willEnterPiP:Z

    return-void
.end method
