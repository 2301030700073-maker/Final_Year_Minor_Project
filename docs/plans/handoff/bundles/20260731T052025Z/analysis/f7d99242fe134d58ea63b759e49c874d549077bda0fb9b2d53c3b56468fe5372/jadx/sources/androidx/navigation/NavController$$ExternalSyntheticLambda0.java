package androidx.navigation;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.fsck.k9.activity.MessageCompose;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavController$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavHostController f$0;

    public /* synthetic */ NavController$$ExternalSyntheticLambda0(NavHostController navHostController, int i) {
        this.$r8$classId = i;
        this.f$0 = navHostController;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        boolean z = false;
        Unit unit = Unit.INSTANCE;
        NavHostController navHostController = this.f$0;
        switch (i) {
            case 0:
                MessageCompose.AnonymousClass3 anonymousClass3 = navHostController.onBackPressedCallback;
                if (navHostController.enableOnBackPressedCallback && navHostController.getDestinationCountOnBackStack() > 1) {
                    z = true;
                }
                anonymousClass3.setEnabled(z);
                break;
            case 1:
                break;
            case 2:
                NavHostController.popBackStack$default(navHostController, "modify", false);
                break;
            case 3:
                NavHostController.navigate$default(navHostController, "save");
                break;
            case 4:
                navHostController.popBackStack();
                break;
            case 5:
                navHostController.popBackStack();
                break;
            case 6:
                NavHostController.popBackStack$default(navHostController, "modify", false);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                NavHostController.navigate$default(navHostController, "validate");
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                NavHostController.navigate$default(navHostController, "save");
                break;
            case 9:
                NavHostController.navigate$default(navHostController, "create-account");
                break;
            case 10:
                navHostController.popBackStack();
                break;
            case 11:
                NavHostController.navigate$default(navHostController, "sync-options");
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                navHostController.popBackStack();
                break;
            case 13:
                navHostController.popBackStack();
                break;
            case 14:
                navHostController.popBackStack();
                break;
            case OffsetKt.Horizontal /* 15 */:
                NavHostController.navigate$default(navHostController, "outgoing-server/validation");
                break;
            case 16:
                navHostController.popBackStack();
                break;
            case 17:
                navHostController.popBackStack();
                break;
            case 18:
                navHostController.popBackStack();
                break;
            case 19:
                navHostController.popBackStack();
                break;
            case 20:
                navHostController.popBackStack();
                break;
            case 21:
                NavHostController.navigate$default(navHostController, "settings_import");
                break;
            case 22:
                NavHostController.navigate$default(navHostController, "settings_import_qr_code");
                break;
            case 23:
                NavHostController.navigate$default(navHostController, "account_setup");
                break;
            case 24:
                NavHostController.navigate$default(navHostController, "settings_import");
                break;
            case 25:
                navHostController.popBackStack();
                break;
            case 26:
                navHostController.popBackStack();
                break;
            default:
                navHostController.popBackStack();
                break;
        }
        return unit;
    }
}
