package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FetchingMailSettingsViewModel $this_observe;

    public /* synthetic */ FetchingMailSettingsScreenKt$FetchingMailSettingsScreen$$inlined$observe$1(FetchingMailSettingsViewModel fetchingMailSettingsViewModel, int i) {
        this.$r8$classId = i;
        this.$this_observe = fetchingMailSettingsViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        FetchingMailSettingsViewModel fetchingMailSettingsViewModel = this.$this_observe;
        switch (i) {
            case 0:
                fetchingMailSettingsViewModel.event(obj);
                break;
            default:
                fetchingMailSettingsViewModel.event(obj);
                break;
        }
        return unit;
    }
}
