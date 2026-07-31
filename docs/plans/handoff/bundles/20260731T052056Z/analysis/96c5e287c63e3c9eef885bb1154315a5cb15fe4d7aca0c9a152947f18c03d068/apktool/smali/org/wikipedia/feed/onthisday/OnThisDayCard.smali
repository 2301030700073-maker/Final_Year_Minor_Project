.class public final Lorg/wikipedia/feed/onthisday/OnThisDayCard;
.super Lorg/wikipedia/feed/model/WikiSiteCard;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final age:I

.field public final date:Ljava/util/Calendar;

.field public final events:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;ILorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3}, Lorg/wikipedia/feed/model/WikiSiteCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->events:Ljava/util/List;

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->age:I

    .line 10
    .line 11
    sget-object p1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p3, 0x5

    .line 22
    neg-int p2, p2

    .line 23
    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->add(II)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->date:Ljava/util/Calendar;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final dismissHashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->date:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/32 v2, 0x5265c00

    .line 12
    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-int v0, v0

    .line 16
    iget-object p0, p0, Lorg/wikipedia/feed/model/WikiSiteCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, v0

    .line 23
    const v0, -0x21b42f45

    .line 24
    .line 25
    .line 26
    add-int/2addr p0, v0

    .line 27
    return p0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ON_THIS_DAY"

    .line 2
    .line 3
    return-object p0
.end method
