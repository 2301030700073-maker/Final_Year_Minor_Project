.class public final Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;
.super Lio/reactivex/rxjava3/core/Single;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final onError:Lio/reactivex/rxjava3/functions/Consumer;

.field public final source:Lio/reactivex/rxjava3/core/Single;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Consumer;I)V
    .locals 0

    .line 1
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;->source:Lio/reactivex/rxjava3/core/Single;

    .line 4
    .line 5
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 3

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;->source:Lio/reactivex/rxjava3/core/Single;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;

    .line 9
    .line 10
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    .line 11
    .line 12
    invoke-direct {v0, p1, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    new-instance v0, Lcom/grack/nanojson/JsonBuilder;

    .line 20
    .line 21
    const/16 v2, 0x12

    .line 22
    .line 23
    invoke-direct {v0, p0, p1, v2}, Lcom/grack/nanojson/JsonBuilder;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/SingleObserver;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
