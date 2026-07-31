.class public final Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;
.implements Lio/reactivex/rxjava3/functions/Function;


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

.field public static final INSTANCE$1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

.field public static final INSTANCE$2:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->INSTANCE$1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 16
    .line 17
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->INSTANCE$2:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 24
    .line 25
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    sget p1, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 14
    .line 15
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {p1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :goto_0
    xor-int/lit8 p0, p0, 0x1

    .line 16
    .line 17
    return p0

    .line 18
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p0, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->ignoreUpstream:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
