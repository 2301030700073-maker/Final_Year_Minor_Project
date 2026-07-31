package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import com.grack.nanojson.JsonParser;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PagerLayoutIntervalContent extends LazyLayoutKt {
    public final JsonParser intervals;

    public PagerLayoutIntervalContent(Function4 function4, Function1 function1, int i) {
        JsonParser jsonParser = new JsonParser();
        jsonParser.addInterval(i, new PagerIntervalContent(function1, function4));
        this.intervals = jsonParser;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKt
    public final JsonParser getIntervals() {
        return this.intervals;
    }
}
