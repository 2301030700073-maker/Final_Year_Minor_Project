package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function1;
import okhttp3.Dispatcher;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyGridIntervalContent extends LazyLayoutKt {
    public static final SaversKt$$ExternalSyntheticLambda0 DefaultSpan = new SaversKt$$ExternalSyntheticLambda0(3);
    public final Dispatcher spanLayoutProvider = new Dispatcher(this);
    public final StatusLine intervals = new StatusLine(2);

    public LazyGridIntervalContent(Function1 function1) {
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKt
    public final StatusLine getIntervals() {
        return this.intervals;
    }
}
