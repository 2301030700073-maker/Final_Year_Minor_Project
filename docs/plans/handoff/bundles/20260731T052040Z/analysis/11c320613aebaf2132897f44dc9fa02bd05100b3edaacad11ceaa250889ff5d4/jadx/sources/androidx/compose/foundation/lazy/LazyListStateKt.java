package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LazyListStateKt {
    public static final LazyListMeasureResult EmptyLazyListMeasureResult = new LazyListMeasureResult(null, 0, false, 0.0f, new LazyListStateKt$EmptyLazyListMeasureResult$1(), 0.0f, false, JobKt.CoroutineScope(EmptyCoroutineContext.INSTANCE), UStringsKt.Density$default(), ConstraintsKt.Constraints$default(0, 0, 15), EmptyList.INSTANCE, 0, 0, 0, Orientation.Vertical, 0, 0);
}
