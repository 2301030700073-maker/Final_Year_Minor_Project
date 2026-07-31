.class public final Lcom/fsck/k9/backend/pop3/CommandSetFlag;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/backend/pop3/CommandSetFlag;->pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setFlag(Ljava/lang/String;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/backend/pop3/CommandSetFlag;->pop3Store:Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/pop3/Pop3Folder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 17
    .line 18
    if-ne p3, p1, :cond_3

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->open()V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgMap:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    new-instance v1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Message;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    :try_start_1
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p0, p1, p2, p4}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->setFlags(Ljava/util/ArrayList;Ljava/util/Set;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_3
    return-void
.end method
