package androidx.compose.ui.platform;

import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AndroidCompositionLocals_androidKt {
    public static final StaticProvidableCompositionLocal LocalConfiguration = new StaticProvidableCompositionLocal(1, CompositionLocalsKt$LocalDensity$1.INSTANCE$1);
    public static final StaticProvidableCompositionLocal LocalContext = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$2);
    public static final ComputedProvidableCompositionLocal LocalResources = new ComputedProvidableCompositionLocal(CompositionLocalsKt$LocalLocale$1.INSTANCE$3);
    public static final StaticProvidableCompositionLocal LocalImageVectorCache = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$3);
    public static final StaticProvidableCompositionLocal LocalResourceIdCache = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$4);
    public static final StaticProvidableCompositionLocal LocalView = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$5);

    public static final void noLocalProvidedFor(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
