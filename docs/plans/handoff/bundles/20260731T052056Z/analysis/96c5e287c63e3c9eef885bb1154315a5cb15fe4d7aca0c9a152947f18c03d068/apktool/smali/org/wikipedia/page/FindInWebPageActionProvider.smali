.class public final Lorg/wikipedia/page/FindInWebPageActionProvider;
.super Lorg/wikipedia/views/FindInPageActionProvider;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;


# instance fields
.field public final articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

.field public final fragment:Lorg/wikipedia/page/PageFragment;

.field public searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/wikipedia/views/FindInPageActionProvider;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 11
    .line 12
    iput-object p0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->enableLastOccurrenceSearchFlag:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onFindNextClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindNext:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    iput v1, v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindNext:I

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->findNext(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onFindNextLongClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindPrev:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindPrev:I

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearMatches()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->searchQuery:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onFindPrevClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindPrev:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindPrev:I

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->findNext(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onFindPrevLongClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindNext:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->numFindNext:I

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearMatches()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->searchQuery:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onSearchTextChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object v0, p1

    .line 7
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->articleFindInPageInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;

    .line 8
    .line 9
    iput-object v0, v1, Lorg/wikipedia/analytics/eventplatform/ArticleFindInPageInteractionEvent;->findText:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->searchQuery:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lorg/wikipedia/page/FindInWebPageActionProvider$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lorg/wikipedia/page/FindInWebPageActionProvider$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/FindInWebPageActionProvider;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lorg/wikipedia/page/FindInWebPageActionProvider;->searchQuery:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
