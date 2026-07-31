package com.fsck.k9.mailstore.folder;

import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LocalStoreProvider;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Instant;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.common.cache.TimeLimitedCache;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultOutboxFolderManager {
    public final DefaultLegacyAccountManager accountManager;
    public final CoroutineDispatcher ioDispatcher;
    public final LocalStoreProvider localStoreProvider;
    public final Logger logger;
    public final TimeLimitedCache outboxFolderIdCache;

    public DefaultOutboxFolderManager(Logger logger, DefaultLegacyAccountManager defaultLegacyAccountManager, LocalStoreProvider localStoreProvider, TimeLimitedCache timeLimitedCache) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.logger = logger;
        this.accountManager = defaultLegacyAccountManager;
        this.localStoreProvider = localStoreProvider;
        this.outboxFolderIdCache = timeLimitedCache;
        this.ioDispatcher = defaultIoScheduler;
    }

    public static final LocalStore access$createLocalStore(DefaultOutboxFolderManager defaultOutboxFolderManager, AccountId accountId) {
        LegacyAccount account = defaultOutboxFolderManager.accountManager.getAccount(accountId.value.toString());
        if (account != null) {
            return defaultOutboxFolderManager.localStoreProvider.getInstanceByLegacyAccount(account);
        }
        DBUtil$$ExternalSyntheticBUOutline0.m(accountId, " not found", "Account with id ");
        return null;
    }

    public final Object getOutboxFolderId(AccountId accountId, ContinuationImpl continuationImpl) {
        DefaultOutboxFolderManager$$ExternalSyntheticLambda0 defaultOutboxFolderManager$$ExternalSyntheticLambda0 = new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, 0);
        Logger logger = this.logger;
        Continuation continuation = null;
        Sink$CC.verbose$default(logger, "DefaultOutboxFolderManager", null, defaultOutboxFolderManager$$ExternalSyntheticLambda0, 2);
        TimeLimitedCache timeLimitedCache = this.outboxFolderIdCache;
        timeLimitedCache.getClass();
        accountId.getClass();
        Map map = timeLimitedCache.cache;
        TimeLimitedCache.Entry entry = (TimeLimitedCache.Entry) map.get(accountId);
        if (entry != null) {
            Instant instant = entry.expiresAt;
            Instant now = timeLimitedCache.clock.now();
            instant.getClass();
            now.getClass();
            int compare = Intrinsics.compare(instant.epochSeconds, now.epochSeconds);
            if (compare == 0) {
                compare = Intrinsics.compare(instant.nanosecondsOfSecond, now.nanosecondsOfSecond);
            }
            if (compare < 0) {
                map.remove(accountId);
            }
        }
        TimeLimitedCache.Entry entry2 = (TimeLimitedCache.Entry) map.get(accountId);
        if (entry2 != null) {
            Sink$CC.debug$default(logger, "DefaultOutboxFolderManager", null, new K9$$ExternalSyntheticLambda0(12, entry2), 2);
            return entry2.value;
        }
        return JobKt.withContext(this.ioDispatcher, new NavHostKt$NavHost$25$1(this, accountId, continuation, 15), continuationImpl);
    }
}
