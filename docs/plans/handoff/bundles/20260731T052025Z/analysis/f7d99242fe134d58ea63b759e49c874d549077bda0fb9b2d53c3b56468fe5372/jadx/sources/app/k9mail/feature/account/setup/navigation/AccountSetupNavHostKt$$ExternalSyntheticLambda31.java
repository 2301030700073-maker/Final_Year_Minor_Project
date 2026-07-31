package app.k9mail.feature.account.setup.navigation;

import androidx.compose.runtime.Updater;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupNavHostKt$$ExternalSyntheticLambda31 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda31(boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        boolean z = this.f$0;
        switch (i) {
            case 0:
                return Updater.mutableStateOf$default(Boolean.valueOf(z));
            case 1:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case 2:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case 3:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case 4:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case 5:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case 6:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case 9:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            case 10:
                return "writeConfig: storageEditor.commit() resulted in: " + z;
            default:
                return Updater.mutableStateOf$default(Boolean.valueOf(z));
        }
    }
}
