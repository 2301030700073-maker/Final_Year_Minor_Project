package androidx.compose.ui;

import androidx.compose.ui.BiasAlignment;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Alignment {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        public static final BiasAlignment.Horizontal Start = new BiasAlignment.Horizontal(-1.0f);
        public static final BiasAlignment.Horizontal CenterHorizontally = new BiasAlignment.Horizontal(0.0f);
        public static final BiasAlignment.Horizontal End = new BiasAlignment.Horizontal(1.0f);
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Vertical {
        int align(int i, int i2);
    }
}
