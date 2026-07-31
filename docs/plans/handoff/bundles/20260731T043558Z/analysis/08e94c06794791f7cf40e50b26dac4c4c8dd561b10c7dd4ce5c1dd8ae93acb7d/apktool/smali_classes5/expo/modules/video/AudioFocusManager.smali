.class public final Lexpo/modules/video/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.kt"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lexpo/modules/video/player/VideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/AudioFocusManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioFocusManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioFocusManager.kt\nexpo/modules/video/AudioFocusManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1755#2,3:243\n1611#2,9:247\n1863#2:256\n1864#2:258\n1620#2:259\n2669#2,7:260\n1#3:246\n1#3:257\n*S KotlinDebug\n*F\n+ 1 AudioFocusManager.kt\nexpo/modules/video/AudioFocusManager\n*L\n28#1:243,3\n230#1:247,9\n230#1:256\n230#1:258\n230#1:259\n237#1:260,7\n230#1:257\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u000e\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u0010J\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u0010J\"\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u00142\u0008\u0010!\u001a\u0004\u0018\u00010\u0014H\u0016J\'\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00162\u0008\u0010$\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0002\u0010%J\'\u0010&\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0002\u0010*J\'\u0010+\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u00162\u0008\u0010-\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0002\u0010%J\u0010\u0010.\u001a\u00020\u001a2\u0006\u0010/\u001a\u000200H\u0016J\u0016\u00101\u001a\u00020\u00162\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0016\u00103\u001a\u00020\u001a2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0016\u00104\u001a\u00020\u001a2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0016\u00105\u001a\u00020\u001a2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0008\u00106\u001a\u00020\u001aH\u0002J\u0008\u00107\u001a\u00020\u0014H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u00068"
    }
    d2 = {
        "Lexpo/modules/video/AudioFocusManager;",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
        "Lexpo/modules/video/player/VideoPlayerListener;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Lexpo/modules/kotlin/AppContext;)V",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "()Landroid/media/AudioManager;",
        "audioManager$delegate",
        "Lkotlin/Lazy;",
        "players",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/video/player/VideoPlayer;",
        "currentFocusRequest",
        "Landroid/media/AudioFocusRequest;",
        "currentMixingMode",
        "Lexpo/modules/video/enums/AudioMixingMode;",
        "anyPlayerRequiresFocus",
        "",
        "getAnyPlayerRequiresFocus",
        "()Z",
        "requestAudioFocus",
        "",
        "abandonAudioFocus",
        "registerPlayer",
        "player",
        "unregisterPlayer",
        "onAudioMixingModeChanged",
        "audioMixingMode",
        "oldAudioMixingMode",
        "onIsPlayingChanged",
        "isPlaying",
        "oldIsPlaying",
        "(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V",
        "onVolumeChanged",
        "volume",
        "",
        "oldVolume",
        "(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V",
        "onMutedChanged",
        "muted",
        "oldMuted",
        "onAudioFocusChange",
        "focusChange",
        "",
        "playerRequiresFocus",
        "weakPlayer",
        "pausePlayerIfUnmuted",
        "duckPlayer",
        "unduckPlayer",
        "updateAudioFocus",
        "findAudioMixingMode",
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
.field private final appContext:Lexpo/modules/kotlin/AppContext;

.field private final audioManager$delegate:Lkotlin/Lazy;

.field private currentFocusRequest:Landroid/media/AudioFocusRequest;

.field private currentMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

.field private players:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$55CttilMQVSByowah866Sv8663I(Lexpo/modules/video/AudioFocusManager;)Landroid/media/AudioManager;
    .locals 0

    invoke-static {p0}, Lexpo/modules/video/AudioFocusManager;->audioManager_delegate$lambda$1(Lexpo/modules/video/AudioFocusManager;)Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JY4ZgjDeFNgd-s30Gprv2A3orBs(Lexpo/modules/video/player/VideoPlayer;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/video/AudioFocusManager;->unregisterPlayer$lambda$9(Lexpo/modules/video/player/VideoPlayer;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    .line 18
    new-instance p1, Lexpo/modules/video/AudioFocusManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lexpo/modules/video/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/video/AudioFocusManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/video/AudioFocusManager;->audioManager$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/video/AudioFocusManager;->players:Ljava/util/List;

    .line 26
    sget-object p1, Lexpo/modules/video/enums/AudioMixingMode;->MIX_WITH_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

    iput-object p1, p0, Lexpo/modules/video/AudioFocusManager;->currentMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-void
.end method

.method private final abandonAudioFocus()V
    .locals 3

    .line 80
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->currentFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 82
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lexpo/modules/video/AudioFocusManager;->currentFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static final synthetic access$duckPlayer(Lexpo/modules/video/AudioFocusManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lexpo/modules/video/AudioFocusManager;->duckPlayer(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static final synthetic access$getPlayers$p(Lexpo/modules/video/AudioFocusManager;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lexpo/modules/video/AudioFocusManager;->players:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$pausePlayerIfUnmuted(Lexpo/modules/video/AudioFocusManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lexpo/modules/video/AudioFocusManager;->pausePlayerIfUnmuted(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static final synthetic access$setCurrentFocusRequest$p(Lexpo/modules/video/AudioFocusManager;Landroid/media/AudioFocusRequest;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lexpo/modules/video/AudioFocusManager;->currentFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static final synthetic access$unduckPlayer(Lexpo/modules/video/AudioFocusManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lexpo/modules/video/AudioFocusManager;->unduckPlayer(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private static final audioManager_delegate$lambda$1(Lexpo/modules/video/AudioFocusManager;)Landroid/media/AudioManager;
    .locals 2

    .line 19
    iget-object p0, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {p0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/media/AudioManager;

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 20
    :cond_2
    new-instance p0, Lexpo/modules/video/FailedToGetAudioFocusManagerException;

    invoke-direct {p0}, Lexpo/modules/video/FailedToGetAudioFocusManagerException;-><init>()V

    throw p0
.end method

.method private final duckPlayer(Ljava/lang/ref/WeakReference;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/player/VideoPlayer;

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/video/AudioFocusManager$duckPlayer$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lexpo/modules/video/AudioFocusManager$duckPlayer$1$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final findAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;
    .locals 6

    .line 228
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->players:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 230
    check-cast v0, Ljava/lang/Iterable;

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 255
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 231
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/player/VideoPlayer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lexpo/modules/video/player/VideoPlayer;->getPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lexpo/modules/video/player/VideoPlayer;->getAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_0

    .line 255
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 233
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    sget-object v0, Lexpo/modules/video/enums/AudioMixingMode;->MIX_WITH_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

    return-object v0

    .line 237
    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    .line 260
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 263
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/video/enums/AudioMixingMode;

    check-cast v1, Lexpo/modules/video/enums/AudioMixingMode;

    .line 238
    invoke-virtual {v2}, Lexpo/modules/video/enums/AudioMixingMode;->getPriority()I

    move-result v4

    invoke-virtual {v1}, Lexpo/modules/video/enums/AudioMixingMode;->getPriority()I

    move-result v5

    if-le v4, v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_2

    .line 266
    :cond_7
    check-cast v1, Lexpo/modules/video/enums/AudioMixingMode;

    return-object v1

    .line 261
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getAnyPlayerRequiresFocus()Z
    .locals 3

    .line 28
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->players:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 243
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 244
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

    .line 29
    invoke-direct {p0, v1}, Lexpo/modules/video/AudioFocusManager;->playerRequiresFocus(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private final getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->audioManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private final pausePlayerIfUnmuted(Ljava/lang/ref/WeakReference;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/player/VideoPlayer;

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getMuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/video/AudioFocusManager$pausePlayerIfUnmuted$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lexpo/modules/video/AudioFocusManager$pausePlayerIfUnmuted$1$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final playerRequiresFocus(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/player/VideoPlayer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getMuted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getVolume()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object p1

    sget-object v1, Lexpo/modules/video/enums/AudioMixingMode;->DO_NOT_MIX:Lexpo/modules/video/enums/AudioMixingMode;

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method private final requestAudioFocus()V
    .locals 6

    .line 33
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->findAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object v0

    .line 36
    sget-object v1, Lexpo/modules/video/enums/AudioMixingMode;->MIX_WITH_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->getAnyPlayerRequiresFocus()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 41
    :cond_0
    sget-object v1, Lexpo/modules/video/AudioFocusManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/video/enums/AudioMixingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 48
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_3

    .line 50
    iget-object v4, p0, Lexpo/modules/video/AudioFocusManager;->currentFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v4}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v4

    if-ne v4, v1, :cond_2

    return-void

    .line 56
    :cond_2
    new-instance v4, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v4, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 58
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 59
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 60
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 61
    move-object v2, p0

    check-cast v2, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v4, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 57
    invoke-virtual {v4, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 66
    iput-object v1, p0, Lexpo/modules/video/AudioFocusManager;->currentFocusRequest:Landroid/media/AudioFocusRequest;

    .line 67
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_1

    .line 70
    :cond_3
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    .line 71
    move-object v4, p0

    check-cast v4, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 70
    invoke-virtual {v3, v4, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 76
    :goto_1
    iput-object v0, p0, Lexpo/modules/video/AudioFocusManager;->currentMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-void

    .line 37
    :cond_4
    :goto_2
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->abandonAudioFocus()V

    .line 38
    iput-object v0, p0, Lexpo/modules/video/AudioFocusManager;->currentMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    return-void
.end method

.method private final unduckPlayer(Ljava/lang/ref/WeakReference;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;)V"
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/player/VideoPlayer;

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getMuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lexpo/modules/video/AudioFocusManager$unduckPlayer$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lexpo/modules/video/AudioFocusManager$unduckPlayer$1$1;-><init>(Lexpo/modules/video/player/VideoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private static final unregisterPlayer$lambda$9(Lexpo/modules/video/player/VideoPlayer;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final updateAudioFocus()V
    .locals 2

    .line 220
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->getAnyPlayerRequiresFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->findAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/video/AudioFocusManager;->currentMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->abandonAudioFocus()V

    goto :goto_1

    .line 221
    :cond_1
    :goto_0
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->requestAudioFocus()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 8

    const/4 v0, -0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance p1, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$4;

    invoke-direct {p1, p0, v1}, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$4;-><init>(Lexpo/modules/video/AudioFocusManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance p1, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$1;

    invoke-direct {p1, p0, v1}, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$1;-><init>(Lexpo/modules/video/AudioFocusManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->findAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object p1

    .line 147
    sget-object v0, Lexpo/modules/video/enums/AudioMixingMode;->MIX_WITH_OTHERS:Lexpo/modules/video/enums/AudioMixingMode;

    if-ne p1, v0, :cond_3

    return-void

    .line 150
    :cond_3
    iget-object p1, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {p1}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance p1, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$2;

    invoke-direct {p1, p0, v1}, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$2;-><init>(Lexpo/modules/video/AudioFocusManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 159
    :cond_4
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->findAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getMainQueue()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;

    invoke-direct {v0, p0, p1, v1}, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;-><init>(Lexpo/modules/video/AudioFocusManager;Lexpo/modules/video/enums/AudioMixingMode;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

.method public onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioMixingMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->requestAudioFocus()V

    .line 109
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V

    return-void
.end method

.method public onIsPlayingChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
    .locals 0

    const-string p3, "player"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 115
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->getAnyPlayerRequiresFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->abandonAudioFocus()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 117
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->getAnyPlayerRequiresFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->requestAudioFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMutedChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
    .locals 0

    const-string p2, "player"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->updateAudioFocus()V

    return-void
.end method

.method public onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    return-void
.end method

.method public onPlayedToEnd(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onPlayedToEnd(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public onRenderedFirstFrame(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onRenderedFirstFrame(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public onSourceChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onSourceChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V

    return-void
.end method

.method public onStatusChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onStatusChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    return-void
.end method

.method public onTimeUpdate(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTimeUpdate(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTracksChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    .line 16
    invoke-static/range {p0 .. p6}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V

    return-void
.end method

.method public onVolumeChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
    .locals 0

    const-string p2, "player"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->updateAudioFocus()V

    return-void
.end method

.method public final registerPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->players:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    move-object v0, p0

    check-cast v0, Lexpo/modules/video/AudioFocusManager;

    .line 93
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->players:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    :cond_2
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    invoke-virtual {p1, v0}, Lexpo/modules/video/player/VideoPlayer;->addListener(Lexpo/modules/video/player/VideoPlayerListener;)V

    .line 96
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->updateAudioFocus()V

    return-void
.end method

.method public final unregisterPlayer(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    invoke-virtual {p1, v0}, Lexpo/modules/video/player/VideoPlayer;->removeListener(Lexpo/modules/video/player/VideoPlayerListener;)V

    .line 101
    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager;->players:Ljava/util/List;

    new-instance v1, Lexpo/modules/video/AudioFocusManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lexpo/modules/video/AudioFocusManager$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/video/player/VideoPlayer;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 102
    invoke-direct {p0}, Lexpo/modules/video/AudioFocusManager;->updateAudioFocus()V

    return-void
.end method
