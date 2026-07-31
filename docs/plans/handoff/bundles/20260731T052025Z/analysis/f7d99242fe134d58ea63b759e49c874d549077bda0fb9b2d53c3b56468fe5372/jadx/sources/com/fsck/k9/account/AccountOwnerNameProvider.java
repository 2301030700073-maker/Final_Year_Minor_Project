package com.fsck.k9.account;

import com.fsck.k9.Preferences;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountOwnerNameProvider {
    public final CoroutineDispatcher coroutineDispatcher;
    public final Preferences preferences;

    public AccountOwnerNameProvider(Preferences preferences) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.preferences = preferences;
        this.coroutineDispatcher = defaultIoScheduler;
    }
}
