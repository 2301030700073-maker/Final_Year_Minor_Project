.class public final Lorg/wikipedia/feed/news/NewsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final item:Lorg/wikipedia/feed/news/NewsItem;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "item"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/feed/news/NewsItem;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/wikipedia/feed/news/NewsViewModel;->item:Lorg/wikipedia/feed/news/NewsItem;

    .line 19
    .line 20
    const-string/jumbo v0, "wikiSite"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast p1, Lorg/wikipedia/dataclient/WikiSite;

    .line 31
    .line 32
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsViewModel;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 33
    .line 34
    return-void
.end method
