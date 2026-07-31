.class public final Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private commentId:Ljava/lang/String;

.field private commentText:Lorg/schabi/newpipe/extractor/stream/Description;

.field private creatorReply:Z

.field private heartedByUploader:Z

.field private isChannelOwner:Z

.field private isEdited:Z

.field private likeCount:I

.field private pinned:Z

.field private replies:Lorg/schabi/newpipe/extractor/Page;

.field private replyCount:I

.field private streamPosition:I

.field private textualLikeCount:Ljava/lang/String;

.field private textualUploadDate:Ljava/lang/String;

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p2, p1, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 9
    .line 10
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLikeCount()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->likeCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getReplies()Lorg/schabi/newpipe/extractor/Page;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replies:Lorg/schabi/newpipe/extractor/Page;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReplyCount()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replyCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTextualUploadDate()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualUploadDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderAvatars()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isHeartedByUploader()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->heartedByUploader:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isPinned()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->pinned:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setChannelOwner(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isChannelOwner:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCommentText(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    return-void
.end method

.method public final setCreatorReply(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->creatorReply:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEdited(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isEdited:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHeartedByUploader(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->heartedByUploader:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLikeCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->likeCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPinned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->pinned:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setReplies(Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replies:Lorg/schabi/newpipe/extractor/Page;

    .line 2
    .line 3
    return-void
.end method

.method public final setReplyCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replyCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setStreamPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->streamPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTextualLikeCount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualLikeCount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualUploadDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderAvatars(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
