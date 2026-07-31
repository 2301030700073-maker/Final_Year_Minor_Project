package androidx.compose.material3;

import com.fsck.k9.activity.setup.AccountSetupCompositionContract$Event;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CheckboxKt$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ CheckboxKt$$ExternalSyntheticLambda2(Function1 function1, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(Boolean.valueOf(!z));
                break;
            case 1:
                function1.invoke(Boolean.valueOf(!z));
                break;
            case 2:
                function1.invoke(Boolean.valueOf(!z));
                break;
            case 3:
                function1.invoke(new AccountSetupCompositionContract$Event.UseSignatureChange(!z));
                break;
            case 4:
                function1.invoke(Boolean.valueOf(z));
                break;
            default:
                function1.invoke(Boolean.valueOf(!z));
                break;
        }
        return unit;
    }
}
