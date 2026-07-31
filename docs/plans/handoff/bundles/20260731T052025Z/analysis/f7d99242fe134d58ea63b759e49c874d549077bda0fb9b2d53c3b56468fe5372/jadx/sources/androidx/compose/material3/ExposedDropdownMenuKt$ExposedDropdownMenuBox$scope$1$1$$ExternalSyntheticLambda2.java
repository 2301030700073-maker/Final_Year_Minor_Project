package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ Function1 f$2;
    public final /* synthetic */ boolean f$3;

    public /* synthetic */ ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2(MutableState mutableState, Function1 function1, boolean z) {
        this.f$0 = mutableState;
        this.f$2 = function1;
        this.f$3 = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f$0.setValue(new ExposedDropdownMenuAnchorType());
        this.f$2.invoke(Boolean.valueOf(!this.f$3));
        return Unit.INSTANCE;
    }
}
