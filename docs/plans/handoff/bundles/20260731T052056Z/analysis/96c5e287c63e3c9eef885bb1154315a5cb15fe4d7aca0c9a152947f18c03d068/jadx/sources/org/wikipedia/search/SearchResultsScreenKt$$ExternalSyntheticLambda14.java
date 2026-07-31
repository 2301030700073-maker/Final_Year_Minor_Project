package org.wikipedia.search;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResultsScreenKt$$ExternalSyntheticLambda14 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function4 f$0;
    public final /* synthetic */ SearchResult f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ SearchResultsScreenKt$$ExternalSyntheticLambda14(Function4 function4, SearchResult searchResult, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = function4;
        this.f$1 = searchResult;
        this.f$2 = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        SearchResult searchResult = this.f$1;
        Function4 function4 = this.f$0;
        switch (i) {
            case 0:
                function4.invoke(searchResult, Boolean.FALSE, Integer.valueOf(i2), searchResult.getLocation());
                break;
            case 1:
                function4.invoke(searchResult, Boolean.FALSE, Integer.valueOf(i2), searchResult.getLocation());
                break;
            default:
                function4.invoke(searchResult, Boolean.FALSE, Integer.valueOf(i2), searchResult.getLocation());
                break;
        }
        return unit;
    }
}
