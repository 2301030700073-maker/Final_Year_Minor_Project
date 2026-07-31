package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyListIntervalContent extends LazyLayoutKt {
    public final StatusLine intervals = new StatusLine(2);

    public LazyListIntervalContent(Function1 function1) {
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKt
    public final StatusLine getIntervals() {
        return this.intervals;
    }

    public final void items(int i, Latch$await$2$2 latch$await$2$2, Function1 function1, ComposableLambdaImpl composableLambdaImpl) {
        this.intervals.addInterval(i, new LazyListInterval(latch$await$2$2, function1, composableLambdaImpl));
    }
}
