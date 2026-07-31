package org.schabi.newpipe.fragments.list.search;

import j$.util.Collection;
import j$.util.function.Predicate$CC;
import java.util.List;
import java.util.function.Predicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchFragment$$ExternalSyntheticLambda25 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SearchFragment$$ExternalSyntheticLambda25(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        int i = this.$r8$classId;
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean anyMatch;
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                anyMatch = Collection.EL.stream((List) obj2).anyMatch(new SearchFragment$$ExternalSyntheticLambda25((SuggestionItem) obj, 1));
                return anyMatch;
            default:
                SuggestionItem suggestionItem = (SuggestionItem) obj;
                int i2 = SearchFragment.$r8$clinit;
                return suggestionItem.equals((SuggestionItem) obj2);
        }
    }
}
