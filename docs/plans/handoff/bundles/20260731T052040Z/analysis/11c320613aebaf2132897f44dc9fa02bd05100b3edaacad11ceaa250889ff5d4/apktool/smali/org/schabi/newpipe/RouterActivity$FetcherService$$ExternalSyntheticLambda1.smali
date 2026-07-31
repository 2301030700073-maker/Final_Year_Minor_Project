.class public final synthetic Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/ComponentCallbacks;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$0:Landroid/content/ComponentCallbacks;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$2:Ljava/io/Serializable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$2:Ljava/io/Serializable;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;->f$0:Landroid/content/ComponentCallbacks;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 13
    .line 14
    check-cast v2, Lorg/schabi/newpipe/download/LoadingDialog;

    .line 15
    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Throwable;

    .line 19
    .line 20
    new-instance p1, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    invoke-direct {p1, v2, v1, v0}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->runOnVisible(Ljava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;

    .line 31
    .line 32
    move-object v5, v2

    .line 33
    check-cast v5, Lorg/schabi/newpipe/error/UserAction;

    .line 34
    .line 35
    check-cast v1, Lorg/schabi/newpipe/RouterActivity$Choice;

    .line 36
    .line 37
    move-object v4, p1

    .line 38
    check-cast v4, Ljava/lang/Throwable;

    .line 39
    .line 40
    sget p1, Lorg/schabi/newpipe/RouterActivity$FetcherService;->$r8$clinit:I

    .line 41
    .line 42
    new-instance v3, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v0, v1, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " opened with "

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, v1, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget p1, v1, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v8, v1, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v3}, Lorg/schabi/newpipe/RouterActivity;->handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
