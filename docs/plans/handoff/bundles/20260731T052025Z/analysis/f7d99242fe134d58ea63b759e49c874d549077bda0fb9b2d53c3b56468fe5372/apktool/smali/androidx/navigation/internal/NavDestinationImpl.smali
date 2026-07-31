.class public final Landroidx/navigation/internal/NavDestinationImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;


# instance fields
.field public final arguments:Ljava/lang/Object;

.field public final deepLinks:Ljava/io/Serializable;

.field public final destination:Ljava/lang/Object;

.field public id:I

.field public idName:Ljava/lang/String;

.field public route:Ljava/io/Serializable;

.field public routeDeepLink:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavDestination;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/internal/NavDestinationImpl;->destination:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/navigation/internal/NavDestinationImpl;->deepLinks:Ljava/io/Serializable;

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/navigation/internal/NavDestinationImpl;->arguments:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;Landroidx/room/RoomConnectionManager;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroidx/navigation/internal/NavDestinationImpl;->destination:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/navigation/internal/NavDestinationImpl;->route:Ljava/io/Serializable;

    iput-object p3, p0, Landroidx/navigation/internal/NavDestinationImpl;->deepLinks:Ljava/io/Serializable;

    iput-object p4, p0, Landroidx/navigation/internal/NavDestinationImpl;->arguments:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/navigation/internal/NavDestinationImpl;->idName:Ljava/lang/String;

    iput-object p6, p0, Landroidx/navigation/internal/NavDestinationImpl;->routeDeepLink:Ljava/lang/Object;

    iput p7, p0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    return-void
.end method


# virtual methods
.method public matchRoute$navigation_common_release(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/internal/NavDestinationImpl;->routeDeepLink:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lkotlin/SynchronizedLazyImpl;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/navigation/NavDeepLink;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget v1, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 20
    .line 21
    const-string v1, "android-app://androidx.navigation/"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroidx/navigation/internal/NavDestinationImpl;->arguments:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Landroidx/navigation/NavDeepLink;->getMatchingArguments(Landroid/net/Uri;Ljava/util/LinkedHashMap;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/navigation/NavDeepLink;->calculateMatchingPathSegments$navigation_common_release(Landroid/net/Uri;)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    new-instance v2, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->destination:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v3, p0

    .line 54
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 55
    .line 56
    iget-boolean v5, v0, Landroidx/navigation/NavDeepLink;->isExactDeepLink:Z

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, -0x1

    .line 60
    invoke-direct/range {v2 .. v8}, Landroidx/navigation/NavDestination$DeepLinkMatch;-><init>(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method

.method public messageFinished(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/navigation/internal/NavDestinationImpl;->routeDeepLink:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/room/RoomConnectionManager;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/navigation/internal/NavDestinationImpl;->arguments:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/navigation/internal/NavDestinationImpl;->route:Ljava/io/Serializable;

    .line 12
    .line 13
    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/navigation/internal/NavDestinationImpl;->destination:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lcom/fsck/k9/mailstore/K9BackendFolder;

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/navigation/internal/NavDestinationImpl;->idName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    :try_start_0
    sget-object v6, Lcom/fsck/k9/mail/MessageDownloadState;->FULL:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 26
    .line 27
    invoke-virtual {v3, p1, v6}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 31
    .line 32
    .line 33
    sget-object v6, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 34
    .line 35
    iget-object v7, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 36
    .line 37
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    iget-object v6, p0, Landroidx/navigation/internal/NavDestinationImpl;->deepLinks:Ljava/io/Serializable;

    .line 44
    .line 45
    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    iget-object v6, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 54
    .line 55
    const-string v7, "About to notify listeners that we got a new small message %s:%s:%s"

    .line 56
    .line 57
    iget-object v1, v1, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    const/4 v8, 0x3

    .line 62
    new-array v8, v8, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object v1, v8, v5

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aput-object v4, v8, v1

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    aput-object v6, v8, v1

    .line 71
    .line 72
    invoke-static {v7, v8}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iget p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 83
    .line 84
    invoke-virtual {v0, v1, v4, p0}, Landroidx/room/RoomConnectionManager;->syncProgress(ILjava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Lcom/fsck/k9/backend/imap/ImapSync;->getLatestOldMessageSeenTime(Lcom/fsck/k9/mailstore/K9BackendFolder;)Ljava/util/Date;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p1, p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->olderThan(Ljava/util/Date;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4, v6, p0}, Landroidx/room/RoomConnectionManager;->syncNewMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_1
    const-string p1, "SYNC: fetch small messages"

    .line 103
    .line 104
    new-array v0, v5, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {p0, p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
