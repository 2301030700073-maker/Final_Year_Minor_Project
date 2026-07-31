.class public final synthetic Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;I)V
    .locals 0

    .line 14
    iput p4, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Landroidx/appcompat/app/AppCompatActivity;Lio/reactivex/rxjava3/internal/operators/single/SingleCreate$Emitter;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    iget-object v3, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

    .line 14
    .line 15
    check-cast v3, Ljava/util/function/Consumer;

    .line 16
    .line 17
    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->inFlight(Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 27
    .line 28
    check-cast v3, Ljava/util/function/Consumer;

    .line 29
    .line 30
    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->inFlight(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 38
    .line 39
    check-cast v3, Lio/reactivex/rxjava3/internal/operators/single/SingleCreate$Emitter;

    .line 40
    .line 41
    const v0, 0x7f1303ff

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-static {v2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda18;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda18;-><init>(Landroid/widget/Toast;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Lio/reactivex/rxjava3/internal/disposables/CancellableDisposable;

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v3, p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
