package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval$type$1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PagerIntervalContent implements LazyLayoutIntervalContent$Interval {
    public final Function4 item;
    public final Function1 key;

    public PagerIntervalContent(Function1 function1, Function4 function4) {
        this.key = function1;
        this.item = function4;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval
    public final Function1 getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval
    public final /* synthetic */ Function1 getType() {
        return LazyLayoutIntervalContent$Interval$type$1.INSTANCE;
    }
}
