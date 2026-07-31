package app.k9mail.feature.account.oauth.ui;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ UnidirectionalViewModel $this_observe;

    public /* synthetic */ AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(UnidirectionalViewModel unidirectionalViewModel, int i) {
        this.$r8$classId = i;
        this.$this_observe = unidirectionalViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        UnidirectionalViewModel unidirectionalViewModel = this.$this_observe;
        switch (i) {
            case 0:
                unidirectionalViewModel.event(obj);
                break;
            case 1:
                unidirectionalViewModel.event(obj);
                break;
            case 2:
                unidirectionalViewModel.event(obj);
                break;
            case 3:
                unidirectionalViewModel.event(obj);
                break;
            case 4:
                unidirectionalViewModel.event(obj);
                break;
            case 5:
                unidirectionalViewModel.event(obj);
                break;
            case 6:
                unidirectionalViewModel.event(obj);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                unidirectionalViewModel.event(obj);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                unidirectionalViewModel.event(obj);
                break;
            case 9:
                unidirectionalViewModel.event(obj);
                break;
            case 10:
                unidirectionalViewModel.event(obj);
                break;
            case 11:
                unidirectionalViewModel.event(obj);
                break;
            default:
                unidirectionalViewModel.event(obj);
                break;
        }
        return unit;
    }
}
