package org.schabi.newpipe.util;

import java.util.Comparator;
import java.util.List;
import org.schabi.newpipe.extractor.stream.AudioStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ListHelper$$ExternalSyntheticLambda10 implements Comparator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Comparator f$0;

    public /* synthetic */ ListHelper$$ExternalSyntheticLambda10(int i, Comparator comparator) {
        this.$r8$classId = i;
        this.f$0 = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        List list = (List) obj;
        List list2 = (List) obj2;
        switch (this.$r8$classId) {
            case 0:
                return this.f$0.compare((AudioStream) list.get(0), (AudioStream) list2.get(0));
            default:
                return this.f$0.compare((AudioStream) list.get(0), (AudioStream) list2.get(0));
        }
    }
}
