.class public final Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$Companion;


# instance fields
.field public final continueStr:Ljava/lang/String;

.field public final count:I

.field public final list:Ljava/util/List;

.field public final rawcount:I

.field public final seenTime:Lorg/wikipedia/notifications/db/Notification$SeenTime;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->Companion:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList$Companion;

    .line 7
    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2}, Lorg/wikipedia/dataclient/watch/Watch$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x5

    .line 21
    new-array v1, v1, [Lkotlin/Lazy;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v0, v1, v3

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    aput-object v0, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    aput-object v0, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    aput-object v0, v1, v2

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    aput-object v0, v1, v2

    .line 37
    .line 38
    sput-object v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->$childSerializers:[Lkotlin/Lazy;

    .line 39
    .line 40
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lorg/wikipedia/notifications/db/Notification$SeenTime;IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list:Ljava/util/List;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list:Ljava/util/List;

    .line 13
    .line 14
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->seenTime:Lorg/wikipedia/notifications/db/Notification$SeenTime;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->seenTime:Lorg/wikipedia/notifications/db/Notification$SeenTime;

    .line 22
    .line 23
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->count:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput p4, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->count:I

    .line 32
    .line 33
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 34
    .line 35
    if-nez p2, :cond_3

    .line 36
    .line 37
    iput p3, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->rawcount:I

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    iput p5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->rawcount:I

    .line 41
    .line 42
    :goto_3
    and-int/lit8 p1, p1, 0x10

    .line 43
    .line 44
    if-nez p1, :cond_4

    .line 45
    .line 46
    iput-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->continueStr:Ljava/lang/String;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->continueStr:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method
