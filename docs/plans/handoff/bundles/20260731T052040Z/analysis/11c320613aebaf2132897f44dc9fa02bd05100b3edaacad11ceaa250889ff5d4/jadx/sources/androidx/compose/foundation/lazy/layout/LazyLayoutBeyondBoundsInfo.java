package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyLayoutBeyondBoundsInfo {
    public final MutableVector beyondBoundsItems;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Interval {
        public final int end;
        public final int start;

        public Interval(int i, int i2) {
            this.start = i;
            this.end = i2;
            if (!(i >= 0)) {
                InlineClassHelperKt.throwIllegalArgumentException("negative start index");
            }
            if (i2 >= i) {
                return;
            }
            InlineClassHelperKt.throwIllegalArgumentException("end index greater than start");
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interval)) {
                return false;
            }
            Interval interval = (Interval) obj;
            return this.start == interval.start && this.end == interval.end;
        }

        public final int hashCode() {
            return (this.start * 31) + this.end;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Interval(start=");
            sb.append(this.start);
            sb.append(", end=");
            return Modifier.CC.m(sb, this.end, ')');
        }
    }

    public LazyLayoutBeyondBoundsInfo(int i) {
        switch (i) {
            case 1:
                this.beyondBoundsItems = new MutableVector(new ContentInViewNode.Request[16]);
                break;
            default:
                this.beyondBoundsItems = new MutableVector(new Interval[16]);
                break;
        }
    }

    public void cancelAndRemoveAll(CancellationException cancellationException) {
        MutableVector mutableVector = this.beyondBoundsItems;
        int i = mutableVector.size;
        CancellableContinuation[] cancellableContinuationArr = new CancellableContinuation[i];
        for (int i2 = 0; i2 < i; i2++) {
            cancellableContinuationArr[i2] = ((ContentInViewNode.Request) mutableVector.content[i2]).continuation;
        }
        for (int i3 = 0; i3 < i; i3++) {
            cancellableContinuationArr[i3].cancel(cancellationException);
        }
        if (mutableVector.size == 0) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("uncancelled requests present");
    }

    public void resumeAndRemoveAll() {
        MutableVector mutableVector = this.beyondBoundsItems;
        IntRange until = RangesKt.until(0, mutableVector.size);
        int i = until.first;
        int i2 = until.last;
        if (i <= i2) {
            while (true) {
                ((ContentInViewNode.Request) mutableVector.content[i]).continuation.resumeWith(Unit.INSTANCE);
                if (i == i2) {
                    break;
                } else {
                    i++;
                }
            }
        }
        mutableVector.clear();
    }
}
