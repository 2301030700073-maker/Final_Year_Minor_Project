.class public final synthetic Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/ComponentCallbacks;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->f$0:Landroid/content/ComponentCallbacks;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->f$0:Landroid/content/ComponentCallbacks;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Throwable;

    .line 15
    .line 16
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->runOnVisible(Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 27
    .line 28
    check-cast v1, Lorg/schabi/newpipe/download/LoadingDialog;

    .line 29
    .line 30
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 31
    .line 32
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 33
    .line 34
    const/4 v2, 0x7

    .line 35
    invoke-direct {v0, v1, p1, v2}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->runOnVisible(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;

    .line 43
    .line 44
    check-cast v1, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    check-cast p1, Lorg/schabi/newpipe/extractor/Info;

    .line 47
    .line 48
    sget v0, Lorg/schabi/newpipe/RouterActivity$FetcherService;->$r8$clinit:I

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;->fetcher:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 54
    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
