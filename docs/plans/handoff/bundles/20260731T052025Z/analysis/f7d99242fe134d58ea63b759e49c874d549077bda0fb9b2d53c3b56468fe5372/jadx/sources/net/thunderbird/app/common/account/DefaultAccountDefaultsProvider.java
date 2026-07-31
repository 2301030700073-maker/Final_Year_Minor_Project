package net.thunderbird.app.common.account;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.resources.K9CoreResourceProvider;
import java.util.ArrayList;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;
import net.thunderbird.core.android.account.AccountDefaultsProvider;
import net.thunderbird.core.android.account.Expunge;
import net.thunderbird.core.android.account.FolderMode;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.ShowPictures;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.feature.mail.folder.api.SpecialFolderSelection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAccountDefaultsProvider implements AccountDefaultsProvider {
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final K9CoreResourceProvider resourceProvider;

    public DefaultAccountDefaultsProvider(K9CoreResourceProvider k9CoreResourceProvider, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider) {
        this.resourceProvider = k9CoreResourceProvider;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
    }

    public final void applyDefaults(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.setAutomaticCheckIntervalMinutes(15);
        legacyAccountDto.setIdleRefreshMinutes(24);
        legacyAccountDto.setDisplayCount(25);
        legacyAccountDto.setAccountNumber(-1);
        legacyAccountDto.setNotifyNewMail(true);
        legacyAccountDto.setFolderNotifyNewMailMode(FolderMode.ALL);
        legacyAccountDto.setNotifySync(false);
        legacyAccountDto.setNotifySelfNewMail(true);
        legacyAccountDto.setNotifyContactsMailOnly(false);
        legacyAccountDto.setIgnoreChatMessages(false);
        legacyAccountDto.setMessagesNotificationChannelVersion(0);
        legacyAccountDto.setFolderDisplayMode(FolderMode.NOT_SECOND_CLASS);
        legacyAccountDto.setFolderSyncMode(FolderMode.FIRST_CLASS);
        legacyAccountDto.setFolderPushMode(FolderMode.NONE);
        AccountDefaultsProvider.Companion.getClass();
        SortType sortType = AccountDefaultsProvider.Companion.DEFAULT_SORT_TYPE;
        legacyAccountDto.setSortType(sortType);
        legacyAccountDto.setSortAscending(sortType, false);
        legacyAccountDto.setShowPictures(ShowPictures.NEVER);
        legacyAccountDto.setSignatureBeforeQuotedText(false);
        legacyAccountDto.setExpungePolicy(Expunge.EXPUNGE_IMMEDIATELY);
        legacyAccountDto.setImportedAutoExpandFolder(null);
        legacyAccountDto.setLegacyInboxFolder(null);
        legacyAccountDto.setMaxPushFolders(10);
        legacyAccountDto.setSubscribedFoldersOnly(false);
        legacyAccountDto.setMaximumPolledMessageAge(-1);
        legacyAccountDto.setMaximumAutoDownloadMessageSize(131072);
        legacyAccountDto.setMessageFormat(AccountDefaultsProvider.Companion.DEFAULT_MESSAGE_FORMAT);
        legacyAccountDto.setMessageFormatAuto();
        legacyAccountDto.setMessageReadReceipt(false);
        legacyAccountDto.setQuoteStyle(AccountDefaultsProvider.Companion.DEFAULT_QUOTE_STYLE);
        legacyAccountDto.setQuotePrefix(">");
        legacyAccountDto.setDefaultQuotedTextShown(true);
        legacyAccountDto.setReplyAfterQuote(false);
        legacyAccountDto.setStripSignature(true);
        legacyAccountDto.setSyncRemoteDeletions(true);
        legacyAccountDto.setOpenPgpKey(0L);
        synchronized (legacyAccountDto) {
        }
        legacyAccountDto.setRemoteSearchNumResults(25);
        legacyAccountDto.setUploadSentMessages(true);
        legacyAccountDto.setMarkMessageAsReadOnView(true);
        legacyAccountDto.setMarkMessageAsReadOnDelete(true);
        legacyAccountDto.setAlwaysShowCcBcc(false);
        legacyAccountDto.setLastSyncTime(0L);
        legacyAccountDto.setLastFolderListRefreshTime(0L);
        SpecialFolderSelection specialFolderSelection = SpecialFolderSelection.AUTOMATIC;
        legacyAccountDto.setArchiveFolderId(null, specialFolderSelection);
        legacyAccountDto.setDraftsFolderId(null, specialFolderSelection);
        legacyAccountDto.setSentFolderId(null, specialFolderSelection);
        legacyAccountDto.setSpamFolderId(null, specialFolderSelection);
        legacyAccountDto.setTrashFolderId(null, specialFolderSelection);
        legacyAccountDto.setIdentities(new ArrayList());
        String string = this.resourceProvider.context.getString(R.string.default_identity_description);
        string.getClass();
        ((ArrayList) legacyAccountDto.getIdentities()).add(new Identity(string, (String) null, (String) null, (String) null, false, 38));
        legacyAccountDto.updateNotificationSettings(new JsonObject$$ExternalSyntheticLambda0(14));
        legacyAccountDto.resetChangeMarkers();
    }

    public final void applyOverwrites(LegacyAccountDto legacyAccountDto, InMemoryStorage inMemoryStorage) {
        String str = legacyAccountDto.uuid;
        if (!inMemoryStorage.values.containsKey(ViewSizeResolver.CC.m(str, ".notifyNewMail"))) {
            InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider = this.featureFlagProvider;
            legacyAccountDto.setNotifyNewMail(((Boolean) inMemoryFeatureFlagProvider.m1030providedj3aFNw("email_notification_default").whenEnabledOrNot(new TextKt$$ExternalSyntheticLambda4(28), new UtcOffsetJvmKt$$ExternalSyntheticLambda0(25))).booleanValue());
            legacyAccountDto.setNotifySelfNewMail(((Boolean) inMemoryFeatureFlagProvider.m1030providedj3aFNw("email_notification_default").whenEnabledOrNot(new TextKt$$ExternalSyntheticLambda4(28), new UtcOffsetJvmKt$$ExternalSyntheticLambda0(25))).booleanValue());
            return;
        }
        legacyAccountDto.setNotifyNewMail(inMemoryStorage.getBoolean(str + ".notifyNewMail", false));
        legacyAccountDto.setNotifySelfNewMail(inMemoryStorage.getBoolean(str + ".notifySelfNewMail", true));
    }
}
