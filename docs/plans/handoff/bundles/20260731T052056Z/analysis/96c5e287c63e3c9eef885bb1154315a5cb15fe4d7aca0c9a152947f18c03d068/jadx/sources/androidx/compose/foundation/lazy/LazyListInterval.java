package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyListInterval implements LazyLayoutIntervalContent$Interval {
    public final ComposableLambdaImpl item;
    public final Function1 key;
    public final Function1 type;

    public LazyListInterval(Function1 function1, Function1 function12, ComposableLambdaImpl composableLambdaImpl) {
        this.key = function1;
        this.type = function12;
        this.item = composableLambdaImpl;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval
    public final Function1 getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval
    public final Function1 getType() {
        return this.type;
    }
}
