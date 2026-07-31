package androidx.compose.material3;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ModalBottomSheetKt$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SheetState f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ ModalBottomSheetKt$$ExternalSyntheticLambda7(SheetState sheetState, Function0 function0, int i) {
        this.$r8$classId = i;
        this.f$0 = sheetState;
        this.f$1 = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$1;
        SheetState sheetState = this.f$0;
        switch (i) {
            case 0:
                if (!sheetState.isVisible()) {
                    function0.invoke();
                    break;
                }
                break;
            default:
                if (!sheetState.isVisible()) {
                    function0.invoke();
                    break;
                }
                break;
        }
        return unit;
    }
}
