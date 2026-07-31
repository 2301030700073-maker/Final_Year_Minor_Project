package app.k9mail.feature.account.setup.ui.options.sync;

import android.content.res.Resources;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.RelationUtil;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import app.k9mail.feature.account.setup.domain.entity.EmailCheckFrequency;
import app.k9mail.feature.account.setup.domain.entity.EmailDisplayCount;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import com.fsck.k9.R;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SyncOptionsContentKt$$ExternalSyntheticLambda8 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Resources f$0;

    public /* synthetic */ SyncOptionsContentKt$$ExternalSyntheticLambda8(int i, Resources resources) {
        this.$r8$classId = i;
        this.f$0 = resources;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Resources resources = this.f$0;
        switch (i) {
            case 0:
                EmailDisplayCount emailDisplayCount = (EmailDisplayCount) obj;
                emailDisplayCount.getClass();
                resources.getClass();
                int i2 = emailDisplayCount.count;
                String quantityString = resources.getQuantityString(R.plurals.account_setup_options_email_display_count_messages, i2, Integer.valueOf(i2));
                quantityString.getClass();
                return quantityString;
            case 1:
                ConnectionSecurity connectionSecurity = (ConnectionSecurity) obj;
                connectionSecurity.getClass();
                return RelationUtil.toResourceString(connectionSecurity, resources);
            case 2:
                AuthenticationType authenticationType = (AuthenticationType) obj;
                authenticationType.getClass();
                return DebugUtils.toResourceString(authenticationType, resources);
            case 3:
                AuthenticationType authenticationType2 = (AuthenticationType) obj;
                authenticationType2.getClass();
                return DebugUtils.toResourceString(authenticationType2, resources);
            case 4:
                ConnectionSecurity connectionSecurity2 = (ConnectionSecurity) obj;
                connectionSecurity2.getClass();
                return RelationUtil.toResourceString(connectionSecurity2, resources);
            case 5:
                EmailCheckFrequency emailCheckFrequency = (EmailCheckFrequency) obj;
                emailCheckFrequency.getClass();
                resources.getClass();
                int i3 = emailCheckFrequency.minutes;
                if (i3 == -1) {
                    String string = resources.getString(R.string.account_setup_options_email_check_frequency_never);
                    string.getClass();
                    return string;
                }
                if (1 <= i3 && i3 < 60) {
                    String quantityString2 = resources.getQuantityString(R.plurals.account_setup_options_email_check_frequency_minutes, i3, Integer.valueOf(i3));
                    quantityString2.getClass();
                    return quantityString2;
                }
                int i4 = i3 / 60;
                String quantityString3 = resources.getQuantityString(R.plurals.account_setup_options_email_check_frequency_hours, i4, Integer.valueOf(i4));
                quantityString3.getClass();
                return quantityString3;
            case 6:
                SpecialFolderOption specialFolderOption = (SpecialFolderOption) obj;
                specialFolderOption.getClass();
                return SpecialFoldersScreenKt.toResourceString(specialFolderOption, resources);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SpecialFolderOption specialFolderOption2 = (SpecialFolderOption) obj;
                specialFolderOption2.getClass();
                return SpecialFoldersScreenKt.toResourceString(specialFolderOption2, resources);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SpecialFolderOption specialFolderOption3 = (SpecialFolderOption) obj;
                specialFolderOption3.getClass();
                return SpecialFoldersScreenKt.toResourceString(specialFolderOption3, resources);
            case 9:
                SpecialFolderOption specialFolderOption4 = (SpecialFolderOption) obj;
                specialFolderOption4.getClass();
                return SpecialFoldersScreenKt.toResourceString(specialFolderOption4, resources);
            default:
                SpecialFolderOption specialFolderOption5 = (SpecialFolderOption) obj;
                specialFolderOption5.getClass();
                return SpecialFoldersScreenKt.toResourceString(specialFolderOption5, resources);
        }
    }
}
