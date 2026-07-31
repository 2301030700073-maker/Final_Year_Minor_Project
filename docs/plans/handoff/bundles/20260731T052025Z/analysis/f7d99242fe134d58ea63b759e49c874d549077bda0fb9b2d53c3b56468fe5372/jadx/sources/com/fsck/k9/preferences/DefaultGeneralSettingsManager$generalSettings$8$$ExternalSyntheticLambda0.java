package com.fsck.k9.preferences;

import kotlin.jvm.functions.Function0;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DisplayMessageListSettings f$0;

    public /* synthetic */ DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0(DisplayMessageListSettings displayMessageListSettings, int i) {
        this.$r8$classId = i;
        this.f$0 = displayMessageListSettings;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        DisplayMessageListSettings displayMessageListSettings = this.f$0;
        switch (i) {
            case 0:
                return "messageListSettings: " + displayMessageListSettings;
            default:
                return "save() called with: config = " + displayMessageListSettings;
        }
    }
}
