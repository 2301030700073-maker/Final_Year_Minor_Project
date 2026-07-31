.class public Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public emptyStateDesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 8

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->emptyStateDesc:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->isCommentsDisabled()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const p1, 0x7f1300b0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const p1, 0x7f130364

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/16 v7, 0x8

    .line 33
    .line 34
    const-wide/16 v2, 0x78

    .line 35
    .line 36
    const-wide/16 v4, 0x96

    .line 37
    .line 38
    invoke-static/range {v1 .. v7}, Lnet/newpipe/app/AppKt;->slideUp$default(Landroid/view/View;JJLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 42
    .line 43
    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p2, 0x7f0a0142

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->emptyStateDesc:Landroid/widget/TextView;

    .line 14
    .line 15
    return-void
.end method

.method public final loadMoreItemsLogic()Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 4
    .line 5
    check-cast v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 8
    .line 9
    invoke-static {v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-direct {v2, v0, v1, p0, v3}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;-><init>(ILjava/io/Serializable;Lorg/schabi/newpipe/extractor/Page;I)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    invoke-direct {p0, v2, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-direct {v1, v0, v2, p0}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda3;-><init>(IILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    invoke-direct {v3, v1, v4}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0, p0, v2, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkCache(ZILjava/lang/String;ILio/reactivex/rxjava3/internal/operators/single/SingleAmb;)Lio/reactivex/rxjava3/core/Single;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0059

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
