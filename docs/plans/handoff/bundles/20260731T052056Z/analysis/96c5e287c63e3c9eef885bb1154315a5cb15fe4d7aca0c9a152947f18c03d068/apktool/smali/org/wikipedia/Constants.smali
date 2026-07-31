.class public abstract Lorg/wikipedia/Constants;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final NON_LANGUAGE_SUBDOMAINS:Ljava/util/List;

.field public static final commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field public static final wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, "meta"

    .line 2
    .line 3
    const-string v8, "abstract"

    .line 4
    .line 5
    const-string v0, "donate"

    .line 6
    .line 7
    const-string v1, "thankyou"

    .line 8
    .line 9
    const-string v2, "quote"

    .line 10
    .line 11
    const-string v3, "textbook"

    .line 12
    .line 13
    const-string v4, "sources"

    .line 14
    .line 15
    const-string v5, "species"

    .line 16
    .line 17
    const-string v6, "commons"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lorg/wikipedia/Constants;->NON_LANGUAGE_SUBDOMAINS:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 30
    .line 31
    const-string v1, "https://commons.wikimedia.org/"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 37
    .line 38
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 39
    .line 40
    const-string v1, "https://www.wikidata.org/"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 46
    .line 47
    return-void
.end method
