package androidx.compose.ui.graphics;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: GraphicsLayerModifier.kt */
/* loaded from: classes.dex */
public abstract class CompositingStrategy {
    public static final Companion Companion = new Companion(null);
    private static final int Auto = m1326constructorimpl(0);
    private static final int Offscreen = m1326constructorimpl(1);
    private static final int ModulateAlpha = m1326constructorimpl(2);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1326constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1327equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1328hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1329toStringimpl(int i) {
        return "CompositingStrategy(value=" + i + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: GraphicsLayerModifier.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getAuto--NrFUSI, reason: not valid java name */
        public final int m1330getAutoNrFUSI() {
            return CompositingStrategy.Auto;
        }

        /* renamed from: getOffscreen--NrFUSI, reason: not valid java name */
        public final int m1332getOffscreenNrFUSI() {
            return CompositingStrategy.Offscreen;
        }

        /* renamed from: getModulateAlpha--NrFUSI, reason: not valid java name */
        public final int m1331getModulateAlphaNrFUSI() {
            return CompositingStrategy.ModulateAlpha;
        }
    }
}
