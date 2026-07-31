package com.google.android.exoplayer2.ui;

import com.google.common.base.Predicate;
import j$.util.function.Predicate$CC;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SubtitleViewUtils$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SubtitleViewUtils$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    public /* synthetic */ java.util.function.Predicate and(java.util.function.Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        boolean lambda$removeAllEmbeddedStyling$0;
        boolean lambda$removeEmbeddedFontSizes$1;
        switch (this.$r8$classId) {
            case 0:
                lambda$removeAllEmbeddedStyling$0 = SubtitleViewUtils.lambda$removeAllEmbeddedStyling$0(obj);
                return lambda$removeAllEmbeddedStyling$0;
            default:
                lambda$removeEmbeddedFontSizes$1 = SubtitleViewUtils.lambda$removeEmbeddedFontSizes$1(obj);
                return lambda$removeEmbeddedFontSizes$1;
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
        boolean lambda$removeAllEmbeddedStyling$0;
        boolean lambda$removeEmbeddedFontSizes$1;
        switch (this.$r8$classId) {
            case 0:
                lambda$removeAllEmbeddedStyling$0 = SubtitleViewUtils.lambda$removeAllEmbeddedStyling$0(obj);
                return lambda$removeAllEmbeddedStyling$0;
            default:
                lambda$removeEmbeddedFontSizes$1 = SubtitleViewUtils.lambda$removeEmbeddedFontSizes$1(obj);
                return lambda$removeEmbeddedFontSizes$1;
        }
    }
}
