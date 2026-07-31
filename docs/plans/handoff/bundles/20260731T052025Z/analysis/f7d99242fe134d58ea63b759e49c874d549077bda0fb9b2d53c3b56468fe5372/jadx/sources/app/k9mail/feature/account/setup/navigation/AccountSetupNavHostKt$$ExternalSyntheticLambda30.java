package app.k9mail.feature.account.setup.navigation;

import androidx.compose.runtime.MutableState;
import androidx.navigation.NavOptionsBuilder;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupNavHostKt$$ExternalSyntheticLambda30 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda30(boolean z, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$1;
        boolean z = this.f$0;
        switch (i) {
            case 0:
                NavOptionsBuilder navOptionsBuilder = (NavOptionsBuilder) obj;
                navOptionsBuilder.getClass();
                if (!z) {
                    if (!((Boolean) mutableState.getValue()).booleanValue()) {
                        NavOptionsBuilder.popUpTo$default(navOptionsBuilder, "outgoing-server/config");
                        break;
                    } else {
                        NavOptionsBuilder.popUpTo$default(navOptionsBuilder, "autoconfig");
                        break;
                    }
                } else {
                    NavOptionsBuilder.popUpTo$default(navOptionsBuilder, "special-folders");
                    break;
                }
            default:
                ((Boolean) obj).getClass();
                boolean z2 = false;
                if (!z && !((Boolean) mutableState.getValue()).booleanValue()) {
                    z2 = true;
                }
                mutableState.setValue(Boolean.valueOf(z2));
                break;
        }
        return unit;
    }
}
