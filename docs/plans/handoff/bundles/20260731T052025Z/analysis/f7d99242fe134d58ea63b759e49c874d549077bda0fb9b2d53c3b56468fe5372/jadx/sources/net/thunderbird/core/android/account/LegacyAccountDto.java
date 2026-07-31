package net.thunderbird.core.android.account;

import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.ServerSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.AccountIdFactory;
import net.thunderbird.feature.account.storage.profile.AvatarDto;
import net.thunderbird.feature.account.storage.profile.AvatarTypeDto;
import net.thunderbird.feature.mail.account.api.BaseAccount;
import net.thunderbird.feature.mail.folder.api.SpecialFolderSelection;
import net.thunderbird.feature.notification.NotificationLight;
import net.thunderbird.feature.notification.NotificationSettings;
import net.thunderbird.feature.notification.NotificationVibration;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyAccountDto implements BaseAccount {
    public int accountNumber;
    public String alwaysBcc;
    public Long archiveFolderId;
    public SpecialFolderSelection archiveFolderSelection;
    public Long autoExpandFolderId;
    public boolean autocryptPreferEncryptMutual;
    public int automaticCheckIntervalMinutes;
    public AvatarDto avatar;
    public int chipColor;
    public DeletePolicy deletePolicy;
    public int displayCount;
    public Long draftsFolderId;
    public SpecialFolderSelection draftsFolderSelection;
    public Expunge expungePolicy;
    public FolderMode folderDisplayMode;
    public FolderMode folderNotifyNewMailMode;
    public String folderPathDelimiter;
    public FolderMode folderPushMode;
    public FolderMode folderSyncMode;
    public final AccountId id;
    public ArrayList identities;
    public int idleRefreshMinutes;
    public String importedArchiveFolder;
    public String importedAutoExpandFolder;
    public String importedDraftsFolder;
    public String importedSentFolder;
    public String importedSpamFolder;
    public String importedTrashFolder;
    public Long inboxFolderId;
    public ServerSettings internalIncomingServerSettings;
    public ServerSettings internalOutgoingServerSettings;
    public boolean isAlwaysShowCcBcc;
    public boolean isChangedVisibleLimits;
    public boolean isDefaultQuotedTextShown;
    public boolean isFinishedSetup;
    public boolean isIgnoreChatMessages;
    public boolean isMarkMessageAsReadOnDelete;
    public boolean isMarkMessageAsReadOnView;
    public boolean isMessageReadReceipt;
    public boolean isNotifyContactsMailOnly;
    public boolean isNotifyNewMail;
    public boolean isNotifySelfNewMail;
    public boolean isNotifySync;
    public boolean isOpenPgpEncryptAllDrafts;
    public boolean isOpenPgpEncryptSubject;
    public boolean isOpenPgpHideSignOnly;
    public boolean isReplyAfterQuote;
    public boolean isSendClientInfoEnabled;
    public final Function0 isSensitiveDebugLoggingEnabled;
    public boolean isSignatureBeforeQuotedText;
    public boolean isStripSignature;
    public boolean isSubscribedFoldersOnly;
    public boolean isSyncRemoteDeletions;
    public boolean isUploadSentMessages;
    public long lastFolderListRefreshTime;
    public Long lastSelectedFolderId;
    public long lastSyncTime;
    public String legacyInboxFolder;
    public int maxPushFolders;
    public int maximumAutoDownloadMessageSize;
    public int maximumPolledMessageAge;
    public MessageFormat messageFormat;
    public int messagesNotificationChannelVersion;
    public String name;
    public NotificationSettings notificationSettings;
    public String oAuthState;
    public long openPgpKey;
    public String openPgpProvider;
    public String quotePrefix;
    public QuoteStyle quoteStyle;
    public int remoteSearchNumResults;
    public Long sentFolderId;
    public SpecialFolderSelection sentFolderSelection;
    public boolean shouldMigrateToOAuth;
    public ShowPictures showPictures;
    public LinkedHashMap sortAscending;
    public SortType sortType;
    public Long spamFolderId;
    public SpecialFolderSelection spamFolderSelection;
    public Long trashFolderId;
    public SpecialFolderSelection trashFolderSelection;
    public boolean useCompression;
    public final String uuid;

    public LegacyAccountDto(String str, Function0 function0) {
        str.getClass();
        this.uuid = str;
        this.isSensitiveDebugLoggingEnabled = function0;
        this.id = AccountIdFactory.INSTANCE.of(str);
        this.avatar = new AvatarDto(AvatarTypeDto.MONOGRAM, null, null, null);
        this.deletePolicy = DeletePolicy.NEVER;
        this.folderNotifyNewMailMode = FolderMode.ALL;
        SpecialFolderSelection specialFolderSelection = SpecialFolderSelection.AUTOMATIC;
        this.draftsFolderSelection = specialFolderSelection;
        this.sentFolderSelection = specialFolderSelection;
        this.trashFolderSelection = specialFolderSelection;
        this.archiveFolderSelection = specialFolderSelection;
        this.spamFolderSelection = specialFolderSelection;
        this.folderDisplayMode = FolderMode.NOT_SECOND_CLASS;
        this.folderSyncMode = FolderMode.FIRST_CLASS;
        this.folderPushMode = FolderMode.NONE;
        this.sortType = SortType.SORT_DATE;
        this.sortAscending = new LinkedHashMap();
        this.showPictures = ShowPictures.NEVER;
        this.expungePolicy = Expunge.EXPUNGE_IMMEDIATELY;
        this.useCompression = true;
        this.isSendClientInfoEnabled = true;
        this.messageFormat = MessageFormat.HTML;
        this.quoteStyle = QuoteStyle.PREFIX;
        this.identities = new ArrayList();
        this.notificationSettings = new NotificationSettings(false, null, NotificationLight.Disabled, NotificationVibration.DEFAULT);
        this.folderPathDelimiter = "/";
    }

    public final boolean equals(Object obj) {
        return obj instanceof LegacyAccountDto ? Intrinsics.areEqual(((LegacyAccountDto) obj).uuid, this.uuid) : this == obj;
    }

    public final synchronized Identity findIdentity(Address address) {
        Object obj;
        try {
            address.getClass();
            Iterator it = this.identities.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (StringsKt__StringsJVMKt.equals(((Identity) obj).email, address.address, true)) {
                    break;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (Identity) obj;
    }

    public final synchronized String folderPathDelimiter() {
        return this.folderPathDelimiter;
    }

    public final synchronized int getAccountNumber() {
        return this.accountNumber;
    }

    public final synchronized String getAlwaysBcc() {
        return this.alwaysBcc;
    }

    public final synchronized Long getArchiveFolderId() {
        return this.archiveFolderId;
    }

    public final synchronized SpecialFolderSelection getArchiveFolderSelection() {
        return this.archiveFolderSelection;
    }

    public final synchronized Long getAutoExpandFolderId() {
        return this.autoExpandFolderId;
    }

    public final synchronized boolean getAutocryptPreferEncryptMutual() {
        return this.autocryptPreferEncryptMutual;
    }

    public final synchronized int getAutomaticCheckIntervalMinutes() {
        return this.automaticCheckIntervalMinutes;
    }

    public final synchronized AvatarDto getAvatar() {
        return this.avatar;
    }

    public final synchronized int getChipColor() {
        return this.chipColor;
    }

    public final synchronized DeletePolicy getDeletePolicy() {
        return this.deletePolicy;
    }

    public final synchronized int getDisplayCount() {
        return this.displayCount;
    }

    public final String getDisplayName() {
        String name = getName();
        return name == null ? getEmail() : name;
    }

    public final synchronized Long getDraftsFolderId() {
        return this.draftsFolderId;
    }

    public final synchronized SpecialFolderSelection getDraftsFolderSelection() {
        return this.draftsFolderSelection;
    }

    @Override // net.thunderbird.feature.mail.account.api.BaseAccount
    public final synchronized String getEmail() {
        String str;
        str = ((Identity) this.identities.get(0)).email;
        str.getClass();
        return str;
    }

    public final synchronized Expunge getExpungePolicy() {
        return this.expungePolicy;
    }

    public final synchronized FolderMode getFolderDisplayMode() {
        return this.folderDisplayMode;
    }

    public final synchronized FolderMode getFolderNotifyNewMailMode() {
        return this.folderNotifyNewMailMode;
    }

    public final synchronized FolderMode getFolderPushMode() {
        return this.folderPushMode;
    }

    public final synchronized FolderMode getFolderSyncMode() {
        return this.folderSyncMode;
    }

    public final synchronized List getIdentities() {
        return this.identities;
    }

    public final synchronized Identity getIdentity(int i) {
        if (i >= 0) {
            if (i < this.identities.size()) {
            }
        }
        throw new IllegalStateException(("Identity with index " + i + " not found").toString());
        return (Identity) this.identities.get(i);
    }

    public final synchronized int getIdleRefreshMinutes() {
        return this.idleRefreshMinutes;
    }

    public final synchronized String getImportedArchiveFolder() {
        return this.importedArchiveFolder;
    }

    public final synchronized String getImportedAutoExpandFolder() {
        return this.importedAutoExpandFolder;
    }

    public final synchronized String getImportedDraftsFolder() {
        return this.importedDraftsFolder;
    }

    public final synchronized String getImportedSentFolder() {
        return this.importedSentFolder;
    }

    public final synchronized String getImportedSpamFolder() {
        return this.importedSpamFolder;
    }

    public final synchronized String getImportedTrashFolder() {
        return this.importedTrashFolder;
    }

    public final synchronized Long getInboxFolderId() {
        return this.inboxFolderId;
    }

    public final ServerSettings getIncomingServerSettings() {
        ServerSettings serverSettings = this.internalIncomingServerSettings;
        if (serverSettings != null) {
            return serverSettings;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Incoming server settings not set yet");
        return null;
    }

    public final synchronized long getLastFolderListRefreshTime() {
        return this.lastFolderListRefreshTime;
    }

    public final synchronized Long getLastSelectedFolderId() {
        return this.lastSelectedFolderId;
    }

    public final synchronized long getLastSyncTime() {
        return this.lastSyncTime;
    }

    public final synchronized String getLegacyInboxFolder() {
        return this.legacyInboxFolder;
    }

    public final synchronized int getMaxPushFolders() {
        return this.maxPushFolders;
    }

    public final synchronized int getMaximumAutoDownloadMessageSize() {
        return this.maximumAutoDownloadMessageSize;
    }

    public final synchronized int getMaximumPolledMessageAge() {
        return this.maximumPolledMessageAge;
    }

    public final synchronized MessageFormat getMessageFormat() {
        return this.messageFormat;
    }

    public final synchronized int getMessagesNotificationChannelVersion() {
        return this.messagesNotificationChannelVersion;
    }

    @Override // net.thunderbird.feature.mail.account.api.BaseAccount
    public final synchronized String getName() {
        return this.name;
    }

    public final synchronized NotificationSettings getNotificationSettings() {
        return this.notificationSettings;
    }

    public final synchronized String getOAuthState() {
        return this.oAuthState;
    }

    public final synchronized long getOpenPgpKey() {
        return this.openPgpKey;
    }

    public final synchronized String getOpenPgpProvider() {
        return this.openPgpProvider;
    }

    public final ServerSettings getOutgoingServerSettings() {
        ServerSettings serverSettings = this.internalOutgoingServerSettings;
        if (serverSettings != null) {
            return serverSettings;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Outgoing server settings not set yet");
        return null;
    }

    public final synchronized String getQuotePrefix() {
        return this.quotePrefix;
    }

    public final synchronized QuoteStyle getQuoteStyle() {
        return this.quoteStyle;
    }

    public final synchronized int getRemoteSearchNumResults() {
        return this.remoteSearchNumResults;
    }

    public final synchronized String getSenderName() {
        return ((Identity) this.identities.get(0)).name;
    }

    public final synchronized Long getSentFolderId() {
        return this.sentFolderId;
    }

    public final synchronized SpecialFolderSelection getSentFolderSelection() {
        return this.sentFolderSelection;
    }

    public final synchronized ShowPictures getShowPictures() {
        return this.showPictures;
    }

    public final synchronized String getSignature() {
        return ((Identity) this.identities.get(0)).signature;
    }

    public final synchronized boolean getSignatureUse() {
        return ((Identity) this.identities.get(0)).signatureUse;
    }

    public final synchronized SortType getSortType() {
        return this.sortType;
    }

    public final synchronized Long getSpamFolderId() {
        return this.spamFolderId;
    }

    public final synchronized SpecialFolderSelection getSpamFolderSelection() {
        return this.spamFolderSelection;
    }

    public final synchronized Long getTrashFolderId() {
        return this.trashFolderId;
    }

    public final synchronized SpecialFolderSelection getTrashFolderSelection() {
        return this.trashFolderSelection;
    }

    @Override // net.thunderbird.feature.mail.account.api.BaseAccount
    public final String getUuid() {
        return this.uuid;
    }

    public final synchronized boolean hasArchiveFolder() {
        return this.archiveFolderId != null;
    }

    public final synchronized boolean hasDraftsFolder() {
        return this.draftsFolderId != null;
    }

    public final int hashCode() {
        return this.uuid.hashCode();
    }

    public final synchronized boolean isAlwaysShowCcBcc() {
        return this.isAlwaysShowCcBcc;
    }

    public final boolean isAnIdentity(Address[] addressArr) {
        if (addressArr == null) {
            return false;
        }
        for (Address address : addressArr) {
            if (isAnIdentity(address)) {
                return true;
            }
        }
        return false;
    }

    public final synchronized boolean isChangedVisibleLimits() {
        return this.isChangedVisibleLimits;
    }

    public final synchronized boolean isDefaultQuotedTextShown() {
        return this.isDefaultQuotedTextShown;
    }

    public final synchronized boolean isFinishedSetup() {
        return this.isFinishedSetup;
    }

    public final synchronized boolean isIgnoreChatMessages() {
        return this.isIgnoreChatMessages;
    }

    public final synchronized boolean isMarkMessageAsReadOnDelete() {
        return this.isMarkMessageAsReadOnDelete;
    }

    public final synchronized boolean isMarkMessageAsReadOnView() {
        return this.isMarkMessageAsReadOnView;
    }

    public final synchronized boolean isMessageReadReceipt() {
        return this.isMessageReadReceipt;
    }

    public final synchronized boolean isNotifyContactsMailOnly() {
        return this.isNotifyContactsMailOnly;
    }

    public final synchronized boolean isNotifyNewMail() {
        return this.isNotifyNewMail;
    }

    public final synchronized boolean isNotifySelfNewMail() {
        return this.isNotifySelfNewMail;
    }

    public final synchronized boolean isNotifySync() {
        return this.isNotifySync;
    }

    public final synchronized boolean isOpenPgpEncryptAllDrafts() {
        return this.isOpenPgpEncryptAllDrafts;
    }

    public final synchronized boolean isOpenPgpEncryptSubject() {
        return this.isOpenPgpEncryptSubject;
    }

    public final synchronized boolean isOpenPgpHideSignOnly() {
        return this.isOpenPgpHideSignOnly;
    }

    public final synchronized boolean isRemoteSearchFullText() {
        return false;
    }

    public final synchronized boolean isReplyAfterQuote() {
        return this.isReplyAfterQuote;
    }

    public final synchronized boolean isSendClientInfoEnabled() {
        return this.isSendClientInfoEnabled;
    }

    public final synchronized boolean isSignatureBeforeQuotedText() {
        return this.isSignatureBeforeQuotedText;
    }

    public final synchronized boolean isSortAscending(SortType sortType) {
        Object obj;
        try {
            sortType.getClass();
            LinkedHashMap linkedHashMap = this.sortAscending;
            obj = linkedHashMap.get(sortType);
            if (obj == null) {
                obj = Boolean.valueOf(sortType.isDefaultAscending);
                linkedHashMap.put(sortType, obj);
            }
        } catch (Throwable th) {
            throw th;
        }
        return ((Boolean) obj).booleanValue();
    }

    public final synchronized boolean isStripSignature() {
        return this.isStripSignature;
    }

    public final synchronized boolean isSubscribedFoldersOnly() {
        return this.isSubscribedFoldersOnly;
    }

    public final synchronized boolean isSyncRemoteDeletions() {
        return this.isSyncRemoteDeletions;
    }

    public final synchronized boolean isUploadSentMessages() {
        return this.isUploadSentMessages;
    }

    public final synchronized void markSetupFinished() {
        this.isFinishedSetup = true;
    }

    public final synchronized void replaceIdentities(ArrayList arrayList) {
        setIdentities(new ArrayList(arrayList));
    }

    public final synchronized void resetChangeMarkers() {
        this.isChangedVisibleLimits = false;
    }

    public final synchronized void setAccountNumber(int i) {
        this.accountNumber = i;
    }

    public final synchronized void setAlwaysBcc(String str) {
        this.alwaysBcc = str;
    }

    public final synchronized void setAlwaysShowCcBcc(boolean z) {
        this.isAlwaysShowCcBcc = z;
    }

    public final synchronized void setArchiveFolderId(Long l, SpecialFolderSelection specialFolderSelection) {
        specialFolderSelection.getClass();
        this.archiveFolderId = l;
        this.archiveFolderSelection = specialFolderSelection;
    }

    public final synchronized void setAutoExpandFolderId(Long l) {
        this.autoExpandFolderId = l;
    }

    public final synchronized void setAutocryptPreferEncryptMutual(boolean z) {
        this.autocryptPreferEncryptMutual = z;
    }

    public final synchronized void setAutomaticCheckIntervalMinutes(int i) {
        this.automaticCheckIntervalMinutes = i;
    }

    public final synchronized void setAvatar(AvatarDto avatarDto) {
        avatarDto.getClass();
        this.avatar = avatarDto;
    }

    public final synchronized void setChangedVisibleLimits(boolean z) {
        this.isChangedVisibleLimits = z;
    }

    public final synchronized void setChipColor(int i) {
        this.chipColor = i;
    }

    public final synchronized void setDefaultQuotedTextShown(boolean z) {
        this.isDefaultQuotedTextShown = z;
    }

    public final synchronized void setDeletePolicy(DeletePolicy deletePolicy) {
        deletePolicy.getClass();
        this.deletePolicy = deletePolicy;
    }

    public final synchronized void setDisplayCount(int i) {
        try {
            if (this.displayCount != i) {
                Integer valueOf = Integer.valueOf(i);
                if (valueOf.intValue() == -1) {
                    valueOf = null;
                }
                this.displayCount = valueOf != null ? valueOf.intValue() : 25;
                this.isChangedVisibleLimits = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void setDraftsFolderId(Long l, SpecialFolderSelection specialFolderSelection) {
        specialFolderSelection.getClass();
        this.draftsFolderId = l;
        this.draftsFolderSelection = specialFolderSelection;
    }

    public final synchronized void setEmail(String str) {
        str.getClass();
        this.identities.set(0, Identity.copy$default((Identity) this.identities.get(0), null, str, null, false, 59));
    }

    public final synchronized void setExpungePolicy(Expunge expunge) {
        expunge.getClass();
        this.expungePolicy = expunge;
    }

    public final synchronized void setFolderDisplayMode(FolderMode folderMode) {
        folderMode.getClass();
        this.folderDisplayMode = folderMode;
    }

    public final synchronized void setFolderNotifyNewMailMode(FolderMode folderMode) {
        folderMode.getClass();
        this.folderNotifyNewMailMode = folderMode;
    }

    public final synchronized void setFolderPathDelimiter(String str) {
        str.getClass();
        this.folderPathDelimiter = str;
    }

    public final synchronized void setFolderPushMode(FolderMode folderMode) {
        folderMode.getClass();
        this.folderPushMode = folderMode;
    }

    public final synchronized void setFolderSyncMode(FolderMode folderMode) {
        folderMode.getClass();
        this.folderSyncMode = folderMode;
    }

    public final synchronized void setIdentities(List list) {
        list.getClass();
        this.identities = new ArrayList(list);
    }

    public final synchronized void setIdleRefreshMinutes(int i) {
        this.idleRefreshMinutes = i;
    }

    public final synchronized void setIgnoreChatMessages(boolean z) {
        this.isIgnoreChatMessages = z;
    }

    public final synchronized void setImportedArchiveFolder(String str) {
        this.importedArchiveFolder = str;
    }

    public final synchronized void setImportedAutoExpandFolder(String str) {
        this.importedAutoExpandFolder = str;
    }

    public final synchronized void setImportedDraftsFolder(String str) {
        this.importedDraftsFolder = str;
    }

    public final synchronized void setImportedSentFolder(String str) {
        this.importedSentFolder = str;
    }

    public final synchronized void setImportedSpamFolder(String str) {
        this.importedSpamFolder = str;
    }

    public final synchronized void setImportedTrashFolder(String str) {
        this.importedTrashFolder = str;
    }

    public final synchronized void setInboxFolderId(Long l) {
        this.inboxFolderId = l;
    }

    public final synchronized void setLastFolderListRefreshTime(long j) {
        this.lastFolderListRefreshTime = j;
    }

    public final synchronized void setLastSyncTime(long j) {
        this.lastSyncTime = j;
    }

    public final synchronized void setLegacyInboxFolder(String str) {
        this.legacyInboxFolder = str;
    }

    public final synchronized void setMarkMessageAsReadOnDelete(boolean z) {
        this.isMarkMessageAsReadOnDelete = z;
    }

    public final synchronized void setMarkMessageAsReadOnView(boolean z) {
        this.isMarkMessageAsReadOnView = z;
    }

    public final synchronized void setMaxPushFolders(int i) {
        this.maxPushFolders = i;
    }

    public final synchronized void setMaximumAutoDownloadMessageSize(int i) {
        this.maximumAutoDownloadMessageSize = i;
    }

    public final synchronized void setMaximumPolledMessageAge(int i) {
        this.maximumPolledMessageAge = i;
    }

    public final synchronized void setMessageFormat(MessageFormat messageFormat) {
        messageFormat.getClass();
        this.messageFormat = messageFormat;
    }

    public final synchronized void setMessageFormatAuto() {
    }

    public final synchronized void setMessageReadReceipt(boolean z) {
        this.isMessageReadReceipt = z;
    }

    public final synchronized void setMessagesNotificationChannelVersion(int i) {
        this.messagesNotificationChannelVersion = i;
    }

    public final synchronized void setName(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    this.name = str;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        str = null;
        this.name = str;
    }

    public final synchronized void setNotifyContactsMailOnly(boolean z) {
        this.isNotifyContactsMailOnly = z;
    }

    public final synchronized void setNotifyNewMail(boolean z) {
        this.isNotifyNewMail = z;
    }

    public final synchronized void setNotifySelfNewMail(boolean z) {
        this.isNotifySelfNewMail = z;
    }

    public final synchronized void setNotifySync(boolean z) {
        this.isNotifySync = z;
    }

    public final synchronized void setOAuthState(String str) {
        this.oAuthState = str;
    }

    public final synchronized void setOpenPgpEncryptAllDrafts(boolean z) {
        this.isOpenPgpEncryptAllDrafts = z;
    }

    public final synchronized void setOpenPgpEncryptSubject(boolean z) {
        this.isOpenPgpEncryptSubject = z;
    }

    public final synchronized void setOpenPgpHideSignOnly(boolean z) {
        this.isOpenPgpHideSignOnly = z;
    }

    public final synchronized void setOpenPgpKey(long j) {
        this.openPgpKey = j;
    }

    public final synchronized void setOpenPgpProvider(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    this.openPgpProvider = str;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        str = null;
        this.openPgpProvider = str;
    }

    public final synchronized void setQuotePrefix(String str) {
        this.quotePrefix = str;
    }

    public final synchronized void setQuoteStyle(QuoteStyle quoteStyle) {
        quoteStyle.getClass();
        this.quoteStyle = quoteStyle;
    }

    public final synchronized void setRemoteSearchFullText() {
    }

    public final synchronized void setRemoteSearchNumResults(int i) {
        if (i < 0) {
            i = 0;
        }
        this.remoteSearchNumResults = i;
    }

    public final synchronized void setReplyAfterQuote(boolean z) {
        this.isReplyAfterQuote = z;
    }

    public final synchronized void setSendClientInfoEnabled(boolean z) {
        this.isSendClientInfoEnabled = z;
    }

    public final synchronized void setSenderName(String str) {
        Identity identity = (Identity) this.identities.get(0);
        identity.getClass();
        this.identities.set(0, Identity.copy$default(identity, str, null, null, false, 61));
    }

    public final synchronized void setSentFolderId(Long l, SpecialFolderSelection specialFolderSelection) {
        specialFolderSelection.getClass();
        this.sentFolderId = l;
        this.sentFolderSelection = specialFolderSelection;
    }

    public final synchronized void setShouldMigrateToOAuth(boolean z) {
        this.shouldMigrateToOAuth = z;
    }

    public final synchronized void setShowPictures(ShowPictures showPictures) {
        showPictures.getClass();
        this.showPictures = showPictures;
    }

    public final synchronized void setSignature(String str) {
        Identity identity = (Identity) this.identities.get(0);
        identity.getClass();
        this.identities.set(0, Identity.copy$default(identity, null, null, str, false, 55));
    }

    public final synchronized void setSignatureBeforeQuotedText(boolean z) {
        this.isSignatureBeforeQuotedText = z;
    }

    public final synchronized void setSignatureUse(boolean z) {
        Identity identity = (Identity) this.identities.get(0);
        identity.getClass();
        this.identities.set(0, Identity.copy$default(identity, null, null, null, z, 47));
    }

    public final synchronized void setSortAscending(SortType sortType, boolean z) {
        sortType.getClass();
        this.sortAscending.put(sortType, Boolean.valueOf(z));
    }

    public final synchronized void setSortType(SortType sortType) {
        sortType.getClass();
        this.sortType = sortType;
    }

    public final synchronized void setSpamFolderId(Long l, SpecialFolderSelection specialFolderSelection) {
        specialFolderSelection.getClass();
        this.spamFolderId = l;
        this.spamFolderSelection = specialFolderSelection;
    }

    public final synchronized void setStripSignature(boolean z) {
        this.isStripSignature = z;
    }

    public final synchronized void setSubscribedFoldersOnly(boolean z) {
        this.isSubscribedFoldersOnly = z;
    }

    public final synchronized void setSyncRemoteDeletions(boolean z) {
        this.isSyncRemoteDeletions = z;
    }

    public final synchronized void setTrashFolderId(Long l, SpecialFolderSelection specialFolderSelection) {
        specialFolderSelection.getClass();
        this.trashFolderId = l;
        this.trashFolderSelection = specialFolderSelection;
    }

    public final synchronized void setUploadSentMessages(boolean z) {
        this.isUploadSentMessages = z;
    }

    public final synchronized void setUseCompression(boolean z) {
        this.useCompression = z;
    }

    public final synchronized boolean shouldMigrateToOAuth() {
        return this.shouldMigrateToOAuth;
    }

    public final String toString() {
        return ((Boolean) this.isSensitiveDebugLoggingEnabled.invoke()).booleanValue() ? getDisplayName() : this.uuid;
    }

    public final synchronized void updateNotificationSettings(Function1 function1) {
        this.notificationSettings = (NotificationSettings) function1.invoke(this.notificationSettings);
    }

    public final synchronized boolean useCompression() {
        return this.useCompression;
    }

    public final synchronized void setArchiveFolderId(Long l) {
        this.archiveFolderId = l;
    }

    public final synchronized void setDraftsFolderId(Long l) {
        this.draftsFolderId = l;
    }

    public final synchronized void setSentFolderId(Long l) {
        this.sentFolderId = l;
    }

    public final synchronized void setSpamFolderId(Long l) {
        this.spamFolderId = l;
    }

    public final synchronized void setTrashFolderId(Long l) {
        this.trashFolderId = l;
    }

    public final boolean isAnIdentity(Address address) {
        address.getClass();
        return findIdentity(address) != null;
    }
}
