.class public final Lcom/fsck/k9/backend/imap/ImapSync;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
.implements Landroidx/core/util/Pools$Pool;
.implements Lorg/apache/james/mime4j/parser/ContentHandler;
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;
.implements Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;


# instance fields
.field public final synthetic $r8$classId:I

.field public accountName:Ljava/lang/Object;

.field public backendStorage:Ljava/lang/Object;

.field public imapStore:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/bumptech/glide/load/engine/ActiveResources$1;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/engine/ActiveResources$1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v0, Landroidx/fragment/app/Fragment$1;

    .line 34
    .line 35
    const/16 v1, 0x1c

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/Fragment$1;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 72
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 73
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 88
    invoke-static {p2, v0}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 90
    new-instance p2, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 93
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 94
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/SingleRequest;Lcom/bumptech/glide/load/engine/EngineJob;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 97
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 78
    invoke-static {p2, v0}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 80
    new-instance p2, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/InputStreamRewinder;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V

    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/Preferences;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/feature/account/AccountId;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 58
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lcom/fsck/k9/mailstore/SaveMessageDataCreator;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V
    .locals 0

    const/16 p4, 0x11

    iput p4, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/internet/MimeMessage;Lokio/AsyncTimeout$Companion;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 99
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 100
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$7;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 74
    iput p4, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 49
    iput p5, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;Lokio/ByteString;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 84
    iput-object p3, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/fsck/k9/message/html/DisplayHtml;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 53
    new-instance p1, Landroidx/work/Configuration$Builder;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/work/Configuration$Builder;-><init>(I)V

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Dispatcher;Lcom/fsck/k9/mail/store/imap/RealImapStore;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 62
    sget-object p1, Lnet/thunderbird/core/logging/legacy/Log;->INSTANCE:Lnet/thunderbird/core/logging/legacy/Log;

    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    return-void
.end method

