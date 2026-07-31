package net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase;

import app.k9mail.legacy.message.controller.MessagingControllerMailChecker;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncAllAccounts {
    public final CoroutineContext coroutineContext;
    public final MessagingControllerMailChecker messagingController;

    public SyncAllAccounts(MessagingControllerMailChecker messagingControllerMailChecker) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.messagingController = messagingControllerMailChecker;
        this.coroutineContext = defaultIoScheduler;
    }
}
