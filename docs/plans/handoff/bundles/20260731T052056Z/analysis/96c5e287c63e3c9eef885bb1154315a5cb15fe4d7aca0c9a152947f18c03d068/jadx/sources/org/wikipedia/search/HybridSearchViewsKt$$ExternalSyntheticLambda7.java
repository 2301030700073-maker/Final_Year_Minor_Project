package org.wikipedia.search;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchViewsKt$$ExternalSyntheticLambda7 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ SearchResult f$1;

    public /* synthetic */ HybridSearchViewsKt$$ExternalSyntheticLambda7(Function1 function1, SearchResult searchResult, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = searchResult;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SearchResult searchResult = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(searchResult);
                break;
            default:
                function1.invoke(searchResult);
                break;
        }
        return unit;
    }
}
