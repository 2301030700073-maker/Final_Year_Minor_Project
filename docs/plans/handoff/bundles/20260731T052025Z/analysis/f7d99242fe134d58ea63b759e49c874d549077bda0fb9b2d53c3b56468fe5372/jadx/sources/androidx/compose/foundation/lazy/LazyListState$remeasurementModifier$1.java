package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyListState$remeasurementModifier$1 implements Modifier.Element {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ScrollableState this$0;

    public /* synthetic */ LazyListState$remeasurementModifier$1(ScrollableState scrollableState, int i) {
        this.$r8$classId = i;
        this.this$0 = scrollableState;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    @Override // androidx.compose.ui.Modifier
    public final boolean all(Function1 function1) {
        switch (this.$r8$classId) {
        }
        return ((Boolean) function1.invoke(this)).booleanValue();
    }

    @Override // androidx.compose.ui.Modifier
    public final Object foldIn(Object obj, Function2 function2) {
        switch (this.$r8$classId) {
        }
        return function2.invoke(obj, this);
    }

    @Override // androidx.compose.ui.Modifier
    public final /* synthetic */ Modifier then(Modifier modifier) {
        int i = this.$r8$classId;
        return Modifier.CC.$default$then(this, modifier);
    }
}
