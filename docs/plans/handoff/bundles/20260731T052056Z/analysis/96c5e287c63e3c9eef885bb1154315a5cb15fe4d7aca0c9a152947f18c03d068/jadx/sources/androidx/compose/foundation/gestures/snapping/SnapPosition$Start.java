package androidx.compose.foundation.gestures.snapping;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnapPosition$Start {
    public final /* synthetic */ int $r8$classId;
    public static final SnapPosition$Start INSTANCE$1 = new SnapPosition$Start(1);
    public static final SnapPosition$Start INSTANCE = new SnapPosition$Start(0);

    public /* synthetic */ SnapPosition$Start(int i) {
        this.$r8$classId = i;
    }

    public final int position(int i, int i2, int i3, int i4) {
        switch (this.$r8$classId) {
            case 0:
                return 0;
            default:
                return (((i - i3) - i4) / 2) - (i2 / 2);
        }
    }

    public final String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "Start";
            default:
                return "Center";
        }
    }
}
