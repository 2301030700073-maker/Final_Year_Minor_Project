package org.wikipedia.feed.personalization.homepreference;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomePreferenceScreenKt$$ExternalSyntheticLambda10 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ HomePreferenceScreenKt$$ExternalSyntheticLambda10(boolean z, Function1 function1, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$2;
        Function1 function1 = this.f$1;
        boolean z = this.f$0;
        switch (i) {
            case 0:
                HomePreferenceType homePreferenceType = (HomePreferenceType) obj;
                if (!z) {
                    function1.invoke(homePreferenceType);
                    break;
                }
                break;
            case 1:
                MutableState mutableState = (MutableState) obj;
                if (!z) {
                    function1.invoke(Boolean.TRUE);
                    break;
                } else {
                    mutableState.setValue(Boolean.TRUE);
                    break;
                }
            default:
                MutableState mutableState2 = (MutableState) obj;
                if (!z) {
                    function1.invoke(Boolean.TRUE);
                    break;
                } else {
                    mutableState2.setValue(Boolean.TRUE);
                    break;
                }
        }
        return unit;
    }
}
