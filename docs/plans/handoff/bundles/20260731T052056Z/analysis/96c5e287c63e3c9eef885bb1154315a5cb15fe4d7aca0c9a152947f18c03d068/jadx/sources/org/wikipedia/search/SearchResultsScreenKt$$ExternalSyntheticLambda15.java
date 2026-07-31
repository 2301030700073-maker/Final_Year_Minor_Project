package org.wikipedia.search;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResultsScreenKt$$ExternalSyntheticLambda15 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function3 f$0;
    public final /* synthetic */ SearchResult f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ SearchResultsScreenKt$$ExternalSyntheticLambda15(Function3 function3, SearchResult searchResult, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = function3;
        this.f$1 = searchResult;
        this.f$2 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        SearchResult searchResult = this.f$1;
        Function3 function3 = this.f$0;
        View view = (View) obj;
        switch (i) {
            case 0:
                view.getClass();
                function3.invoke(view, searchResult, Integer.valueOf(i2));
                break;
            case 1:
                view.getClass();
                function3.invoke(view, searchResult, Integer.valueOf(i2));
                break;
            default:
                view.getClass();
                function3.invoke(view, searchResult, Integer.valueOf(i2));
                break;
        }
        return unit;
    }
}
