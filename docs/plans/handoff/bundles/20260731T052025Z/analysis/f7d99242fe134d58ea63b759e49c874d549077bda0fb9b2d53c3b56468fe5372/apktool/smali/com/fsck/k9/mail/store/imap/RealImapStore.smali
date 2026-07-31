.class public final Lcom/fsck/k9/mail/store/imap/RealImapStore;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public _combinedPrefix:Ljava/lang/String;

.field public final config:Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;

.field public volatile connectionGeneration:I

.field public final connections:Ljava/util/LinkedList;

.field public final folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public final host:Ljava/lang/String;

.field public final oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public pathDelimiter:Ljava/lang/String;

.field public pathPrefix:Ljava/lang/String;

.field public final permanentFlagsIndex:Ljava/util/LinkedHashSet;

.field public final serverSettings:Lcom/fsck/k9/mail/ServerSettings;

.field public final trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->config:Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 17
    .line 18
    new-instance p2, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 19
    .line 20
    const/16 p3, 0x9

    .line 21
    .line 22
    invoke-direct {p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 26
    .line 27
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->host:Ljava/lang/String;

    .line 33
    .line 34
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->permanentFlagsIndex:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    new-instance p2, Ljava/util/LinkedList;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connections:Ljava/util/LinkedList;

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    iput p2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connectionGeneration:I

    .line 50
    .line 51
    iget-object p2, p1, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 52
    .line 53
    const-string p4, "imap"

    .line 54
    .line 55
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-static {p1}, Landroidx/core/util/DebugUtils;->getAutoDetectNamespace(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-static {p1}, Landroidx/core/util/DebugUtils;->getPathPrefix(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move-object p3, p1

    .line 73
    :goto_0
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathPrefix:Ljava/lang/String;

    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    const-string p0, "Expected IMAP ServerSettings"

    .line 77
    .line 78
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p3

    .line 82
    :cond_2
    const-string p0, "Required value was null."

    .line 83
    .line 84
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p3
.end method

.method public static limitToSubscribedFolders(Lkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    move-object v2, p1

    .line 18
    check-cast v2, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 19
    .line 20
    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/fsck/k9/mail/store/imap/FolderListItem;->serverId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :cond_1
    :goto_1
    move-object v1, p0

    .line 52
    check-cast v1, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 53
    .line 54
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object v2, v1

    .line 65
    check-cast v2, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/fsck/k9/mail/store/imap/FolderListItem;->serverId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final checkSettings()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->createImapConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v1, "Error while checking server settings"

    .line 17
    .line 18
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final closeAllConnections()V
    .locals 3

    .line 1
    const-string v0, "ImapStore.closeAllConnections()"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connections:Ljava/util/LinkedList;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connections:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connectionGeneration:I

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    iput v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connectionGeneration:I

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connections:Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    .line 53
    throw p0
.end method

.method public final createImapConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;
    .locals 6

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 2
    .line 3
    new-instance v1, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->oauthTokenProvider:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 13
    .line 14
    iget v5, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connectionGeneration:I

    .line 15
    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;Lcom/fsck/k9/mailstore/LocalFolder$12;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final fetchImapPrefix()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getCombinedPrefix()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->createImapConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->open()V

    .line 13
    .line 14
    .line 15
    const-string v1, "NAMESPACE"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lorg/jsoup/parser/ParseError;->parse(Ljava/util/List;)Lorg/jsoup/parser/ParseError;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, v0, Lorg/jsoup/parser/ParseError;->cursorPos:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathPrefix:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final getCombinedPrefix()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->_combinedPrefix:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_11

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathPrefix:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_9

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    sub-int/2addr v2, v3

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    move v6, v5

    .line 21
    :goto_0
    const/16 v7, 0x20

    .line 22
    .line 23
    if-gt v5, v2, :cond_6

    .line 24
    .line 25
    if-nez v6, :cond_1

    .line 26
    .line 27
    move v8, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v8, v2

    .line 30
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-gt v8, v7, :cond_2

    .line 35
    .line 36
    move v8, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v8, v4

    .line 39
    :goto_2
    if-nez v6, :cond_4

    .line 40
    .line 41
    if-nez v8, :cond_3

    .line 42
    .line 43
    move v6, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    if-nez v8, :cond_5

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    :goto_3
    add-int/2addr v2, v3

    .line 55
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v2, :cond_d

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    sub-int/2addr v5, v3

    .line 72
    move v6, v4

    .line 73
    move v8, v6

    .line 74
    :goto_4
    if-gt v6, v5, :cond_c

    .line 75
    .line 76
    if-nez v8, :cond_7

    .line 77
    .line 78
    move v9, v6

    .line 79
    goto :goto_5

    .line 80
    :cond_7
    move v9, v5

    .line 81
    :goto_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-gt v9, v7, :cond_8

    .line 86
    .line 87
    move v9, v3

    .line 88
    goto :goto_6

    .line 89
    :cond_8
    move v9, v4

    .line 90
    :goto_6
    if-nez v8, :cond_a

    .line 91
    .line 92
    if-nez v9, :cond_9

    .line 93
    .line 94
    move v8, v3

    .line 95
    goto :goto_4

    .line 96
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_a
    if-nez v9, :cond_b

    .line 100
    .line 101
    goto :goto_7

    .line 102
    :cond_b
    add-int/lit8 v5, v5, -0x1

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_c
    :goto_7
    add-int/2addr v5, v3

    .line 106
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    goto :goto_8

    .line 115
    :cond_d
    move-object v2, v1

    .line 116
    :goto_8
    if-nez v2, :cond_e

    .line 117
    .line 118
    const-string v2, ""

    .line 119
    .line 120
    :cond_e
    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_f

    .line 125
    .line 126
    move-object v1, v0

    .line 127
    goto :goto_9

    .line 128
    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-lez v3, :cond_10

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    :cond_10
    :goto_9
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->_combinedPrefix:Ljava/lang/String;

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_11
    return-object v0
.end method

.method public final getConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connections:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connections:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/fsck/k9/mail/store/imap/RealImapConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->createImapConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    :try_start_1
    const-string v0, "NOOP"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :catch_0
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    .line 32
    throw p0
.end method

.method public final getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapFolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/mail/store/imap/RealImapFolder;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 7
    .line 8
    invoke-direct {v0, p0, p0, p1, v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;-><init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;Lcom/fsck/k9/mail/store/imap/RealImapStore;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final getFolders()Ljava/util/AbstractList;
    .locals 5

    .line 1
    const-string v0, "Unable to get folder list."

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->listFolders(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Z)Lkotlin/collections/builders/ListBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->config:Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;

    .line 13
    .line 14
    invoke-interface {v4}, Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;->isSubscribedFoldersOnly()Z

    .line 15
    .line 16
    .line 17
    move-result v4
    :try_end_0
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 21
    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    const/4 v4, 0x1

    .line 25
    :try_start_1
    invoke-virtual {p0, v1, v4}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->listFolders(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Z)Lkotlin/collections/builders/ListBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->limitToSubscribedFolders(Lkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_1
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_3

    .line 39
    :catch_0
    move-exception v3

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception v3

    .line 42
    goto :goto_1

    .line 43
    :catch_2
    move-exception v0

    .line 44
    goto :goto_2

    .line 45
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 46
    .line 47
    .line 48
    new-instance v4, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 49
    .line 50
    invoke-direct {v4, v0, v2, v3}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v4

    .line 54
    :goto_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 55
    .line 56
    .line 57
    new-instance v4, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 58
    .line 59
    invoke-direct {v4, v0, v2, v3}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v4

    .line 63
    :goto_2
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 64
    .line 65
    .line 66
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :goto_3
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public final listFolders(Lcom/fsck/k9/mail/store/imap/RealImapConnection;Z)Lkotlin/collections/builders/ListBuilder;
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v0, "LSUB \"\" %s"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "SPECIAL-USE"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "LIST-EXTENDED"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->hasCapability(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "LIST \"\" %s RETURN (SPECIAL-USE)"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "LIST \"\" %s"

    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getCombinedPrefix()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, ""

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    move-object v1, v2

    .line 36
    :cond_2
    const-string v3, "*"

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroidx/room/util/RelationUtil;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v3, 0x1

    .line 47
    new-array v4, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-object v1, v4, v5

    .line 51
    .line 52
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    const-string p2, "LSUB"

    .line 67
    .line 68
    invoke-static {p2, p1}, Lcom/fsck/k9/mail/store/imap/ListResponse;->parse(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const-string p2, "LIST"

    .line 74
    .line 75
    invoke-static {p2, p1}, Lcom/fsck/k9/mail/store/imap/ListResponse;->parse(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const-string v1, "INBOX"

    .line 93
    .line 94
    if-eqz v0, :cond_16

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ListResponse;

    .line 101
    .line 102
    iget-object v4, v0, Lcom/fsck/k9/mail/store/imap/ListResponse;->name:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    if-nez v6, :cond_5

    .line 108
    .line 109
    iget-object v6, v0, Lcom/fsck/k9/mail/store/imap/ListResponse;->hierarchyDelimiter:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v7, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->_combinedPrefix:Ljava/lang/String;

    .line 114
    .line 115
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_6

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    const-string v1, "\\NoSelect"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    const-string v1, "\\NonExistent"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move v1, v5

    .line 144
    :goto_3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-ge v1, v6, :cond_9

    .line 149
    .line 150
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    const/16 v8, 0x7f

    .line 155
    .line 156
    if-gt v6, v8, :cond_a

    .line 157
    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :catch_0
    move-exception v1

    .line 162
    goto :goto_4

    .line 163
    :cond_9
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->folderNameCodec:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 164
    .line 165
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mailstore/LocalFolder$12;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_5

    .line 170
    :goto_4
    new-array v6, v3, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object v4, v6, v5

    .line 173
    .line 174
    const-string v8, "Folder name not correctly encoded with the UTF-7 variant as defined by RFC 3501: %s"

    .line 175
    .line 176
    invoke-static {v1, v8, v6}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_a
    move-object v1, v4

    .line 180
    :goto_5
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getCombinedPrefix()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    if-nez v6, :cond_b

    .line 185
    .line 186
    move-object v6, v2

    .line 187
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-nez v8, :cond_c

    .line 192
    .line 193
    move-object v7, v1

    .line 194
    goto :goto_6

    .line 195
    :cond_c
    invoke-static {v1, v6, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-nez v6, :cond_d

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_d
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    :goto_6
    if-nez v7, :cond_e

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_e
    move-object v1, v7

    .line 210
    :goto_7
    const-string v6, "\\Archive"

    .line 211
    .line 212
    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    sget-object v7, Lcom/fsck/k9/mail/FolderType;->REGULAR:Lcom/fsck/k9/mail/FolderType;

    .line 217
    .line 218
    sget-object v8, Lcom/fsck/k9/mail/FolderType;->ARCHIVE:Lcom/fsck/k9/mail/FolderType;

    .line 219
    .line 220
    if-eqz v6, :cond_f

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_f
    const-string v6, "\\All"

    .line 224
    .line 225
    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_10

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_10
    const-string v6, "\\Drafts"

    .line 233
    .line 234
    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_11

    .line 239
    .line 240
    sget-object v8, Lcom/fsck/k9/mail/FolderType;->DRAFTS:Lcom/fsck/k9/mail/FolderType;

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_11
    const-string v6, "\\Sent"

    .line 244
    .line 245
    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-eqz v6, :cond_12

    .line 250
    .line 251
    sget-object v8, Lcom/fsck/k9/mail/FolderType;->SENT:Lcom/fsck/k9/mail/FolderType;

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_12
    const-string v6, "\\Junk"

    .line 255
    .line 256
    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_13

    .line 261
    .line 262
    sget-object v8, Lcom/fsck/k9/mail/FolderType;->SPAM:Lcom/fsck/k9/mail/FolderType;

    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_13
    const-string v6, "\\Trash"

    .line 266
    .line 267
    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/store/imap/ListResponse;->hasAttribute(Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_14

    .line 272
    .line 273
    sget-object v8, Lcom/fsck/k9/mail/FolderType;->TRASH:Lcom/fsck/k9/mail/FolderType;

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_14
    move-object v8, v7

    .line 277
    :goto_8
    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 282
    .line 283
    if-eqz v0, :cond_15

    .line 284
    .line 285
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/FolderListItem;->type:Lcom/fsck/k9/mail/FolderType;

    .line 286
    .line 287
    if-ne v0, v7, :cond_4

    .line 288
    .line 289
    :cond_15
    new-instance v0, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 290
    .line 291
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 292
    .line 293
    invoke-direct {v0, v4, v1, v8, v6}, Lcom/fsck/k9/mail/store/imap/FolderListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_16
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    new-instance v0, Lcom/fsck/k9/mail/store/imap/FolderListItem;

    .line 306
    .line 307
    sget-object v2, Lcom/fsck/k9/mail/FolderType;->INBOX:Lcom/fsck/k9/mail/FolderType;

    .line 308
    .line 309
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->pathDelimiter:Ljava/lang/String;

    .line 310
    .line 311
    invoke-direct {v0, v1, v1, v2, p0}, Lcom/fsck/k9/mail/store/imap/FolderListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {p1, p0}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 322
    .line 323
    .line 324
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    return-object p0
.end method

.method public final releaseConnection(Lcom/fsck/k9/mail/store/imap/RealImapConnection;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p1, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->connectionGeneration:I

    .line 10
    .line 11
    iget v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connectionGeneration:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connections:Ljava/util/LinkedList;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;->connections:Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0

    .line 27
    throw p0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->close()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
