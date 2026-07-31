package androidx.compose.ui.input.pointer.util;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class VelocityTracker1D$WhenMappings {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[VelocityTracker1D$Strategy.values().length];
        try {
            iArr[VelocityTracker1D$Strategy.Impulse.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[VelocityTracker1D$Strategy.Lsq2.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        $EnumSwitchMapping$0 = iArr;
    }
}
