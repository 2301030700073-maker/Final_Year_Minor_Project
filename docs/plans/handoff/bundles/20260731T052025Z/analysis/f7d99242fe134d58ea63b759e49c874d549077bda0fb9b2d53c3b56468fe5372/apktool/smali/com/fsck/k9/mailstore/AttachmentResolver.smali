.class public final Lcom/fsck/k9/mailstore/AttachmentResolver;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public contentIdToAttachmentUriMap:Ljava/util/Map;


# direct methods
.method public static createFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentResolver;
    .locals 5

    .line 1
    const-class v0, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/Stack;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 33
    .line 34
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    instance-of v4, v3, Lcom/fsck/k9/mail/Multipart;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    check-cast v3, Lcom/fsck/k9/mail/Multipart;

    .line 43
    .line 44
    iget-object p0, v3, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfo(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget-object p0, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 81
    .line 82
    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    const/4 v3, 0x0

    .line 88
    new-array v3, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    const-string v4, "Error extracting attachment info"

    .line 91
    .line 92
    invoke-static {p0, v4, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    new-instance v0, Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p0, v0, Lcom/fsck/k9/mailstore/AttachmentResolver;->contentIdToAttachmentUriMap:Ljava/util/Map;

    .line 106
    .line 107
    return-object v0
.end method
