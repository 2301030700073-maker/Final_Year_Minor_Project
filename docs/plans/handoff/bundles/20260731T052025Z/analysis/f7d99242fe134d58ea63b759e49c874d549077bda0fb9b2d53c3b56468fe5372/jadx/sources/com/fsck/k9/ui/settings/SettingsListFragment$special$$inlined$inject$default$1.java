package com.fsck.k9.ui.settings;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.feature.funding.noop.NoOpFundingManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsListFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SettingsListFragment $this_inject;

    public /* synthetic */ SettingsListFragment$special$$inlined$inject$default$1(SettingsListFragment settingsListFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = settingsListFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        SettingsListFragment settingsListFragment = this.$this_inject;
        switch (i) {
            case 0:
                return AtomicFU.getKoinScope(settingsListFragment).resolve(Reflection.getOrCreateKotlinClass(NoOpFundingManager.class), null, null);
            case 1:
                return AtomicFU.getKoinScope(settingsListFragment).resolve(Reflection.getOrCreateKotlinClass(BrandNameProvider.class), null, null);
            default:
                return settingsListFragment;
        }
    }
}
