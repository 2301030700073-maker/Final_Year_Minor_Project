package org.schabi.newpipe.player.datasource;

import com.google.common.base.Predicate;
import j$.util.Objects;
import j$.util.function.Predicate$CC;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class YoutubeHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ java.util.function.Predicate and(java.util.function.Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return Objects.nonNull((String) obj);
            default:
                return ((Map.Entry) obj).getKey() != null;
        }
    }

    public /* synthetic */ java.util.function.Predicate negate() {
        int i = this.$r8$classId;
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ java.util.function.Predicate or(java.util.function.Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
        }
        return apply(obj);
    }
}
