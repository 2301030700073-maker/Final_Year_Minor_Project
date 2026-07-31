.class public final Lorg/wikipedia/page/Page;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final displayTitle:Ljava/lang/String;

.field public final isArticle:Z

.field public final isMainPage:Z

.field public final pageProperties:Lorg/wikipedia/page/PageProperties;

.field public sections:Ljava/util/List;

.field public final title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageProperties;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 5
    .line 6
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 11
    .line 12
    iget-object p1, p2, Lorg/wikipedia/page/PageProperties;->displayTitle:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lorg/wikipedia/page/Page;->displayTitle:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean p1, p2, Lorg/wikipedia/page/PageProperties;->isMainPage:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lorg/wikipedia/page/Page;->isMainPage:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p2, Lorg/wikipedia/page/PageProperties;->namespace:Lorg/wikipedia/page/Namespace;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object p2, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 28
    .line 29
    if-ne p1, p2, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    iput-boolean p1, p0, Lorg/wikipedia/page/Page;->isArticle:Z

    .line 35
    .line 36
    return-void
.end method
