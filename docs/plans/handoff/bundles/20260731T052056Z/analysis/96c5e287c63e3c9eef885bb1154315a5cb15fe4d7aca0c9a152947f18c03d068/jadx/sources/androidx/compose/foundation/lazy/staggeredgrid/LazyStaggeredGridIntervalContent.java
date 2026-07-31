package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStaggeredGridIntervalContent extends LazyLayoutKt {
    public final StatusLine intervals;
    public final PopupMenu$1 spanProvider;

    public LazyStaggeredGridIntervalContent(Function1 function1) {
        StatusLine statusLine = new StatusLine(2);
        this.intervals = statusLine;
        this.spanProvider = new PopupMenu$1(19, statusLine);
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKt
    public final StatusLine getIntervals() {
        return this.intervals;
    }
}
