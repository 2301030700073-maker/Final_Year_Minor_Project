.class public final Lorg/schabi/newpipe/extractor/MetaInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Lorg/schabi/newpipe/extractor/stream/Description;

.field private title:Ljava/lang/String;

.field private urlTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addUrl(Ljava/net/URL;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addUrlText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getContent()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUrlTexts()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUrls()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