.method public static addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<tr><th style=\"text-align: left; vertical-align: top;\">"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "</th>"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "<td>"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "</td></tr>"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static addTextDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V
    .locals 4

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p2, "filename"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string p1, ""

    .line 18
    .line 19
    :cond_1
    const-string p2, "\r\n\r\n"

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v1, "------------------------------------------------------------------------"

    .line 29
    .line 30
    if-lez v0, :cond_3

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/16 v3, 0x41

    .line 34
    .line 35
    if-le v0, v3, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x3e

    .line 38
    .line 39
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "..."

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_2
    const-string v0, "----- "

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, " "

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    sub-int/2addr v3, p1

    .line 67
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public static buildHtml(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    .line 7
    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    check-cast v1, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/Viewable$Textual;->mPart:Lcom/fsck/k9/mail/Part;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v3, "filename"

    .line 26
    .line 27
    invoke-static {p1, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    :cond_0
    move-object p1, v2

    .line 34
    :cond_1
    const-string v3, "<p style=\"margin-top: 2.5em; margin-bottom: 1em; border-bottom: 1px solid #000\">"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "</p>"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {v1}, Lcom/fsck/k9/backend/imap/ImapSync;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    instance-of v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Text;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-static {p1}, Landroidx/work/OperationKt;->textToHtml(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    instance-of p0, p0, Lcom/fsck/k9/mail/internet/Viewable$Html;

    .line 68
    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    move-object v2, p1

    .line 72
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_5
    const-string p0, "unhandled case!"

    .line 77
    .line 78
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0

    .line 83
    :cond_6
    instance-of v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 84
    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    check-cast p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mHtml:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mText:Ljava/util/ArrayList;

    .line 98
    .line 99
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/fsck/k9/mail/internet/Viewable;

    .line 114
    .line 115
    invoke-static {v1, p1}, Lcom/fsck/k9/backend/imap/ImapSync;->buildHtml(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const/4 p1, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_8
    return-object v0
.end method

.method public static buildText(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    check-cast v1, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/Viewable$Textual;->mPart:Lcom/fsck/k9/mail/Part;

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lcom/fsck/k9/backend/imap/ImapSync;->addTextDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/fsck/k9/backend/imap/ImapSync;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    instance-of v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Html;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-static {p1}, Landroidx/work/OperationKt;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    instance-of p0, p0, Lcom/fsck/k9/mail/internet/Viewable$Text;

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    const-string p0, "unhandled case!"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_3
    instance-of v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    check-cast p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mText:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mHtml:Ljava/util/ArrayList;

    .line 66
    .line 67
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/fsck/k9/mail/internet/Viewable;

    .line 82
    .line 83
    invoke-static {v1, p1}, Lcom/fsck/k9/backend/imap/ImapSync;->buildText(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    return-object v0
.end method

.method public static getLatestOldMessageSeenTime(Lcom/fsck/k9/mailstore/K9BackendFolder;)Ljava/util/Date;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 4
    .line 5
    iget-object p0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 10
    .line 11
    const-string v0, "latestOldMessageSeenTime"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2, v0}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolderExtraNumber(JLjava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    :goto_0
    new-instance p0, Ljava/util/Date;

    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public static getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {p0, v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lorg/openintents/openpgp/util/OpenPgpUtils;->USER_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    const-string v1, "-----BEGIN PGP SIGNED MESSAGE-----"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "\r\n\r\n"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/lit8 v1, v1, 0x4

    .line 28
    .line 29
    if-gez v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "-----BEGIN PGP SIGNATURE-----"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-gez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_4
    return-object p0
.end method

.method public static isOldMessage(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    cmp-long p0, v2, p0

    .line 15
    .line 16
    if-gtz p0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    :goto_0
    return v0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p0, v1, v0

    .line 24
    .line 25
    const-string p0, "Couldn\'t parse UID: %s"

    .line 26
    .line 27
    invoke-static {p1, p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return v0
.end method

.method public static isSafeTag(Lorg/jsoup/nodes/Node;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v3, "meta"

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    move v1, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v3, "http-equiv"

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const-string v3, "refresh"

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_0
    if-eqz v1, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object v0, Lapp/k9mail/html/cleaner/HeadCleanerKt;->ALLOWED_TAGS:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0

    .line 85
    :cond_2
    :goto_1
    return v0
.end method

.method private final stopGrowingBuffers$com$bumptech$glide$load$resource$bitmap$ImageReader$ByteBufferReader()V
    .locals 0

    .line 1
    return-void
.end method

.method private final stopGrowingBuffers$com$bumptech$glide$load$resource$bitmap$ImageReader$ParcelFileDescriptorImageReader()V
    .locals 0

    .line 1
    return-void
.end method

.method public static updateMoreMessages(Lcom/fsck/k9/mail/store/imap/RealImapFolder;Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/Date;I)V
    .locals 8

    .line 1
    sget-object v0, Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;->FALSE:Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p3, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setMoreMessages(Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->checkOpen()V

    .line 11
    .line 12
    .line 13
    if-ne p3, v1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    sub-int/2addr p3, v1

    .line 17
    invoke-static {p2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->getDateSearchString(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :goto_0
    if-lez p3, :cond_3

    .line 22
    .line 23
    add-int/lit16 v2, p3, -0x1f4

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v4, v1

    .line 31
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const/4 v6, 0x3

    .line 42
    new-array v7, v6, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v4, v7, v3

    .line 45
    .line 46
    aput-object p3, v7, v1

    .line 47
    .line 48
    const/4 p3, 0x2

    .line 49
    aput-object p2, v7, p3

    .line 50
    .line 51
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    const-string v3, "SEARCH %d:%d%s NOT DELETED"

    .line 56
    .line 57
    invoke-static {v5, v3, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p0, p3}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p3}, Lcom/fsck/k9/sasl/OAuthBearer;->parse(Ljava/util/ArrayList;)Lokhttp3/Headers$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    iget-object p3, p3, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-lez p3, :cond_2

    .line 76
    .line 77
    sget-object v0, Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;->TRUE:Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move p3, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setMoreMessages(Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/bumptech/glide/util/pool/FactoryPools$Factory;

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/bumptech/glide/util/pool/FactoryPools$Factory;->create()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 p0, 0x2

    .line 20
    const-string v1, "FactoryPools"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Created new "

    .line 31
    .line 32
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    instance-of p0, v0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    move-object p0, v0

    .line 54
    check-cast p0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    .line 55
    .line 56
    invoke-interface {p0}, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;->getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->isReleased:Z

    .line 62
    .line 63
    :cond_1
    return-object v0
.end method

.method public declared-synchronized activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-object p2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method

.method public addMessageHeaderHtml(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 6
    .line 7
    const-string v0, "<table style=\"border: 0\">"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    const v1, 0x7f120430

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1, v1, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    array-length v1, v0

    .line 49
    if-lez v1, :cond_1

    .line 50
    .line 51
    const v1, 0x7f120434

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p1, v1, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    array-length v1, v0

    .line 79
    if-lez v1, :cond_2

    .line 80
    .line 81
    const v1, 0x7f12042f

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v2, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {p1, v1, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    const v1, 0x7f120431

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {p1, v1, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const v0, 0x7f120433

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    if-nez p2, :cond_4

    .line 138
    .line 139
    const p2, 0x7f120315

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-static {p1, v0, p2}, Lcom/fsck/k9/backend/imap/ImapSync;->addTableRow(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string p0, "</table>"

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public addMessageHeaderText(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\r\n"

    .line 12
    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    array-length v3, v0

    .line 18
    if-lez v3, :cond_0

    .line 19
    .line 20
    const v3, 0x7f120430

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v3, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    array-length v3, v0

    .line 57
    if-lez v3, :cond_1

    .line 58
    .line 59
    const v3, 0x7f120434

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget-object v3, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    :cond_1
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 88
    .line 89
    invoke-virtual {p2, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    array-length v3, v0

    .line 96
    if-lez v3, :cond_2

    .line 97
    .line 98
    const v3, 0x7f12042f

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    sget-object v3, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_2
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    const v3, 0x7f120431

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const v0, 0x7f120433

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    if-nez p2, :cond_4

    .line 179
    .line 180
    const p2, 0x7f120315

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    :goto_0
    const-string p0, "\r\n\r\n"

    .line 198
    .line 199
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public body(Lcom/eygraber/uri/Uri$Builder;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    const-class v0, Lcom/fsck/k9/mail/Part;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lokio/AsyncTimeout$Companion;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, p2}, Lokio/AsyncTimeout$Companion;->createBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 31
    .line 32
    invoke-interface {p0, p1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v1, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 22
    .line 23
    iget-object v5, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v6, v0

    .line 28
    check-cast v6, Lcom/bumptech/glide/load/engine/Engine;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Engine;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lcom/bumptech/glide/load/engine/Engine;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v1}, Lcom/bumptech/glide/load/engine/Engine;->onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object p1, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1
.end method

.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->reset()V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v9, 0x0

    .line 9
    const/4 v10, 0x0

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/fsck/k9/mail/FolderType;->OUTBOX:Lcom/fsck/k9/mail/FolderType;

    .line 14
    .line 15
    invoke-static {v2}, Landroidx/room/util/SchemaInfoUtilKt;->toDatabaseFolderType(Lcom/fsck/k9/mail/FolderType;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v2}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v4, "SELECT id FROM folders WHERE type = ?"

    .line 24
    .line 25
    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 32
    .line 33
    iget-object v4, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v4, Lnet/thunderbird/feature/account/AccountId;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 40
    .line 41
    :try_start_0
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    const-wide/16 v6, -0x1

    .line 47
    .line 48
    iput-wide v6, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 49
    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    iput-wide v8, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 61
    .line 62
    iget-object v8, v2, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 63
    .line 64
    const-string v9, "DefaultOutboxFolderManager"

    .line 65
    .line 66
    new-instance v11, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 67
    .line 68
    const/16 v12, 0x8

    .line 69
    .line 70
    invoke-direct {v11, v12, v5}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v8, v9, v10, v11, v3}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object v2, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_0
    :goto_0
    iget-wide v8, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 81
    .line 82
    cmp-long v3, v8, v6

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    iget-object v2, v2, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->outboxFolderIdCache:Lnet/thunderbird/core/common/cache/TimeLimitedCache;

    .line 87
    .line 88
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v2, v4, v3}, Lnet/thunderbird/core/common/cache/TimeLimitedCache;->set-SxA4cEA$default(Lnet/thunderbird/core/common/cache/TimeLimitedCache;Ljava/lang/Object;Ljava/lang/Long;)V

    .line 93
    .line 94
    .line 95
    iget-wide v2, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 96
    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    new-instance v2, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 106
    .line 107
    const-string v3, "Outbox folder not found"

    .line 108
    .line 109
    invoke-direct {v2, v3}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Lkotlin/Result$Failure;

    .line 113
    .line 114
    invoke-direct {v3, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 121
    .line 122
    .line 123
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    .line 125
    return-object v0

    .line 126
    :goto_2
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :pswitch_0
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;

    .line 135
    .line 136
    iget-object v3, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    new-array v4, v4, [Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, [Ljava/lang/String;

    .line 159
    .line 160
    invoke-interface {v2, v1, v3, v0}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v10

    .line 164
    :pswitch_1
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v2, Ljava/lang/String;

    .line 167
    .line 168
    filled-new-array {v2}, [Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    const/4 v7, 0x0

    .line 173
    const/4 v8, 0x0

    .line 174
    const-string v2, "message_parts"

    .line 175
    .line 176
    sget-object v3, Lcom/fsck/k9/mailstore/LocalStore;->GET_ATTACHMENT_COLS:[Ljava/lang/String;

    .line 177
    .line 178
    const-string v4, "id = ?"

    .line 179
    .line 180
    const/4 v6, 0x0

    .line 181
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    :try_start_2
    iget-object v3, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v3, Lcom/fsck/k9/mailstore/LocalStore;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Ljava/io/OutputStream;

    .line 192
    .line 193
    invoke-static {v3, v1, v2, v0}, Lcom/fsck/k9/mailstore/LocalStore;->-$$Nest$mwriteCursorPartsToOutputStream(Lcom/fsck/k9/mailstore/LocalStore;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 194
    .line 195
    .line 196
    sget-object v0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 197
    .line 198
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 199
    .line 200
    .line 201
    return-object v10

    .line 202
    :catchall_2
    move-exception v0

    .line 203
    goto :goto_3

    .line 204
    :catch_0
    move-exception v0

    .line 205
    :try_start_3
    new-instance v1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 206
    .line 207
    invoke-direct {v1, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/io/IOException;)V

    .line 208
    .line 209
    .line 210
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    :goto_3
    invoke-static {v2}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 212
    .line 213
    .line 214
    throw v0

    .line 215
    :pswitch_2
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 216
    .line 217
    move-object v8, v2

    .line 218
    check-cast v8, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 219
    .line 220
    invoke-virtual {v8}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 221
    .line 222
    .line 223
    iget-object v2, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v2, Lcom/fsck/k9/mail/FetchProfile;

    .line 226
    .line 227
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_3

    .line 234
    .line 235
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v0, Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_3

    .line 248
    .line 249
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    move-object v11, v0

    .line 254
    check-cast v11, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 255
    .line 256
    new-instance v12, Ljava/util/HashMap;

    .line 257
    .line 258
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v27, "content_id"

    .line 262
    .line 263
    const-string v28, "server_extra"

    .line 264
    .line 265
    const-string v13, "id"

    .line 266
    .line 267
    const-string v14, "type"

    .line 268
    .line 269
    const-string v15, "parent"

    .line 270
    .line 271
    const-string v16, "mime_type"

    .line 272
    .line 273
    const-string v17, "decoded_body_size"

    .line 274
    .line 275
    const-string v18, "display_name"

    .line 276
    .line 277
    const-string v19, "header"

    .line 278
    .line 279
    const-string v20, "encoding"

    .line 280
    .line 281
    const-string v21, "charset"

    .line 282
    .line 283
    const-string v22, "data_location"

    .line 284
    .line 285
    const-string v23, "data"

    .line 286
    .line 287
    const-string v24, "preamble"

    .line 288
    .line 289
    const-string v25, "epilogue"

    .line 290
    .line 291
    const-string v26, "boundary"

    .line 292
    .line 293
    filled-new-array/range {v13 .. v28}, [Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    iget-wide v3, v11, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 298
    .line 299
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    filled-new-array {v0}, [Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    const/4 v6, 0x0

    .line 308
    const-string v7, "seq"

    .line 309
    .line 310
    const-string v1, "message_parts"

    .line 311
    .line 312
    const-string v3, "root = ?"

    .line 313
    .line 314
    const/4 v5, 0x0

    .line 315
    move-object/from16 v0, p1

    .line 316
    .line 317
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    move-object v2, v0

    .line 322
    :goto_5
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_2

    .line 327
    .line 328
    invoke-virtual {v8, v11, v12, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->loadMessagePart(Lcom/fsck/k9/mailstore/LocalMessage;Ljava/util/HashMap;Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 329
    .line 330
    .line 331
    goto :goto_5

    .line 332
    :catchall_3
    move-exception v0

    .line 333
    goto :goto_6

    .line 334
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 335
    .line 336
    .line 337
    move-object v1, v2

    .line 338
    goto :goto_4

    .line 339
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :cond_3
    return-object v10

    .line 344
    :pswitch_3
    move-object v2, v1

    .line 345
    iget-object v1, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 350
    .line 351
    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v5, "UPDATE folders SET "

    .line 355
    .line 356
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object v5, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v5, Ljava/lang/String;

    .line 362
    .line 363
    const-string v6, " = ? WHERE id = ?"

    .line 364
    .line 365
    invoke-static {v4, v5, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 370
    .line 371
    iget-wide v5, v1, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 372
    .line 373
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    new-array v3, v3, [Ljava/lang/Object;

    .line 378
    .line 379
    aput-object v0, v3, v9

    .line 380
    .line 381
    const/4 v0, 0x1

    .line 382
    aput-object v1, v3, v0

    .line 383
    .line 384
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    return-object v10

    .line 388
    :pswitch_4
    move-object v2, v1

    .line 389
    const-string v1, "id"

    .line 390
    .line 391
    filled-new-array {v1}, [Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    iget-object v1, v0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 398
    .line 399
    iget-wide v4, v1, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 400
    .line 401
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    iget-object v4, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v4, Lcom/fsck/k9/mail/Part;

    .line 408
    .line 409
    invoke-interface {v4}, Lcom/fsck/k9/mail/Part;->getServerExtra()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    const/4 v7, 0x0

    .line 418
    const/4 v8, 0x0

    .line 419
    const-string v2, "message_parts"

    .line 420
    .line 421
    const-string v4, "root = ? AND server_extra = ?"

    .line 422
    .line 423
    const/4 v6, 0x0

    .line 424
    move-object/from16 v1, p1

    .line 425
    .line 426
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    if-eqz v1, :cond_4

    .line 435
    .line 436
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 437
    .line 438
    .line 439
    move-result-wide v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 440
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 441
    .line 442
    .line 443
    :try_start_6
    iget-object v1, v0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 446
    .line 447
    new-instance v2, Landroid/content/ContentValues;

    .line 448
    .line 449
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .line 451
    .line 452
    iget-object v0, v0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 453
    .line 454
    move-object v3, v0

    .line 455
    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 456
    .line 457
    move-object v0, v1

    .line 458
    move-object/from16 v1, p1

    .line 459
    .line 460
    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/mailstore/LocalFolder;->-$$Nest$mupdateOrInsertMessagePart(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 461
    .line 462
    .line 463
    goto :goto_7

    .line 464
    :catch_1
    move-exception v0

    .line 465
    const-string v1, "Error writing message part"

    .line 466
    .line 467
    new-array v2, v9, [Ljava/lang/Object;

    .line 468
    .line 469
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    :goto_7
    return-object v10

    .line 473
    :catchall_4
    move-exception v0

    .line 474
    goto :goto_8

    .line 475
    :cond_4
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 476
    .line 477
    const-string v1, "Message part not found"

    .line 478
    .line 479
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 483
    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 484
    .line 485
    .line 486
    throw v0

    .line 487
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentValues;

    const-string v0, "empty = 0 AND id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "messages"

    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public downloadMessages(Lcom/fsck/k9/backend/api/SyncConfig;Lcom/fsck/k9/mail/store/pop3/Pop3Folder;Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/ArrayList;Landroidx/room/RoomConnectionManager;)I
    .locals 31

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v5, p5

    .line 949
    iget-object v12, v10, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    iget-wide v13, v11, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    iget-object v15, v11, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 950
    iget-object v0, v7, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;

    iget v1, v7, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 951
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 952
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v0, "Only syncing messages after %s"

    invoke-static {v0, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 953
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 954
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 955
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 956
    new-instance v9, Ljava/util/ArrayList;

    move/from16 v16, v4

    move-object/from16 v4, p4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 957
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    sget-object v3, Lcom/fsck/k9/mail/MessageDownloadState;->PARTIAL:Lcom/fsck/k9/mail/MessageDownloadState;

    move/from16 v19, v1

    sget-object v1, Lcom/fsck/k9/mail/MessageDownloadState;->FULL:Lcom/fsck/k9/mail/MessageDownloadState;

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    check-cast v2, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 958
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p4, v4

    .line 959
    iget-object v4, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    move-object/from16 v17, v8

    .line 960
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    move-object/from16 v21, v9

    .line 961
    iget-object v9, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    const/4 v7, 0x1

    .line 962
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v16

    const-string v3, "Message with uid %s is marked as deleted"

    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 964
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 965
    invoke-virtual {v15, v13, v14, v4}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->isMessagePresent(JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 966
    sget-object v7, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 967
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 968
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_PARTIAL:Lnet/thunderbird/core/common/mail/Flag;

    .line 969
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    .line 970
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v4, v1, v16

    const-string v3, "Message with uid %s has not yet been downloaded"

    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    .line 972
    new-array v10, v8, [Ljava/lang/Object;

    aput-object v4, v10, v16

    const-string v8, "Message with uid %s is partially or fully downloaded"

    invoke-static {v8, v10}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 974
    invoke-virtual {v11, v2, v1}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V

    goto :goto_1

    .line 975
    :cond_3
    invoke-virtual {v11, v2, v3}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V

    .line 976
    :goto_1
    invoke-static {v11}, Lcom/fsck/k9/backend/imap/ImapSync;->getLatestOldMessageSeenTime(Lcom/fsck/k9/mailstore/K9BackendFolder;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->olderThan(Ljava/util/Date;)Z

    move-result v1

    .line 977
    invoke-virtual {v5, v12, v4, v1}, Landroidx/room/RoomConnectionManager;->syncNewMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 978
    :cond_4
    invoke-virtual {v15, v13, v14, v4}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->getMessageFlags(JLjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 979
    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v7, 0x1

    .line 980
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v16

    const-string v8, "Message with uid %s is present in the local store"

    invoke-static {v8, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_PARTIAL:Lnet/thunderbird/core/common/mail/Flag;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 982
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v16

    const-string v3, "Message with uid %s is not downloaded, even partially; trying again"

    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 983
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 984
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v7, 0x1

    .line 985
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v16

    const-string v2, "Local copy of message with uid %s is marked as deleted"

    invoke-static {v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v4, p4

    move-object/from16 v8, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v9, v21

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v17, v8

    move-object/from16 v21, v9

    .line 986
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v4, v16

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 987
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v7, v0

    .line 988
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v5, v0, v12, v7}, Landroidx/room/RoomConnectionManager;->syncProgress(ILjava/lang/String;I)V

    .line 989
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v0, v9, v4

    const-string v0, "SYNC: Have %d unsynced messages"

    invoke-static {v0, v9}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 991
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 992
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 993
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v10, 0x2

    if-nez v0, :cond_9

    .line 994
    iget v0, v11, Lcom/fsck/k9/mailstore/K9BackendFolder;->visibleLimit:I

    .line 995
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v0, :cond_8

    if-le v4, v0, :cond_8

    const/4 v4, 0x0

    .line 996
    invoke-virtual {v6, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 997
    :cond_8
    new-instance v0, Lcom/fsck/k9/mail/FetchProfile;

    .line 998
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    sget-object v4, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 p4, v0

    new-array v0, v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v0, v16

    const/16 v18, 0x1

    aput-object v12, v0, v18

    const-string v4, "SYNC: About to fetch %d unsynced messages for folder %s"

    invoke-static {v4, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p2

    move-object v4, v3

    .line 1001
    iget-object v3, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    move-object/from16 v22, v1

    move/from16 v21, v10

    move-object/from16 v10, p1

    .line 1002
    iget-object v1, v10, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;

    .line 1003
    new-instance v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    move-object/from16 v24, v4

    move-object/from16 v16, v12

    move/from16 v11, v19

    move-object/from16 v23, v20

    move-object/from16 v25, v22

    move-object v4, v2

    move-object v12, v6

    move v6, v7

    move-object v7, v10

    move-object/from16 v2, p0

    move-object/from16 v10, p2

    move-wide/from16 v29, v13

    move-object/from16 v13, p4

    move/from16 v14, v18

    move-wide/from16 v18, v29

    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;-><init>(Ljava/util/Date;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Landroidx/room/RoomConnectionManager;ILcom/fsck/k9/backend/api/SyncConfig;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v2, v4

    move v7, v6

    .line 1004
    invoke-virtual {v10, v12, v13, v0, v11}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V

    .line 1005
    new-array v0, v14, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v16, v0, v13

    const-string v1, "SYNC: Synced unsynced messages for folder %s"

    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v12

    goto :goto_3

    :cond_9
    move-object/from16 v25, v1

    move-object/from16 v24, v3

    move/from16 v21, v10

    move-object/from16 v16, v12

    move/from16 v11, v19

    move-object/from16 v23, v20

    move-object/from16 v10, p2

    move-wide/from16 v18, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 1006
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1007
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1008
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v12, 0x3

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v0, v4, v13

    aput-object v1, v4, v14

    aput-object v3, v4, v21

    .line 1009
    const-string v0, "SYNC: Have %d large messages and %d small messages out of %d unsynced messages"

    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1011
    new-instance v0, Lcom/fsck/k9/mail/FetchProfile;

    .line 1012
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    sget-object v1, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1014
    iget-object v5, v10, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->name:Ljava/lang/String;

    .line 1015
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v3, v21

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v13

    aput-object v5, v4, v14

    const-string v1, "SYNC: Fetching %d small messages for folder %s"

    invoke-static {v1, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 1016
    new-instance v0, Landroidx/navigation/internal/NavDestinationImpl;

    move-object/from16 v4, p0

    move-object/from16 v6, p5

    move/from16 v26, v13

    move-object/from16 v3, v17

    move-object v13, v1

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/internal/NavDestinationImpl;-><init>(Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;Landroidx/room/RoomConnectionManager;I)V

    move-object v3, v0

    move-object v0, v5

    move-object v5, v6

    const/4 v4, -0x1

    .line 1017
    invoke-virtual {v10, v9, v13, v3, v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V

    .line 1018
    new-array v3, v14, [Ljava/lang/Object;

    aput-object v0, v3, v26

    const-string v0, "SYNC: Done fetching small messages for folder %s"

    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1020
    new-instance v0, Lcom/fsck/k9/mail/FetchProfile;

    .line 1021
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1023
    new-array v3, v14, [Ljava/lang/Object;

    aput-object v16, v3, v26

    const-string v4, "SYNC: Fetching large messages for folder %s"

    invoke-static {v4, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 1024
    invoke-virtual {v10, v8, v0, v3, v11}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V

    .line 1025
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 1026
    new-instance v6, Lcom/fsck/k9/mail/FetchProfile;

    .line 1027
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1029
    new-array v9, v14, [Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    aput-object v4, v9, v26

    invoke-static {v9}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v10, v9, v6, v3, v11}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V

    .line 1030
    sget-object v6, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 1031
    iget-object v9, v4, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    if-eqz v11, :cond_b

    .line 1032
    iget v6, v4, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    move v13, v14

    move-object v9, v15

    int-to-long v14, v6

    move/from16 p1, v13

    move-wide/from16 v27, v14

    int-to-long v13, v11

    cmp-long v6, v27, v13

    if-gez v6, :cond_a

    :goto_5
    move-object/from16 v6, v25

    goto :goto_6

    :cond_a
    move-object/from16 v13, v24

    move-object/from16 v6, v25

    goto :goto_7

    :cond_b
    move/from16 p1, v14

    move-object v9, v15

    goto :goto_5

    .line 1033
    :goto_6
    invoke-virtual {v1, v4, v6}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V

    move-object/from16 v13, v24

    goto :goto_8

    :cond_c
    move/from16 p1, v14

    move-object v9, v15

    move-object/from16 v6, v25

    move-object/from16 v13, v24

    .line 1034
    :goto_7
    invoke-virtual {v1, v4, v13}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V

    .line 1035
    :goto_8
    iget-object v14, v4, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    move-object/from16 v15, p0

    .line 1036
    iget-object v3, v15, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1037
    new-array v0, v12, [Ljava/lang/Object;

    aput-object v3, v0, v26

    aput-object v16, v0, p1

    const/16 v21, 0x2

    aput-object v14, v0, v21

    .line 1038
    const-string v3, "About to notify listeners that we got a new large message %s:%s:%s"

    invoke-static {v3, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1040
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v13

    move-wide/from16 v12, v18

    .line 1041
    invoke-virtual {v9, v12, v13, v14}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->getMessageFlags(JLjava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 1042
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1043
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1044
    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    move-object/from16 v3, v16

    invoke-virtual {v5, v0, v3, v7}, Landroidx/room/RoomConnectionManager;->syncProgress(ILjava/lang/String;I)V

    .line 1045
    invoke-static {v1}, Lcom/fsck/k9/backend/imap/ImapSync;->getLatestOldMessageSeenTime(Lcom/fsck/k9/mailstore/K9BackendFolder;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->olderThan(Ljava/util/Date;)Z

    move-result v0

    .line 1046
    invoke-virtual {v5, v3, v14, v0}, Landroidx/room/RoomConnectionManager;->syncNewMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    move/from16 v14, p1

    move-object/from16 v25, v6

    move-object v15, v9

    move-wide/from16 v18, v12

    move-object/from16 v0, v20

    const/4 v3, 0x0

    const/4 v12, 0x3

    goto/16 :goto_4

    :cond_e
    move-object v9, v15

    move-object/from16 v3, v16

    move-wide/from16 v12, v18

    .line 1047
    new-array v0, v14, [Ljava/lang/Object;

    aput-object v3, v0, v26

    const-string v2, "SYNC: Done fetching large messages for folder %s"

    invoke-static {v2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1049
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v26

    aput-object v0, v2, v14

    const-string v0, "SYNC: Synced remote messages for folder %s, %d new messages"

    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    iget-object v0, v9, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 1051
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 1052
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 1053
    iget-object v0, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 1054
    new-instance v2, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v12, v13}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    move/from16 v4, v26

    invoke-virtual {v0, v4, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_f

    move-object/from16 v2, v23

    .line 1055
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1056
    invoke-static {v1}, Lcom/fsck/k9/backend/imap/ImapSync;->getLatestOldMessageSeenTime(Lcom/fsck/k9/mailstore/K9BackendFolder;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1057
    const-string v2, "latestOldMessageSeenTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setFolderExtraNumber(JLjava/lang/String;)V

    .line 1058
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public downloadMessages(Lcom/fsck/k9/backend/api/SyncConfig;Lcom/fsck/k9/mail/store/imap/RealImapFolder;Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/List;Ljava/lang/Long;Lcom/fsck/k9/backend/api/SyncListener;)V
    .locals 25

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v4, p6

    .line 8
    .line 9
    iget v11, v6, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 10
    .line 11
    iget-wide v12, v10, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 12
    .line 13
    iget-object v14, v10, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 14
    .line 15
    iget-object v15, v9, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    .line 35
    move-object/from16 v7, p4

    .line 36
    .line 37
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    move/from16 v16, v3

    .line 49
    .line 50
    if-eqz v8, :cond_4

    .line 51
    .line 52
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 57
    .line 58
    iget-object v3, v8, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 59
    .line 60
    move-object/from16 v17, v2

    .line 61
    .line 62
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 63
    .line 64
    move-object/from16 v18, v5

    .line 65
    .line 66
    iget-object v5, v8, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 67
    .line 68
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    new-array v2, v5, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v3, v2, v16

    .line 78
    .line 79
    const-string v3, "Message with uid %s is marked as deleted"

    .line 80
    .line 81
    invoke-static {v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    const/4 v5, 0x1

    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v14, v12, v13, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->isMessagePresent(JLjava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v19

    .line 96
    if-nez v19, :cond_1

    .line 97
    .line 98
    new-array v2, v5, [Ljava/lang/Object;

    .line 99
    .line 100
    aput-object v3, v2, v16

    .line 101
    .line 102
    const-string v3, "Message with uid %s has not yet been downloaded"

    .line 103
    .line 104
    invoke-static {v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v14, v12, v13, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->getMessageFlags(JLjava/lang/String;)Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_3

    .line 120
    .line 121
    move-object/from16 v19, v3

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    new-array v3, v2, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v19, v3, v16

    .line 127
    .line 128
    const-string v2, "Message with uid %s is present in the local store"

    .line 129
    .line 130
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 134
    .line 135
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_2

    .line 140
    .line 141
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_PARTIAL:Lnet/thunderbird/core/common/mail/Flag;

    .line 142
    .line 143
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_2

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    new-array v2, v2, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object v19, v2, v16

    .line 153
    .line 154
    const-string v3, "Message with uid %s is not downloaded, even partially; trying again"

    .line 155
    .line 156
    invoke-static {v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    move-object/from16 v19, v3

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    new-array v2, v2, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object v19, v2, v16

    .line 173
    .line 174
    const-string v3, "Local copy of message with uid %s is marked as deleted"

    .line 175
    .line 176
    invoke-static {v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    move/from16 v3, v16

    .line 180
    .line 181
    move-object/from16 v2, v17

    .line 182
    .line 183
    move-object/from16 v5, v18

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_4
    move-object/from16 v17, v2

    .line 188
    .line 189
    move-object/from16 v18, v5

    .line 190
    .line 191
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    .line 193
    move/from16 v3, v16

    .line 194
    .line 195
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    add-int/2addr v5, v7

    .line 207
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    invoke-interface {v4, v7, v15, v5}, Lcom/fsck/k9/backend/api/SyncListener;->syncProgress(ILjava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    const/4 v8, 0x1

    .line 223
    new-array v3, v8, [Ljava/lang/Object;

    .line 224
    .line 225
    aput-object v7, v3, v16

    .line 226
    .line 227
    const-string v7, "SYNC: Have %d unsynced messages"

    .line 228
    .line 229
    invoke-static {v7, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 233
    .line 234
    .line 235
    new-instance v7, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .line 239
    .line 240
    new-instance v8, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    move-wide/from16 v18, v12

    .line 250
    .line 251
    sget-object v13, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 252
    .line 253
    if-nez v3, :cond_6

    .line 254
    .line 255
    new-instance v3, Landroidx/viewpager/widget/ViewPager$1;

    .line 256
    .line 257
    const/16 v12, 0x10

    .line 258
    .line 259
    invoke-direct {v3, v12}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 260
    .line 261
    .line 262
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    .line 264
    .line 265
    iget v3, v10, Lcom/fsck/k9/mailstore/K9BackendFolder;->visibleLimit:I

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    const/4 v10, 0x1

    .line 272
    if-gt v10, v3, :cond_5

    .line 273
    .line 274
    if-ge v3, v12, :cond_5

    .line 275
    .line 276
    const/4 v12, 0x0

    .line 277
    invoke-virtual {v1, v12, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    goto :goto_2

    .line 282
    :cond_5
    const/4 v12, 0x0

    .line 283
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    move/from16 v16, v12

    .line 292
    .line 293
    const/4 v10, 0x2

    .line 294
    new-array v12, v10, [Ljava/lang/Object;

    .line 295
    .line 296
    aput-object v3, v12, v16

    .line 297
    .line 298
    const/4 v3, 0x1

    .line 299
    aput-object v15, v12, v3

    .line 300
    .line 301
    const-string v10, "SYNC: About to fetch %d unsynced messages for folder %s"

    .line 302
    .line 303
    invoke-static {v10, v12}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    move v10, v3

    .line 307
    move-object v3, v2

    .line 308
    iget-object v2, v9, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 309
    .line 310
    new-instance v12, Lcom/fsck/k9/mail/FetchProfile;

    .line 311
    .line 312
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    sget-object v10, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 319
    .line 320
    invoke-virtual {v12, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-object v10, v0

    .line 324
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    .line 325
    .line 326
    move-object/from16 v22, v14

    .line 327
    .line 328
    move/from16 p4, v16

    .line 329
    .line 330
    const/4 v14, 0x1

    .line 331
    move-object/from16 v16, v10

    .line 332
    .line 333
    move-object v10, v1

    .line 334
    move-object/from16 v1, p0

    .line 335
    .line 336
    invoke-direct/range {v0 .. v8}, Lokhttp3/HttpUrl$Builder;-><init>(Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/backend/api/SyncListener;ILcom/fsck/k9/backend/api/SyncConfig;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9, v10, v12, v0, v11}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V

    .line 340
    .line 341
    .line 342
    new-array v0, v14, [Ljava/lang/Object;

    .line 343
    .line 344
    aput-object v15, v0, p4

    .line 345
    .line 346
    const-string v1, "SYNC: Synced unsynced messages for folder %s"

    .line 347
    .line 348
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    move-object v1, v10

    .line 352
    goto :goto_3

    .line 353
    :cond_6
    move-object/from16 v16, v0

    .line 354
    .line 355
    move-object v3, v2

    .line 356
    move-object/from16 v22, v14

    .line 357
    .line 358
    const/16 p4, 0x0

    .line 359
    .line 360
    const/4 v14, 0x1

    .line 361
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    const/4 v10, 0x3

    .line 386
    new-array v6, v10, [Ljava/lang/Object;

    .line 387
    .line 388
    aput-object v0, v6, p4

    .line 389
    .line 390
    aput-object v2, v6, v14

    .line 391
    .line 392
    const/4 v0, 0x2

    .line 393
    aput-object v4, v6, v0

    .line 394
    .line 395
    const-string v2, "SYNC: Have %d large messages and %d small messages out of %d unsynced messages"

    .line 396
    .line 397
    invoke-static {v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 401
    .line 402
    .line 403
    move-object v1, v7

    .line 404
    move v7, v5

    .line 405
    iget-object v5, v9, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->serverId:Ljava/lang/String;

    .line 406
    .line 407
    new-instance v12, Lcom/fsck/k9/mail/FetchProfile;

    .line 408
    .line 409
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    sget-object v2, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 413
    .line 414
    invoke-virtual {v12, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    new-array v4, v0, [Ljava/lang/Object;

    .line 426
    .line 427
    aput-object v2, v4, p4

    .line 428
    .line 429
    aput-object v5, v4, v14

    .line 430
    .line 431
    const-string v0, "SYNC: Fetching %d small messages for folder %s"

    .line 432
    .line 433
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    .line 437
    .line 438
    move-object/from16 v4, p0

    .line 439
    .line 440
    move-object/from16 v6, p6

    .line 441
    .line 442
    move-object v10, v1

    .line 443
    move-object v2, v3

    .line 444
    move-object v14, v8

    .line 445
    move-object/from16 v3, v17

    .line 446
    .line 447
    move-object/from16 v1, p3

    .line 448
    .line 449
    move-object/from16 v8, p5

    .line 450
    .line 451
    invoke-direct/range {v0 .. v8}, Lokhttp3/HttpUrl$Builder;-><init>(Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;Lcom/fsck/k9/backend/api/SyncListener;ILjava/lang/Long;)V

    .line 452
    .line 453
    .line 454
    move-object v8, v1

    .line 455
    move-object v1, v0

    .line 456
    move v0, v7

    .line 457
    move-object v7, v6

    .line 458
    move-object v6, v8

    .line 459
    move-object/from16 v24, v2

    .line 460
    .line 461
    move-object v8, v3

    .line 462
    const/4 v2, -0x1

    .line 463
    invoke-virtual {v9, v14, v12, v1, v2}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V

    .line 464
    .line 465
    .line 466
    const/4 v2, 0x1

    .line 467
    new-array v1, v2, [Ljava/lang/Object;

    .line 468
    .line 469
    aput-object v5, v1, p4

    .line 470
    .line 471
    const-string v3, "SYNC: Done fetching small messages for folder %s"

    .line 472
    .line 473
    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 477
    .line 478
    .line 479
    new-instance v1, Lcom/fsck/k9/mail/FetchProfile;

    .line 480
    .line 481
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .line 483
    .line 484
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 485
    .line 486
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    new-array v3, v2, [Ljava/lang/Object;

    .line 490
    .line 491
    aput-object v15, v3, p4

    .line 492
    .line 493
    const-string v2, "SYNC: Fetching large messages for folder %s"

    .line 494
    .line 495
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    const/4 v2, 0x0

    .line 499
    invoke-virtual {v9, v10, v1, v2, v11}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-eqz v3, :cond_9

    .line 511
    .line 512
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    check-cast v3, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 517
    .line 518
    iget-object v4, v3, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 519
    .line 520
    sget-object v5, Lcom/fsck/k9/mail/MessageDownloadState;->PARTIAL:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 521
    .line 522
    if-nez v4, :cond_7

    .line 523
    .line 524
    new-instance v4, Lcom/fsck/k9/mail/FetchProfile;

    .line 525
    .line 526
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .line 528
    .line 529
    sget-object v12, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 530
    .line 531
    invoke-virtual {v4, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 535
    .line 536
    .line 537
    move-result-object v12

    .line 538
    invoke-virtual {v9, v12, v4, v2, v11}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v6, v3, v5}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V

    .line 542
    .line 543
    .line 544
    goto :goto_6

    .line 545
    :cond_7
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 546
    .line 547
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .line 549
    .line 550
    new-instance v12, Ljava/util/ArrayList;

    .line 551
    .line 552
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .line 554
    .line 555
    invoke-static {v3, v4, v12}, Lcom/fsck/k9/mail/internet/JisSupport;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 556
    .line 557
    .line 558
    invoke-static {v4}, Lcom/fsck/k9/mail/internet/JisSupport;->getParts(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 559
    .line 560
    .line 561
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    new-instance v12, Lokio/AsyncTimeout$Companion;

    .line 563
    .line 564
    const/16 v14, 0x12

    .line 565
    .line 566
    invoke-direct {v12, v14}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    .line 575
    .line 576
    move-result v14

    .line 577
    if-eqz v14, :cond_8

    .line 578
    .line 579
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v14

    .line 583
    check-cast v14, Lcom/fsck/k9/mail/Part;

    .line 584
    .line 585
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v9, v3, v14, v12, v11}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetchPart(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/Part;Lokio/AsyncTimeout$Companion;I)V

    .line 589
    .line 590
    .line 591
    goto :goto_5

    .line 592
    :cond_8
    invoke-virtual {v6, v3, v5}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V

    .line 593
    .line 594
    .line 595
    :goto_6
    iget-object v3, v3, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 596
    .line 597
    move-object/from16 v4, p0

    .line 598
    .line 599
    iget-object v5, v4, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v5, Ljava/lang/String;

    .line 602
    .line 603
    const/4 v12, 0x3

    .line 604
    new-array v14, v12, [Ljava/lang/Object;

    .line 605
    .line 606
    aput-object v5, v14, p4

    .line 607
    .line 608
    const/16 v23, 0x1

    .line 609
    .line 610
    aput-object v15, v14, v23

    .line 611
    .line 612
    const/16 v20, 0x2

    .line 613
    .line 614
    aput-object v3, v14, v20

    .line 615
    .line 616
    const-string v5, "About to notify listeners that we got a new large message %s:%s:%s"

    .line 617
    .line 618
    invoke-static {v5, v14}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 622
    .line 623
    .line 624
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 625
    .line 626
    .line 627
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 628
    .line 629
    .line 630
    move-result v5

    .line 631
    invoke-interface {v7, v5, v15, v0}, Lcom/fsck/k9/backend/api/SyncListener;->syncProgress(ILjava/lang/String;I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    move-object/from16 v5, p5

    .line 638
    .line 639
    invoke-static {v3, v5}, Lcom/fsck/k9/backend/imap/ImapSync;->isOldMessage(Ljava/lang/String;Ljava/lang/Long;)Z

    .line 640
    .line 641
    .line 642
    move-result v14

    .line 643
    invoke-interface {v7, v15, v3, v14}, Lcom/fsck/k9/backend/api/SyncListener;->syncNewMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_4

    .line 647
    .line 648
    :catch_0
    move-exception v0

    .line 649
    new-instance v1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 650
    .line 651
    const-string v2, "Couldn\'t extract viewable parts"

    .line 652
    .line 653
    move/from16 v12, p4

    .line 654
    .line 655
    invoke-direct {v1, v2, v12, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 656
    .line 657
    .line 658
    throw v1

    .line 659
    :cond_9
    move/from16 v12, p4

    .line 660
    .line 661
    const/4 v14, 0x1

    .line 662
    new-array v1, v14, [Ljava/lang/Object;

    .line 663
    .line 664
    aput-object v15, v1, v12

    .line 665
    .line 666
    const-string v3, "SYNC: Done fetching large messages for folder %s"

    .line 667
    .line 668
    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 672
    .line 673
    .line 674
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    const/4 v10, 0x2

    .line 683
    new-array v3, v10, [Ljava/lang/Object;

    .line 684
    .line 685
    aput-object v1, v3, v12

    .line 686
    .line 687
    aput-object v15, v3, v14

    .line 688
    .line 689
    const-string v1, "SYNC: About to sync flags for %d remote messages for folder %s"

    .line 690
    .line 691
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    new-instance v1, Lcom/fsck/k9/mail/FetchProfile;

    .line 695
    .line 696
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    new-instance v3, Ljava/util/ArrayList;

    .line 703
    .line 704
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .line 706
    .line 707
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    :cond_a
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 712
    .line 713
    .line 714
    move-result v5

    .line 715
    if-eqz v5, :cond_b

    .line 716
    .line 717
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v5

    .line 721
    check-cast v5, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 722
    .line 723
    sget-object v10, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 724
    .line 725
    iget-object v12, v5, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 726
    .line 727
    invoke-interface {v12, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-result v10

    .line 731
    if-nez v10, :cond_a

    .line 732
    .line 733
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    goto :goto_7

    .line 737
    :cond_b
    invoke-virtual {v9, v3, v1, v2, v11}, Lcom/fsck/k9/mail/store/imap/RealImapFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lokhttp3/HttpUrl$Builder;I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 741
    .line 742
    .line 743
    move-result-object v9

    .line 744
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    if-eqz v1, :cond_13

    .line 749
    .line 750
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    move-object v10, v1

    .line 755
    check-cast v10, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    .line 756
    .line 757
    iget-object v3, v10, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 758
    .line 759
    iget-object v11, v10, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 760
    .line 761
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    .line 763
    .line 764
    move v5, v0

    .line 765
    move-wide/from16 v12, v18

    .line 766
    .line 767
    move-object/from16 v0, v22

    .line 768
    .line 769
    invoke-virtual {v0, v12, v13, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->isMessagePresent(JLjava/lang/String;)Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-nez v1, :cond_c

    .line 774
    .line 775
    :goto_9
    move v6, v5

    .line 776
    const/4 v3, 0x0

    .line 777
    const/16 v21, 0x1

    .line 778
    .line 779
    goto/16 :goto_b

    .line 780
    .line 781
    :cond_c
    invoke-virtual {v0, v12, v13, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->getMessageFlags(JLjava/lang/String;)Ljava/util/Set;

    .line 782
    .line 783
    .line 784
    move-result-object v14

    .line 785
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 786
    .line 787
    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-eqz v1, :cond_d

    .line 792
    .line 793
    goto :goto_9

    .line 794
    :cond_d
    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v1

    .line 798
    if-eqz v1, :cond_f

    .line 799
    .line 800
    move-object/from16 v1, p1

    .line 801
    .line 802
    iget-boolean v2, v1, Lcom/fsck/k9/backend/api/SyncConfig;->syncRemoteDeletions:Z

    .line 803
    .line 804
    if-eqz v2, :cond_e

    .line 805
    .line 806
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    iget-wide v1, v6, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 810
    .line 811
    move v11, v5

    .line 812
    const/4 v5, 0x1

    .line 813
    invoke-virtual/range {v0 .. v5}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setMessageFlag(JLjava/lang/String;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 814
    .line 815
    .line 816
    move/from16 v21, v5

    .line 817
    .line 818
    move v6, v11

    .line 819
    move/from16 v3, v21

    .line 820
    .line 821
    goto :goto_b

    .line 822
    :cond_e
    const/16 v21, 0x1

    .line 823
    .line 824
    move v6, v5

    .line 825
    const/4 v3, 0x0

    .line 826
    goto :goto_b

    .line 827
    :cond_f
    move-object/from16 v1, p1

    .line 828
    .line 829
    const/16 v21, 0x1

    .line 830
    .line 831
    iget-object v2, v1, Lcom/fsck/k9/backend/api/SyncConfig;->syncFlags:Ljava/util/Set;

    .line 832
    .line 833
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 834
    .line 835
    .line 836
    move-result-object v16

    .line 837
    const/4 v2, 0x0

    .line 838
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 839
    .line 840
    .line 841
    move-result v4

    .line 842
    if-eqz v4, :cond_11

    .line 843
    .line 844
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v4

    .line 848
    check-cast v4, Lnet/thunderbird/core/common/mail/Flag;

    .line 849
    .line 850
    move-object/from16 v22, v0

    .line 851
    .line 852
    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    move-result v0

    .line 856
    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    if-eq v0, v1, :cond_10

    .line 861
    .line 862
    move v0, v5

    .line 863
    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result v5

    .line 867
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    .line 869
    .line 870
    iget-wide v1, v6, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 871
    .line 872
    move v6, v0

    .line 873
    move-object/from16 v0, v22

    .line 874
    .line 875
    invoke-virtual/range {v0 .. v5}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setMessageFlag(JLjava/lang/String;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 876
    .line 877
    .line 878
    move-object/from16 v1, p1

    .line 879
    .line 880
    move v5, v6

    .line 881
    move/from16 v2, v21

    .line 882
    .line 883
    move-object/from16 v6, p3

    .line 884
    .line 885
    goto :goto_a

    .line 886
    :cond_10
    move-object/from16 v1, p1

    .line 887
    .line 888
    move-object/from16 v6, p3

    .line 889
    .line 890
    move-object/from16 v0, v22

    .line 891
    .line 892
    goto :goto_a

    .line 893
    :cond_11
    move v6, v5

    .line 894
    move v3, v2

    .line 895
    :goto_b
    if-eqz v3, :cond_12

    .line 896
    .line 897
    iget-object v1, v10, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 898
    .line 899
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 900
    .line 901
    .line 902
    invoke-interface {v7, v15, v1}, Lcom/fsck/k9/backend/api/SyncListener;->syncFlagChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 906
    .line 907
    .line 908
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    invoke-interface {v7, v1, v15, v6}, Lcom/fsck/k9/backend/api/SyncListener;->syncProgress(ILjava/lang/String;I)V

    .line 913
    .line 914
    .line 915
    move-object/from16 v22, v0

    .line 916
    .line 917
    move v0, v6

    .line 918
    move-wide/from16 v18, v12

    .line 919
    .line 920
    move-object/from16 v6, p3

    .line 921
    .line 922
    goto/16 :goto_8

    .line 923
    .line 924
    :cond_13
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    const/4 v10, 0x2

    .line 933
    new-array v1, v10, [Ljava/lang/Object;

    .line 934
    .line 935
    const/16 v16, 0x0

    .line 936
    .line 937
    aput-object v15, v1, v16

    .line 938
    .line 939
    const/16 v23, 0x1

    .line 940
    .line 941
    aput-object v0, v1, v23

    .line 942
    .line 943
    const-string v0, "SYNC: Synced remote messages for folder %s, %d new messages"

    .line 944
    .line 945
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    .line 947
    .line 948
    return-void
.end method

.method public endBodyPart()V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public endHeader()V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/Part;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endMessage()V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public endMultipart()V
    .locals 5

    .line 1
    const-class v0, Lcom/fsck/k9/mail/Multipart;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    move v2, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v3

    .line 29
    :goto_0
    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeMultipart;->epilogue:[B

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    move v3, v4

    .line 36
    :cond_1
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    const-class v1, Lcom/fsck/k9/mail/Part;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-interface {p0, v0}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->epilogue:[B

    .line 29
    .line 30
    return-void
.end method

.method public expect(Ljava/lang/Class;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "\' found \'"

    .line 33
    .line 34
    const-string v1, "\'"

    .line 35
    .line 36
    const-string v2, "Internal stack error: Expected \'"

    .line 37
    .line 38
    invoke-static {v2, p1, v0, p0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public extractMessageForView(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/bumptech/glide/load/engine/Jobs;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroidx/work/Operation$State;->isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    const/16 v18, 0x0

    .line 19
    .line 20
    if-nez v4, :cond_8

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/work/Operation$State;->isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_8

    .line 27
    .line 28
    invoke-static {v1}, Landroidx/work/Operation$State;->isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_0
    invoke-static {v1}, Landroidx/work/Operation$State;->findPrimaryPartInAlternative(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_1
    iget-object v4, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 43
    .line 44
    const-string v7, "multipart/mixed"

    .line 45
    .line 46
    invoke-virtual {v1, v7}, Lcom/fsck/k9/mail/internet/MimeMessage;->isMimeType(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_2

    .line 51
    .line 52
    instance-of v7, v4, Lcom/fsck/k9/mail/Multipart;

    .line 53
    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    check-cast v4, Lcom/fsck/k9/mail/Multipart;

    .line 57
    .line 58
    iget-object v7, v4, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_3

    .line 65
    .line 66
    :cond_2
    move-object/from16 v4, v18

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-static {v8}, Landroidx/work/Operation$State;->isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-nez v9, :cond_5

    .line 78
    .line 79
    invoke-static {v8}, Landroidx/work/Operation$State;->isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-nez v9, :cond_5

    .line 84
    .line 85
    invoke-static {v8}, Landroidx/work/Operation$State;->isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-static {v8}, Landroidx/work/Operation$State;->findPrimaryPartInAlternative(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    :cond_5
    :goto_0
    if-eqz v8, :cond_6

    .line 97
    .line 98
    move v9, v5

    .line 99
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-ge v9, v10, :cond_6

    .line 104
    .line 105
    invoke-virtual {v4, v9}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    add-int/lit8 v9, v9, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    move-object v4, v8

    .line 116
    :goto_2
    if-eqz v4, :cond_7

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_7
    move-object/from16 v4, v18

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    :goto_3
    move-object v4, v1

    .line 123
    :goto_4
    if-nez v4, :cond_a

    .line 124
    .line 125
    if-eqz v2, :cond_9

    .line 126
    .line 127
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_9

    .line 134
    .line 135
    const-string v2, "Got crypto message cryptoContentAnnotations but no crypto root part!"

    .line 136
    .line 137
    new-array v3, v6, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_9
    invoke-virtual {v0, v1, v1}, Lcom/fsck/k9/backend/imap/ImapSync;->extractSimpleMessageForView(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1, v6}, Lcom/fsck/k9/mailstore/MessageViewInfo;->withSubject(Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    return-object v0

    .line 155
    :cond_a
    invoke-static {v4}, Landroidx/work/Operation$State;->isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_b

    .line 160
    .line 161
    invoke-static {v4}, Landroidx/work/Operation$State;->isMultipartEncryptedOpenPgpProtocol(Lcom/fsck/k9/mail/Part;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-nez v7, :cond_c

    .line 166
    .line 167
    :cond_b
    invoke-static {v4}, Landroidx/work/Operation$State;->isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_d

    .line 172
    .line 173
    :cond_c
    move v7, v5

    .line 174
    goto :goto_5

    .line 175
    :cond_d
    move v7, v6

    .line 176
    :goto_5
    if-nez p3, :cond_e

    .line 177
    .line 178
    if-eqz v7, :cond_e

    .line 179
    .line 180
    new-instance v16, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 181
    .line 182
    const/4 v14, 0x0

    .line 183
    const/4 v15, 0x0

    .line 184
    const/16 v8, 0x9

    .line 185
    .line 186
    const/4 v10, 0x0

    .line 187
    const/4 v11, 0x0

    .line 188
    const/4 v12, 0x0

    .line 189
    const/4 v13, 0x0

    .line 190
    move-object/from16 v7, v16

    .line 191
    .line 192
    move-object/from16 v9, v18

    .line 193
    .line 194
    invoke-direct/range {v7 .. v15}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(ILcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v6}, Lcom/fsck/k9/mailstore/MessageViewInfo;->createWithErrorState(Lcom/fsck/k9/mail/internet/MimeMessage;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-instance v7, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 202
    .line 203
    iget-object v8, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 204
    .line 205
    iget-boolean v9, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    .line 206
    .line 207
    iget-object v10, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 208
    .line 209
    iget-object v11, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->subject:Ljava/lang/String;

    .line 210
    .line 211
    const/16 v17, 0x0

    .line 212
    .line 213
    const/16 v20, 0x0

    .line 214
    .line 215
    const/4 v12, 0x0

    .line 216
    const/4 v15, 0x0

    .line 217
    move-object/from16 v19, v18

    .line 218
    .line 219
    invoke-direct/range {v7 .. v20}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/helper/UnsubscribeUri;)V

    .line 220
    .line 221
    .line 222
    return-object v7

    .line 223
    :cond_e
    move-object/from16 v9, v18

    .line 224
    .line 225
    if-eqz v2, :cond_f

    .line 226
    .line 227
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    move-object/from16 v18, v2

    .line 234
    .line 235
    check-cast v18, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 236
    .line 237
    move-object/from16 v2, v18

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_f
    move-object v2, v9

    .line 241
    :goto_6
    if-eqz v2, :cond_11

    .line 242
    .line 243
    iget-object v7, v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 244
    .line 245
    if-eqz v7, :cond_10

    .line 246
    .line 247
    move-object v4, v7

    .line 248
    :cond_10
    new-instance v7, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v7, v3}, Lcom/fsck/k9/backend/imap/ImapSync;->extractViewableAndAttachments(Ljava/util/ArrayList;Ljava/util/List;)Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v0, v1, v4}, Lcom/fsck/k9/backend/imap/ImapSync;->extractSimpleMessageForView(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-object v1, v3, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 262
    .line 263
    move-object/from16 v30, v1

    .line 264
    .line 265
    check-cast v30, Ljava/lang/String;

    .line 266
    .line 267
    new-instance v19, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 268
    .line 269
    iget-object v1, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 270
    .line 271
    iget-boolean v3, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    .line 272
    .line 273
    iget-object v4, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 274
    .line 275
    iget-object v8, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->text:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v10, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->textPlainFormatted:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v11, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 280
    .line 281
    iget-object v12, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 282
    .line 283
    iget-object v0, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

    .line 284
    .line 285
    const/16 v23, 0x0

    .line 286
    .line 287
    const/16 v24, 0x0

    .line 288
    .line 289
    move-object/from16 v32, v0

    .line 290
    .line 291
    move-object/from16 v20, v1

    .line 292
    .line 293
    move-object/from16 v28, v2

    .line 294
    .line 295
    move/from16 v21, v3

    .line 296
    .line 297
    move-object/from16 v22, v4

    .line 298
    .line 299
    move-object/from16 v31, v7

    .line 300
    .line 301
    move-object/from16 v25, v8

    .line 302
    .line 303
    move-object/from16 v26, v10

    .line 304
    .line 305
    move-object/from16 v27, v11

    .line 306
    .line 307
    move-object/from16 v29, v12

    .line 308
    .line 309
    invoke-direct/range {v19 .. v32}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/helper/UnsubscribeUri;)V

    .line 310
    .line 311
    .line 312
    :goto_7
    move-object/from16 v0, v19

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_11
    invoke-virtual {v0, v1, v1}, Lcom/fsck/k9/backend/imap/ImapSync;->extractSimpleMessageForView(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 316
    .line 317
    .line 318
    move-result-object v19

    .line 319
    goto :goto_7

    .line 320
    :goto_8
    iget-object v1, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 321
    .line 322
    iget-object v2, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 323
    .line 324
    if-eqz v1, :cond_14

    .line 325
    .line 326
    iget-object v1, v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 327
    .line 328
    if-eqz v1, :cond_14

    .line 329
    .line 330
    iget v1, v1, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    .line 331
    .line 332
    if-ne v1, v5, :cond_14

    .line 333
    .line 334
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const-string v3, "protected-headers"

    .line 339
    .line 340
    invoke-static {v1, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    const-string v3, "Subject"

    .line 345
    .line 346
    invoke-interface {v2, v3}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    const-string/jumbo v3, "v1"

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_13

    .line 358
    .line 359
    array-length v1, v2

    .line 360
    if-lez v1, :cond_13

    .line 361
    .line 362
    aget-object v1, v2, v6

    .line 363
    .line 364
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    if-nez v1, :cond_12

    .line 369
    .line 370
    const/4 v1, 0x0

    .line 371
    :goto_9
    move-object/from16 v18, v1

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_12
    invoke-static {v1, v9}, Lcom/fsck/k9/mail/internet/JisSupport;->decodeEncodedWords(Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeMessage;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    goto :goto_9

    .line 379
    :goto_a
    move-object/from16 v9, v18

    .line 380
    .line 381
    :cond_13
    if-eqz v9, :cond_14

    .line 382
    .line 383
    invoke-virtual {v0, v9, v5}, Lcom/fsck/k9/mailstore/MessageViewInfo;->withSubject(Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    return-object v0

    .line 388
    :cond_14
    iget-object v1, v0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v0, v1, v6}, Lcom/fsck/k9/mailstore/MessageViewInfo;->withSubject(Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    return-object v0
.end method

.method public extractSimpleMessageForView(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 14

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v8, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->extractViewableAndAttachments(Ljava/util/ArrayList;Ljava/util/List;)Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static/range {p2 .. p2}, Lcom/fsck/k9/mailstore/AttachmentResolver;->createFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 19
    .line 20
    iget-object v2, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 21
    .line 22
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->hasMissingParts(Lcom/fsck/k9/mail/Part;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    move v0, v2

    .line 40
    :goto_1
    sget-object v4, Lcom/fsck/k9/helper/ListUnsubscribeHelper;->MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    .line 42
    const-string v4, "List-Unsubscribe"

    .line 43
    .line 44
    iget-object v5, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    array-length v5, v4

    .line 54
    const/4 v6, 0x0

    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    :cond_2
    :goto_2
    move-object v13, v6

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    array-length v7, v4

    .line 66
    move v9, v3

    .line 67
    :goto_3
    if-ge v9, v7, :cond_9

    .line 68
    .line 69
    aget-object v11, v4, v9

    .line 70
    .line 71
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-nez v12, :cond_5

    .line 79
    .line 80
    :cond_4
    move-object v11, v6

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    sget-object v12, Lcom/fsck/k9/helper/ListUnsubscribeHelper;->MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    .line 84
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-eqz v13, :cond_6

    .line 93
    .line 94
    invoke-virtual {v12, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    goto :goto_4

    .line 103
    :cond_6
    sget-object v12, Lcom/fsck/k9/helper/ListUnsubscribeHelper;->HTTPS_CONTAINER_PATTERN:Ljava/util/regex/Pattern;

    .line 104
    .line 105
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-eqz v12, :cond_4

    .line 114
    .line 115
    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    :goto_4
    if-nez v11, :cond_7

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_7
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    const-string v13, "mailto"

    .line 131
    .line 132
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_8

    .line 137
    .line 138
    new-instance v6, Lcom/fsck/k9/helper/MailtoUnsubscribeUri;

    .line 139
    .line 140
    invoke-direct {v6, v11}, Lcom/fsck/k9/helper/MailtoUnsubscribeUri;-><init>(Landroid/net/Uri;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_2

    .line 155
    .line 156
    new-instance v6, Lcom/fsck/k9/helper/HttpsUnsubscribeUri;

    .line 157
    .line 158
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Landroid/net/Uri;

    .line 163
    .line 164
    invoke-direct {v6, v2}, Lcom/fsck/k9/helper/HttpsUnsubscribeUri;-><init>(Landroid/net/Uri;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :goto_6
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 169
    .line 170
    move-object v6, v2

    .line 171
    check-cast v6, Ljava/lang/String;

    .line 172
    .line 173
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p0, Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {p0}, Landroidx/work/OperationKt;->textToHtml(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    move v2, v0

    .line 182
    new-instance v0, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 183
    .line 184
    const/4 v11, 0x0

    .line 185
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    const/4 v5, 0x0

    .line 189
    const/4 v9, 0x0

    .line 190
    move-object v1, p1

    .line 191
    move-object/from16 v3, p2

    .line 192
    .line 193
    invoke-direct/range {v0 .. v13}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/helper/UnsubscribeUri;)V

    .line 194
    .line 195
    .line 196
    return-object v0
.end method

.method public extractViewableAndAttachments(Ljava/util/ArrayList;Ljava/util/List;)Lcom/fsck/k9/mailstore/LocalStore$1;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 26
    .line 27
    invoke-static {v2, v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p2, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 55
    .line 56
    invoke-virtual {p2, v3}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfo(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v2, 0x1

    .line 83
    :goto_2
    move v3, v2

    .line 84
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_c

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Lcom/fsck/k9/mail/internet/Viewable;

    .line 95
    .line 96
    instance-of v5, v4, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    .line 97
    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    xor-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    invoke-static {v4, v3}, Lcom/fsck/k9/backend/imap/ImapSync;->buildText(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v3}, Lcom/fsck/k9/backend/imap/ImapSync;->buildHtml(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_3
    move v3, p1

    .line 117
    goto :goto_3

    .line 118
    :catch_0
    move-exception p0

    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :cond_4
    instance-of v5, v4, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;

    .line 122
    .line 123
    if-eqz v5, :cond_8

    .line 124
    .line 125
    check-cast v4, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;

    .line 126
    .line 127
    iget-object v5, v4, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->mContainerPart:Lcom/fsck/k9/mail/Part;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->mMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 130
    .line 131
    xor-int/lit8 v6, v3, 0x1

    .line 132
    .line 133
    invoke-static {p2, v5, v6}, Lcom/fsck/k9/backend/imap/ImapSync;->addTextDivider(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/Part;Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p2, v4}, Lcom/fsck/k9/backend/imap/ImapSync;->addMessageHeaderText(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 137
    .line 138
    .line 139
    if-nez v3, :cond_7

    .line 140
    .line 141
    const-string v3, ""

    .line 142
    .line 143
    invoke-interface {v5}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-eqz v5, :cond_6

    .line 148
    .line 149
    const-string v6, "filename"

    .line 150
    .line 151
    invoke-static {v5, v6}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    if-nez v5, :cond_5

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    move-object v3, v5

    .line 159
    :cond_6
    :goto_4
    const-string v5, "<p style=\"margin-top: 2.5em; margin-bottom: 1em; border-bottom: 1px solid #000\">"

    .line 160
    .line 161
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v3, "</p>"

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :cond_7
    invoke-virtual {p0, v1, v4}, Lcom/fsck/k9/backend/imap/ImapSync;->addMessageHeaderHtml(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_8
    instance-of v5, v4, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 181
    .line 182
    if-eqz v5, :cond_2

    .line 183
    .line 184
    check-cast v4, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 185
    .line 186
    iget-object v5, v4, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mHtml:Ljava/util/ArrayList;

    .line 187
    .line 188
    iget-object v4, v4, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mText:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_9

    .line 195
    .line 196
    move-object v6, v5

    .line 197
    goto :goto_5

    .line 198
    :cond_9
    move-object v6, v4

    .line 199
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_a

    .line 204
    .line 205
    move-object v5, v4

    .line 206
    :cond_a
    xor-int/lit8 v3, v3, 0x1

    .line 207
    .line 208
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    move v6, v3

    .line 213
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_b

    .line 218
    .line 219
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Lcom/fsck/k9/mail/internet/Viewable;

    .line 224
    .line 225
    invoke-static {v7, v6}, Lcom/fsck/k9/backend/imap/ImapSync;->buildText(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move v6, v2

    .line 233
    goto :goto_6

    .line 234
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_3

    .line 243
    .line 244
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Lcom/fsck/k9/mail/internet/Viewable;

    .line 249
    .line 250
    invoke-static {v5, v3}, Lcom/fsck/k9/backend/imap/ImapSync;->buildHtml(Lcom/fsck/k9/mail/internet/Viewable;Z)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move v3, v2

    .line 258
    goto :goto_7

    .line 259
    :cond_c
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->processForDisplay(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    const/16 v1, 0xa

    .line 278
    .line 279
    invoke-direct {v0, v1, p2, p0}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .line 281
    .line 282
    return-object v0

    .line 283
    :goto_8
    new-instance p2, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 284
    .line 285
    const-string v0, "Couldn\'t extract viewable parts"

    .line 286
    .line 287
    invoke-direct {p2, v0, p1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    throw p2
.end method

.method public field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/Part;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 27
    .line 28
    invoke-interface {p0, v0, p1}, Lcom/fsck/k9/mail/Part;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public getImageType()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/bumptech/glide/load/ImageHeaderParser;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    :try_start_0
    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 33
    .line 34
    new-instance v7, Ljava/io/FileInputStream;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v6, v7, p0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-interface {v4, v6}, Lcom/bumptech/glide/load/ImageHeaderParser;->getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 51
    .line 52
    .line 53
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v6}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 58
    .line 59
    .line 60
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 61
    .line 62
    if-eq v4, v5, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    move-object v5, v6

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    :goto_1
    if-eqz v5, :cond_1

    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/InputStreamRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_2
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 82
    .line 83
    :goto_2
    return-object v4

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/util/List;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Lcom/bumptech/glide/load/data/InputStreamRewinder;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/bumptech/glide/load/data/InputStreamRewinder;->bufferedStream:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->reset()V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 102
    .line 103
    invoke-static {v0, v1, p0}, Landroidx/work/OperationKt;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Ljava/util/List;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->rewind(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v0, p0}, Landroidx/work/OperationKt;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListItem(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Long;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public getListSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getNormalizedServerId(Lcom/fsck/k9/backend/imap/LegacyFolderListItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getCombinedPrefix()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lcom/fsck/k9/backend/imap/LegacyFolderListItem;->serverId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object p0, p1, Lcom/fsck/k9/backend/imap/LegacyFolderListItem;->serverId:Ljava/lang/String;

    .line 19
    .line 20
    return-object p0
.end method

.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    invoke-static {p1}, Lcom/fsck/k9/backend/imap/ImapSync;->isSafeTag(Lorg/jsoup/nodes/Node;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 19
    .line 20
    iget-object p2, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 21
    .line 22
    iget-object p2, p2, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lorg/jsoup/nodes/Element;

    .line 36
    .line 37
    const-string v2, "http://www.w3.org/1999/xhtml"

    .line 38
    .line 39
    sget-object v3, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 40
    .line 41
    invoke-static {p2, v2, v3}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v1, p2, p1, v0}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 65
    .line 66
    if-eq p1, p2, :cond_4

    .line 67
    .line 68
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    new-instance p2, Lorg/jsoup/nodes/TextNode;

    .line 78
    .line 79
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 80
    .line 81
    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p2, p1}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    instance-of p2, p1, Lorg/jsoup/nodes/DataNode;

    .line 97
    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    iget-object p2, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 101
    .line 102
    invoke-static {p2}, Lcom/fsck/k9/backend/imap/ImapSync;->isSafeTag(Lorg/jsoup/nodes/Node;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    new-instance p2, Lorg/jsoup/nodes/DataNode;

    .line 109
    .line 110
    check-cast p1, Lorg/jsoup/nodes/DataNode;

    .line 111
    .line 112
    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p2, p1}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 122
    .line 123
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_0
    return-void
.end method

.method public onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/window/layout/WindowLayoutInfo;

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Landroidx/window/layout/WindowLayoutInfo;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/window/layout/WindowLayoutInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Landroidx/work/Configuration$Builder;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iput-object p2, v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->lastInfo:Landroidx/window/layout/WindowLayoutInfo;

    .line 79
    .line 80
    iget-object v1, v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 83
    .line 84
    const/4 v3, 0x4

    .line 85
    invoke-direct {v2, v3, v0, p2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-void

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public postDbWork()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->preamble:[B

    .line 29
    .line 30
    return-void
.end method

.method public processForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/work/Configuration$Builder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/beetstra/jutf7/Base64Util;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lorg/jsoup/safety/Cleaner;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lorg/jsoup/nodes/Document;

    .line 34
    .line 35
    invoke-direct {v3, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "html"

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v4, "head"

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 47
    .line 48
    .line 49
    const-string v4, "body"

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    new-instance v5, Lorg/jsoup/internal/SoftPool;

    .line 63
    .line 64
    invoke-direct {v5, v1, v2, v4}, Lorg/jsoup/internal/SoftPool;-><init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v5, v2}, Lkotlin/uuid/UuidKt;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p1, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 71
    .line 72
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v3, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 77
    .line 78
    iget-object v1, p1, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v4, 0x0

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 96
    .line 97
    instance-of v5, v2, Lorg/jsoup/nodes/DocumentType;

    .line 98
    .line 99
    if-eqz v5, :cond_1

    .line 100
    .line 101
    check-cast v2, Lorg/jsoup/nodes/DocumentType;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    instance-of v2, v2, Lorg/jsoup/nodes/LeafNode;

    .line 105
    .line 106
    if-nez v2, :cond_0

    .line 107
    .line 108
    :cond_2
    move-object v2, v4

    .line 109
    :goto_0
    const/4 v1, 0x1

    .line 110
    const/4 v5, 0x0

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    new-array v6, v1, [Lorg/jsoup/nodes/Node;

    .line 114
    .line 115
    aput-object v2, v6, v5

    .line 116
    .line 117
    iget-object v2, v3, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-ltz v2, :cond_3

    .line 124
    .line 125
    move v2, v1

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    move v2, v5

    .line 128
    :goto_1
    const-string v7, "Insert position out of bounds."

    .line 129
    .line 130
    invoke-static {v7, v2}, Lorg/jsoup/helper/Validate;->isTrue(Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v5, v6}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v7, Lorg/jsoup/nodes/Attributes$1;

    .line 152
    .line 153
    invoke-direct {v7, v6}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_2
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attributes$1;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attributes$1;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lorg/jsoup/nodes/Attribute;

    .line 167
    .line 168
    iget-object v8, v6, Lorg/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v9, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v9, Ljava/util/Set;

    .line 173
    .line 174
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_5

    .line 179
    .line 180
    iget-object v6, v6, Lorg/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v6, :cond_7

    .line 183
    .line 184
    invoke-static {v2}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    iget-object v9, v9, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    iget-boolean v9, v9, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    .line 198
    .line 199
    if-nez v9, :cond_6

    .line 200
    .line 201
    invoke-static {v8}, Lorg/jsoup/internal/Functions;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    :cond_6
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v9, v8, v6}, Lorg/jsoup/nodes/Attributes;->putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_7
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v6, v8, v4}, Lorg/jsoup/nodes/Attributes;->putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_8
    const-string v0, "a style"

    .line 222
    .line 223
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->reset()V

    .line 234
    .line 235
    .line 236
    const-class v2, Lorg/jsoup/nodes/Element;

    .line 237
    .line 238
    invoke-static {v3, v2}, Lorg/jsoup/nodes/NodeUtils;->stream(Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Lj$/util/stream/Stream;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    new-instance v6, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda0;

    .line 243
    .line 244
    invoke-direct {v6, v0, v3}, Lorg/jsoup/select/Evaluator$$ExternalSyntheticLambda0;-><init>(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Document;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v2, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    new-instance v2, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 252
    .line 253
    const/16 v6, 0x8

    .line 254
    .line 255
    invoke-direct {v2, v6}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 256
    .line 257
    .line 258
    invoke-static {v2}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lorg/jsoup/select/Elements;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_e

    .line 280
    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    const-string v6, "a"

    .line 291
    .line 292
    invoke-static {v6}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-static {v6}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    move-object v7, v2

    .line 300
    :goto_4
    iget-object v8, v7, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 301
    .line 302
    if-eqz v8, :cond_9

    .line 303
    .line 304
    move-object v7, v8

    .line 305
    goto :goto_4

    .line 306
    :cond_9
    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 307
    .line 308
    move-object v8, v2

    .line 309
    :cond_a
    invoke-virtual {v6, v7, v8}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    if-eqz v9, :cond_b

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_b
    iget-object v8, v8, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 317
    .line 318
    check-cast v8, Lorg/jsoup/nodes/Element;

    .line 319
    .line 320
    if-nez v8, :cond_a

    .line 321
    .line 322
    move-object v8, v4

    .line 323
    :goto_5
    if-nez v8, :cond_c

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_c
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->remove()V

    .line 334
    .line 335
    .line 336
    iget v2, v8, Lorg/jsoup/nodes/Node;->siblingIndex:I

    .line 337
    .line 338
    iget-object v7, v8, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 339
    .line 340
    invoke-static {v7}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    iget-object v7, v8, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 344
    .line 345
    instance-of v9, v7, Lorg/jsoup/nodes/Element;

    .line 346
    .line 347
    if-eqz v9, :cond_d

    .line 348
    .line 349
    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_d
    move-object v7, v4

    .line 353
    :goto_6
    invoke-static {v8}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    invoke-virtual {v9, v6, v7, v10}, Lorg/jsoup/parser/Parser;->parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    iget-object v7, v8, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 366
    .line 367
    new-array v8, v5, [Lorg/jsoup/nodes/Node;

    .line 368
    .line 369
    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    check-cast v6, [Lorg/jsoup/nodes/Node;

    .line 374
    .line 375
    invoke-virtual {v7, v2, v6}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_e
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    new-instance v2, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 388
    .line 389
    invoke-direct {v2, p1, v0}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v2, p1}, Lkotlin/uuid/UuidKt;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/DisplayHtml;->getHeadHtml()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {p1}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v2, v0, p1, v4}, Lorg/jsoup/parser/Parser;->parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    new-array v2, v5, [Lorg/jsoup/nodes/Node;

    .line 420
    .line 421
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, [Lorg/jsoup/nodes/Node;

    .line 426
    .line 427
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    array-length v4, v0

    .line 432
    move v6, v5

    .line 433
    :goto_7
    if-ge v6, v4, :cond_10

    .line 434
    .line 435
    aget-object v7, v0, v6

    .line 436
    .line 437
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    iget-object v8, v7, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 441
    .line 442
    if-eqz v8, :cond_f

    .line 443
    .line 444
    invoke-virtual {v8, v7}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 445
    .line 446
    .line 447
    :cond_f
    iput-object p1, v7, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 448
    .line 449
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    sub-int/2addr v8, v1

    .line 457
    iput v8, v7, Lorg/jsoup/nodes/Node;->siblingIndex:I

    .line 458
    .line 459
    add-int/lit8 v6, v6, 0x1

    .line 460
    .line 461
    goto :goto_7

    .line 462
    :cond_10
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast p0, Ljava/util/Set;

    .line 465
    .line 466
    move-object p1, p0

    .line 467
    check-cast p1, Ljava/util/Collection;

    .line 468
    .line 469
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    if-nez p1, :cond_13

    .line 474
    .line 475
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    check-cast p0, Ljava/lang/Iterable;

    .line 480
    .line 481
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    :cond_11
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_13

    .line 490
    .line 491
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Ljava/lang/String;

    .line 496
    .line 497
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    sget-object v1, Lorg/jsoup/nodes/Element;->ClassSplit:Ljava/util/regex/Pattern;

    .line 501
    .line 502
    const-string v2, "class"

    .line 503
    .line 504
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 517
    .line 518
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-direct {v4, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 523
    .line 524
    .line 525
    const-string v1, ""

    .line 526
    .line 527
    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-eqz v0, :cond_12

    .line 538
    .line 539
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    const/4 v2, -0x1

    .line 548
    if-eq v1, v2, :cond_11

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->remove(I)V

    .line 551
    .line 552
    .line 553
    goto :goto_8

    .line 554
    :cond_12
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    const-string v1, " "

    .line 559
    .line 560
    invoke-static {v4, v1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v0, v2, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    goto :goto_8

    .line 568
    :cond_13
    iget-object p0, v3, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 569
    .line 570
    iput-boolean v5, p0, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    .line 571
    .line 572
    iput v5, p0, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    .line 573
    .line 574
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object p0

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    return-object p0
.end method

.method public raw()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Not supported"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;->getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->isReleased:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;->reset(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public saveAndUploadDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mail/internet/MimeMessage;JLjava/lang/Long;Ljava/lang/String;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 16
    .line 17
    sget-object v2, Lcom/fsck/k9/mail/MessageDownloadState;->FULL:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 18
    .line 19
    invoke-virtual {p0, p2, v2, p6}, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;->createSaveMessageData(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p2, v1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 24
    .line 25
    iget-object p6, p2, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p6, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p6, p3, p4, p0, v2}, Lcom/fsck/k9/storage/messages/K9MessageStore;->saveLocalMessage(JLapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 35
    .line 36
    .line 37
    if-eqz p5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingController;->getLocalStoreOrThrow(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance p2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 44
    .line 45
    invoke-direct {p2, p0, p3, p4}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide p5

    .line 55
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 56
    .line 57
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    invoke-direct {v2, p2, p5, p6}, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;J)V

    .line 60
    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-virtual {p0, p2, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    move-object v2, p0

    .line 68
    check-cast v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 69
    .line 70
    :cond_0
    if-eqz v2, :cond_1

    .line 71
    .line 72
    iget-object p0, v2, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 73
    .line 74
    iget-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 75
    .line 76
    new-instance p5, Lokhttp3/ConnectionPool;

    .line 77
    .line 78
    const/4 p6, 0x1

    .line 79
    invoke-direct {p5, p6, v2}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p6, p5}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 86
    .line 87
    .line 88
    iget-wide v7, v2, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 89
    .line 90
    move-wide v3, p3

    .line 91
    invoke-static/range {v3 .. v8}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;->create(JJJ)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingReplace;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p1, p0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    move-wide v3, p3

    .line 100
    iget-object p0, v1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 105
    .line 106
    invoke-virtual {p0, v5, v6}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getMessageServerId(J)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-eqz p0, :cond_2

    .line 111
    .line 112
    invoke-static {v3, v4, p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->create(JLjava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v0, p1, p0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 120
    .line 121
    .line 122
    return-wide v5
.end method

.method public setIdentity(Lnet/thunderbird/core/android/account/Identity;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lcom/fsck/k9/view/RecipientSelectView;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, [Lcom/fsck/k9/mail/Address;

    .line 21
    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    move-object v6, v5

    .line 55
    check-cast v6, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 56
    .line 57
    iget-object v6, v6, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 58
    .line 59
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroid/text/TextWatcher;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeObjectSync(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/text/TextWatcher;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    sget-object p1, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 136
    .line 137
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Lnet/thunderbird/core/android/account/Identity;

    .line 140
    .line 141
    const/4 v1, 0x0

    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    iget-object p1, p1, Lnet/thunderbird/core/android/account/Identity;->replyTo:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    array-length v2, p1

    .line 151
    if-nez v2, :cond_5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    move-object v1, p1

    .line 155
    :goto_4
    iput-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 156
    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalStore$7;->silentlyAddAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    return-void

    .line 163
    :cond_7
    const-string p0, "identity"

    .line 164
    .line 165
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v1
.end method

.method public startBodyPart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedList;

    .line 4
    .line 5
    const-class v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public startHeader()V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/Part;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startMessage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-class v1, Lcom/fsck/k9/mail/Part;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 29
    .line 30
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public startMultipart(Lcom/eygraber/uri/Uri$Builder;)V
    .locals 3

    .line 1
    const-class v0, Lcom/fsck/k9/mail/Part;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->expect(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/fsck/k9/mail/Part;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 25
    .line 26
    invoke-direct {v2, v1, p1}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-static {p1}, Lcom/fsck/k9/backend/imap/ImapSync;->isSafeTag(Lorg/jsoup/nodes/Node;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 26
    .line 27
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string p0, "Missing parent"

    .line 35
    .line 36
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "NavDeepLinkRequest{"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroid/net/Uri;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string v3, " uri="

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-string p0, " action="

    .line 47
    .line 48
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const-string p0, " mimetype="

    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_2
    const-string p0, " }"

    .line 65
    .line 66
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lokio/PriorityQueue;

    .line 14
    .line 15
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 24
    .line 25
    invoke-static {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0, p2}, Lokio/PriorityQueue;->transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    instance-of v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method
