package app.k9mail.core.ui.compose.designsystem.atom;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DropdownMenuBoxKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ boolean f$2;

    public /* synthetic */ DropdownMenuBoxKt$$ExternalSyntheticLambda1(Function1 function1, boolean z, int i) {
        this.$r8$classId = i;
        this.f$1 = function1;
        this.f$2 = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = this.f$2;
        Function1 function1 = this.f$1;
        Boolean bool = (Boolean) obj;
        switch (i) {
            case 0:
                bool.getClass();
                function1.invoke(Boolean.valueOf(z));
                break;
            default:
                bool.booleanValue();
                function1.invoke(Boolean.valueOf(!z));
                break;
        }
        return unit;
    }
}
