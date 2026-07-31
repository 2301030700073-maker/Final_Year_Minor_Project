package net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase;

import app.k9mail.legacy.message.controller.MessagingControllerMailChecker;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncAccount {
    public final LegacyAccountDtoManager accountManager;
    public final CoroutineContext coroutineContext;
    public final MessagingControllerMailChecker messagingController;

    public SyncAccount(LegacyAccountDtoManager legacyAccountDtoManager, MessagingControllerMailChecker messagingControllerMailChecker) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = legacyAccountDtoManager;
        this.messagingController = messagingControllerMailChecker;
        this.coroutineContext = defaultIoScheduler;
    }
}
