.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/webkit/internal/WebViewProviderFactory;
.implements Lokhttp3/Callback;
.implements Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlProvider;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;
.implements Lcom/bumptech/glide/load/Encoder;
.implements Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Lorg/apache/james/mime4j/parser/ContentHandler;
.implements Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;


# instance fields
.field public final synthetic $r8$classId:I

.field public workerFactory:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance p1, Landroidx/work/Configuration$Builder;

    .line 14
    .line 15
    const/16 v0, 0xf

    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroidx/work/Configuration$Builder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 21
    .line 22
    return-void

    .line 23
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/bumptech/glide/load/model/ModelCache$1;

    .line 27
    .line 28
    const-wide/16 v0, 0x1f4

    .line 29
    .line 30
    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 34
    .line 35
    return-void

    .line 36
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 40
    .line 41
    const/4 v0, 0x7

    .line 42
    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 46
    .line 47
    return-void

    .line 48
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/beetstra/jutf7/Base64Util;

    .line 52
    .line 53
    const/16 v0, 0xc

    .line 54
    .line 55
    invoke-direct {p1, v0}, Lcom/beetstra/jutf7/Base64Util;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 59
    .line 60
    return-void

    .line 61
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroidx/room/util/DBUtil;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 73
    .line 74
    return-void

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 81
    iput p1, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 75
    iput p1, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0xc

    iput v0, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 78
    new-instance v0, Landroidx/navigation/internal/NavContext;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    return-void
.end method

.method public static parse(Lcom/fsck/k9/mail/store/imap/ImapList;)Landroidx/work/Configuration$Builder;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "CAPABILITY"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 26
    .line 27
    add-int/lit8 v2, v0, -0x1

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    :goto_0
    if-ge v2, v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance p0, Landroidx/work/Configuration$Builder;

    .line 61
    .line 62
    invoke-direct {p0, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/util/HashSet;)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method


