package androidx.compose.ui.focus;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FocusInteropUtils.android.kt */
/* loaded from: classes.dex */
abstract class FocusInteropUtils {
    public static final Companion Companion = new Companion(null);
    private static final int[] tempCoordinates = new int[2];

    /* compiled from: FocusInteropUtils.android.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int[] getTempCoordinates() {
            return FocusInteropUtils.tempCoordinates;
        }
    }
}
