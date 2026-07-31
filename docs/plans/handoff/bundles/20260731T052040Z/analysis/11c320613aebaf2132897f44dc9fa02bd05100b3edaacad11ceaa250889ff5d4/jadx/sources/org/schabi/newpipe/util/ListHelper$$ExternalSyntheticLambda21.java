package org.schabi.newpipe.util;

import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.stream.DeliveryMethod;
import org.schabi.newpipe.extractor.stream.Stream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ListHelper$$ExternalSyntheticLambda21 implements Predicate {
    public final /* synthetic */ int f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ ListHelper$$ExternalSyntheticLambda21(int i, int i2) {
        this.f$0 = i;
        this.f$1 = i2;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        Stream stream = (Stream) obj;
        if (stream.getDeliveryMethod() == DeliveryMethod.TORRENT) {
            return false;
        }
        if (stream.getDeliveryMethod() == DeliveryMethod.HLS && stream.getFormat() == MediaFormat.OPUS) {
            return false;
        }
        return this.f$0 != this.f$1 || stream.getItagItem() == null || ListHelper.SUPPORTED_ITAG_IDS.contains(Integer.valueOf(stream.getItagItem().id));
    }
}
