package com.fsck.k9.backend;

import androidx.datastore.core.DataStoreImpl$data$1$3;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.controller.push.PushController;
import com.fsck.k9.controller.push.PushController$initInBackground$2;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.backend.api.BackendFactory;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackendManager {
    public final DefaultLegacyAccountManager accountManager;
    public final LinkedHashMap backendFactories;
    public final LinkedHashMap backendCache = new LinkedHashMap();
    public final CopyOnWriteArraySet listeners = new CopyOnWriteArraySet();

    public BackendManager(LinkedHashMap linkedHashMap, DefaultLegacyAccountManager defaultLegacyAccountManager) {
        this.backendFactories = linkedHashMap;
        this.accountManager = defaultLegacyAccountManager;
    }

    public final Backend getBackend(AccountId accountId) {
        accountId.getClass();
        synchronized (this.backendCache) {
            BackendContainer backendContainer = (BackendContainer) this.backendCache.get(accountId.value.toString());
            LegacyAccount byIdSync = this.accountManager.getByIdSync(accountId);
            if (byIdSync == null) {
                throw new IllegalStateException(("Account not found: " + accountId).toString());
            }
            if (backendContainer != null && backendContainer.incomingServerSettings.equals(byIdSync.incomingServerSettings) && backendContainer.outgoingServerSettings.equals(byIdSync.outgoingServerSettings)) {
                return backendContainer.backend;
            }
            BackendFactory backendFactory = (BackendFactory) this.backendFactories.get(byIdSync.incomingServerSettings.type);
            if (backendFactory == null) {
                throw new IllegalStateException("Unsupported account type");
            }
            Backend createBackend = backendFactory.createBackend(byIdSync.id);
            this.backendCache.put(byIdSync.uuid, new BackendContainer(createBackend, byIdSync.incomingServerSettings, byIdSync.outgoingServerSettings));
            notifyListeners(accountId);
            return createBackend;
        }
    }

    public final void notifyListeners(AccountId accountId) {
        Iterator it = this.listeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            PushController$initInBackground$2 pushController$initInBackground$2 = (PushController$initInBackground$2) it.next();
            pushController$initInBackground$2.getClass();
            accountId.getClass();
            PushController pushController = pushController$initInBackground$2.$tmp0;
            JobKt.launch$default(pushController.coroutineScope, pushController.coroutineDispatcher, null, new DataStoreImpl$data$1$3(pushController, accountId, (Continuation) null, 28), 2);
        }
    }
}
