package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import de.cketti.changelog.XmlParser;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyListIntervalContent extends LazyLayoutKt {
    public final XmlParser intervals = new XmlParser();

    public LazyListIntervalContent(Function1 function1) {
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKt
    public final XmlParser getIntervals() {
        return this.intervals;
    }

    public final void items(int i, Function1 function1, Function1 function12, ComposableLambdaImpl composableLambdaImpl) {
        this.intervals.addInterval(i, new LazyListInterval(function1, function12, composableLambdaImpl));
    }
}
