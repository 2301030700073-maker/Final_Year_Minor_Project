.class public final Lorg/wikipedia/feed/news/NewsCard;
.super Lorg/wikipedia/feed/model/WikiSiteCard;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final age:I

.field public final news:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;ILorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lorg/wikipedia/feed/model/WikiSiteCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsCard;->news:Ljava/util/List;

    .line 11
    .line 12
    iput p2, p0, Lorg/wikipedia/feed/news/NewsCard;->age:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final dismissHashCode()I
    .locals 4

    .line 1
    const-string v0, "UTC"

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x5

    .line 12
    iget v2, p0, Lorg/wikipedia/feed/news/NewsCard;->age:I

    .line 13
    .line 14
    neg-int v2, v2

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/32 v2, 0x5265c00

    .line 27
    .line 28
    .line 29
    div-long/2addr v0, v2

    .line 30
    long-to-int v0, v0

    .line 31
    iget-object p0, p0, Lorg/wikipedia/feed/model/WikiSiteCard;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/WikiSite;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    add-int/2addr p0, v0

    .line 38
    const v0, 0x2482d3

    .line 39
    .line 40
    .line 41
    add-int/2addr p0, v0

    .line 42
    return p0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NEWS"

    .line 2
    .line 3
    return-object p0
.end method
