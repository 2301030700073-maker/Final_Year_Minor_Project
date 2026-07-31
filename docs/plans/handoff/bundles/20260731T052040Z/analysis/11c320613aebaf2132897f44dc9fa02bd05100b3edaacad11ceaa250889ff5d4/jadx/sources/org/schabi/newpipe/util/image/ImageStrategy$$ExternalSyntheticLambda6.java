package org.schabi.newpipe.util.image;

import android.util.Pair;
import java.util.function.ToDoubleFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ImageStrategy$$ExternalSyntheticLambda6 implements ToDoubleFunction {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ImageStrategy$$ExternalSyntheticLambda6(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.ToDoubleFunction
    public final double applyAsDouble(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 1:
                Pair pair = (Pair) obj;
                break;
        }
        return ((Number) ((ImageStrategy$$ExternalSyntheticLambda5) obj2).invoke(obj)).doubleValue();
    }
}
