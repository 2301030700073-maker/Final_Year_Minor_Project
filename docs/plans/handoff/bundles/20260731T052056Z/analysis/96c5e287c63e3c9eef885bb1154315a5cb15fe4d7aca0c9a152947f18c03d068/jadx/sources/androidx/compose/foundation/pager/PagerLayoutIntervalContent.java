package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagerLayoutIntervalContent extends LazyLayoutKt {
    public final StatusLine intervals;

    public PagerLayoutIntervalContent(Function4 function4, Function1 function1, int i) {
        StatusLine statusLine = new StatusLine(2);
        statusLine.addInterval(i, new PagerIntervalContent(function1, function4));
        this.intervals = statusLine;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKt
    public final StatusLine getIntervals() {
        return this.intervals;
    }
}
