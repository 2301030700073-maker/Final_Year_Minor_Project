package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.extractor.mp4.Mp4Extractor;
import com.google.android.exoplayer2.extractor.mp4.Track;
import com.google.common.base.Function;
import j$.util.function.Function$CC;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BundleableUtil$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BundleableUtil$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // com.google.common.base.Function, java.util.function.Function
    public final Object apply(Object obj) {
        Track lambda$processMoovAtom$1;
        switch (this.$r8$classId) {
            case 0:
                return ((Bundleable) obj).toBundle();
            default:
                lambda$processMoovAtom$1 = Mp4Extractor.lambda$processMoovAtom$1((Track) obj);
                return lambda$processMoovAtom$1;
        }
    }

    public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
