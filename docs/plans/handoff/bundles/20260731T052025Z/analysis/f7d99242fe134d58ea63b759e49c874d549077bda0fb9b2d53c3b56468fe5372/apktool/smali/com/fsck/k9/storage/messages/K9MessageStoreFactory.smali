.class public final Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final basicPartInfoExtractor:Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

.field public final localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

.field public final storageFilesProviderFactory:Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStoreProvider;Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->storageFilesProviderFactory:Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->basicPartInfoExtractor:Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactory;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 13
    .line 14
    return-void
.end method
