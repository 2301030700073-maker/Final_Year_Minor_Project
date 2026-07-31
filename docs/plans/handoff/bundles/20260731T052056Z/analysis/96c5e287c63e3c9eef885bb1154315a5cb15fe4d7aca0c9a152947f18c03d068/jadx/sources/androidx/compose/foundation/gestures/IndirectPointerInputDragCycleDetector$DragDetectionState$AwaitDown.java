package androidx.compose.foundation.gestures;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown extends ScrollableKt {
    public AwaitTouchSlop awaitTouchSlop;
    public boolean consumedOnInitial;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AwaitTouchSlop {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AwaitTouchSlop[] $VALUES;
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
            AwaitTouchSlop[] awaitTouchSlopArr = {awaitTouchSlop, awaitTouchSlop2, awaitTouchSlop3};
            $VALUES = awaitTouchSlopArr;
            $ENTRIES = new EnumEntriesList(awaitTouchSlopArr);
        }

        public static AwaitTouchSlop valueOf(String str) {
            return (AwaitTouchSlop) Enum.valueOf(AwaitTouchSlop.class, str);
        }

        public static AwaitTouchSlop[] values() {
            return (AwaitTouchSlop[]) $VALUES.clone();
        }
    }
}
