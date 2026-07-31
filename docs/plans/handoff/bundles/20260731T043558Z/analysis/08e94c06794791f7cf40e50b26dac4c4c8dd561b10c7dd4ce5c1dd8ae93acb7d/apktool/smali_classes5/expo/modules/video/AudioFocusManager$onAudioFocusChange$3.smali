.class final Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AudioFocusManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/AudioFocusManager;->onAudioFocusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioFocusManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioFocusManager.kt\nexpo/modules/video/AudioFocusManager$onAudioFocusChange$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n1863#2,2:243\n*S KotlinDebug\n*F\n+ 1 AudioFocusManager.kt\nexpo/modules/video/AudioFocusManager$onAudioFocusChange$3\n*L\n162#1:243,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.video.AudioFocusManager$onAudioFocusChange$3"
    f = "AudioFocusManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

.field label:I

.field final synthetic this$0:Lexpo/modules/video/AudioFocusManager;


# direct methods
.method constructor <init>(Lexpo/modules/video/AudioFocusManager;Lexpo/modules/video/enums/AudioMixingMode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/AudioFocusManager;",
            "Lexpo/modules/video/enums/AudioMixingMode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->this$0:Lexpo/modules/video/AudioFocusManager;

    iput-object p2, p0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->$audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;

    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->this$0:Lexpo/modules/video/AudioFocusManager;

    iget-object v1, p0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->$audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    invoke-direct {p1, v0, v1, p2}, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;-><init>(Lexpo/modules/video/AudioFocusManager;Lexpo/modules/video/enums/AudioMixingMode;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 161
    iget v0, p0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->this$0:Lexpo/modules/video/AudioFocusManager;

    invoke-static {p1}, Lexpo/modules/video/AudioFocusManager;->access$getPlayers$p(Lexpo/modules/video/AudioFocusManager;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->$audioMixingMode:Lexpo/modules/video/enums/AudioMixingMode;

    iget-object v1, p0, Lexpo/modules/video/AudioFocusManager$onAudioFocusChange$3;->this$0:Lexpo/modules/video/AudioFocusManager;

    .line 243
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 163
    sget-object v3, Lexpo/modules/video/enums/AudioMixingMode;->DO_NOT_MIX:Lexpo/modules/video/enums/AudioMixingMode;

    if-ne v0, v3, :cond_0

    .line 164
    invoke-static {v1, v2}, Lexpo/modules/video/AudioFocusManager;->access$pausePlayerIfUnmuted(Lexpo/modules/video/AudioFocusManager;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {v1, v2}, Lexpo/modules/video/AudioFocusManager;->access$duckPlayer(Lexpo/modules/video/AudioFocusManager;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 169
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 161
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
