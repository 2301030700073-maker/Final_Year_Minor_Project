.class public final Lcom/fsck/k9/activity/compose/RecipientPresenter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public alwaysBccAddresses:[Lcom/fsck/k9/mail/Address;

.field public final context:Landroid/content/Context;

.field public currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

.field public currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field public forceShowCcBcc:Z

.field public hasContactPicker:Ljava/lang/Boolean;

.field public isForceTextMessageFormat:Z

.field public isReplyToEncryptedMessage:Z

.field public isToAddressAdded:Z

.field public lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

.field public final openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

.field public final openPgpCallback:Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;

.field public final recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

.field public final replyToParser:Lcom/fsck/k9/helper/ReplyToParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/loader/app/LoaderManagerImpl;Lorg/openintents/openpgp/OpenPgpApiManager;Lcom/fsck/k9/activity/compose/RecipientMvpView;Lnet/thunderbird/core/android/account/LegacyAccountDto;Landroidx/transition/Transition$1;Lcom/bumptech/glide/load/Option$1;Lcom/fsck/k9/helper/ReplyToParser;Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeaderParser;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->replyToParser:Lcom/fsck/k9/helper/ReplyToParser;

    .line 17
    .line 18
    sget-object p1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 21
    .line 22
    sget-object p1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 25
    .line 26
    new-instance p1, Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpCallback:Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;

    .line 32
    .line 33
    iput-object p0, p4, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 34
    .line 35
    iget-object p1, p4, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 36
    .line 37
    new-instance p3, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;

    .line 38
    .line 39
    const/4 p6, 0x0

    .line 40
    invoke-direct {p3, p0, p6}, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p3}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    .line 44
    .line 45
    .line 46
    iget-object p3, p4, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 47
    .line 48
    new-instance p6, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;

    .line 49
    .line 50
    const/4 p7, 0x1

    .line 51
    invoke-direct {p6, p0, p7}, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p6}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    .line 55
    .line 56
    .line 57
    iget-object p4, p4, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 58
    .line 59
    new-instance p6, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;

    .line 60
    .line 61
    const/4 p7, 0x2

    .line 62
    invoke-direct {p6, p0, p7}, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4, p6}, Lcom/fsck/k9/view/RecipientSelectView;->setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/fsck/k9/view/RecipientSelectView;->setLoaderManager(Landroidx/loader/app/LoaderManager;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2}, Lcom/fsck/k9/view/RecipientSelectView;->setLoaderManager(Landroidx/loader/app/LoaderManager;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4, p2}, Lcom/fsck/k9/view/RecipientSelectView;->setLoaderManager(Landroidx/loader/app/LoaderManager;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p5}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onSwitchAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static toAddressArray([Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    aget-object v4, p0, v3

    .line 12
    .line 13
    sget-object v5, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    invoke-static {v4}, Lcom/fsck/k9/mail/K9MailLib;->parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-array p0, v2, [Lcom/fsck/k9/mail/Address;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, [Lcom/fsck/k9/mail/Address;

    .line 36
    .line 37
    return-object p0
.end method


# virtual methods
.method public final varargs addBccAddresses([Lcom/fsck/k9/mail/Address;)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    array-length v0, p1

    .line 6
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, [Lcom/fsck/k9/mail/Address;

    .line 11
    .line 12
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final varargs addCcAddresses([Lcom/fsck/k9/mail/Address;)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    array-length v0, p1

    .line 6
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, [Lcom/fsck/k9/mail/Address;

    .line 11
    .line 12
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final varargs addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    array-length v0, p2

    .line 10
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    new-instance v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    .line 17
    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;Lcom/fsck/k9/mail/Message$RecipientType;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/loader/content/AsyncTaskLoader;->startLoading()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "account"

    .line 28
    .line 29
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method

.method public final varargs addToAddresses([Lcom/fsck/k9/mail/Address;)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, [Lcom/fsck/k9/mail/Address;

    .line 7
    .line 8
    sget-object v0, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addRecipientsFromAddresses(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isToAddressAdded:Z

    .line 15
    .line 16
    return-void
.end method

.method public final asyncUpdateCryptoStatus()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 5
    .line 6
    iget-object v3, v1, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    const-string v2, "account"

    .line 11
    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpKey()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    cmp-long v4, v4, v6

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    move-object v4, v0

    .line 29
    :goto_0
    move-object v1, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move-object v4, v1

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    new-instance v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 36
    .line 37
    iget-object v6, v5, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v7, v5, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 47
    .line 48
    invoke-virtual {v7}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iget-object v5, v5, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget-boolean v6, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 73
    .line 74
    iget-object v7, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 75
    .line 76
    if-eqz v7, :cond_5

    .line 77
    .line 78
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutocryptPreferEncryptMutual()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    iget-boolean v8, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isReplyToEncryptedMessage:Z

    .line 83
    .line 84
    iget-object v9, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 85
    .line 86
    if-eqz v9, :cond_4

    .line 87
    .line 88
    invoke-virtual {v9}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpEncryptAllDrafts()Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    iget-object v10, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 93
    .line 94
    if-eqz v10, :cond_3

    .line 95
    .line 96
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpEncryptSubject()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    iget-object v11, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 101
    .line 102
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-object v0, v5

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    .line 107
    .line 108
    const/16 v1, 0xa

    .line 109
    .line 110
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 132
    .line 133
    iget-object v1, v1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_1
    const/4 v12, 0x0

    .line 142
    invoke-direct/range {v2 .. v12}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;-><init>(Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;Ljava/lang/Long;Ljava/util/ArrayList;ZZZZZLcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;)V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->OK:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 146
    .line 147
    if-eq v3, v0, :cond_2

    .line 148
    .line 149
    iput-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->redrawCachedCryptoStatusIcon()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_2
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;

    .line 156
    .line 157
    iget-object v1, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAddressesAsArray:[Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter$asyncUpdateCryptoStatus$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;[Ljava/lang/String;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)V

    .line 160
    .line 161
    .line 162
    const/4 p0, 0x0

    .line 163
    new-array p0, p0, [Ljava/lang/Void;

    .line 164
    .line 165
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_6
    move-object v1, v2

    .line 182
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0
.end method

.method public final getToAddresses()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getAddresses()[Lcom/fsck/k9/mail/Address;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final onMenuSetSignOnly(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object p1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 8
    .line 9
    .line 10
    sget p1, Lcom/fsck/k9/K9;->pgpSignOnlyDialogCounter:I

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    add-int/2addr p1, v0

    .line 17
    sput p1, Lcom/fsck/k9/K9;->pgpSignOnlyDialogCounter:I

    .line 18
    .line 19
    invoke-static {}, Lcom/fsck/k9/K9;->saveSettingsAsync()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpSignOnlyDialog(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    sget-object p1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onSwitchAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->forceShowCcBcc:Z

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAlwaysShowCcBcc()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->alwaysBccAddresses:[Lcom/fsck/k9/mail/Address;

    .line 31
    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    array-length v3, v2

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->removeAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v4, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 73
    .line 74
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeObjectSync(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    :goto_1
    sget-object v2, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    const-string v4, "account"

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAlwaysBcc()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iput-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->alwaysBccAddresses:[Lcom/fsck/k9/mail/Address;

    .line 105
    .line 106
    array-length v5, v2

    .line 107
    if-nez v5, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 111
    .line 112
    if-eqz v5, :cond_6

    .line 113
    .line 114
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    array-length v4, v2

    .line 119
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v4, Lcom/fsck/k9/activity/compose/RecipientPresenter$addAlwaysBcc$1;

    .line 124
    .line 125
    iget-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->context:Landroid/content/Context;

    .line 126
    .line 127
    invoke-direct {v4, p0, v5, v3, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter$addAlwaysBcc$1;-><init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Landroidx/loader/content/AsyncTaskLoader;->startLoading()V

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v2, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 138
    .line 139
    invoke-virtual {v2, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setCryptoProvider(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setCryptoProvider(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1}, Lcom/fsck/k9/view/RecipientSelectView;->setCryptoProvider(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 151
    .line 152
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpCallback:Lcom/fsck/k9/activity/compose/RecipientPresenter$openPgpCallback$1;

    .line 153
    .line 154
    invoke-virtual {v0, p1, p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProvider(Ljava/lang/String;Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v3

    .line 162
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v3
.end method

.method public final redrawCachedCryptoStatusIcon()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setShowCryptoEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setShowCryptoEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/fsck/k9/view/RecipientSelectView;->setShowCryptoEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->displayType:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget v1, v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->childIdToDisplay:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, -0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-ne v1, v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/high16 v2, 0x42c80000    # 100.0f

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-wide/16 v5, 0xc3

    .line 53
    .line 54
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView;->CRYPTO_ICON_OUT_ANIMATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/high16 v2, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-wide/16 v5, 0xe1

    .line 89
    .line 90
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView;->CRYPTO_ICON_IN_ANIMATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 101
    .line 102
    .line 103
    :goto_0
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->specialModeDisplayType:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget v0, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->childIdToDisplay:I

    .line 109
    .line 110
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 111
    .line 112
    if-ne v0, v4, :cond_1

    .line 113
    .line 114
    const/16 p0, 0x8

    .line 115
    .line 116
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_2
    const-string p0, "must have cached crypto status to redraw it!"

    .line 133
    .line 134
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final toggleEncryptionState(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string p0, "click on crypto status while crypto status not available - should not really happen?!"

    .line 11
    .line 12
    new-array p1, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v4, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isEncryptionEnabled:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpEnabledErrorDialog()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 33
    .line 34
    sget-object v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-ne v4, v5, :cond_2

    .line 38
    .line 39
    const p0, 0x7f1202cb

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->allRecipientsCanEncrypt()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    iget-boolean v4, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isSenderPreferEncryptMutual:Z

    .line 57
    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    iget-boolean v4, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isRecipientsPreferEncryptMutual:Z

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-boolean v4, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isReplyToEncrypted:Z

    .line 66
    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    :goto_0
    move v3, v6

    .line 70
    :cond_4
    iget-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 71
    .line 72
    sget-object v5, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 73
    .line 74
    sget-object v6, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 75
    .line 76
    sget-object v7, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 77
    .line 78
    if-ne v4, v7, :cond_8

    .line 79
    .line 80
    iget-object v4, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->recipientAutocryptStatus:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;

    .line 81
    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    iget-object v4, v4, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatus;->intent:Landroid/app/PendingIntent;

    .line 85
    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    iget-object p0, v2, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->autocryptPendingIntent:Landroid/app/PendingIntent;

    .line 89
    .line 90
    const/4 p1, 0x5

    .line 91
    invoke-virtual {v0, p0, p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->launchUserInteractionPendingIntent(Landroid/app/PendingIntent;I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    if-eqz v3, :cond_6

    .line 96
    .line 97
    iput-object v6, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_6
    iput-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 106
    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    new-instance p0, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;

    .line 111
    .line 112
    invoke-direct {p0}, Lcom/fsck/k9/activity/compose/PgpEncryptDescriptionDialog;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance p1, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v0, "highlighted_view"

    .line 121
    .line 122
    const v2, 0x7f09016c

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string v0, "openpgp_description"

    .line 136
    .line 137
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    return-void

    .line 141
    :cond_8
    if-ne v4, v6, :cond_9

    .line 142
    .line 143
    if-nez v3, :cond_9

    .line 144
    .line 145
    iput-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_9
    iput-object v7, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final updateRecipientExpanderVisibility()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccWrapper:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccWrapper:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    xor-int/2addr v0, v1

    .line 24
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientExpanderContainer:Landroid/widget/ViewAnimator;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eq v1, v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
