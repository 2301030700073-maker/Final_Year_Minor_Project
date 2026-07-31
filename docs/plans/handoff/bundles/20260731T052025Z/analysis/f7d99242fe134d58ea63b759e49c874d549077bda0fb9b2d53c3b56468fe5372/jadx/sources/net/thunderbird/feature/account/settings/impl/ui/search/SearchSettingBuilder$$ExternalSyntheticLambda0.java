package net.thunderbird.feature.account.settings.impl.ui.search;

import androidx.datastore.preferences.PreferencesProto$Value;
import com.fsck.k9.R;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchSettingBuilder$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SearchSettingBuilder f$0;

    public /* synthetic */ SearchSettingBuilder$$ExternalSyntheticLambda0(SearchSettingBuilder searchSettingBuilder, int i) {
        this.$r8$classId = i;
        this.f$0 = searchSettingBuilder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        SearchSettingBuilder searchSettingBuilder = this.f$0;
        switch (i) {
            case 0:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_label);
            case 1:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_results_entries_10);
            case 2:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_results_entries_25);
            case 3:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_results_entries_50);
            case 4:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_results_entries_100);
            case 5:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_results_entries_250);
            case 6:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_results_entries_500);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_results_entries_1000);
            default:
                return ((AndroidResourceManager) searchSettingBuilder.resources).stringResource(R.string.account_settings_remote_search_num_results_entries_all);
        }
    }
}
