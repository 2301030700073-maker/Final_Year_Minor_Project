package androidx.compose.foundation;

import android.os.Build;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Magnifier_androidKt {
    public static final SemanticsPropertyKey MagnifierPositionInRoot = new SemanticsPropertyKey("MagnifierPositionInRoot");

    public static boolean isPlatformMagnifierSupported$default() {
        return Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: magnifier-jPUL71Q$default, reason: not valid java name */
    public static Modifier m57magnifierjPUL71Q$default(Function1 function1, Function1 function12, PlatformMagnifierFactory platformMagnifierFactory) {
        return isPlatformMagnifierSupported$default() ? new MagnifierElement(function1, function12, platformMagnifierFactory) : Modifier.Companion.$$INSTANCE;
    }
}