# virtual methods
.method public body(Lcom/eygraber/uri/Uri$Builder;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1

    .line 1
    iget p1, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/work/Configuration$Builder;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader;-><init>(Landroidx/work/Configuration$Builder;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    new-instance p1, Lcom/bumptech/glide/load/model/FileLoader;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/FileLoader;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public clientInfo()Lcom/fsck/k9/mail/store/imap/ImapClientInfo;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lokhttp3/Dispatcher;

    .line 11
    .line 12
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->clientInfoAppName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->clientInfoAppVersion:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public create()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/appcompat/widget/TooltipPopup;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v4, v0

    .line 25
    check-cast v4, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v5, v0

    .line 30
    check-cast v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    .line 33
    .line 34
    move-object v6, v0

    .line 35
    check-cast v6, Lcom/bumptech/glide/load/engine/Engine;

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v7, v0

    .line 40
    check-cast v7, Lcom/bumptech/glide/load/engine/Engine;

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v8, p0

    .line 45
    check-cast v8, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 46
    .line 47
    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/Engine;Lcom/fsck/k9/backend/imap/ImapSync;)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :pswitch_0
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 52
    .line 53
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lde/cketti/changelog/XmlParser;

    .line 56
    .line 57
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lcom/bumptech/glide/util/GlideSuppliers$1;

    .line 60
    .line 61
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 64
    .line 65
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/util/GlideSuppliers$1;Lcom/fsck/k9/backend/imap/ImapSync;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 4

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    const-string p3, "StreamEncoder"

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 8
    .line 9
    const/high16 v0, 0x10000

    .line 10
    .line 11
    const-class v1, [B

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 22
    .line 23
    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v2, -0x1

    .line 31
    if-eq p2, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    move-object v2, v3

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception p1

    .line 41
    move-object v2, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .line 48
    .line 49
    :catch_1
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->put(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :catch_2
    move-exception p1

    .line 57
    :goto_1
    const/4 p2, 0x3

    .line 58
    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    const-string p2, "Failed to encode data onto the OutputStream"

    .line 65
    .line 66
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    :cond_1
    if-eqz v2, :cond_2

    .line 70
    .line 71
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    .line 73
    .line 74
    :catch_3
    :cond_2
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->put(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    return v1

    .line 78
    :goto_3
    if-eqz v2, :cond_3

    .line 79
    .line 80
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 81
    .line 82
    .line 83
    :catch_4
    :cond_3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->put(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public endBodyPart()V
    .locals 0

    .line 1
    return-void
.end method

.method public endHeader()V
    .locals 0

    .line 1
    return-void
.end method

.method public endMessage()V
    .locals 0

    .line 1
    return-void
.end method

.method public endMultipart()V
    .locals 0

    .line 1
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public fetch(Lokhttp3/HttpUrl;Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lokhttp3/Request$Builder;

    .line 15
    .line 16
    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p1, p2, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 23
    .line 24
    new-instance p1, Lokhttp3/Request;

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Lokhttp3/OkHttpClient;

    .line 32
    .line 33
    new-instance v1, Lokhttp3/internal/connection/RealCall;

    .line 34
    .line 35
    invoke-direct {v1, p2, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 39
    .line 40
    const/4 p2, 0x4

    .line 41
    invoke-direct {p1, p2, v1}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Landroidx/work/Configuration$Builder;

    .line 48
    .line 49
    const/4 p2, 0x5

    .line 50
    invoke-direct {p1, p2, v0, p0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lokhttp3/internal/connection/RealCall;->enqueue(Lokhttp3/Callback;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/fsck/k9/mail/message/MessageHeaderCollector;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0, p1}, Lcom/fsck/k9/mail/message/MessageHeaderCollector;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getAutoconfigUrls-s1GoCZM(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddress;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lokhttp3/HttpUrl$Builder;

    .line 6
    .line 7
    invoke-direct {v1}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "https"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "autoconfig."

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "mail/config-v1.1.xml"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addEncodedPathSegments(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/VerboseLogger;->getAutoconfigUrls-s1GoCZM(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddress;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public getLogLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "check"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "folder-fetcher"

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public getQueryParameters(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v0
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntOffsetKt;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 16
    .line 17
    return-object p0
.end method

.method public getUInt16()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/work/Configuration$Builder;->getUInt8()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/work/Configuration$Builder;->getUInt8()S

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    or-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public getUInt8()S
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    int-to-short p0, p0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance p0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public getWebViewFeatures()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getWebkitToCompatConverter()Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getWebkitToCompatConverter()Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-class v0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntOffsetKt;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    .line 16
    .line 17
    return-object p0
.end method

.method public isExpungeImmediately()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public isSubscribedFoldersOnly()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/Configuration$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->searchFragment:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->searchTermPreset:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 4
    .line 5
    iget-boolean p1, p2, Lokhttp3/Response;->isSuccessful:Z

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    new-instance p1, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;

    .line 10
    .line 11
    iget-object v0, p2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 12
    .line 13
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    iget-object v1, p2, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 22
    .line 23
    iget-object p2, p2, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 24
    .line 25
    iget-object p2, p2, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 26
    .line 27
    iget-object p2, p2, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "https"

    .line 30
    .line 31
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    if-nez v1, :cond_1

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    :goto_1
    invoke-direct {p1, v0, p2}, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;-><init>(Ljava/io/InputStream;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    move-object p2, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$ErrorResponse;

    .line 55
    .line 56
    iget p2, p2, Lokhttp3/Response;->code:I

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$ErrorResponse;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public raw()V
    .locals 0

    .line 1
    return-void
.end method

.method public read(I[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, -0x1

    .line 4
    if-ge v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/io/InputStream;

    .line 9
    .line 10
    sub-int v3, p1, v0

    .line 11
    .line 12
    invoke-virtual {v1, p2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance p0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_2
    :goto_1
    return v0
.end method

.method public skip(J)J
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/InputStream;

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    move-wide v2, p1

    .line 13
    :goto_0
    cmp-long v4, v2, v0

    .line 14
    .line 15
    if-lez v4, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    cmp-long v6, v4, v0

    .line 22
    .line 23
    if-lez v6, :cond_1

    .line 24
    .line 25
    :goto_1
    sub-long/2addr v2, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, -0x1

    .line 32
    if-ne v4, v5, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const-wide/16 v4, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    :goto_2
    sub-long/2addr p1, v2

    .line 39
    return-wide p1
.end method

.method public startBodyPart()V
    .locals 0

    .line 1
    return-void
.end method

.method public startHeader()V
    .locals 0

    .line 1
    return-void
.end method

.method public startMessage()V
    .locals 0

    .line 1
    return-void
.end method

.method public startMultipart(Lcom/eygraber/uri/Uri$Builder;)V
    .locals 0

    .line 1
    return-void
.end method
