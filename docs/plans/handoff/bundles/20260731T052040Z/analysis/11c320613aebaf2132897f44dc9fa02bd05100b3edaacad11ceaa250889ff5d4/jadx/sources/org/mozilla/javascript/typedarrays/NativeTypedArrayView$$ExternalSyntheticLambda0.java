package org.mozilla.javascript.typedarrays;

import java.util.function.ToDoubleFunction;
import org.schabi.newpipe.settings.preferencesearch.PreferenceFuzzySearchFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeTypedArrayView$$ExternalSyntheticLambda0 implements ToDoubleFunction {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NativeTypedArrayView$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.ToDoubleFunction
    public final double applyAsDouble(Object obj) {
        double lambda$sortTemporaryArray$36;
        switch (this.$r8$classId) {
            case 0:
                lambda$sortTemporaryArray$36 = NativeTypedArrayView.lambda$sortTemporaryArray$36(obj);
                return lambda$sortTemporaryArray$36;
            default:
                return ((PreferenceFuzzySearchFunction.FuzzySearchSpecificDTO) obj).score;
        }
    }
}
