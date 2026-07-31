package com.fsck.k9.controller;

import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import com.fsck.k9.Preferences;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.MessageListCache;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import kotlin.io.CloseableKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.account.AccountId;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessagingControllerWrapper {
    public final LegacyAccountDtoManager accountManager;
    public final MessagingController messagingController;

    public MessagingControllerWrapper(MessagingController messagingController, LegacyAccountDtoManager legacyAccountDtoManager) {
        this.messagingController = messagingController;
        this.accountManager = legacyAccountDtoManager;
    }

    public final void checkAuthenticationProblem(AccountId accountId) {
        accountId.getClass();
        LegacyAccountDto accountDtoOrThrow = getAccountDtoOrThrow(accountId);
        boolean isAuthenticationProblem = MessagingController.isAuthenticationProblem(accountDtoOrThrow, true);
        MessagingController messagingController = this.messagingController;
        if (isAuthenticationProblem) {
            messagingController.handleAuthenticationFailure(accountDtoOrThrow, true);
            return;
        }
        messagingController.clearAuthenticationErrorNotification(accountDtoOrThrow, true, true);
        if (MessagingController.isAuthenticationProblem(accountDtoOrThrow, false)) {
            messagingController.handleAuthenticationFailure(accountDtoOrThrow, false);
        } else {
            messagingController.clearAuthenticationErrorNotification(accountDtoOrThrow, false, true);
        }
    }

    public final void copyMessagesInThread(AccountId accountId, long j, List list, long j2) {
        accountId.getClass();
        LegacyAccountDto accountDtoOrThrow = getAccountDtoOrThrow(accountId);
        MessagingController messagingController = this.messagingController;
        try {
            messagingController.putBackground("copyMessagesInThread", new MessagingController$$ExternalSyntheticLambda23(messagingController, accountDtoOrThrow, new LocalFolder(messagingController.localStoreProvider.getInstance(accountDtoOrThrow), j).getMessagesByReference(list), j, j2, 2));
        } catch (MessagingException e) {
            Log.e(e, "Error loading account?!", new Object[0]);
        }
    }

    public final LegacyAccountDto getAccountDtoOrNull(AccountId accountId) {
        return ((Preferences) this.accountManager).getAccount(accountId.value.toString());
    }

    public final LegacyAccountDto getAccountDtoOrThrow(AccountId accountId) {
        LegacyAccountDto account = ((Preferences) this.accountManager).getAccount(accountId.value.toString());
        if (account != null) {
            return account;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) accountId, "Account not found: ");
        return null;
    }

    public final boolean isCopyCapable(AccountId accountId) {
        accountId.getClass();
        LegacyAccountDto accountDtoOrNull = getAccountDtoOrNull(accountId);
        if (accountDtoOrNull == null) {
            return false;
        }
        return this.messagingController.getBackend(accountDtoOrNull).getSupportsCopy();
    }

    public final boolean isMoveCapable(AccountId accountId) {
        accountId.getClass();
        LegacyAccountDto accountDtoOrNull = getAccountDtoOrNull(accountId);
        if (accountDtoOrNull == null) {
            return false;
        }
        return this.messagingController.getBackend(accountDtoOrNull).getSupportsMove();
    }

    public final void moveMessagesInThread(AccountId accountId, long j, List list, long j2) {
        accountId.getClass();
        LegacyAccountDto accountDtoOrThrow = getAccountDtoOrThrow(accountId);
        MessagingController messagingController = this.messagingController;
        try {
            ArrayList messagesByReference = new LocalFolder(messagingController.localStoreProvider.getInstance(accountDtoOrThrow), j).getMessagesByReference(list);
            MessagingController.suppressMessages(accountDtoOrThrow, messagesByReference);
            messagingController.putBackground("moveMessagesInThread", new MessagingController$$ExternalSyntheticLambda23(messagingController, accountDtoOrThrow, messagesByReference, j, j2, 3));
        } catch (MessagingException e) {
            Log.e(e, "Error loading account?!", new Object[0]);
        }
    }

    public final Future searchRemoteMessages(AccountId accountId, long j, String str, SimpleMessagingListener simpleMessagingListener) {
        accountId.getClass();
        simpleMessagingListener.getClass();
        String obj = accountId.value.toString();
        Log.i("searchRemoteMessages (acct = %s, folderId = %d, query = %s)", obj, Long.valueOf(j), str);
        MessagingController messagingController = this.messagingController;
        return messagingController.threadPool.submit(new ArchiveOperations$$ExternalSyntheticLambda6(messagingController, obj, j, str, simpleMessagingListener, 2));
    }

    public final void setFlag(AccountId accountId, List list, Flag flag, boolean z) {
        accountId.getClass();
        flag.getClass();
        LegacyAccountDto accountDtoOrThrow = getAccountDtoOrThrow(accountId);
        MessagingController.setFlagInCache(accountDtoOrThrow, list, flag, z);
        MessagingController messagingController = this.messagingController;
        messagingController.putBackground("setFlag", new MessagingController$$ExternalSyntheticLambda12(messagingController, accountDtoOrThrow, list, flag, z, 0));
    }

    public final void setFlagForThreads(AccountId accountId, List list, Flag flag, boolean z) {
        accountId.getClass();
        flag.getClass();
        LegacyAccountDto accountDtoOrThrow = getAccountDtoOrThrow(accountId);
        MessagingController messagingController = this.messagingController;
        MessageListCache cache = MessageListCache.getCache(accountDtoOrThrow.uuid);
        synchronized (cache.threadCache) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    long longValue = ((Number) it.next()).longValue();
                    LinkedHashMap linkedHashMap = cache.threadCache;
                    Long valueOf = Long.valueOf(longValue);
                    Object obj = linkedHashMap.get(valueOf);
                    if (obj == null) {
                        obj = new LinkedHashMap();
                        linkedHashMap.put(valueOf, obj);
                    }
                    ((Map) obj).put(flag, Boolean.valueOf(z));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ((DefaultMessageListRepository) CloseableKt.get$default(DefaultMessageListRepository.class)).notifyMessageListChanged(cache.accountUuid);
        messagingController.putBackground("setFlagForThreads", new MessagingController$$ExternalSyntheticLambda12(messagingController, accountDtoOrThrow, list, flag, z, 1));
    }
}
