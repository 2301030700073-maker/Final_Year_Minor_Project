package net.thunderbird.feature.account.settings.impl.ui.search;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchSettingContentKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ SearchSettingContentKt$$ExternalSyntheticLambda3(Function0 function0, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = function0;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$1;
        Function0 function0 = this.f$0;
        switch (i) {
            case 0:
                mutableState.setValue(Boolean.FALSE);
                function0.invoke();
                break;
            case 1:
                mutableState.setValue(Boolean.FALSE);
                function0.invoke();
                break;
            default:
                mutableState.setValue(Boolean.FALSE);
                function0.invoke();
                break;
        }
        return unit;
    }
}
