package org.schabi.newpipe.extractor.localization;

import j$.util.function.Predicate$CC;
import java.util.Map;
import java.util.function.Predicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TimeAgoParser$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TimeAgoParser f$0;
    public final /* synthetic */ String f$1;

    public /* synthetic */ TimeAgoParser$$ExternalSyntheticLambda0(TimeAgoParser timeAgoParser, String str, int i) {
        this.$r8$classId = i;
        this.f$0 = timeAgoParser;
        this.f$1 = str;
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
        switch (this.$r8$classId) {
            case 0:
                return TimeAgoParser.$r8$lambda$SP1BbvDhrFN0miwMrbvlG8EzTyg(this.f$0, this.f$1, (Map.Entry) obj);
            default:
                return this.f$0.textualDateMatches(this.f$1, (String) obj);
        }
    }
}
