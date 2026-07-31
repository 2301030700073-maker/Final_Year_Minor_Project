package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.ranges.IntRange;
import kotlin.text.RegexKt;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutBeyondBoundsInfo {
    public final MutableVector beyondBoundsItems;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            return Animation.CC.m(sb, this.end, ')');
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
        IntRange until = RegexKt.until(0, mutableVector.size);
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
