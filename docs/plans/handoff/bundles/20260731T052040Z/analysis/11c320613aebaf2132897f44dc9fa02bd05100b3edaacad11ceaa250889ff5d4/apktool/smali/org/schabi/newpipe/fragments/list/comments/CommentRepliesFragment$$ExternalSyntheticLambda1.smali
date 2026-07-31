.class public final synthetic Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->commentsInfoItem:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getReplyCount()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sget-object v3, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    int-to-long v5, p0

    .line 20
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    const v3, 0x7f11000e

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    new-instance v3, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 37
    .line 38
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const-string v4, ""

    .line 42
    .line 43
    const-string v5, ""

    .line 44
    .line 45
    const-string v6, ""

    .line 46
    .line 47
    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v2, v3, p0}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getReplies()Lorg/schabi/newpipe/extractor/Page;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method
