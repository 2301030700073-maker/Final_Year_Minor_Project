.class public final Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/Observable;


# instance fields
.field public account:Ljava/lang/Object;

.field public forcePlainText:Z

.field public final generalSettingsManager:Ljava/lang/Object;

.field public messageCompose:Ljava/lang/Object;

.field public quoteStyle:Ljava/lang/Object;

.field public quotedHtmlContent:Ljava/lang/Object;

.field public quotedTextFormat:Ljava/io/Serializable;

.field public quotedTextMode:Ljava/lang/Object;

.field public final textQuoteCreator:Ljava/lang/Object;

.field public view:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/mailstore/LockableDatabase;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-class v0, Lcom/fsck/k9/message/quote/TextQuoteCreator;

    .line 88
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    check-cast v0, Lcom/fsck/k9/message/quote/TextQuoteCreator;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->textQuoteCreator:Ljava/lang/Object;

    .line 90
    const-class v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 91
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 95
    iput-object p3, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 96
    sget-object p1, Lcom/fsck/k9/message/QuotedTextMode;->NONE:Lcom/fsck/k9/message/QuotedTextMode;

    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Ljava/lang/Object;

    .line 97
    invoke-virtual {p3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuoteStyle()Lnet/thunderbird/core/android/account/QuoteStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 98
    new-instance p1, Landroidx/preference/Preference$1;

    const/4 p3, 0x5

    invoke-direct {p1, p3, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 99
    iget-object p0, p2, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p0, p2, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p0, p2, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lkotlinx/coroutines/internal/ContextScope;Ljava/util/List;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->textQuoteCreator:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v0, v0}, Landroidx/appcompat/app/ActionBar;->create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/AutoValue_Identifier;)Landroidx/camera/core/CameraIdentifier;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iput-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 64
    .line 65
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 71
    .line 72
    const-string p1, "camera"

    .line 73
    .line 74
    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    new-instance v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    .line 9
    .line 10
    invoke-direct {v1, p1, p2}, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->textQuoteCreator:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-boolean v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    const-string v1, "CameraPresenceSrc"

    .line 34
    .line 35
    const-string v2, "First observer added. Starting monitoring."

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->startMonitoring()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/util/List;

    .line 52
    .line 53
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Ljava/lang/Throwable;

    .line 60
    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    new-instance v0, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    .line 63
    .line 64
    invoke-direct {v0, p1, p2}, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    const/4 v2, 0x3

    .line 70
    invoke-direct {p2, p0, v0, v1, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

.method public fetchData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    const-string v0, "FetchData for PipeCameraPresence0"

    .line 2
    .line 3
    new-instance v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroidx/concurrent/futures/ResolvableFuture;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 14
    .line 15
    new-instance v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 21
    .line 22
    const-class v3, Landroidx/camera/camera2/pipe/CameraDevices$-CC;

    .line 23
    .line 24
    iput-object v3, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    .line 25
    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Lkotlinx/coroutines/internal/ContextScope;

    .line 29
    .line 30
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-direct {v4, p0, v1, v6, v5}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x3

    .line 38
    invoke-static {v3, v6, v6, v4, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 39
    .line 40
    .line 41
    iput-object v0, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    return-object v2

    .line 44
    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {v2, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->setException(Ljava/lang/Throwable;)Z

    .line 46
    .line 47
    .line 48
    return-object v2
.end method

.method public populateUIWithQuotedMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLcom/fsck/k9/activity/MessageCompose$Action;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->textQuoteCreator:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lcom/fsck/k9/message/quote/TextQuoteCreator;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 14
    .line 15
    iget-object v5, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 18
    .line 19
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getMessageFormat()Lnet/thunderbird/core/android/account/MessageFormat;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-boolean v6, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 24
    .line 25
    sget-object v7, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 26
    .line 27
    sget-object v8, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 28
    .line 29
    if-nez v6, :cond_3

    .line 30
    .line 31
    sget-object v6, Lnet/thunderbird/core/android/account/MessageFormat;->TEXT:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 32
    .line 33
    if-ne v5, v6, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    sget-object v6, Lnet/thunderbird/core/android/account/MessageFormat;->AUTO:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 37
    .line 38
    if-ne v5, v6, :cond_2

    .line 39
    .line 40
    iget-object v5, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 41
    .line 42
    const-string v6, "text/html"

    .line 43
    .line 44
    invoke-static {v5, v6}, Lcom/fsck/k9/mail/internet/JisSupport;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    move-object v5, v8

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v5, v7

    .line 53
    :goto_0
    iput-object v5, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iput-object v7, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_1
    iput-object v8, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 60
    .line 61
    :goto_2
    iget-object v5, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 64
    .line 65
    iget-object v6, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 66
    .line 67
    check-cast v6, Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 68
    .line 69
    invoke-static {v5, v6}, Lkotlin/math/MathKt;->getBodyTextFromMessage(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/message/SimpleMessageFormat;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget-object v9, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 74
    .line 75
    check-cast v9, Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 76
    .line 77
    const-string v10, "\n"

    .line 78
    .line 79
    const-string v11, "\r\n"

    .line 80
    .line 81
    sget-object v12, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 82
    .line 83
    sget-object v13, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 84
    .line 85
    if-ne v9, v7, :cond_38

    .line 86
    .line 87
    iget-object v7, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v7, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 90
    .line 91
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isStripSignature()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_28

    .line 96
    .line 97
    if-eq v2, v13, :cond_4

    .line 98
    .line 99
    if-ne v2, v12, :cond_28

    .line 100
    .line 101
    :cond_4
    sget-object v2, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->DASH_SIGNATURE_HTML:Ljava/util/regex/Pattern;

    .line 102
    .line 103
    invoke-static {v6}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    move-object v7, v6

    .line 115
    const/4 v12, 0x0

    .line 116
    const/4 v13, 0x0

    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    :goto_3
    if-eqz v7, :cond_27

    .line 120
    .line 121
    if-eqz v13, :cond_5

    .line 122
    .line 123
    move/from16 v21, v12

    .line 124
    .line 125
    const/4 v9, 0x1

    .line 126
    :goto_4
    const/4 v14, 0x4

    .line 127
    goto/16 :goto_d

    .line 128
    .line 129
    :cond_5
    instance-of v14, v7, Lorg/jsoup/nodes/Element;

    .line 130
    .line 131
    if-eqz v14, :cond_6

    .line 132
    .line 133
    move-object v14, v7

    .line 134
    check-cast v14, Lorg/jsoup/nodes/Element;

    .line 135
    .line 136
    iget-object v14, v14, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 137
    .line 138
    sget-object v15, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->BLOCKQUOTE:Lorg/jsoup/parser/Tag;

    .line 139
    .line 140
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-eqz v14, :cond_6

    .line 145
    .line 146
    move/from16 v21, v12

    .line 147
    .line 148
    const/4 v9, 0x1

    .line 149
    const/4 v14, 0x3

    .line 150
    goto/16 :goto_d

    .line 151
    .line 152
    :cond_6
    instance-of v14, v7, Lorg/jsoup/nodes/TextNode;

    .line 153
    .line 154
    if-eqz v14, :cond_15

    .line 155
    .line 156
    sget-object v14, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->DASH_SIGNATURE_HTML:Ljava/util/regex/Pattern;

    .line 157
    .line 158
    move-object v15, v7

    .line 159
    check-cast v15, Lorg/jsoup/nodes/TextNode;

    .line 160
    .line 161
    invoke-virtual {v15}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_15

    .line 174
    .line 175
    new-instance v14, Ljava/util/Stack;

    .line 176
    .line 177
    invoke-direct {v14}, Ljava/util/Stack;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v14, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :goto_5
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    if-nez v15, :cond_c

    .line 188
    .line 189
    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    check-cast v15, Lorg/jsoup/nodes/Node;

    .line 194
    .line 195
    invoke-virtual {v15}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    if-nez v9, :cond_8

    .line 200
    .line 201
    invoke-virtual {v15}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    instance-of v15, v9, Lorg/jsoup/nodes/Element;

    .line 206
    .line 207
    if-eqz v15, :cond_7

    .line 208
    .line 209
    move-object v15, v9

    .line 210
    check-cast v15, Lorg/jsoup/nodes/Element;

    .line 211
    .line 212
    iget-object v15, v15, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 213
    .line 214
    iget-boolean v15, v15, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 215
    .line 216
    if-eqz v15, :cond_7

    .line 217
    .line 218
    move/from16 v21, v12

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_7
    invoke-virtual {v14, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    check-cast v9, Lorg/jsoup/nodes/Node;

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_8
    instance-of v15, v9, Lorg/jsoup/nodes/Element;

    .line 229
    .line 230
    move-object/from16 v20, v9

    .line 231
    .line 232
    if-eqz v15, :cond_9

    .line 233
    .line 234
    move-object/from16 v9, v20

    .line 235
    .line 236
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 237
    .line 238
    iget-object v9, v9, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 239
    .line 240
    move/from16 v21, v12

    .line 241
    .line 242
    sget-object v12, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->BR:Lorg/jsoup/parser/Tag;

    .line 243
    .line 244
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-eqz v9, :cond_a

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_9
    move/from16 v21, v12

    .line 252
    .line 253
    :cond_a
    if-eqz v15, :cond_b

    .line 254
    .line 255
    move-object/from16 v9, v20

    .line 256
    .line 257
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 258
    .line 259
    iget-object v9, v9, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 260
    .line 261
    iget-boolean v9, v9, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 262
    .line 263
    if-eqz v9, :cond_b

    .line 264
    .line 265
    :goto_6
    move-object/from16 v9, v20

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_b
    move/from16 v12, v21

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_c
    move/from16 v21, v12

    .line 272
    .line 273
    const/4 v9, 0x0

    .line 274
    :goto_7
    if-eqz v9, :cond_14

    .line 275
    .line 276
    new-instance v12, Ljava/util/Stack;

    .line 277
    .line 278
    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    :goto_8
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v14

    .line 288
    if-nez v14, :cond_14

    .line 289
    .line 290
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    check-cast v14, Lorg/jsoup/nodes/Node;

    .line 295
    .line 296
    invoke-virtual {v14}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 297
    .line 298
    .line 299
    move-result-object v15

    .line 300
    if-nez v15, :cond_e

    .line 301
    .line 302
    invoke-virtual {v14}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 303
    .line 304
    .line 305
    move-result-object v14

    .line 306
    instance-of v15, v14, Lorg/jsoup/nodes/Element;

    .line 307
    .line 308
    if-eqz v15, :cond_d

    .line 309
    .line 310
    move-object v15, v14

    .line 311
    check-cast v15, Lorg/jsoup/nodes/Element;

    .line 312
    .line 313
    iget-object v15, v15, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 314
    .line 315
    iget-boolean v15, v15, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 316
    .line 317
    if-eqz v15, :cond_d

    .line 318
    .line 319
    goto :goto_9

    .line 320
    :cond_d
    invoke-virtual {v12, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v14

    .line 324
    check-cast v14, Lorg/jsoup/nodes/Node;

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_e
    instance-of v14, v15, Lorg/jsoup/nodes/Element;

    .line 328
    .line 329
    move-object/from16 v20, v12

    .line 330
    .line 331
    if-eqz v14, :cond_f

    .line 332
    .line 333
    move-object v12, v15

    .line 334
    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 335
    .line 336
    iget-object v12, v12, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 337
    .line 338
    move/from16 v22, v13

    .line 339
    .line 340
    sget-object v13, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->BR:Lorg/jsoup/parser/Tag;

    .line 341
    .line 342
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    if-eqz v12, :cond_10

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_f
    move/from16 v22, v13

    .line 350
    .line 351
    :cond_10
    if-eqz v14, :cond_13

    .line 352
    .line 353
    check-cast v15, Lorg/jsoup/nodes/Element;

    .line 354
    .line 355
    iget-object v12, v15, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 356
    .line 357
    iget-boolean v12, v12, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 358
    .line 359
    if-eqz v12, :cond_13

    .line 360
    .line 361
    :goto_9
    iget-object v12, v7, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 362
    .line 363
    instance-of v13, v9, Lorg/jsoup/nodes/Element;

    .line 364
    .line 365
    if-eqz v13, :cond_11

    .line 366
    .line 367
    move-object v13, v9

    .line 368
    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 369
    .line 370
    iget-object v13, v13, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 371
    .line 372
    sget-object v14, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->BR:Lorg/jsoup/parser/Tag;

    .line 373
    .line 374
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v13

    .line 378
    if-eqz v13, :cond_11

    .line 379
    .line 380
    goto :goto_a

    .line 381
    :cond_11
    const/4 v9, 0x0

    .line 382
    :goto_a
    if-eqz v9, :cond_12

    .line 383
    .line 384
    invoke-virtual {v9}, Lorg/jsoup/nodes/Node;->remove()V

    .line 385
    .line 386
    .line 387
    :cond_12
    move-object/from16 v17, v12

    .line 388
    .line 389
    const/4 v9, 0x1

    .line 390
    const/4 v13, 0x1

    .line 391
    goto/16 :goto_4

    .line 392
    .line 393
    :cond_13
    move-object/from16 v12, v20

    .line 394
    .line 395
    move/from16 v13, v22

    .line 396
    .line 397
    goto :goto_8

    .line 398
    :cond_14
    :goto_b
    move/from16 v22, v13

    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_15
    move/from16 v21, v12

    .line 402
    .line 403
    goto :goto_b

    .line 404
    :goto_c
    move/from16 v13, v22

    .line 405
    .line 406
    const/4 v9, 0x1

    .line 407
    const/4 v14, 0x1

    .line 408
    :goto_d
    if-ne v14, v9, :cond_16

    .line 409
    .line 410
    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 411
    .line 412
    .line 413
    move-result v9

    .line 414
    if-lez v9, :cond_16

    .line 415
    .line 416
    const/4 v9, 0x0

    .line 417
    invoke-virtual {v7, v9}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    add-int/lit8 v12, v21, 0x1

    .line 422
    .line 423
    goto/16 :goto_3

    .line 424
    .line 425
    :cond_16
    move-object/from16 v9, v17

    .line 426
    .line 427
    move/from16 v12, v21

    .line 428
    .line 429
    const/4 v15, 0x1

    .line 430
    :goto_e
    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 431
    .line 432
    .line 433
    move-result-object v17

    .line 434
    if-nez v17, :cond_1e

    .line 435
    .line 436
    if-lez v12, :cond_1e

    .line 437
    .line 438
    move/from16 v17, v12

    .line 439
    .line 440
    const/4 v12, 0x1

    .line 441
    if-eq v14, v12, :cond_17

    .line 442
    .line 443
    const/4 v12, 0x2

    .line 444
    if-ne v14, v12, :cond_1b

    .line 445
    .line 446
    :cond_17
    if-eqz v13, :cond_19

    .line 447
    .line 448
    if-ne v7, v9, :cond_19

    .line 449
    .line 450
    invoke-virtual {v9}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    if-nez v12, :cond_18

    .line 455
    .line 456
    invoke-virtual {v9}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    const/4 v12, 0x2

    .line 461
    :goto_f
    const/4 v15, 0x3

    .line 462
    goto :goto_10

    .line 463
    :cond_18
    const/4 v12, 0x3

    .line 464
    goto :goto_f

    .line 465
    :cond_19
    const/4 v12, 0x1

    .line 466
    goto :goto_f

    .line 467
    :goto_10
    if-ne v12, v15, :cond_1a

    .line 468
    .line 469
    goto/16 :goto_14

    .line 470
    .line 471
    :cond_1a
    move v15, v12

    .line 472
    :cond_1b
    iget-object v12, v7, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 473
    .line 474
    add-int/lit8 v17, v17, -0x1

    .line 475
    .line 476
    move-object/from16 v20, v9

    .line 477
    .line 478
    const/4 v9, 0x4

    .line 479
    if-eq v14, v9, :cond_1c

    .line 480
    .line 481
    const/4 v9, 0x2

    .line 482
    if-ne v15, v9, :cond_1d

    .line 483
    .line 484
    goto :goto_11

    .line 485
    :cond_1c
    const/4 v9, 0x2

    .line 486
    :goto_11
    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->remove()V

    .line 487
    .line 488
    .line 489
    :cond_1d
    move-object v7, v12

    .line 490
    move/from16 v12, v17

    .line 491
    .line 492
    move-object/from16 v9, v20

    .line 493
    .line 494
    const/4 v14, 0x1

    .line 495
    goto :goto_e

    .line 496
    :cond_1e
    move/from16 v17, v12

    .line 497
    .line 498
    const/4 v12, 0x2

    .line 499
    move/from16 v20, v13

    .line 500
    .line 501
    const/4 v13, 0x1

    .line 502
    if-eq v14, v13, :cond_1f

    .line 503
    .line 504
    if-ne v14, v12, :cond_23

    .line 505
    .line 506
    :cond_1f
    if-eqz v20, :cond_21

    .line 507
    .line 508
    if-ne v7, v9, :cond_21

    .line 509
    .line 510
    invoke-virtual {v9}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 511
    .line 512
    .line 513
    move-result v12

    .line 514
    if-nez v12, :cond_20

    .line 515
    .line 516
    invoke-virtual {v9}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    const/4 v12, 0x2

    .line 521
    :goto_12
    const/4 v15, 0x3

    .line 522
    goto :goto_13

    .line 523
    :cond_20
    const/4 v12, 0x3

    .line 524
    goto :goto_12

    .line 525
    :cond_21
    const/4 v12, 0x1

    .line 526
    goto :goto_12

    .line 527
    :goto_13
    if-ne v12, v15, :cond_22

    .line 528
    .line 529
    goto :goto_14

    .line 530
    :cond_22
    move v15, v12

    .line 531
    :cond_23
    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 532
    .line 533
    .line 534
    move-result-object v12

    .line 535
    const/4 v13, 0x4

    .line 536
    if-eq v14, v13, :cond_24

    .line 537
    .line 538
    const/4 v13, 0x2

    .line 539
    if-ne v15, v13, :cond_25

    .line 540
    .line 541
    :cond_24
    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->remove()V

    .line 542
    .line 543
    .line 544
    :cond_25
    if-ne v7, v6, :cond_26

    .line 545
    .line 546
    goto :goto_14

    .line 547
    :cond_26
    move-object v7, v12

    .line 548
    move/from16 v12, v17

    .line 549
    .line 550
    move/from16 v13, v20

    .line 551
    .line 552
    move-object/from16 v17, v9

    .line 553
    .line 554
    goto/16 :goto_3

    .line 555
    .line 556
    :cond_27
    :goto_14
    iget-object v6, v2, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 557
    .line 558
    const/4 v9, 0x0

    .line 559
    iput-boolean v9, v6, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    .line 560
    .line 561
    iput v9, v6, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    .line 562
    .line 563
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    :cond_28
    iget-object v2, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v2, Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 573
    .line 574
    iget-object v7, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v7, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 577
    .line 578
    sget-object v9, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HTML:Ljava/util/regex/Pattern;

    .line 579
    .line 580
    const-class v9, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 581
    .line 582
    invoke-static {v9}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    check-cast v9, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 587
    .line 588
    iget-object v9, v9, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 589
    .line 590
    new-instance v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 591
    .line 592
    invoke-direct {v12}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;-><init>()V

    .line 593
    .line 594
    .line 595
    const-string v13, ""

    .line 596
    .line 597
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v14

    .line 601
    if-eqz v14, :cond_29

    .line 602
    .line 603
    move-object/from16 p3, v7

    .line 604
    .line 605
    move-object/from16 v16, v10

    .line 606
    .line 607
    move-object/from16 v20, v13

    .line 608
    .line 609
    goto/16 :goto_16

    .line 610
    .line 611
    :cond_29
    sget-object v14, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HTML:Ljava/util/regex/Pattern;

    .line 612
    .line 613
    invoke-virtual {v14, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 614
    .line 615
    .line 616
    move-result-object v14

    .line 617
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 618
    .line 619
    .line 620
    move-result v15

    .line 621
    move-object/from16 p3, v7

    .line 622
    .line 623
    sget-object v7, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HEAD:Ljava/util/regex/Pattern;

    .line 624
    .line 625
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 630
    .line 631
    .line 632
    move-result v17

    .line 633
    move-object/from16 v20, v13

    .line 634
    .line 635
    sget-object v13, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_BODY:Ljava/util/regex/Pattern;

    .line 636
    .line 637
    invoke-virtual {v13, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 638
    .line 639
    .line 640
    move-result-object v13

    .line 641
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    .line 642
    .line 643
    .line 644
    move-result v21

    .line 645
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 646
    .line 647
    .line 648
    move-result-object v22

    .line 649
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 650
    .line 651
    .line 652
    move-result-object v23

    .line 653
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 654
    .line 655
    .line 656
    move-result-object v24

    .line 657
    move/from16 v25, v15

    .line 658
    .line 659
    const/4 v15, 0x3

    .line 660
    new-array v15, v15, [Ljava/lang/Object;

    .line 661
    .line 662
    const/16 v19, 0x0

    .line 663
    .line 664
    aput-object v22, v15, v19

    .line 665
    .line 666
    move-object/from16 v16, v10

    .line 667
    .line 668
    const/4 v10, 0x1

    .line 669
    aput-object v23, v15, v10

    .line 670
    .line 671
    const/16 v18, 0x2

    .line 672
    .line 673
    aput-object v24, v15, v18

    .line 674
    .line 675
    const-string v10, "Open: hasHtmlTag:%s hasHeadTag:%s hasBodyTag:%s"

    .line 676
    .line 677
    invoke-static {v10, v15}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    if-eqz v21, :cond_2a

    .line 681
    .line 682
    new-instance v7, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    iput-object v7, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 688
    .line 689
    const/4 v10, 0x1

    .line 690
    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->end(I)I

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    invoke-virtual {v12, v6}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    .line 695
    .line 696
    .line 697
    goto :goto_15

    .line 698
    :cond_2a
    const/4 v10, 0x1

    .line 699
    if-eqz v17, :cond_2b

    .line 700
    .line 701
    new-instance v13, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    iput-object v13, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 707
    .line 708
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->end(I)I

    .line 709
    .line 710
    .line 711
    move-result v6

    .line 712
    invoke-virtual {v12, v6}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    .line 713
    .line 714
    .line 715
    goto :goto_15

    .line 716
    :cond_2b
    const-string v7, "<head><meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\"></head>"

    .line 717
    .line 718
    if-eqz v25, :cond_2c

    .line 719
    .line 720
    new-instance v13, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v14, v10}, Ljava/util/regex/Matcher;->end(I)I

    .line 726
    .line 727
    .line 728
    move-result v6

    .line 729
    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    iput-object v13, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-virtual {v14, v10}, Ljava/util/regex/Matcher;->end(I)I

    .line 735
    .line 736
    .line 737
    move-result v6

    .line 738
    add-int/lit8 v6, v6, 0x50

    .line 739
    .line 740
    invoke-virtual {v12, v6}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    .line 741
    .line 742
    .line 743
    goto :goto_15

    .line 744
    :cond_2c
    new-instance v10, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    const/4 v6, 0x0

    .line 750
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    const-string v7, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n<html>"

    .line 754
    .line 755
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    const-string v6, "</html>"

    .line 759
    .line 760
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    iput-object v10, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 764
    .line 765
    const/16 v6, 0x96

    .line 766
    .line 767
    invoke-virtual {v12, v6}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setHeaderInsertionPoint(I)V

    .line 768
    .line 769
    .line 770
    :goto_15
    sget-object v6, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_HTML_END:Ljava/util/regex/Pattern;

    .line 771
    .line 772
    iget-object v7, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 773
    .line 774
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v7

    .line 778
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 779
    .line 780
    .line 781
    move-result-object v6

    .line 782
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 783
    .line 784
    .line 785
    move-result v7

    .line 786
    sget-object v10, Lcom/fsck/k9/message/quote/HtmlQuoteCreator;->FIND_INSERTION_POINT_BODY_END:Ljava/util/regex/Pattern;

    .line 787
    .line 788
    iget-object v13, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 789
    .line 790
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v13

    .line 794
    invoke-virtual {v10, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 795
    .line 796
    .line 797
    move-result-object v10

    .line 798
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    .line 799
    .line 800
    .line 801
    move-result v13

    .line 802
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 803
    .line 804
    .line 805
    move-result-object v14

    .line 806
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 807
    .line 808
    .line 809
    move-result-object v15

    .line 810
    move/from16 v17, v7

    .line 811
    .line 812
    move/from16 v21, v13

    .line 813
    .line 814
    const/4 v7, 0x2

    .line 815
    new-array v13, v7, [Ljava/lang/Object;

    .line 816
    .line 817
    const/16 v19, 0x0

    .line 818
    .line 819
    aput-object v14, v13, v19

    .line 820
    .line 821
    const/4 v7, 0x1

    .line 822
    aput-object v15, v13, v7

    .line 823
    .line 824
    const-string v14, "Close: hasHtmlEndTag:%s hasBodyEndTag:%s"

    .line 825
    .line 826
    invoke-static {v14, v13}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    .line 828
    .line 829
    if-eqz v21, :cond_2d

    .line 830
    .line 831
    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->start(I)I

    .line 832
    .line 833
    .line 834
    move-result v6

    .line 835
    invoke-virtual {v12, v6}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    .line 836
    .line 837
    .line 838
    goto :goto_16

    .line 839
    :cond_2d
    if-eqz v17, :cond_2e

    .line 840
    .line 841
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->start(I)I

    .line 842
    .line 843
    .line 844
    move-result v6

    .line 845
    invoke-virtual {v12, v6}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    .line 846
    .line 847
    .line 848
    goto :goto_16

    .line 849
    :cond_2e
    iget-object v6, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 850
    .line 851
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v6

    .line 855
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 856
    .line 857
    .line 858
    move-result v6

    .line 859
    invoke-virtual {v12, v6}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->setFooterInsertionPoint(I)V

    .line 860
    .line 861
    .line 862
    :goto_16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 866
    .line 867
    .line 868
    move-result-object v6

    .line 869
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    const/4 v10, 0x1

    .line 873
    :try_start_0
    invoke-static {v10, v10}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 874
    .line 875
    .line 876
    move-result-object v7

    .line 877
    move-object/from16 v10, p3

    .line 878
    .line 879
    check-cast v10, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 880
    .line 881
    invoke-virtual {v10}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getSettings()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 882
    .line 883
    .line 884
    move-result-object v10

    .line 885
    iget-object v10, v10, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 886
    .line 887
    iget-boolean v10, v10, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideTimeZone:Z

    .line 888
    .line 889
    if-eqz v10, :cond_2f

    .line 890
    .line 891
    const-string v10, "UTC"

    .line 892
    .line 893
    invoke-static {v10}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 894
    .line 895
    .line 896
    move-result-object v10

    .line 897
    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 898
    .line 899
    .line 900
    :cond_2f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v6

    .line 907
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .line 909
    .line 910
    move-object v13, v6

    .line 911
    goto :goto_17

    .line 912
    :catch_0
    move-object/from16 v13, v20

    .line 913
    .line 914
    :goto_17
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 915
    .line 916
    .line 917
    move-result-object v6

    .line 918
    sget-object v7, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 919
    .line 920
    invoke-static {v6}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v6

    .line 924
    sget-object v7, Lnet/thunderbird/core/android/account/QuoteStyle;->PREFIX:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 925
    .line 926
    if-ne v2, v7, :cond_32

    .line 927
    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    const-string v7, "<div class=\"gmail_quote\">"

    .line 931
    .line 932
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 936
    .line 937
    .line 938
    move-result v7

    .line 939
    sget-object v10, Lcom/fsck/k9/message/html/HTMLTag;->DIV:Lcom/fsck/k9/message/html/HTMLTag;

    .line 940
    .line 941
    if-eqz v7, :cond_30

    .line 942
    .line 943
    const/4 v7, 0x2

    .line 944
    new-array v7, v7, [Ljava/lang/Object;

    .line 945
    .line 946
    const/16 v19, 0x0

    .line 947
    .line 948
    aput-object v13, v7, v19

    .line 949
    .line 950
    const/4 v13, 0x1

    .line 951
    aput-object v6, v7, v13

    .line 952
    .line 953
    const v6, 0x7f120436

    .line 954
    .line 955
    .line 956
    invoke-virtual {v9, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v6

    .line 960
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    invoke-static {v6, v10}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v6

    .line 967
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    goto :goto_18

    .line 971
    :cond_30
    const/4 v13, 0x1

    .line 972
    const/16 v19, 0x0

    .line 973
    .line 974
    new-array v7, v13, [Ljava/lang/Object;

    .line 975
    .line 976
    aput-object v6, v7, v19

    .line 977
    .line 978
    const v6, 0x7f120435

    .line 979
    .line 980
    .line 981
    invoke-virtual {v9, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v6

    .line 985
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    invoke-static {v6, v10}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v6

    .line 992
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    :goto_18
    const-string v6, "<blockquote class=\"gmail_quote\" style=\"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;\">\r\n"

    .line 996
    .line 997
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    iget-object v6, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    iget v7, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->headerInsertionPoint:I

    .line 1007
    .line 1008
    invoke-virtual {v6, v7, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    iget v6, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 1012
    .line 1013
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1014
    .line 1015
    .line 1016
    move-result v2

    .line 1017
    add-int/2addr v2, v6

    .line 1018
    iput v2, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 1019
    .line 1020
    iget-object v6, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    const-string v7, "</blockquote></div>"

    .line 1023
    .line 1024
    invoke-virtual {v6, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    iget v2, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 1028
    .line 1029
    const/16 v6, 0x13

    .line 1030
    .line 1031
    add-int/2addr v6, v2

    .line 1032
    iput v6, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 1033
    .line 1034
    :cond_31
    move-object/from16 v17, v11

    .line 1035
    .line 1036
    goto/16 :goto_1a

    .line 1037
    .line 1038
    :cond_32
    sget-object v7, Lnet/thunderbird/core/android/account/QuoteStyle;->HEADER:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1039
    .line 1040
    if-ne v2, v7, :cond_31

    .line 1041
    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    const-string v7, "<div style=\'font-size:10.0pt;font-family:\"Tahoma\",\"sans-serif\";padding:3.0pt 0in 0in 0in\'>\r\n<hr style=\'border:none;border-top:solid #E1E1E1 1.0pt\'>\r\n"

    .line 1045
    .line 1046
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v7

    .line 1053
    const-string v10, "<br>\r\n"

    .line 1054
    .line 1055
    const-string v14, "</b> "

    .line 1056
    .line 1057
    const-string v15, "<b>"

    .line 1058
    .line 1059
    move-object/from16 p3, v7

    .line 1060
    .line 1061
    sget-object v7, Lcom/fsck/k9/message/html/HTMLTag;->SPAN:Lcom/fsck/k9/message/html/HTMLTag;

    .line 1062
    .line 1063
    if-eqz p3, :cond_33

    .line 1064
    .line 1065
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1066
    .line 1067
    .line 1068
    move-result v17

    .line 1069
    if-eqz v17, :cond_33

    .line 1070
    .line 1071
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    move-object/from16 v17, v11

    .line 1075
    .line 1076
    const v11, 0x7f120430

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v11

    .line 1083
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-static {v6, v7}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v6

    .line 1096
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    goto :goto_19

    .line 1103
    :cond_33
    move-object/from16 v17, v11

    .line 1104
    .line 1105
    :goto_19
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 1106
    .line 1107
    .line 1108
    move-result v6

    .line 1109
    if-eqz v6, :cond_34

    .line 1110
    .line 1111
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    .line 1114
    const v6, 0x7f120431

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v6

    .line 1121
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    :cond_34
    sget-object v6, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 1137
    .line 1138
    invoke-virtual {v1, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v11

    .line 1142
    if-eqz v11, :cond_35

    .line 1143
    .line 1144
    invoke-virtual {v1, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v11

    .line 1148
    array-length v11, v11

    .line 1149
    if-eqz v11, :cond_35

    .line 1150
    .line 1151
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    const v11, 0x7f120434

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v11

    .line 1161
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v1, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v6

    .line 1174
    invoke-static {v6}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v6

    .line 1178
    invoke-static {v6, v7}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v6

    .line 1182
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    :cond_35
    sget-object v6, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 1189
    .line 1190
    invoke-virtual {v1, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v11

    .line 1194
    if-eqz v11, :cond_36

    .line 1195
    .line 1196
    invoke-virtual {v1, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v11

    .line 1200
    array-length v11, v11

    .line 1201
    if-eqz v11, :cond_36

    .line 1202
    .line 1203
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    const v11, 0x7f12042f

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v11

    .line 1213
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v1, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v6

    .line 1226
    invoke-static {v6}, Lcom/fsck/k9/mail/K9MailLib;->toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v6

    .line 1230
    invoke-static {v6, v7}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v6

    .line 1234
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    .line 1240
    :cond_36
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v6

    .line 1244
    if-eqz v6, :cond_37

    .line 1245
    .line 1246
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    const v6, 0x7f120433

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v6

    .line 1256
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v6

    .line 1269
    invoke-static {v6, v7}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v6

    .line 1273
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    :cond_37
    const-string v6, "</div>\r\n<br>\r\n"

    .line 1280
    .line 1281
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v2

    .line 1288
    iget-object v6, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    iget v7, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->headerInsertionPoint:I

    .line 1291
    .line 1292
    invoke-virtual {v6, v7, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    .line 1295
    iget v6, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 1296
    .line 1297
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1298
    .line 1299
    .line 1300
    move-result v2

    .line 1301
    add-int/2addr v2, v6

    .line 1302
    iput v2, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 1303
    .line 1304
    :goto_1a
    iput-object v12, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 1305
    .line 1306
    iget-object v2, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v2

    .line 1312
    invoke-static {v5}, Lcom/fsck/k9/mailstore/AttachmentResolver;->createFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v6

    .line 1316
    iget-object v7, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 1317
    .line 1318
    check-cast v7, Lcom/fsck/k9/view/MessageWebView;

    .line 1319
    .line 1320
    iget-object v9, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 1321
    .line 1322
    check-cast v9, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 1323
    .line 1324
    invoke-virtual {v9, v2}, Lcom/fsck/k9/message/html/DisplayHtml;->wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    const/4 v9, 0x0

    .line 1329
    invoke-virtual {v7, v2, v6, v9}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments$1(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 1330
    .line 1331
    .line 1332
    invoke-static {v5, v8}, Lkotlin/math/MathKt;->getBodyTextFromMessage(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/message/SimpleMessageFormat;)Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v2

    .line 1336
    iget-object v5, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 1337
    .line 1338
    check-cast v5, Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1339
    .line 1340
    iget-object v6, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 1341
    .line 1342
    check-cast v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1343
    .line 1344
    invoke-virtual {v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuotePrefix()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v6

    .line 1348
    invoke-virtual {v3, v1, v2, v5, v6}, Lcom/fsck/k9/message/quote/TextQuoteCreator;->quoteOriginalTextMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/String;Lnet/thunderbird/core/android/account/QuoteStyle;Ljava/lang/String;)Ljava/lang/String;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v1

    .line 1352
    iget-object v2, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 1353
    .line 1354
    check-cast v2, Landroid/widget/EditText;

    .line 1355
    .line 1356
    move-object/from16 v5, v16

    .line 1357
    .line 1358
    move-object/from16 v7, v17

    .line 1359
    .line 1360
    invoke-static {v1, v7, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v1

    .line 1364
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    .line 1366
    .line 1367
    goto :goto_1b

    .line 1368
    :cond_38
    move-object v5, v10

    .line 1369
    move-object v7, v11

    .line 1370
    if-ne v9, v8, :cond_3b

    .line 1371
    .line 1372
    iget-object v8, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 1373
    .line 1374
    check-cast v8, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1375
    .line 1376
    invoke-virtual {v8}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isStripSignature()Z

    .line 1377
    .line 1378
    .line 1379
    move-result v8

    .line 1380
    if-eqz v8, :cond_3a

    .line 1381
    .line 1382
    if-eq v2, v13, :cond_39

    .line 1383
    .line 1384
    if-ne v2, v12, :cond_3a

    .line 1385
    .line 1386
    :cond_39
    sget-object v2, Lcom/fsck/k9/message/signature/TextSignatureRemover;->DASH_SIGNATURE_PLAIN:Ljava/util/regex/Pattern;

    .line 1387
    .line 1388
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v8

    .line 1392
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 1393
    .line 1394
    .line 1395
    move-result v8

    .line 1396
    if-eqz v8, :cond_3a

    .line 1397
    .line 1398
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v2

    .line 1402
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v6

    .line 1406
    :cond_3a
    iget-object v2, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 1407
    .line 1408
    check-cast v2, Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1409
    .line 1410
    iget-object v8, v0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 1411
    .line 1412
    check-cast v8, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1413
    .line 1414
    invoke-virtual {v8}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getQuotePrefix()Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v8

    .line 1418
    invoke-virtual {v3, v1, v6, v2, v8}, Lcom/fsck/k9/message/quote/TextQuoteCreator;->quoteOriginalTextMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/String;Lnet/thunderbird/core/android/account/QuoteStyle;Ljava/lang/String;)Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v1

    .line 1422
    iget-object v2, v4, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 1423
    .line 1424
    check-cast v2, Landroid/widget/EditText;

    .line 1425
    .line 1426
    invoke-static {v1, v7, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v1

    .line 1430
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    .line 1432
    .line 1433
    :cond_3b
    :goto_1b
    if-eqz p2, :cond_3c

    .line 1434
    .line 1435
    sget-object v1, Lcom/fsck/k9/message/QuotedTextMode;->SHOW:Lcom/fsck/k9/message/QuotedTextMode;

    .line 1436
    .line 1437
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 1438
    .line 1439
    .line 1440
    goto :goto_1c

    .line 1441
    :cond_3c
    sget-object v1, Lcom/fsck/k9/message/QuotedTextMode;->HIDE:Lcom/fsck/k9/message/QuotedTextMode;

    .line 1442
    .line 1443
    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 1444
    .line 1445
    .line 1446
    :goto_1c
    return-void
.end method

.method public processSourceMessageText(Lcom/fsck/k9/mail/Part;IIZ)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 4
    .line 5
    const-string v0, "text/plain"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x3

    .line 38
    new-array v3, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v0, v3, v4

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v1, v3, v0

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    aput-object v2, v3, v0

    .line 48
    .line 49
    const-string v0, "Loading message with offset %d, length %d. Text length is %d."

    .line 50
    .line 51
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "\n"

    .line 55
    .line 56
    const-string v1, "\r\n"

    .line 57
    .line 58
    if-eqz p3, :cond_3

    .line 59
    .line 60
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    if-nez p2, :cond_1

    .line 66
    .line 67
    add-int/lit8 v3, p3, 0x4

    .line 68
    .line 69
    invoke-virtual {p1, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const-string v6, "\r\n\r\n"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    add-int v3, p2, p3

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-ne v3, v5, :cond_2

    .line 96
    .line 97
    add-int/lit8 v5, p2, -0x2

    .line 98
    .line 99
    invoke-virtual {p1, v5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_2

    .line 108
    .line 109
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Landroid/widget/EditText;

    .line 138
    .line 139
    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    add-int/2addr p3, p2

    .line 147
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_1

    .line 152
    :catch_0
    const-string p2, "The identity field from the draft contains an invalid bodyOffset/bodyLength"

    .line 153
    .line 154
    new-array p3, v4, [Ljava/lang/Object;

    .line 155
    .line 156
    invoke-static {p2, p3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    .line 160
    .line 161
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p0, Landroid/widget/EditText;

    .line 164
    .line 165
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_2
    return-void
.end method

.method public removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    .line 21
    .line 22
    iget-object v3, v1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, v2

    .line 32
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->textQuoteCreator:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    const-string v0, "CameraPresenceSrc"

    .line 59
    .line 60
    const-string v1, "Last observer removed. Stopping monitoring."

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 67
    .line 68
    const-string v1, "PipePresenceSrc"

    .line 69
    .line 70
    const-string v3, "Stopping camera ID flow collection."

    .line 71
    .line 72
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 76
    .line 77
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iput-object v2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    :goto_1
    monitor-exit p1

    .line 102
    return-void

    .line 103
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroid/widget/EditText;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/view/View;

    .line 18
    .line 19
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 22
    .line 23
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Landroid/view/View;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lcom/fsck/k9/view/MessageWebView;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/16 v5, 0x8

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    if-eq p1, v6, :cond_1

    .line 42
    .line 43
    const/4 p0, 0x2

    .line 44
    if-eq p1, p0, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 70
    .line 71
    if-ne p0, p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public startMonitoring()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v3, "PipePresenceSrc"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Monitoring is already active. Ignoring redundant start call."

    .line 16
    .line 17
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v0, "Starting to collect camera ID flow."

    .line 22
    .line 23
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 42
    .line 43
    iget-object v4, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextMode:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    .line 46
    .line 47
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 48
    .line 49
    invoke-direct {v5, v4, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 53
    .line 54
    invoke-direct {v4, p0, v0, v3, v2}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 58
    .line 59
    const/4 v6, 0x2

    .line 60
    invoke-direct {v0, v5, v4, v6}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 64
    .line 65
    invoke-direct {v4, p0, v3, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    .line 69
    .line 70
    invoke-direct {v2, v0, v4, v1}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quoteStyle:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lkotlinx/coroutines/internal/ContextScope;

    .line 76
    .line 77
    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 82
    .line 83
    return-void
.end method

.method public updateState(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->textQuoteCreator:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p1, v2

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_1
    :goto_0
    move p1, v1

    .line 31
    :goto_1
    iput-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Ljava/lang/Throwable;

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    iget-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p2, Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move p2, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :goto_2
    move p2, v1

    .line 61
    :goto_3
    const/4 v3, 0x0

    .line 62
    iput-object v3, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 65
    .line 66
    move p1, p2

    .line 67
    :goto_4
    iget-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->view:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p2, Ljava/util/List;

    .line 70
    .line 71
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v3, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Ljava/lang/Throwable;

    .line 78
    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    const-string p1, "CameraPresenceSrc"

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v4, "Data changed. Notifying "

    .line 87
    .line 88
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v4, " observers. Error: "

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_5
    move v1, v2

    .line 111
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->generalSettingsManager:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_6

    .line 134
    .line 135
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;

    .line 140
    .line 141
    iget-object v0, p1, Landroidx/camera/core/impl/AbstractCameraPresenceSource$ObserverWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 142
    .line 143
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 144
    .line 145
    const/4 v2, 0x3

    .line 146
    invoke-direct {v1, v3, p1, p2, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_6
    return-void

    .line 154
    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    throw p0
.end method
