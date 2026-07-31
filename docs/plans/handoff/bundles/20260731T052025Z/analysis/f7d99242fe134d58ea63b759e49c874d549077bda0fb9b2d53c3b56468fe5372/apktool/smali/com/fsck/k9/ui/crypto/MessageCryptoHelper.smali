.class public final Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

.field public cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

.field public callback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

.field public final callbackLock:Ljava/lang/Object;

.field public cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

.field public final context:Landroid/content/Context;

.field public currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

.field public currentCryptoResult:Landroid/content/Intent;

.field public currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

.field public isCancelled:Z

.field public messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

.field public openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

.field public final openPgpApiFactory:Lcom/bumptech/glide/GlideBuilder$1;

.field public final openPgpProvider:Ljava/lang/String;

.field public openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

.field public final partsToProcess:Ljava/util/ArrayDeque;

.field public processSignedOnly:Z

.field public queuedPendingIntent:Landroid/app/PendingIntent;

.field public queuedResult:Lcom/bumptech/glide/load/engine/Jobs;

.field public state:I

.field public userInteractionResultIntent:Landroid/content/Intent;


# direct methods
.method public static -$$Nest$mcallbackProgress(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->setLoadingProgress(II)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p1, "unexpected call when callback is already detached"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public static -$$Nest$monCryptoOperationReturned(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    new-array p0, p0, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string p1, "Internal error: we should have a result here!"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->handleCryptoOperationResult(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 23
    .line 24
    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder$1;Lcom/bumptech/glide/GlideBuilder$1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->context:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApiFactory:Lcom/bumptech/glide/GlideBuilder$1;

    .line 27
    .line 28
    iput-object p4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpProvider:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public static getMultipartSignedContentPartIfAvailable(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-lt v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final addCryptoResultAnnotationToMessage(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/Jobs;->findKeyForAnnotationWithReplacementPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v2, p1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->openPgpSignatureResult:Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget v2, v2, Lorg/openintents/openpgp/OpenPgpSignatureResult;->result:I

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    if-eq v2, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 43
    .line 44
    invoke-direct {v2, v1, p1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final addErrorAnnotation(Lcom/fsck/k9/mail/Part;ILcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    new-instance v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    move v2, p2

    .line 13
    move-object v3, p3

    .line 14
    invoke-direct/range {v1 .. v9}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(ILcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p0, "CryptoError must be actual error state!"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final callAsyncDecrypt(Landroid/content/Intent;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$9;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 12
    .line 13
    new-instance v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$5;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$5;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1, v0, v1, v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 23
    .line 24
    return-void
.end method

.method public final callAsyncDetachedVerify(Landroid/content/Intent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 4
    .line 5
    new-instance v4, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;

    .line 6
    .line 7
    invoke-direct {v4, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$7;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/work/Operation$State;->isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/fsck/k9/mail/Multipart;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lcom/fsck/k9/mail/Multipart;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v0, v7

    .line 48
    :goto_0
    const-string v1, "detached_signature"

    .line 49
    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 54
    .line 55
    new-instance v6, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$6;

    .line 56
    .line 57
    invoke-direct {v6, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$6;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    move-object v3, p1

    .line 67
    invoke-direct/range {v1 .. v6}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi;Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)V

    .line 68
    .line 69
    .line 70
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    invoke-virtual {v1, p0, v7}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final callAsyncInlineOperation(Landroid/content/Intent;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$4;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 12
    .line 13
    new-instance v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$3;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1, v0, v1, v3}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$8;Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpSinkResultCallback;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 23
    .line 24
    return-void
.end method

.method public final cancelIfRunning()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iput-boolean v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->isCancelled:Z

    .line 23
    .line 24
    :try_start_1
    iget-object p0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw p0
.end method

.method public final deliverResult()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string v0, "Keeping crypto helper result in queue for later delivery"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, v0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedResult:Lcom/bumptech/glide/load/engine/Jobs;

    .line 22
    .line 23
    const-string v2, "unexpected call when callback is already detached"

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object p0, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    iput-object v1, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeDecodeMessage()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 42
    .line 43
    if-eqz v1, :cond_6

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v0, v0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->startIntentSenderForMessageLoaderHelper(Landroid/content/IntentSender;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 61
    .line 62
    :cond_4
    :goto_0
    return-void

    .line 63
    :cond_5
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_6
    const-string p0, "deliverResult() called with no result!"

    .line 68
    .line 69
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final handleCryptoOperationResult(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 6
    .line 7
    const-string v2, "result_code"

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "OpenPGP API decryptVerify result code: %d"

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x1

    .line 21
    new-array v7, v6, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    aput-object v5, v7, v8

    .line 25
    .line 26
    invoke-static {v2, v7}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    if-eq v1, v4, :cond_1e

    .line 30
    .line 31
    if-eqz v1, :cond_1c

    .line 32
    .line 33
    if-eq v1, v6, :cond_2

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-eq v1, v2, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v1, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 40
    .line 41
    const-string v2, "intent"

    .line 42
    .line 43
    const-class v3, Landroid/app/PendingIntent;

    .line 44
    .line 45
    invoke-static {v1, v2, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/app/PendingIntent;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v2, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v2

    .line 56
    :try_start_0
    iput-object v1, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->deliverResult()V

    .line 59
    .line 60
    .line 61
    monitor-exit v2

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw v0

    .line 66
    :cond_1
    const-string v0, "Expecting PendingIntent on USER_INTERACTION_REQUIRED!"

    .line 67
    .line 68
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    const-class v1, Landroid/app/PendingIntent;

    .line 73
    .line 74
    iget-object v2, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 75
    .line 76
    const-string v4, "decryption"

    .line 77
    .line 78
    const-class v5, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 79
    .line 80
    invoke-static {v2, v4, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    move-object v4, v2

    .line 85
    check-cast v4, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 86
    .line 87
    iget-object v2, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 88
    .line 89
    const-string v5, "signature"

    .line 90
    .line 91
    const-class v7, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 92
    .line 93
    invoke-static {v2, v5, v7}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v5, v2

    .line 98
    check-cast v5, Lorg/openintents/openpgp/OpenPgpSignatureResult;

    .line 99
    .line 100
    iget v2, v4, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    .line 101
    .line 102
    if-ne v2, v6, :cond_1b

    .line 103
    .line 104
    iget-object v2, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const-string v2, "Autocrypt-Gossip"

    .line 110
    .line 111
    iget-object v7, v3, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 112
    .line 113
    invoke-virtual {v7, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    array-length v7, v7

    .line 118
    if-lez v7, :cond_1b

    .line 119
    .line 120
    new-instance v7, Landroid/content/Intent;

    .line 121
    .line 122
    const-string v9, "org.openintents.openpgp.action.UPDATE_AUTOCRYPT_PEER"

    .line 123
    .line 124
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v9, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 128
    .line 129
    new-instance v10, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    sget-object v11, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 135
    .line 136
    invoke-virtual {v9, v11}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    array-length v12, v11

    .line 141
    move v13, v8

    .line 142
    :goto_0
    if-ge v13, v12, :cond_4

    .line 143
    .line 144
    aget-object v14, v11, v13

    .line 145
    .line 146
    iget-object v14, v14, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v14, :cond_3

    .line 149
    .line 150
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 151
    .line 152
    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    sget-object v11, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 163
    .line 164
    invoke-virtual {v9, v11}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    array-length v12, v11

    .line 169
    move v13, v8

    .line 170
    :goto_1
    if-ge v13, v12, :cond_6

    .line 171
    .line 172
    aget-object v14, v11, v13

    .line 173
    .line 174
    iget-object v14, v14, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v14, :cond_5

    .line 177
    .line 178
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 179
    .line 180
    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_6
    sget-object v11, Lcom/fsck/k9/mail/Message$RecipientType;->DELIVERED_TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 191
    .line 192
    invoke-virtual {v9, v11}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    array-length v12, v11

    .line 197
    move v13, v8

    .line 198
    :goto_2
    if-ge v13, v12, :cond_8

    .line 199
    .line 200
    aget-object v14, v11, v13

    .line 201
    .line 202
    iget-object v14, v14, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 203
    .line 204
    if-eqz v14, :cond_7

    .line 205
    .line 206
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    invoke-static {v10}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-eqz v11, :cond_9

    .line 221
    .line 222
    :goto_3
    const/4 v12, 0x0

    .line 223
    goto/16 :goto_c

    .line 224
    .line 225
    :cond_9
    iget-object v11, v3, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 226
    .line 227
    invoke-virtual {v11, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    new-instance v11, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    array-length v13, v2

    .line 240
    move v14, v8

    .line 241
    :goto_4
    if-ge v14, v13, :cond_14

    .line 242
    .line 243
    aget-object v15, v2, v14

    .line 244
    .line 245
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-static {v15}, Lcom/fsck/k9/mail/internet/JisSupport;->getAllHeaderParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 249
    .line 250
    .line 251
    move-result-object v15

    .line 252
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 253
    .line 254
    invoke-direct {v12, v15}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 255
    .line 256
    .line 257
    const-string v15, "type"

    .line 258
    .line 259
    invoke-interface {v12, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v15

    .line 263
    check-cast v15, Ljava/lang/String;

    .line 264
    .line 265
    move/from16 v16, v8

    .line 266
    .line 267
    const-string v8, "keydata"

    .line 268
    .line 269
    invoke-interface {v12, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    check-cast v8, Ljava/lang/String;

    .line 274
    .line 275
    const-string v6, "addr"

    .line 276
    .line 277
    invoke-interface {v12, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Ljava/lang/String;

    .line 282
    .line 283
    if-eqz v8, :cond_a

    .line 284
    .line 285
    sget-object v17, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 286
    .line 287
    invoke-static {v8}, Lcom/jcraft/jzlib/Adler32;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    .line 288
    .line 289
    .line 290
    move-result-object v17

    .line 291
    goto :goto_5

    .line 292
    :cond_a
    const/16 v17, 0x0

    .line 293
    .line 294
    :goto_5
    move-object/from16 v18, v2

    .line 295
    .line 296
    if-eqz v15, :cond_b

    .line 297
    .line 298
    const-string v2, "1"

    .line 299
    .line 300
    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-nez v2, :cond_b

    .line 305
    .line 306
    const-string v2, "autocrypt: unsupported type parameter %s"

    .line 307
    .line 308
    const/4 v6, 0x1

    .line 309
    new-array v8, v6, [Ljava/lang/Object;

    .line 310
    .line 311
    aput-object v15, v8, v16

    .line 312
    .line 313
    invoke-static {v2, v8}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    move/from16 v15, v16

    .line 317
    .line 318
    :goto_6
    const/4 v2, 0x0

    .line 319
    goto :goto_9

    .line 320
    :cond_b
    if-nez v8, :cond_c

    .line 321
    .line 322
    const-string v2, "autocrypt: missing key parameter"

    .line 323
    .line 324
    move/from16 v8, v16

    .line 325
    .line 326
    new-array v6, v8, [Ljava/lang/Object;

    .line 327
    .line 328
    invoke-static {v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :goto_7
    move v15, v8

    .line 332
    goto :goto_6

    .line 333
    :cond_c
    move/from16 v8, v16

    .line 334
    .line 335
    if-nez v17, :cond_d

    .line 336
    .line 337
    const-string v2, "autocrypt: error parsing base64 data"

    .line 338
    .line 339
    new-array v6, v8, [Ljava/lang/Object;

    .line 340
    .line 341
    invoke-static {v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_d
    if-nez v6, :cond_e

    .line 346
    .line 347
    const-string v2, "autocrypt: no to header!"

    .line 348
    .line 349
    new-array v6, v8, [Ljava/lang/Object;

    .line 350
    .line 351
    invoke-static {v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    const/4 v2, 0x0

    .line 355
    const/4 v15, 0x0

    .line 356
    goto :goto_9

    .line 357
    :cond_e
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    check-cast v2, Ljava/lang/Iterable;

    .line 362
    .line 363
    instance-of v8, v2, Ljava/util/Collection;

    .line 364
    .line 365
    if-eqz v8, :cond_10

    .line 366
    .line 367
    move-object v8, v2

    .line 368
    check-cast v8, Ljava/util/Collection;

    .line 369
    .line 370
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-eqz v8, :cond_10

    .line 375
    .line 376
    :cond_f
    const/4 v15, 0x0

    .line 377
    goto :goto_8

    .line 378
    :cond_10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    if-eqz v8, :cond_f

    .line 387
    .line 388
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    check-cast v8, Ljava/lang/String;

    .line 393
    .line 394
    const-string v12, "_"

    .line 395
    .line 396
    const/4 v15, 0x0

    .line 397
    invoke-static {v8, v12, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    if-nez v8, :cond_11

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :goto_8
    new-instance v2, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;

    .line 405
    .line 406
    invoke-virtual/range {v17 .. v17}, Lokio/ByteString;->toByteArray()[B

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    invoke-direct {v2, v6, v8}, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;-><init>(Ljava/lang/String;[B)V

    .line 411
    .line 412
    .line 413
    :goto_9
    if-nez v2, :cond_12

    .line 414
    .line 415
    const-string v2, "Encountered malformed autocrypt-gossip header - skipping!"

    .line 416
    .line 417
    new-array v6, v15, [Ljava/lang/Object;

    .line 418
    .line 419
    invoke-static {v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    const/4 v2, 0x0

    .line 423
    :cond_12
    if-eqz v2, :cond_13

    .line 424
    .line 425
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 429
    .line 430
    move-object/from16 v2, v18

    .line 431
    .line 432
    const/4 v6, 0x1

    .line 433
    const/4 v8, 0x0

    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_14
    invoke-static {v11}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    if-eqz v6, :cond_15

    .line 448
    .line 449
    goto/16 :goto_3

    .line 450
    .line 451
    :cond_15
    invoke-virtual {v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    iget-object v8, v9, Lcom/fsck/k9/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    .line 456
    .line 457
    invoke-virtual {v6, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 458
    .line 459
    .line 460
    move-result v9

    .line 461
    if-eqz v9, :cond_16

    .line 462
    .line 463
    goto :goto_a

    .line 464
    :cond_16
    move-object v6, v8

    .line 465
    :goto_a
    new-instance v8, Landroid/os/Bundle;

    .line 466
    .line 467
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    if-eqz v9, :cond_18

    .line 479
    .line 480
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    check-cast v9, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;

    .line 485
    .line 486
    iget-object v11, v9, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->addr:Ljava/lang/String;

    .line 487
    .line 488
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 489
    .line 490
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v11

    .line 498
    if-nez v11, :cond_17

    .line 499
    .line 500
    goto :goto_b

    .line 501
    :cond_17
    iget-object v11, v9, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->keyData:[B

    .line 502
    .line 503
    new-instance v12, Lorg/openintents/openpgp/AutocryptPeerUpdate;

    .line 504
    .line 505
    sget-object v13, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->NOPREFERENCE:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    .line 506
    .line 507
    invoke-direct {v12, v11, v6, v13}, Lorg/openintents/openpgp/AutocryptPeerUpdate;-><init>([BLjava/util/Date;Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;)V

    .line 508
    .line 509
    .line 510
    iget-object v9, v9, Lcom/fsck/k9/autocrypt/AutocryptGossipHeader;->addr:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v8, v9, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 513
    .line 514
    .line 515
    goto :goto_b

    .line 516
    :cond_18
    invoke-virtual {v8}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    if-eqz v2, :cond_19

    .line 521
    .line 522
    goto/16 :goto_3

    .line 523
    .line 524
    :cond_19
    move-object v12, v8

    .line 525
    :goto_c
    if-nez v12, :cond_1a

    .line 526
    .line 527
    goto :goto_d

    .line 528
    :cond_1a
    const-string v2, "autocrypt_peer_gossip_updates"

    .line 529
    .line 530
    invoke-virtual {v7, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 531
    .line 532
    .line 533
    const-string v2, "Passing autocrypt data from plain mail to OpenPGP API"

    .line 534
    .line 535
    const/4 v15, 0x0

    .line 536
    new-array v6, v15, [Ljava/lang/Object;

    .line 537
    .line 538
    invoke-static {v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    iget-object v2, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 542
    .line 543
    new-instance v6, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$10;

    .line 544
    .line 545
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2, v7, v6}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V

    .line 549
    .line 550
    .line 551
    :cond_1b
    :goto_d
    iget-object v2, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 552
    .line 553
    const-string v6, "intent"

    .line 554
    .line 555
    invoke-static {v2, v6, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    move-object v6, v2

    .line 560
    check-cast v6, Landroid/app/PendingIntent;

    .line 561
    .line 562
    iget-object v2, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 563
    .line 564
    const-string v7, "insecure_detail_intent"

    .line 565
    .line 566
    invoke-static {v2, v7, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    move-object v7, v1

    .line 571
    check-cast v7, Landroid/app/PendingIntent;

    .line 572
    .line 573
    iget-object v1, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 574
    .line 575
    const-string v2, "override_crypto_warning"

    .line 576
    .line 577
    const/4 v15, 0x0

    .line 578
    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 579
    .line 580
    .line 581
    move-result v9

    .line 582
    new-instance v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 583
    .line 584
    const/4 v2, 0x1

    .line 585
    const/4 v8, 0x0

    .line 586
    invoke-direct/range {v1 .. v9}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(ILcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addCryptoResultAnnotationToMessage(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoFinished()V

    .line 593
    .line 594
    .line 595
    return-void

    .line 596
    :cond_1c
    iget-object v1, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoResult:Landroid/content/Intent;

    .line 597
    .line 598
    const-string v2, "error"

    .line 599
    .line 600
    const-class v3, Lorg/openintents/openpgp/OpenPgpError;

    .line 601
    .line 602
    invoke-static {v1, v2, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    move-object v9, v1

    .line 607
    check-cast v9, Lorg/openintents/openpgp/OpenPgpError;

    .line 608
    .line 609
    const-string v1, "OpenPGP API error: %s"

    .line 610
    .line 611
    iget-object v2, v9, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 612
    .line 613
    const/4 v6, 0x1

    .line 614
    new-array v3, v6, [Ljava/lang/Object;

    .line 615
    .line 616
    const/16 v16, 0x0

    .line 617
    .line 618
    aput-object v2, v3, v16

    .line 619
    .line 620
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    iget-object v1, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 624
    .line 625
    iget v2, v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:I

    .line 626
    .line 627
    const/4 v3, 0x3

    .line 628
    if-ne v2, v3, :cond_1d

    .line 629
    .line 630
    iget-object v1, v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 631
    .line 632
    invoke-static {v1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getMultipartSignedContentPartIfAvailable(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    new-instance v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 637
    .line 638
    const/4 v8, 0x0

    .line 639
    const/4 v10, 0x0

    .line 640
    const/4 v3, 0x3

    .line 641
    const/4 v5, 0x0

    .line 642
    const/4 v6, 0x0

    .line 643
    const/4 v7, 0x0

    .line 644
    invoke-direct/range {v2 .. v10}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(ILcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    .line 645
    .line 646
    .line 647
    goto :goto_e

    .line 648
    :cond_1d
    new-instance v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 649
    .line 650
    const/4 v8, 0x0

    .line 651
    const/4 v10, 0x0

    .line 652
    const/4 v3, 0x4

    .line 653
    const/4 v4, 0x0

    .line 654
    const/4 v5, 0x0

    .line 655
    const/4 v6, 0x0

    .line 656
    const/4 v7, 0x0

    .line 657
    invoke-direct/range {v2 .. v10}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(ILcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    .line 658
    .line 659
    .line 660
    :goto_e
    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addCryptoResultAnnotationToMessage(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoFinished()V

    .line 664
    .line 665
    .line 666
    return-void

    .line 667
    :cond_1e
    const-string v0, "Internal error: no result code!"

    .line 668
    .line 669
    const/4 v15, 0x0

    .line 670
    new-array v1, v15, [Ljava/lang/Object;

    .line 671
    .line 672
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    return-void
.end method

.method public final nextStep()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_9

    .line 6
    .line 7
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:I

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eq v0, v1, :cond_15

    .line 17
    .line 18
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_15

    .line 25
    .line 26
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/ArrayDeque;

    .line 27
    .line 28
    iget v8, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:I

    .line 29
    .line 30
    invoke-static {v8}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    const/4 v9, 0x6

    .line 35
    if-eqz v8, :cond_12

    .line 36
    .line 37
    if-eq v8, v6, :cond_4

    .line 38
    .line 39
    if-eq v8, v5, :cond_2

    .line 40
    .line 41
    if-ne v8, v4, :cond_1

    .line 42
    .line 43
    iput v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p0, "unhandled state"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iput v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:I

    .line 53
    .line 54
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string v1, "Autocrypt"

    .line 73
    .line 74
    iget-object v3, v3, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    array-length v1, v1

    .line 81
    if-lez v1, :cond_0

    .line 82
    .line 83
    new-instance v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 86
    .line 87
    invoke-direct {v1, v2, v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;-><init>(ILcom/fsck/k9/mail/Part;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    iput v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:I

    .line 95
    .line 96
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 99
    .line 100
    new-instance v5, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v8, Ljava/util/Stack;

    .line 106
    .line 107
    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_1
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_8

    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 124
    .line 125
    iget-object v10, v3, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-eqz v10, :cond_6

    .line 132
    .line 133
    iget-object v10, v3, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    check-cast v10, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 140
    .line 141
    iget-object v10, v10, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->replacementData:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 142
    .line 143
    if-eqz v10, :cond_6

    .line 144
    .line 145
    move-object v2, v10

    .line 146
    :cond_6
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-static {v2}, Landroidx/work/Operation$State;->isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-eqz v11, :cond_7

    .line 155
    .line 156
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_7
    instance-of v2, v10, Lcom/fsck/k9/mail/Multipart;

    .line 161
    .line 162
    if-eqz v2, :cond_5

    .line 163
    .line 164
    check-cast v10, Lcom/fsck/k9/mail/Multipart;

    .line 165
    .line 166
    iget-object v2, v10, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    sub-int/2addr v2, v6

    .line 173
    :goto_2
    if-ltz v2, :cond_5

    .line 174
    .line 175
    invoke-virtual {v10, v2}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-virtual {v8, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    add-int/lit8 v2, v2, -0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_e

    .line 194
    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 200
    .line 201
    iget-boolean v5, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->processSignedOnly:Z

    .line 202
    .line 203
    if-nez v5, :cond_a

    .line 204
    .line 205
    iget-object v5, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 206
    .line 207
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/load/engine/Jobs;->findKeyForAnnotationWithReplacementPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    if-eqz v5, :cond_9

    .line 212
    .line 213
    :cond_a
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isCompletePartAvailable(Lcom/fsck/k9/mail/Part;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-nez v5, :cond_b

    .line 218
    .line 219
    invoke-static {v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getMultipartSignedContentPartIfAvailable(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {p0, v3, v1, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;ILcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_b
    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    const-string v8, "multipart/signed"

    .line 232
    .line 233
    invoke-static {v5, v8}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_d

    .line 238
    .line 239
    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    const-string v8, "protocol"

    .line 244
    .line 245
    invoke-static {v5, v8}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    const-string v8, "application/pgp-signature"

    .line 250
    .line 251
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eqz v5, :cond_c

    .line 256
    .line 257
    new-instance v5, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 258
    .line 259
    invoke-direct {v5, v4, v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;-><init>(ILcom/fsck/k9/mail/Part;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_c
    invoke-static {v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->getMultipartSignedContentPartIfAvailable(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    const/4 v8, 0x7

    .line 271
    invoke-virtual {p0, v3, v8, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;ILcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_d
    const-string p0, "Part is not multipart/signed!"

    .line 276
    .line 277
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_e
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 282
    .line 283
    invoke-static {v2}, Landroidx/work/Operation$State;->findPgpInlineParts(Lcom/fsck/k9/mail/Part;)Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_0

    .line 296
    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 302
    .line 303
    iget-boolean v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->processSignedOnly:Z

    .line 304
    .line 305
    if-nez v4, :cond_f

    .line 306
    .line 307
    invoke-static {v3}, Landroidx/work/Operation$State;->isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-nez v4, :cond_f

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_f
    iget-object v4, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 315
    .line 316
    iget-object v4, v4, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 317
    .line 318
    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    sget-object v5, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 323
    .line 324
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-nez v4, :cond_11

    .line 329
    .line 330
    invoke-static {v3}, Landroidx/work/Operation$State;->isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_10

    .line 335
    .line 336
    invoke-virtual {p0, v3, v9, v7}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;ILcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_10
    invoke-virtual {p0, v3, v1, v7}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;ILcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_11
    new-instance v4, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 345
    .line 346
    invoke-direct {v4, v6, v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;-><init>(ILcom/fsck/k9/mail/Part;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_12
    iput v5, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:I

    .line 354
    .line 355
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 356
    .line 357
    invoke-static {v1}, Landroidx/work/Operation$State;->findMultipartEncryptedParts(Lcom/fsck/k9/mail/Part;)Ljava/util/ArrayList;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-eqz v2, :cond_0

    .line 370
    .line 371
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 376
    .line 377
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isCompletePartAvailable(Lcom/fsck/k9/mail/Part;)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-nez v4, :cond_13

    .line 382
    .line 383
    :try_start_0
    new-instance v4, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 384
    .line 385
    invoke-direct {v4, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(I)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, v2, v9, v4}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;ILcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :catch_0
    move-exception p0

    .line 393
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :cond_13
    invoke-static {v2}, Landroidx/work/Operation$State;->isMultipartEncryptedOpenPgpProtocol(Lcom/fsck/k9/mail/Part;)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-eqz v4, :cond_14

    .line 402
    .line 403
    new-instance v4, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 404
    .line 405
    invoke-direct {v4, v5, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;-><init>(ILcom/fsck/k9/mail/Part;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_14
    :try_start_1
    new-instance v4, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 413
    .line 414
    invoke-direct {v4, v3}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(I)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    .line 416
    .line 417
    const/16 v6, 0x8

    .line 418
    .line 419
    invoke-virtual {p0, v2, v6, v4}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addErrorAnnotation(Lcom/fsck/k9/mail/Part;ILcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 420
    .line 421
    .line 422
    goto :goto_5

    .line 423
    :catch_1
    move-exception p0

    .line 424
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_15
    iget v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:I

    .line 429
    .line 430
    if-ne v0, v1, :cond_17

    .line 431
    .line 432
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 433
    .line 434
    monitor-enter v0

    .line 435
    :try_start_2
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/ArrayDeque;

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 438
    .line 439
    .line 440
    iput-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 441
    .line 442
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 443
    .line 444
    if-eqz v1, :cond_16

    .line 445
    .line 446
    iget-object v2, v1, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mApplicationContext:Landroid/content/Context;

    .line 447
    .line 448
    iget-object v1, v1, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->mServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection$1;

    .line 449
    .line 450
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 451
    .line 452
    .line 453
    :cond_16
    iput-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 454
    .line 455
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 456
    .line 457
    iput-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedResult:Lcom/bumptech/glide/load/engine/Jobs;

    .line 458
    .line 459
    iput-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 460
    .line 461
    invoke-virtual {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->deliverResult()V

    .line 462
    .line 463
    .line 464
    monitor-exit v0

    .line 465
    return-void

    .line 466
    :catchall_0
    move-exception p0

    .line 467
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    throw p0

    .line 469
    :cond_17
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 470
    .line 471
    if-eqz v0, :cond_24

    .line 472
    .line 473
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/ArrayDeque;

    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    check-cast v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 480
    .line 481
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 482
    .line 483
    iget v0, v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:I

    .line 484
    .line 485
    if-ne v0, v2, :cond_19

    .line 486
    .line 487
    new-instance v0, Landroid/content/Intent;

    .line 488
    .line 489
    const-string v1, "org.openintents.openpgp.action.UPDATE_AUTOCRYPT_PEER"

    .line 490
    .line 491
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

    .line 495
    .line 496
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 497
    .line 498
    iget-object v2, v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->part:Lcom/fsck/k9/mail/Part;

    .line 499
    .line 500
    check-cast v2, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    invoke-static {v2, v0}, Lcom/bumptech/glide/GlideBuilder$1;->addAutocryptPeerUpdateToIntentIfPresent(Lcom/fsck/k9/mail/internet/MimeMessage;Landroid/content/Intent;)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-eqz v1, :cond_18

    .line 510
    .line 511
    const-string v1, "Passing autocrypt data from plain mail to OpenPGP API"

    .line 512
    .line 513
    new-array v2, v3, [Ljava/lang/Object;

    .line 514
    .line 515
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpApi:Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 519
    .line 520
    new-instance v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$2;

    .line 521
    .line 522
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v0, v2}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApiAsync(Landroid/content/Intent;Lorg/openintents/openpgp/util/OpenPgpApi$IOpenPgpCallback;)V

    .line 526
    .line 527
    .line 528
    :cond_18
    invoke-virtual {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoFinished()V

    .line 529
    .line 530
    .line 531
    return-void

    .line 532
    :cond_19
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->userInteractionResultIntent:Landroid/content/Intent;

    .line 533
    .line 534
    iput-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->userInteractionResultIntent:Landroid/content/Intent;

    .line 535
    .line 536
    if-nez v0, :cond_1b

    .line 537
    .line 538
    new-instance v0, Landroid/content/Intent;

    .line 539
    .line 540
    const-string v1, "org.openintents.openpgp.action.DECRYPT_VERIFY"

    .line 541
    .line 542
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 546
    .line 547
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    array-length v7, v1

    .line 552
    if-lez v7, :cond_1a

    .line 553
    .line 554
    const-string v7, "sender_address"

    .line 555
    .line 556
    aget-object v8, v1, v3

    .line 557
    .line 558
    iget-object v8, v8, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    .line 562
    .line 563
    const-string v7, "autocrypt_peer_id"

    .line 564
    .line 565
    aget-object v1, v1, v3

    .line 566
    .line 567
    iget-object v1, v1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    .line 571
    .line 572
    :cond_1a
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->autocryptOperations:Lcom/bumptech/glide/GlideBuilder$1;

    .line 573
    .line 574
    iget-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    invoke-static {v7, v0}, Lcom/bumptech/glide/GlideBuilder$1;->addAutocryptPeerUpdateToIntentIfPresent(Lcom/fsck/k9/mail/internet/MimeMessage;Landroid/content/Intent;)Z

    .line 580
    .line 581
    .line 582
    const-string v1, "support_override_crpto_warning"

    .line 583
    .line 584
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 585
    .line 586
    .line 587
    const-string v1, "decryption_result"

    .line 588
    .line 589
    iget-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 590
    .line 591
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 592
    .line 593
    .line 594
    :cond_1b
    const-string v1, "Unknown crypto part type: "

    .line 595
    .line 596
    :try_start_3
    iget-object v7, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 597
    .line 598
    iget v7, v7, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;->type:I

    .line 599
    .line 600
    invoke-static {v7}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 601
    .line 602
    .line 603
    move-result v8

    .line 604
    if-eqz v8, :cond_23

    .line 605
    .line 606
    if-eq v8, v6, :cond_22

    .line 607
    .line 608
    if-eq v8, v5, :cond_21

    .line 609
    .line 610
    if-eq v8, v4, :cond_20

    .line 611
    .line 612
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 613
    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    if-eq v7, v6, :cond_1f

    .line 620
    .line 621
    if-eq v7, v5, :cond_1e

    .line 622
    .line 623
    if-eq v7, v4, :cond_1d

    .line 624
    .line 625
    if-eq v7, v2, :cond_1c

    .line 626
    .line 627
    const-string v1, "null"

    .line 628
    .line 629
    goto :goto_6

    .line 630
    :cond_1c
    const-string v1, "PLAIN_AUTOCRYPT"

    .line 631
    .line 632
    goto :goto_6

    .line 633
    :cond_1d
    const-string v1, "PGP_SIGNED"

    .line 634
    .line 635
    goto :goto_6

    .line 636
    :cond_1e
    const-string v1, "PGP_ENCRYPTED"

    .line 637
    .line 638
    goto :goto_6

    .line 639
    :cond_1f
    const-string v1, "PGP_INLINE"

    .line 640
    .line 641
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw p0

    .line 652
    :catch_2
    move-exception p0

    .line 653
    goto :goto_7

    .line 654
    :catch_3
    move-exception p0

    .line 655
    goto :goto_8

    .line 656
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 657
    .line 658
    const-string v0, "This part type must have been handled previously!"

    .line 659
    .line 660
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    throw p0

    .line 664
    :cond_21
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callAsyncDetachedVerify(Landroid/content/Intent;)V

    .line 665
    .line 666
    .line 667
    return-void

    .line 668
    :cond_22
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callAsyncDecrypt(Landroid/content/Intent;)V

    .line 669
    .line 670
    .line 671
    return-void

    .line 672
    :cond_23
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callAsyncInlineOperation(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 673
    .line 674
    .line 675
    return-void

    .line 676
    :goto_7
    const-string v0, "MessagingException"

    .line 677
    .line 678
    new-array v1, v3, [Ljava/lang/Object;

    .line 679
    .line 680
    invoke-static {p0, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    goto :goto_9

    .line 684
    :goto_8
    const-string v0, "IOException"

    .line 685
    .line 686
    new-array v1, v3, [Ljava/lang/Object;

    .line 687
    .line 688
    invoke-static {p0, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    :goto_9
    return-void

    .line 692
    :cond_24
    new-instance v0, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 693
    .line 694
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->context:Landroid/content/Context;

    .line 695
    .line 696
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpProvider:Ljava/lang/String;

    .line 697
    .line 698
    new-instance v3, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;

    .line 699
    .line 700
    invoke-direct {v3, p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$1;-><init>(Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;)V

    .line 701
    .line 702
    .line 703
    invoke-direct {v0, v1, v2, v3}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;)V

    .line 704
    .line 705
    .line 706
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpServiceConnection:Lorg/openintents/openpgp/util/OpenPgpServiceConnection;

    .line 707
    .line 708
    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpServiceConnection;->bindToService()V

    .line 709
    .line 710
    .line 711
    return-void
.end method

.method public final onCryptoFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->partsToProcess:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v2, "Got to onCryptoFinished() with no part in processing!"

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->nextStep()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string p0, "Trying to remove part from queue that is not the currently processed one!"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
