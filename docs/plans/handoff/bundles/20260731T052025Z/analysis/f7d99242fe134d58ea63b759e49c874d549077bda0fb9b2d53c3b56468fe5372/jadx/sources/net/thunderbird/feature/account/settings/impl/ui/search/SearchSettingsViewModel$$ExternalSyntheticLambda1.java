package net.thunderbird.feature.account.settings.impl.ui.search;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function0;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchSettingsViewModel$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AccountSettingsDomainContract$AccountSettingError f$0;

    public /* synthetic */ SearchSettingsViewModel$$ExternalSyntheticLambda1(AccountSettingsDomainContract$AccountSettingError accountSettingsDomainContract$AccountSettingError, int i) {
        this.$r8$classId = i;
        this.f$0 = accountSettingsDomainContract$AccountSettingError;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        AccountSettingsDomainContract$AccountSettingError accountSettingsDomainContract$AccountSettingError = this.f$0;
        switch (i) {
            case 0:
                return ((AccountSettingsDomainContract$AccountSettingError.NotFound) accountSettingsDomainContract$AccountSettingError).message;
            case 1:
                return ((AccountSettingsDomainContract$AccountSettingError.NotFound) accountSettingsDomainContract$AccountSettingError).message;
            case 2:
                return ((AccountSettingsDomainContract$AccountSettingError.StorageError) accountSettingsDomainContract$AccountSettingError).message;
            case 3:
                return ((AccountSettingsDomainContract$AccountSettingError.UnsupportedFormat) accountSettingsDomainContract$AccountSettingError).message;
            case 4:
                return ((AccountSettingsDomainContract$AccountSettingError.NotFound) accountSettingsDomainContract$AccountSettingError).message;
            case 5:
                return ((AccountSettingsDomainContract$AccountSettingError.StorageError) accountSettingsDomainContract$AccountSettingError).message;
            case 6:
                return ((AccountSettingsDomainContract$AccountSettingError.UnsupportedFormat) accountSettingsDomainContract$AccountSettingError).message;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((AccountSettingsDomainContract$AccountSettingError.NotFound) accountSettingsDomainContract$AccountSettingError).message;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((AccountSettingsDomainContract$AccountSettingError.StorageError) accountSettingsDomainContract$AccountSettingError).message;
            case 9:
                return ((AccountSettingsDomainContract$AccountSettingError.UnsupportedFormat) accountSettingsDomainContract$AccountSettingError).message;
            case 10:
                return ((AccountSettingsDomainContract$AccountSettingError.StorageError) accountSettingsDomainContract$AccountSettingError).message;
            default:
                return ((AccountSettingsDomainContract$AccountSettingError.UnsupportedFormat) accountSettingsDomainContract$AccountSettingError).message;
        }
    }
}
