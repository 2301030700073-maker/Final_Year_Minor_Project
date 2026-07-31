package androidx.compose.foundation.gestures;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DragDetectionState$AwaitDown extends ScrollableKt {
    public AwaitTouchSlop awaitTouchSlop;
    public boolean consumedOnInitial;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AwaitTouchSlop {
        public static final /* synthetic */ AwaitTouchSlop[] $VALUES;
        public static final AwaitTouchSlop No;
        public static final AwaitTouchSlop NotInitialized;
        public static final AwaitTouchSlop Yes;

        static {
            AwaitTouchSlop awaitTouchSlop = new AwaitTouchSlop("Yes", 0);
            Yes = awaitTouchSlop;
            AwaitTouchSlop awaitTouchSlop2 = new AwaitTouchSlop("No", 1);
            No = awaitTouchSlop2;
            AwaitTouchSlop awaitTouchSlop3 = new AwaitTouchSlop("NotInitialized", 2);
            NotInitialized = awaitTouchSlop3;
            $VALUES = new AwaitTouchSlop[]{awaitTouchSlop, awaitTouchSlop2, awaitTouchSlop3};
        }

        public static AwaitTouchSlop valueOf(String str) {
            return (AwaitTouchSlop) Enum.valueOf(AwaitTouchSlop.class, str);
        }

        public static AwaitTouchSlop[] values() {
            return (AwaitTouchSlop[]) $VALUES.clone();
        }
    }
}
