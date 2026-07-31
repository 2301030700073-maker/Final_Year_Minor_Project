.class public abstract Lorg/schabi/newpipe/extractor/ListInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final contentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextPage:Lorg/schabi/newpipe/extractor/Page;

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sortFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 37
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    move-object v0, p0

    .line 14
    move v1, p1

    .line 15
    move-object v5, p3

    .line 16
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 21
    .line 22
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getSortFilter()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getNextPage()Lorg/schabi/newpipe/extractor/Page;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRelatedItems()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->relatedItems:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasNextPage()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final setNextPage(Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 2
    .line 3
    return-void
.end method

.method public final setRelatedItems(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->relatedItems:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
