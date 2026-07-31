package androidx.compose.material3;

import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AppBarKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda0(int i, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$0;
        switch (i) {
            case 0:
                ((ReusableGraphicsLayerScope) obj).setAlpha(((Number) function0.invoke()).floatValue());
                break;
            case 1:
                function0.invoke();
                break;
            case 2:
                break;
            case 3:
                function0.invoke();
                break;
            case 4:
                function0.invoke();
                break;
            case 5:
                ((Float) obj).floatValue();
                break;
            case 6:
                function0.invoke();
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Boolean) obj).booleanValue();
                function0.invoke();
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Boolean) obj).booleanValue();
                function0.invoke();
                break;
            case 9:
                ((Boolean) obj).booleanValue();
                function0.invoke();
                break;
            default:
                ((DisplayAccount) obj).getClass();
                function0.invoke();
                break;
        }
        return unit;
    }
}
