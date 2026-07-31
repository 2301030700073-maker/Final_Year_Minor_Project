package org.wikipedia.language.addlanguages;

import androidx.compose.foundation.text.KeyboardActionRunner;
import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AddLanguagesListScreenKt$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ MutableState f$2;

    public /* synthetic */ AddLanguagesListScreenKt$$ExternalSyntheticLambda3(Function1 function1, Function1 function12, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = function12;
        this.f$2 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$2;
        Function1 function1 = this.f$1;
        Function1 function12 = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj;
                str.getClass();
                function12.invoke(Boolean.TRUE);
                mutableState.setValue(str);
                function1.invoke(str);
                break;
            default:
                ((KeyboardActionRunner) obj).getClass();
                if (((String) mutableState.getValue()).length() != 0) {
                    function1.invoke((String) mutableState.getValue());
                    break;
                } else {
                    function12.invoke("");
                    break;
                }
        }
        return unit;
    }
}
