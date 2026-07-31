package org.wikipedia.feed.personalization.homepreference;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomePreferenceScreenKt$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ HomePreferenceType f$1;

    public /* synthetic */ HomePreferenceScreenKt$$ExternalSyntheticLambda2(Function1 function1, HomePreferenceType homePreferenceType, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = homePreferenceType;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        HomePreferenceType homePreferenceType = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(homePreferenceType);
                break;
            default:
                function1.invoke(homePreferenceType);
                break;
        }
        return unit;
    }
}
