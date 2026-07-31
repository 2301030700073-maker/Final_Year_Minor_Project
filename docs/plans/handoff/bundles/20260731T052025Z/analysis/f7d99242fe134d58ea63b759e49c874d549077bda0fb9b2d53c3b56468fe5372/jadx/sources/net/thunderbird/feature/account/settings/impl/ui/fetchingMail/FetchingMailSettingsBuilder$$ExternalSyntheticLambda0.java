package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.fsck.k9.R;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FetchingMailSettingsBuilder$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FetchingMailSettingsBuilder f$0;

    public /* synthetic */ FetchingMailSettingsBuilder$$ExternalSyntheticLambda0(FetchingMailSettingsBuilder fetchingMailSettingsBuilder, int i) {
        this.$r8$classId = i;
        this.f$0 = fetchingMailSettingsBuilder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        FetchingMailSettingsBuilder fetchingMailSettingsBuilder = this.f$0;
        switch (i) {
            case 0:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_mark_message_as_read_on_delete_label);
            case 1:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_sync_remote_deletetions_label);
            case 2:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_sync_remote_deletetions_summary);
            case 3:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_push_advanced_title);
            case 4:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_mail_display_count_label);
            case 5:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_incoming_delete_policy_label);
            case 6:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_mark_message_as_read_on_delete_summary);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_autodownload_message_size_label);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_incoming_label);
            case 9:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_expunge_policy_label);
            case 10:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_idle_refresh_period_label);
            case 11:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_mail_check_frequency_label);
            case BasicTextKt.ShiftMeta /* 12 */:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_push_limit_label);
            default:
                return ((AndroidResourceManager) fetchingMailSettingsBuilder.resources).stringResource(R.string.account_settings_message_age_label);
        }
    }
}
