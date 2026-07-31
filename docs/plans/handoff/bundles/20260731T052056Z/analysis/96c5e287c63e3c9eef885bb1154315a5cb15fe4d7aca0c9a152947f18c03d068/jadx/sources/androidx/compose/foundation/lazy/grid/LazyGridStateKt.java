package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LazyGridStateKt {
    public static final LazyGridMeasureResult EmptyLazyGridLayoutInfo;

    static {
        LazyGridStateKt$EmptyLazyGridLayoutInfo$1 lazyGridStateKt$EmptyLazyGridLayoutInfo$1 = new LazyGridStateKt$EmptyLazyGridLayoutInfo$1();
        Orientation orientation = Orientation.Vertical;
        EmptyLazyGridLayoutInfo = new LazyGridMeasureResult(null, 0, false, RecyclerView.DECELERATION_RATE, lazyGridStateKt$EmptyLazyGridLayoutInfo$1, RecyclerView.DECELERATION_RATE, false, AwaitKt.CoroutineScope(EmptyCoroutineContext.INSTANCE), UuidKt.Density$default(), 0, new BasicTextKt$$ExternalSyntheticLambda3(18), new BasicTextKt$$ExternalSyntheticLambda3(19), EmptyList.INSTANCE, 0, 0, 0, orientation, 0, 0);
    }
}
