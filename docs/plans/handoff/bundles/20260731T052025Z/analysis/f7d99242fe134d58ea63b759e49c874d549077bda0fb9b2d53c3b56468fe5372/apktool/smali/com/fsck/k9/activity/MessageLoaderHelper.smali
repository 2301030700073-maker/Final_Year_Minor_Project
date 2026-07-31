.class public final Lcom/fsck/k9/activity/MessageLoaderHelper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

.field public callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

.field public context:Landroid/content/Context;

.field public final decodeMessageLoaderCallback:Lcom/beetstra/jutf7/Base64Util;

.field public final downloadMessageListener:Lcom/fsck/k9/activity/MessageCompose$12;

.field public fragmentManager:Landroidx/fragment/app/FragmentManager;

.field public final handler:Landroid/os/Handler;

.field public loaderManager:Landroidx/loader/app/LoaderManagerImpl;

.field public localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

.field public final localMessageLoaderCallback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

.field public messageCryptoAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

.field public final messageCryptoCallback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

.field public messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

.field public messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public final messageViewInfoExtractor:Lcom/fsck/k9/backend/imap/ImapSync;

.field public onlyLoadMetadata:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/loader/app/LoaderManagerImpl;Landroidx/fragment/app/FragmentManager;Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;Lcom/fsck/k9/backend/imap/ImapSync;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageLoaderHelper$1;-><init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessageLoaderCallback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 21
    .line 22
    new-instance v0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageLoaderHelper$1;-><init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoCallback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 28
    .line 29
    new-instance v0, Lcom/beetstra/jutf7/Base64Util;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/beetstra/jutf7/Base64Util;-><init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->decodeMessageLoaderCallback:Lcom/beetstra/jutf7/Base64Util;

    .line 35
    .line 36
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$12;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/activity/MessageCompose$12;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->downloadMessageListener:Lcom/fsck/k9/activity/MessageCompose$12;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 47
    .line 48
    iput-object p3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 49
    .line 50
    iput-object p4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 51
    .line 52
    iput-object p5, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageViewInfoExtractor:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final asyncStartOrResumeLoadingMessage(Lapp/k9mail/legacy/message/controller/MessageReference;Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->onlyLoadMetadata:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 5
    .line 6
    const-class v1, Lcom/fsck/k9/Preferences;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 13
    .line 14
    iget-object p1, p1, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    instance-of p1, p2, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    check-cast p2, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "Got decryption result of unknown type - ignoring"

    .line 34
    .line 35
    new-array p2, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->startOrResumeLocalMessageLoader()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final cancelAndClearCryptoOperation()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->getMessageCryptoHelperRetainFragment(Z)Lcom/fsck/k9/helper/RetainFragment;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v1, v0, Lcom/fsck/k9/helper/RetainFragment;->data:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 15
    .line 16
    iget-object v4, v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v4

    .line 19
    :try_start_0
    iput-object v3, v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 20
    .line 21
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iput-boolean v2, v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    .line 23
    .line 24
    iget-object v1, v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cancelableBackgroundOperation:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, v1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpSourceSinkAsyncTask;->dataSource:Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iput-boolean v2, v1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->isCancelled:Z

    .line 36
    .line 37
    :try_start_1
    iget-object v1, v1, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :cond_0
    iput-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p0

    .line 48
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 49
    .line 50
    iput-object v3, v0, Lcom/fsck/k9/helper/RetainFragment;->data:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/fsck/k9/helper/RetainFragment;->cleared:Z

    .line 53
    .line 54
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(ZZ)I

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    return-void
.end method

.method public final getMessageCryptoHelperRetainFragment(Z)Lcom/fsck/k9/helper/RetainFragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 4
    .line 5
    const-string v1, "crypto_helper_"

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lapp/k9mail/legacy/message/controller/MessageReference;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/fsck/k9/helper/RetainFragment;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-boolean v1, p1, Lcom/fsck/k9/helper/RetainFragment;->cleared:Z

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object p1

    .line 39
    :cond_1
    :goto_0
    new-instance p1, Lcom/fsck/k9/helper/RetainFragment;

    .line 40
    .line 41
    invoke-direct {p1}, Lcom/fsck/k9/helper/RetainFragment;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v0, p1, p0, v2}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(ZZ)I

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lapp/k9mail/legacy/message/controller/MessageReference;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lcom/fsck/k9/helper/RetainFragment;

    .line 79
    .line 80
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->isCancelled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v0, 0x7c

    .line 9
    .line 10
    if-ne p1, v0, :cond_3

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    iput-object p3, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->userInteractionResultIntent:Landroid/content/Intent;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->nextStep()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentCryptoPart:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPart;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v1, 0x2

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;-><init>(ILcom/fsck/k9/mail/internet/MimeBodyPart;Lorg/openintents/openpgp/OpenPgpDecryptionResult;Lorg/openintents/openpgp/OpenPgpSignatureResult;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lorg/openintents/openpgp/OpenPgpError;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->addCryptoResultAnnotationToMessage(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->onCryptoFinished()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    const-string p0, "got an activity result that wasn\'t meant for us. this is a bug!"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onDecodeMessageFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 9
    .line 10
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    xor-int/2addr p1, v0

    .line 19
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/fsck/k9/mailstore/MessageViewInfo;->createWithErrorState(Lcom/fsck/k9/mail/internet/MimeMessage;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onMessageViewInfoLoadFailed(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-boolean v1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->isSubjectEncrypted:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->X_SUBJECT_DECRYPTED:Lnet/thunderbird/core/common/mail/Flag;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 51
    .line 52
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->subject:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, v1, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 55
    .line 56
    iget-object v4, v3, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 57
    .line 58
    new-instance v5, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 59
    .line 60
    const/16 v6, 0x9

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-direct {v5, v6, v1, v2, v7}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v0, v5}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 79
    .line 80
    invoke-interface {p0, p1}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->onMessageViewInfoLoadFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    const-string p0, "unexpected call when callback is already detached"

    .line 85
    .line 86
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final startDownloadingMessageBody(Z)V
    .locals 9

    .line 1
    const-class v0, Lcom/fsck/k9/controller/MessagingController;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->downloadMessageListener:Lcom/fsck/k9/activity/MessageCompose$12;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/EnumSet;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Lcom/fsck/k9/controller/MessagingController;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 19
    .line 20
    iget-wide v4, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 21
    .line 22
    iget-object v6, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    invoke-direct/range {v1 .. v8}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lcom/fsck/k9/activity/MessageCompose$12;I)V

    .line 28
    .line 29
    .line 30
    const-string p0, "loadMessageRemote"

    .line 31
    .line 32
    invoke-virtual {v2, p0, v1}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    sget-object p1, Lcom/fsck/k9/controller/MessagingController;->SYNC_FLAGS:Ljava/util/EnumSet;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    move-object v2, p1

    .line 43
    check-cast v2, Lcom/fsck/k9/controller/MessagingController;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 48
    .line 49
    iget-wide v4, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 50
    .line 51
    iget-object v6, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v1, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    invoke-direct/range {v1 .. v8}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda11;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;Lcom/fsck/k9/activity/MessageCompose$12;I)V

    .line 57
    .line 58
    .line 59
    const-string p0, "loadMessageRemotePartial"

    .line 60
    .line 61
    invoke-virtual {v2, p0, v1}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final startOrResumeCryptoOperation(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->getMessageCryptoHelperRetainFragment(Z)Lcom/fsck/k9/helper/RetainFragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Lcom/fsck/k9/helper/RetainFragment;->data:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v2, v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->openPgpProvider:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    :cond_1
    new-instance v2, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 27
    .line 28
    new-instance v4, Lcom/bumptech/glide/GlideBuilder$1;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v5, Lcom/bumptech/glide/GlideBuilder$1;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3, v4, v5, p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;-><init>(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder$1;Lcom/bumptech/glide/GlideBuilder$1;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 42
    .line 43
    iput-object v2, v1, Lcom/fsck/k9/helper/RetainFragment;->data:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoHelper:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoCallback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 54
    .line 55
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpHideSignOnly()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    xor-int/2addr p0, v0

    .line 60
    iget-object v4, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 61
    .line 62
    if-eqz v4, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_5

    .line 69
    .line 70
    iget-object p0, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callbackLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iput-object v2, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedResult:Lcom/bumptech/glide/load/engine/Jobs;

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    iget-object v0, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    const-string v0, "Returning cached result or pending intent to reattached callback"

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->deliverResult()V

    .line 95
    .line 96
    .line 97
    :cond_4
    monitor-exit p0

    .line 98
    return-void

    .line 99
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p1

    .line 101
    :cond_5
    const-string p0, "Callback may only be reattached for the same message!"

    .line 102
    .line 103
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6
    new-instance v4, Lcom/bumptech/glide/load/engine/Jobs;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    new-instance v5, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v5, v4, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 118
    .line 119
    iput-object v4, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->messageAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 120
    .line 121
    iput v0, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->state:I

    .line 122
    .line 123
    iput-object v1, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->currentMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 124
    .line 125
    iput-object v3, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->cachedDecryptionResult:Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .line 126
    .line 127
    iput-object v2, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->callback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 128
    .line 129
    iput-boolean p0, p1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->processSignedOnly:Z

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;->nextStep()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final startOrResumeDecodeMessage()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl;->getLoader(I)Landroidx/loader/content/AsyncTaskLoader;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->decodeMessageLoaderCallback:Lcom/beetstra/jutf7/Base64Util;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 19
    .line 20
    iget-object v7, v0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->annotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 21
    .line 22
    if-ne v7, v6, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Lcom/fsck/k9/mailstore/LocalMessage;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v0, "Reusing decode message loader"

    .line 33
    .line 34
    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v3, v2}, Landroidx/loader/app/LoaderManagerImpl;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const-string v0, "Creating new decode message loader"

    .line 46
    .line 47
    new-array v4, v4, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 53
    .line 54
    invoke-virtual {p0, v1, v3, v2}, Landroidx/loader/app/LoaderManagerImpl;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final startOrResumeLocalMessageLoader()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManagerImpl;->getLoader(I)Landroidx/loader/content/AsyncTaskLoader;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/fsck/k9/ui/message/LocalMessageLoader;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessageLoaderCallback:Lcom/fsck/k9/activity/MessageLoaderHelper$1;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v5, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 19
    .line 20
    invoke-virtual {v0, v5}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "Reusing local message loader"

    .line 28
    .line 29
    new-array v4, v4, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 35
    .line 36
    invoke-virtual {p0, v1, v3, v2}, Landroidx/loader/app/LoaderManagerImpl;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    const-string v0, "Creating new local message loader"

    .line 41
    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->cancelAndClearCryptoOperation()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    invoke-virtual {v0, v4}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 57
    .line 58
    invoke-virtual {p0, v1, v3, v2}, Landroidx/loader/app/LoaderManagerImpl;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 59
    .line 60
    .line 61
    return-void
.end method
