package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.layout.MeasureResult;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyGridStateKt$EmptyLazyGridLayoutInfo$1 implements MeasureResult {
    @Override // androidx.compose.ui.layout.MeasureResult
    public final Map getAlignmentLines() {
        return EmptyMap.INSTANCE;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int getHeight() {
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final /* synthetic */ Function1 getRulers() {
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
