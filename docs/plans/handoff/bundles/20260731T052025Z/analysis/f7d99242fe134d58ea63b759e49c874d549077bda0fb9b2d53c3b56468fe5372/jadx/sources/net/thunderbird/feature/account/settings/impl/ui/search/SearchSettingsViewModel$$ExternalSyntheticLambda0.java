package net.thunderbird.feature.account.settings.impl.ui.search;

import com.fsck.k9.R;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.resources.StringsResourceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchSettingsViewModel$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StringsResourceManager f$0;

    public /* synthetic */ SearchSettingsViewModel$$ExternalSyntheticLambda0(StringsResourceManager stringsResourceManager, int i) {
        this.$r8$classId = i;
        this.f$0 = stringsResourceManager;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        StringsResourceManager stringsResourceManager = this.f$0;
        switch (i) {
            case 0:
                return ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.account_settings_remote_search_num_results_entries_25);
            default:
                return ((AndroidResourceManager) stringsResourceManager).stringResource(R.string.account_settings_show_pictures_never);
        }
    }
}
