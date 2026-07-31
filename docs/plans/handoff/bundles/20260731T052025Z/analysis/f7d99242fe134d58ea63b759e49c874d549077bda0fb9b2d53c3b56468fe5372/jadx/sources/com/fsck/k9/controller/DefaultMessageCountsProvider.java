package com.fsck.k9.controller;

import androidx.appcompat.app.ActionBar;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.message.controller.MessageCounts;
import app.k9mail.legacy.message.controller.MessagingControllerRegistry;
import coil3.disk.DiskLruCache;
import com.fsck.k9.Preferences;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.storage.messages.K9MessageStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import net.thunderbird.feature.search.legacy.api.SearchCondition;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultMessageCountsProvider {
    public final LegacyAccountDtoManager accountManager;
    public final CoroutineContext coroutineContext;
    public final MessageStoreManager messageStoreManager;
    public final MessagingControllerRegistry messagingControllerRegistry;
    public final DefaultOutboxFolderManager outboxFolderManager;

    public DefaultMessageCountsProvider(MessageStoreManager messageStoreManager, MessagingControllerRegistry messagingControllerRegistry, DefaultOutboxFolderManager defaultOutboxFolderManager, LegacyAccountDtoManager legacyAccountDtoManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = legacyAccountDtoManager;
        this.messageStoreManager = messageStoreManager;
        this.messagingControllerRegistry = messagingControllerRegistry;
        this.outboxFolderManager = defaultOutboxFolderManager;
        this.coroutineContext = defaultIoScheduler;
    }

    public final MessageCounts getMessageCounts(LocalMessageSearch localMessageSearch) {
        LegacyAccountDtoManager legacyAccountDtoManager = this.accountManager;
        legacyAccountDtoManager.getClass();
        List accounts = ((Preferences) legacyAccountDtoManager).getAccounts();
        if (!localMessageSearch.accountUuidSet.isEmpty()) {
            Set set = CollectionsKt.toSet(localMessageSearch.getAccountUuids());
            ArrayList arrayList = new ArrayList();
            for (Object obj : accounts) {
                if (set.contains(((LegacyAccountDto) obj).uuid)) {
                    arrayList.add(obj);
                }
            }
            accounts = arrayList;
        }
        Iterator it = accounts.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            MessageCounts messageCounts = getMessageCounts((LegacyAccountDto) it.next(), localMessageSearch.getConditions());
            i += messageCounts.unread;
            i2 += messageCounts.starred;
        }
        return new MessageCounts(i, i2);
    }

    public final MessageCounts getMessageCounts(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        LocalMessageSearch localMessageSearch = new LocalMessageSearch();
        long outboxFolderIdSync$default = Sink$CC.getOutboxFolderIdSync$default(this.outboxFolderManager, legacyAccountDto.id);
        ActionBar.excludeSpecialFolder(localMessageSearch, legacyAccountDto.getTrashFolderId());
        ActionBar.excludeSpecialFolder(localMessageSearch, legacyAccountDto.getDraftsFolderId());
        ActionBar.excludeSpecialFolder(localMessageSearch, legacyAccountDto.getSpamFolderId());
        ActionBar.excludeSpecialFolder(localMessageSearch, Long.valueOf(outboxFolderIdSync$default));
        ActionBar.excludeSpecialFolder(localMessageSearch, legacyAccountDto.getSentFolderId());
        Long inboxFolderId = legacyAccountDto.getInboxFolderId();
        if (inboxFolderId != null) {
            localMessageSearch.or(new SearchCondition(MessageSearchField.FOLDER, SearchAttribute.EQUALS, String.valueOf(inboxFolderId.longValue())));
        }
        localMessageSearch.and(MessageSearchField.VISIBLE, DiskLruCache.VERSION, SearchAttribute.EQUALS);
        return getMessageCounts(legacyAccountDto, localMessageSearch.getConditions());
    }

    public final MessageCounts getMessageCounts(LegacyAccountDto legacyAccountDto, SearchConditionTreeNode searchConditionTreeNode) {
        try {
            K9MessageStore k9MessageStore = (K9MessageStore) this.messageStoreManager.getMessageStore(legacyAccountDto).messageStore.val$folders;
            return new MessageCounts(k9MessageStore.retrieveFolderOperations.getMessageCount("messages.read = 0", searchConditionTreeNode), k9MessageStore.retrieveFolderOperations.getMessageCount("messages.flagged = 1", searchConditionTreeNode));
        } catch (Exception e) {
            Log.e(e, "Unable to getMessageCounts for account: %s", legacyAccountDto);
            return new MessageCounts(0, 0);
        }
    }
}
