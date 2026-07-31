package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LazyStaggeredGridMeasureResultKt {
    public static final LazyStaggeredGridMeasureResult EmptyLazyStaggeredGridLayoutInfo;

    static {
        int[] iArr = new int[0];
        EmptyLazyStaggeredGridLayoutInfo = new LazyStaggeredGridMeasureResult(iArr, iArr, RecyclerView.DECELERATION_RATE, new LazyStaggeredGridMeasureResultKt$EmptyLazyStaggeredGridLayoutInfo$1(), RecyclerView.DECELERATION_RATE, false, false, false, new LazyGridSlots(iArr, iArr), new PopupMenu$1(19, new StatusLine(2)), UuidKt.Density$default(), 0, EmptyList.INSTANCE, 0L, 0, 0, 0, 0, 0, AwaitKt.CoroutineScope(EmptyCoroutineContext.INSTANCE));
    }
}
