package org.schabi.newpipe.util;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import org.schabi.newpipe.extractor.stream.VideoStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ListHelper$$ExternalSyntheticLambda14 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;

    public /* synthetic */ ListHelper$$ExternalSyntheticLambda14(boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
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
                return this.f$0 || !ListHelper.HIGH_RESOLUTION_LIST.contains(((VideoStream) obj).resolution.replaceAll("p\\d+$", TtmlNode.TAG_P));
            default:
                return this.f$0;
        }
    }
}
