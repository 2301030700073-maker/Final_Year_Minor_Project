package com.fsck.k9;

import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Preferences$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Preferences f$0;

    public /* synthetic */ Preferences$$ExternalSyntheticLambda1(Preferences preferences, int i) {
        this.$r8$classId = i;
        this.f$0 = preferences;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z;
        int i = this.$r8$classId;
        Preferences preferences = this.f$0;
        switch (i) {
            case 0:
                z = ((DefaultGeneralSettingsManager) ((GeneralSettingsManager) preferences.generalSettingsManager$delegate.getValue())).getConfig().debugging.isSensitiveLoggingEnabled;
                break;
            default:
                z = ((DefaultGeneralSettingsManager) ((GeneralSettingsManager) preferences.generalSettingsManager$delegate.getValue())).getConfig().debugging.isSensitiveLoggingEnabled;
                break;
        }
        return Boolean.valueOf(z);
    }
}
