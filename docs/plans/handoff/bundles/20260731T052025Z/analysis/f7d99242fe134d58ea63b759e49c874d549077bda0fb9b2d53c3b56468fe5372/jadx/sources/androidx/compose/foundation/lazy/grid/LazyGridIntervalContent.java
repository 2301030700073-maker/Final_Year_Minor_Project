package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import de.cketti.changelog.XmlParser;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.http.RealInterceptorChain;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyGridIntervalContent extends LazyLayoutKt {
    public static final SaversKt$$ExternalSyntheticLambda0 DefaultSpan = new SaversKt$$ExternalSyntheticLambda0(3);
    public boolean hasCustomSpans;
    public final RealInterceptorChain spanLayoutProvider = new RealInterceptorChain(this);
    public final XmlParser intervals = new XmlParser();

    public LazyGridIntervalContent(Function1 function1) {
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKt
    public final XmlParser getIntervals() {
        return this.intervals;
    }
}
