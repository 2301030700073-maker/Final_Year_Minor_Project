package org.wikipedia.readinglist.recommended;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ MutableState f$2;

    public /* synthetic */ RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4(boolean z, Function1 function1, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$2;
        Function1 function1 = this.f$1;
        boolean z = this.f$0;
        Boolean bool = (Boolean) obj;
        bool.getClass();
        switch (i) {
            case 0:
                if (!z) {
                    function1.invoke(bool);
                    break;
                } else {
                    mutableState.setValue(Boolean.TRUE);
                    break;
                }
            default:
                if (!z) {
                    function1.invoke(bool);
                    break;
                } else {
                    mutableState.setValue(Boolean.TRUE);
                    break;
                }
        }
        return unit;
    }
}
