package androidx.compose.ui.contentcapture;

/* compiled from: ContentCaptureManager.android.kt */
/* loaded from: classes.dex */
public interface ContentCaptureManager {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: ContentCaptureManager.android.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static boolean isEnabled = true;

        private Companion() {
        }

        public final boolean isEnabled() {
            return isEnabled;
        }
    }
}
