package androidx.compose.runtime;

import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NeverEqualPolicy implements CoroutineContext.Key {
    public final /* synthetic */ int $r8$classId;
    public static final EasingKt$$ExternalSyntheticLambda0 Empty = new EasingKt$$ExternalSyntheticLambda0(15);
    public static final /* synthetic */ NeverEqualPolicy $$INSTANCE = new NeverEqualPolicy(2);
    public static final NeverEqualPolicy INSTANCE = new NeverEqualPolicy(0);
    public static final NeverEqualPolicy INSTANCE$1 = new NeverEqualPolicy(3);
    public static final NeverEqualPolicy INSTANCE$2 = new NeverEqualPolicy(4);
    public static final NeverEqualPolicy INSTANCE$3 = new NeverEqualPolicy(5);

    public /* synthetic */ NeverEqualPolicy(int i) {
        this.$r8$classId = i;
    }

    public boolean equivalent(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                return false;
            case 3:
                return obj == obj2;
            default:
                return Intrinsics.areEqual(obj, obj2);
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "NeverEqualPolicy";
            case 3:
                return "ReferentialEqualityPolicy";
            case 5:
                return "StructuralEqualityPolicy";
            case 7:
                return "Empty";
            default:
                return super.toString();
        }
    }
}
