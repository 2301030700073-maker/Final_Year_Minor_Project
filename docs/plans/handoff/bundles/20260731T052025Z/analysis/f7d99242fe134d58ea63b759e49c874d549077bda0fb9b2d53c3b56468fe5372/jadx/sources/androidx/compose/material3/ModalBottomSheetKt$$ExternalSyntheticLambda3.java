package androidx.compose.material3;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ModalBottomSheetKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ SheetState f$0;
    public final /* synthetic */ CoroutineScope f$1;
    public final /* synthetic */ Function0 f$2;

    public /* synthetic */ ModalBottomSheetKt$$ExternalSyntheticLambda3(SheetState sheetState, Function0 function0, CoroutineScope coroutineScope) {
        this.f$0 = sheetState;
        this.f$2 = function0;
        this.f$1 = coroutineScope;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = this.f$1;
        Function0 function0 = this.f$2;
        SheetState sheetState = this.f$0;
        switch (i) {
            case 0:
                if (((Boolean) sheetState.anchoredDraggableState.confirmValueChange.invoke(SheetValue.Hidden)).booleanValue()) {
                    JobKt.launch$default(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, null, 3), 3).invokeOnCompletion(new ModalBottomSheetKt$$ExternalSyntheticLambda7(sheetState, function0, 0));
                    break;
                }
                break;
            default:
                int ordinal = ((SheetValue) sheetState.anchoredDraggableState.currentValue$delegate.getValue()).ordinal();
                if (ordinal == 1) {
                    function0.invoke();
                    break;
                } else if (ordinal == 2) {
                    JobKt.launch$default(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, null, 4), 3);
                    break;
                } else {
                    JobKt.launch$default(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState, null, 5), 3);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ ModalBottomSheetKt$$ExternalSyntheticLambda3(SheetState sheetState, CoroutineScope coroutineScope, Function0 function0) {
        this.f$0 = sheetState;
        this.f$1 = coroutineScope;
        this.f$2 = function0;
    }
}
