package org.schabi.newpipe.util;

import java.util.List;
import java.util.function.ToIntFunction;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.AudioTrackType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ListHelper$$ExternalSyntheticLambda4 implements ToIntFunction {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ListHelper$$ExternalSyntheticLambda4(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                return ((List) obj2).indexOf((AudioTrackType) obj);
            case 1:
                return ((List) obj2).indexOf(((AudioStream) obj).getFormat());
            default:
                return ((Number) ((RxAwaitKt$$ExternalSyntheticLambda0) obj2).invoke(obj)).intValue();
        }
    }
}
