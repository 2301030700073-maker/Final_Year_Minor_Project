package app.k9mail.core.ui.compose.designsystem.atom.button;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.room.util.DBUtil;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class RadioButtonKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function f$2;
    public final /* synthetic */ Modifier f$3;
    public final /* synthetic */ boolean f$4;

    public /* synthetic */ RadioButtonKt$$ExternalSyntheticLambda1(DisplayAccount displayAccount, Function1 function1, boolean z, boolean z2, Modifier modifier, int i) {
        this.f$1 = displayAccount;
        this.f$2 = function1;
        this.f$0 = z;
        this.f$4 = z2;
        this.f$3 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$2;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                DBUtil.RadioButton(this.f$0, (String) obj3, (Function0) function, this.f$3, this.f$4, (Composer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                Hex.AccountListItem((DisplayAccount) obj3, (Function1) function, this.f$0, this.f$4, this.f$3, (Composer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ RadioButtonKt$$ExternalSyntheticLambda1(boolean z, String str, Function0 function0, Modifier modifier, boolean z2, int i) {
        this.f$0 = z;
        this.f$1 = str;
        this.f$2 = function0;
        this.f$3 = modifier;
        this.f$4 = z2;
    }
}
