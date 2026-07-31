package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyLayoutNearestRangeState implements State {
    public int lastFirstVisibleItem;
    public final ParcelableSnapshotMutableState value$delegate;

    public LazyLayoutNearestRangeState(int i) {
        int i2 = (i / 30) * 30;
        this.value$delegate = new ParcelableSnapshotMutableState(RangesKt.until(Math.max(i2 - 100, 0), i2 + 130), NeverEqualPolicy.INSTANCE$3);
        this.lastFirstVisibleItem = i;
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return (IntRange) this.value$delegate.getValue();
    }

    public final void update(int i) {
        if (i != this.lastFirstVisibleItem) {
            this.lastFirstVisibleItem = i;
            int i2 = (i / 30) * 30;
            this.value$delegate.setValue(RangesKt.until(Math.max(i2 - 100, 0), i2 + 130));
        }
    }
}
