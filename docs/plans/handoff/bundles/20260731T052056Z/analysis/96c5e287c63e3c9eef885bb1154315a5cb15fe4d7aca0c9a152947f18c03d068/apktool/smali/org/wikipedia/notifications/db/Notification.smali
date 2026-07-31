.class public final Lorg/wikipedia/notifications/db/Notification;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/notifications/db/Notification$Companion;


# instance fields
.field public agent:Lorg/wikipedia/notifications/db/Notification$Agent;

.field public category:Ljava/lang/String;

.field public contents:Lorg/wikipedia/notifications/db/Notification$Contents;

.field public id:J

.field public read:Ljava/lang/String;

.field public revid:J

.field public timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

.field public title:Lorg/wikipedia/notifications/db/Notification$Title;

.field public type:Ljava/lang/String;

.field public wiki:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/notifications/db/Notification$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/notifications/db/Notification;->Companion:Lorg/wikipedia/notifications/db/Notification$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/wikipedia/notifications/db/Notification$Title;Lorg/wikipedia/notifications/db/Notification$Agent;Lorg/wikipedia/notifications/db/Notification$Timestamp;Lorg/wikipedia/notifications/db/Notification$Contents;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 14
    .line 15
    iput-object p3, p0, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p4, p0, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p5, p0, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p6, p0, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 22
    .line 23
    iput-wide p7, p0, Lorg/wikipedia/notifications/db/Notification;->revid:J

    .line 24
    .line 25
    iput-object p9, p0, Lorg/wikipedia/notifications/db/Notification;->title:Lorg/wikipedia/notifications/db/Notification$Title;

    .line 26
    .line 27
    iput-object p10, p0, Lorg/wikipedia/notifications/db/Notification;->agent:Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 28
    .line 29
    iput-object p11, p0, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 30
    .line 31
    iput-object p12, p0, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final date()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/notifications/db/Notification$Timestamp;->utciso8601:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final isUnread()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
