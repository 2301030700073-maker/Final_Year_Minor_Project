.class public final Lorg/wikipedia/feed/featured/FeaturedArticleCard;
.super Lorg/wikipedia/feed/model/WikiSiteCard;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final age:I

.field public final page:Lorg/wikipedia/dataclient/page/PageSummary;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/page/PageSummary;ILorg/wikipedia/dataclient/WikiSite;)V
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
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 11
    .line 12
    iput p2, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->age:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final dismissHashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCard;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final moduleKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "FEATURED_ARTICLE"

    .line 2
    .line 3
    return-object p0
.end method
