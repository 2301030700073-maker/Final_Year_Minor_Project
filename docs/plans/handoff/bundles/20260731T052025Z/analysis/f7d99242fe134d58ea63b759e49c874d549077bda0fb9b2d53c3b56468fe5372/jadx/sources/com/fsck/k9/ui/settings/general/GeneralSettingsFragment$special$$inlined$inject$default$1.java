package com.fsck.k9.ui.settings.general;

import app.k9mail.feature.telemetry.noop.NoOpTelemetryManager;
import com.fsck.k9.job.K9JobManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GeneralSettingsFragment $this_inject;

    public /* synthetic */ GeneralSettingsFragment$special$$inlined$inject$default$1(GeneralSettingsFragment generalSettingsFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = generalSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        GeneralSettingsFragment generalSettingsFragment = this.$this_inject;
        switch (i) {
            case 0:
                return AtomicFU.getKoinScope(generalSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsDataStore.class), null, null);
            case 1:
                return AtomicFU.getKoinScope(generalSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(NoOpTelemetryManager.class), null, null);
            case 2:
                return AtomicFU.getKoinScope(generalSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null);
            case 3:
                return AtomicFU.getKoinScope(generalSettingsFragment).resolve(Reflection.getOrCreateKotlinClass(K9JobManager.class), null, null);
            default:
                return generalSettingsFragment;
        }
    }
}
