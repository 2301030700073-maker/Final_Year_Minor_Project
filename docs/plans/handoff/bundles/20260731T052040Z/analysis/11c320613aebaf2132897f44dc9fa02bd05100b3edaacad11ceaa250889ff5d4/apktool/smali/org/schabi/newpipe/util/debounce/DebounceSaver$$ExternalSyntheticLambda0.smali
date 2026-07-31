.class public final synthetic Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;->f$0:Lokhttp3/internal/connection/RealConnectionPool;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;->f$0:Lokhttp3/internal/connection/RealConnectionPool;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Throwable;

    .line 9
    .line 10
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupTask:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/util/debounce/DebounceSavable;

    .line 13
    .line 14
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 15
    .line 16
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    .line 17
    .line 18
    const-string v2, "Debounced saver"

    .line 19
    .line 20
    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 30
    .line 31
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupTask:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/schabi/newpipe/util/debounce/DebounceSavable;

    .line 34
    .line 35
    invoke-interface {p0}, Lorg/schabi/newpipe/util/debounce/DebounceSavable;->saveImmediate()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
