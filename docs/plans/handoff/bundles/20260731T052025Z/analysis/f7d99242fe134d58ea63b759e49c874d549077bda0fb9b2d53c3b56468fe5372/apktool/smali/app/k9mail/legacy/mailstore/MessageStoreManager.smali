.class public final Lapp/k9mail/legacy/mailstore/MessageStoreManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final messageStoreFactory:Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;

.field public final messageStores:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->messageStoreFactory:Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;

    .line 7
    .line 8
    new-instance p2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->messageStores:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance p2, Lapp/k9mail/legacy/mailstore/MessageStoreManager$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/legacy/mailstore/MessageStoreManager;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 21
    .line 22
    iget-object p0, p1, Lcom/fsck/k9/Preferences;->accountRemovedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getMessageStore(Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;
    .locals 1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    check-cast v0, Lcom/fsck/k9/Preferences;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    const-string p0, "Account not found: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 5
    .line 6
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->messageStores:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->messageStoreFactory:Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v4, v2, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 23
    .line 24
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v3, v3, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/fsck/k9/storage/messages/K9MessageStoreFactoryKt;->access$isGoogle(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v3, v3, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/fsck/k9/storage/messages/K9MessageStoreFactoryKt;->access$isGoogle(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v3, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 52
    .line 53
    const/16 v5, 0xa

    .line 54
    .line 55
    invoke-direct {v3, v5}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual {v4, v5, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->storageFilesProviderFactory:Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;

    .line 63
    .line 64
    iget-object v5, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-object v6, v5

    .line 70
    new-instance v5, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;->context:Landroid/content/Context;

    .line 73
    .line 74
    invoke-direct {v5, v3, v6}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object v6, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->basicPartInfoExtractor:Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;

    .line 83
    .line 84
    iget-object v7, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 85
    .line 86
    iget-object v8, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 87
    .line 88
    iget-object v9, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 89
    .line 90
    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/storage/messages/K9MessageStore;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/fsck/k9/mailstore/LocalStore$1;Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 94
    .line 95
    const/16 p1, 0xb

    .line 96
    .line 97
    invoke-direct {p0, p1, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;-><init>(Lcom/fsck/k9/mailstore/LocalStore$1;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-nez p0, :cond_2

    .line 110
    .line 111
    move-object v2, p1

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    move-object v2, p0

    .line 114
    :cond_3
    :goto_0
    check-cast v2, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 115
    .line 116
    return-object v2
.end method

.method public final getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;
    .locals 2

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    iget-object v0, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    check-cast v1, Lcom/fsck/k9/Preferences;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    const-string p0, "Account not found: "

    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
