package androidx.compose.material3;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Scaffold.kt */
/* loaded from: classes.dex */
public abstract class FabPosition {
    public static final Companion Companion = new Companion(null);
    private static final int Start = m682constructorimpl(0);
    private static final int Center = m682constructorimpl(1);
    private static final int End = m682constructorimpl(2);
    private static final int EndOverlay = m682constructorimpl(3);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m682constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m683equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: Scaffold.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getStart-ERTFSPs, reason: not valid java name */
        public final int m686getStartERTFSPs() {
            return FabPosition.Start;
        }

        /* renamed from: getEnd-ERTFSPs, reason: not valid java name */
        public final int m684getEndERTFSPs() {
            return FabPosition.End;
        }

        /* renamed from: getEndOverlay-ERTFSPs, reason: not valid java name */
        public final int m685getEndOverlayERTFSPs() {
            return FabPosition.EndOverlay;
        }
    }
}
