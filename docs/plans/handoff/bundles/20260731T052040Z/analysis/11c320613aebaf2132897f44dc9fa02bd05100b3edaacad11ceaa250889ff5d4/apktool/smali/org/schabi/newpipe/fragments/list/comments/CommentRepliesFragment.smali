.class public final Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
        "Lorg/schabi/newpipe/extractor/feed/FeedInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENT_REPLIES:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 21
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getCommentsInfoItem()Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getItemViewMode()Lorg/schabi/newpipe/info_list/ItemViewMode;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/info_list/ItemViewMode;->LIST:Lorg/schabi/newpipe/info_list/ItemViewMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final loadMoreItemsLogic()Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda5;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-direct {v2, v0, v1, p0, v3}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;I)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-direct {p0, v2, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 1
    new-instance p1, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    return-object p0
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

.method public final onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final readFrom(Ljava/util/Queue;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->readFrom(Ljava/util/Queue;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 11
    .line 12
    return-void
.end method

.method public final writeTo(Ljava/util/LinkedList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->writeTo(Ljava/util/LinkedList;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
