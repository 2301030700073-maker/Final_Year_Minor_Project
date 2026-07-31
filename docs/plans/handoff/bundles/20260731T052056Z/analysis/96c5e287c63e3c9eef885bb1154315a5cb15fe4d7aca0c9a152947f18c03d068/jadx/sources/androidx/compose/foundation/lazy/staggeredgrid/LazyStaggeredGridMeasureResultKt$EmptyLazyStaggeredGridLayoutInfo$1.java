package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.ui.layout.MeasureResult;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStaggeredGridMeasureResultKt$EmptyLazyStaggeredGridLayoutInfo$1 implements MeasureResult {
    @Override // androidx.compose.ui.layout.MeasureResult
    public final Map getAlignmentLines() {
        return EmptyMap.INSTANCE;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int getHeight() {
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function1 getRulers() {
        return null;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int getWidth() {
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void placeChildren() {
    }
}
