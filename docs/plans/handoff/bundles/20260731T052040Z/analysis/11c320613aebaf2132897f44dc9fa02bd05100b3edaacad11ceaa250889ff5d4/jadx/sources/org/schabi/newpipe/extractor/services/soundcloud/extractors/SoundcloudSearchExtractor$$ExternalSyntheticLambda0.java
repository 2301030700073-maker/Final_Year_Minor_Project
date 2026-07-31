package org.schabi.newpipe.extractor.services.soundcloud.extractors;

import j$.util.function.IntUnaryOperator$CC;
import java.util.function.IntUnaryOperator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class SoundcloudSearchExtractor$$ExternalSyntheticLambda0 implements IntUnaryOperator {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ IntUnaryOperator andThen(IntUnaryOperator intUnaryOperator) {
        int i = this.$r8$classId;
        return IntUnaryOperator$CC.$default$andThen(this, intUnaryOperator);
    }

    @Override // java.util.function.IntUnaryOperator
    public final int applyAsInt(int i) {
        switch (this.$r8$classId) {
            case 0:
                return i + 10;
            default:
                return 10;
        }
    }

    public /* synthetic */ IntUnaryOperator compose(IntUnaryOperator intUnaryOperator) {
        int i = this.$r8$classId;
        return IntUnaryOperator$CC.$default$compose(this, intUnaryOperator);
    }
}
