package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import coil3.util.ContextsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InteractiveComponentSizeKt {
    public static final StaticProvidableCompositionLocal LocalMinimumInteractiveComponentSize;
    public static final HorizontalAlignmentLine MinimumInteractiveTopAlignmentLine = new HorizontalAlignmentLine(InteractiveComponentSizeKt$MinimumInteractiveTopAlignmentLine$1.INSTANCE);
    public static final VerticalAlignmentLine MinimumInteractiveLeftAlignmentLine = new VerticalAlignmentLine(InteractiveComponentSizeKt$MinimumInteractiveLeftAlignmentLine$1.INSTANCE);

    static {
        ContextsKt.lazy(new ImmLeaksCleaner$$ExternalSyntheticLambda0(9));
        LocalMinimumInteractiveComponentSize = new StaticProvidableCompositionLocal(0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(29));
    }
}
