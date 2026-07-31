package com.fsck.k9.ui.settings.account;

import com.fsck.k9.account.DefaultBackgroundAccountRemover;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.notification.NotificationSettingsUpdater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.common.provider.AppNameProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AccountSettingsFragment $this_inject;

    public /* synthetic */ AccountSettingsFragment$special$$inlined$inject$default$1(AccountSettingsFragment accountSettingsFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = accountSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        AccountSettingsFragment accountSettingsFragment = this.$this_inject;
        switch (i) {
            case 0:
                return AtomicFU.getKoinScope(accountSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(AccountSettingsDataStoreFactory.class), null, null);
            case 1:
                return accountSettingsFragment.requireActivity();
            case 2:
                return AtomicFU.getKoinScope(accountSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
            case 3:
                return AtomicFU.getKoinScope(accountSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(DefaultBackgroundAccountRemover.class), null, null);
            case 4:
                return AtomicFU.getKoinScope(accountSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
            case 5:
                return AtomicFU.getKoinScope(accountSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(NotificationSettingsUpdater.class), null, null);
            case 6:
                return AtomicFU.getKoinScope(accountSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(Vibrator.class), null, null);
            default:
                return AtomicFU.getKoinScope(accountSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(AppNameProvider.class), null, null);
        }
    }
}
