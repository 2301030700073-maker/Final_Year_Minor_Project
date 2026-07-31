package androidx.window.layout;

import androidx.collection.internal.Lock;
import androidx.window.layout.adapter.WindowBackend;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FoldingFeature$State implements WindowInfoTracker {
    public static final FoldingFeature$State FLAT;
    public static final FoldingFeature$State FOLD;
    public static final FoldingFeature$State HALF_OPENED;
    public static final FoldingFeature$State HINGE;
    public final /* synthetic */ int $r8$classId;
    public final Object description;

    static {
        int i = 0;
        FLAT = new FoldingFeature$State("FLAT", i);
        HALF_OPENED = new FoldingFeature$State("HALF_OPENED", i);
        int i2 = 1;
        FOLD = new FoldingFeature$State("FOLD", i2);
        HINGE = new FoldingFeature$State("HINGE", i2);
    }

    public FoldingFeature$State(WindowMetricsCalculatorCompat windowMetricsCalculatorCompat, WindowBackend windowBackend, Lock lock) {
        this.$r8$classId = 2;
        this.description = windowBackend;
    }

    public String toString() {
        int i = this.$r8$classId;
        Object obj = this.description;
        switch (i) {
            case 0:
                return (String) obj;
            case 1:
                return (String) obj;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ FoldingFeature$State(String str, int i) {
        this.$r8$classId = i;
        this.description = str;
    }
}
