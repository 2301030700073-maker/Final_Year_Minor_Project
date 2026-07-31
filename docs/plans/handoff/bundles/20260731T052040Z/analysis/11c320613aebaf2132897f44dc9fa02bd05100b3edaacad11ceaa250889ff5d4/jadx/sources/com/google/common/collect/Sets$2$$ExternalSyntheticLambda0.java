package com.google.common.collect;

import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0;
import j$.util.function.Predicate$CC;
import java.net.URL;
import java.util.Set;
import java.util.function.Predicate;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.stream.SubtitlesStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Sets$2$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Sets$2$$ExternalSyntheticLambda0(Object obj, int i) {
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
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                return ((Set) obj2).contains(obj);
            case 1:
                return ((SubtitlesStream) obj).getFormat() == ((MediaFormat) obj2);
            case 2:
                return ((URL) obj2).getHost().startsWith((String) obj);
            default:
                return ((Boolean) ((ImageRequests_androidKt$$ExternalSyntheticLambda0) obj2).invoke(obj)).booleanValue();
        }
    }
}
