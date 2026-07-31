package androidx.compose.ui.platform;

import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AndroidCompositionLocals_androidKt {
    public static final DynamicProvidableCompositionLocal LocalConfiguration = new DynamicProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$1);
    public static final StaticProvidableCompositionLocal LocalContext = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$2);
    public static final DynamicProvidableCompositionLocal LocalResources = new DynamicProvidableCompositionLocal(AndroidComposeView$getFocusedRect$1.INSTANCE$2);
    public static final StaticProvidableCompositionLocal LocalImageVectorCache = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$3);
    public static final StaticProvidableCompositionLocal LocalResourceIdCache = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$4);
    public static final StaticProvidableCompositionLocal LocalView = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$5);

    public static final void access$noLocalProvidedFor(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
