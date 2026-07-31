package androidx.recyclerview.widget;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BatchingListUpdateCallback {
    public final Fragment.AnonymousClass7 mWrapped;
    public int mLastEventType = 0;
    public int mLastEventPosition = -1;
    public int mLastEventCount = -1;

    public BatchingListUpdateCallback(Fragment.AnonymousClass7 anonymousClass7) {
        this.mWrapped = anonymousClass7;
    }

    public final void dispatchLastEvent() {
        RecyclerView.Adapter adapter = (RecyclerView.Adapter) this.mWrapped.this$0;
        int i = this.mLastEventType;
        if (i == 0) {
            return;
        }
        if (i == 1) {
            adapter.mObservable.notifyItemRangeInserted(this.mLastEventPosition, this.mLastEventCount);
        } else if (i == 2) {
            adapter.mObservable.notifyItemRangeRemoved(this.mLastEventPosition, this.mLastEventCount);
        } else if (i == 3) {
            adapter.mObservable.notifyItemRangeChanged(this.mLastEventPosition, this.mLastEventCount, null);
        }
        this.mLastEventType = 0;
    }

    public final void onChanged(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.mLastEventType == 3 && i <= (i4 = this.mLastEventCount + (i3 = this.mLastEventPosition)) && (i5 = i + i2) >= i3) {
            this.mLastEventPosition = Math.min(i, i3);
            this.mLastEventCount = Math.max(i4, i5) - this.mLastEventPosition;
        } else {
            dispatchLastEvent();
            this.mLastEventPosition = i;
            this.mLastEventCount = i2;
            this.mLastEventType = 3;
        }
    }

    public final void onMoved(int i, int i2) {
        dispatchLastEvent();
        ((RecyclerView.Adapter) this.mWrapped.this$0).mObservable.notifyItemMoved(i, i2);
    }
}
