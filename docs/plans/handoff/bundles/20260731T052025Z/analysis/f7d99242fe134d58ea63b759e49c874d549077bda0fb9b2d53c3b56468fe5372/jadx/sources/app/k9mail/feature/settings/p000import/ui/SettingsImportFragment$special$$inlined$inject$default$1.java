package app.k9mail.feature.settings.p000import.ui;

import app.k9mail.feature.migration.launcher.k9.K9MigrationManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImportFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SettingsImportFragment $this_inject;

    public /* synthetic */ SettingsImportFragment$special$$inlined$inject$default$1(SettingsImportFragment settingsImportFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = settingsImportFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        SettingsImportFragment settingsImportFragment = this.$this_inject;
        switch (i) {
            case 0:
                return AtomicFU.getKoinScope(settingsImportFragment).resolve(Reflection.getOrCreateKotlinClass(K9MigrationManager.class), null, null);
            default:
                return settingsImportFragment;
        }
    }
}
