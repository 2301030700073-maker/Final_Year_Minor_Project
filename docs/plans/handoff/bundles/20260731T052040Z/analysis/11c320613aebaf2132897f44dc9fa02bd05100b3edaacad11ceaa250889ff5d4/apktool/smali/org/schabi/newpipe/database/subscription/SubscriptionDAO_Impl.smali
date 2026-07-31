.class public final Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __deleteAdapterOfSubscriptionEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

.field public final __insertAdapterOfSubscriptionEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __insertAdapterOfSubscriptionEntity_1:Landroidx/work/impl/model/WorkTagDao_Impl$1;

.field public final __updateAdapterOfSubscriptionEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->Companion:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 7
    .line 8
    const/16 v0, 0x11

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__insertAdapterOfSubscriptionEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 16
    .line 17
    const/16 v0, 0x12

    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__insertAdapterOfSubscriptionEntity_1:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 23
    .line 24
    new-instance p1, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 25
    .line 26
    const/16 v0, 0x9

    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__deleteAdapterOfSubscriptionEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 32
    .line 33
    new-instance p1, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 34
    .line 35
    const/16 v0, 0xa

    .line 36
    .line 37
    invoke-direct {p1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__updateAdapterOfSubscriptionEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final getAll()Lio/reactivex/rxjava3/core/Flowable;
    .locals 3

    .line 1
    const-string/jumbo v0, "subscriptions"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p0, v2, v0, v1}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final update(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda2;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-static {p0, v1, p1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method
