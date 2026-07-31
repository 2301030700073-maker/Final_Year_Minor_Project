package androidx.compose.ui;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Alignment {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion implements CoroutineContext.Key {
        public static final BiasAlignment TopStart = new BiasAlignment(-1.0f, -1.0f);
        public static final BiasAlignment TopCenter = new BiasAlignment(0.0f, -1.0f);
        public static final BiasAlignment TopEnd = new BiasAlignment(1.0f, -1.0f);
        public static final BiasAlignment CenterStart = new BiasAlignment(-1.0f, 0.0f);
        public static final BiasAlignment Center = new BiasAlignment(0.0f, 0.0f);
        public static final BiasAlignment CenterEnd = new BiasAlignment(1.0f, 0.0f);
        public static final BiasAlignment BottomStart = new BiasAlignment(-1.0f, 1.0f);
        public static final BiasAlignment BottomCenter = new BiasAlignment(0.0f, 1.0f);
        public static final BiasAlignment BottomEnd = new BiasAlignment(1.0f, 1.0f);
        public static final BiasAlignment.Vertical Top = new BiasAlignment.Vertical(-1.0f);
        public static final BiasAlignment.Vertical CenterVertically = new BiasAlignment.Vertical(0.0f);
        public static final BiasAlignment.Vertical Bottom = new BiasAlignment.Vertical(1.0f);
        public static final BiasAlignment.Horizontal Start = new BiasAlignment.Horizontal(-1.0f);
        public static final BiasAlignment.Horizontal CenterHorizontally = new BiasAlignment.Horizontal(0.0f);
        public static final BiasAlignment.Horizontal End = new BiasAlignment.Horizontal(1.0f);
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Horizontal {
        int align(int i, int i2, LayoutDirection layoutDirection);
    }

    /* renamed from: align-KFBX0sM, reason: not valid java name */
    long mo387alignKFBX0sM(long j, long j2, LayoutDirection layoutDirection);
}
