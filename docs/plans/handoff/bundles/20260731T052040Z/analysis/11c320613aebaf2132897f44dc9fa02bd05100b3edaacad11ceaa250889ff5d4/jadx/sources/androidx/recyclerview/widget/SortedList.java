package androidx.recyclerview.widget;

import androidx.compose.ui.Modifier;
import java.util.Comparator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SortedList {
    public BatchedCallback mBatchedCallback;
    public Callback mCallback;
    public Object[] mData;
    public int mSize;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BatchedCallback extends Callback {
        public final BatchingListUpdateCallback mBatchingListUpdateCallback;
        public final Callback mWrappedCallback;

        public BatchedCallback(Callback callback) {
            this.mWrappedCallback = callback;
            this.mBatchingListUpdateCallback = new BatchingListUpdateCallback(callback);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public final boolean areContentsTheSame(Object obj, Object obj2) {
            return this.mWrappedCallback.areContentsTheSame(obj, obj2);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public final boolean areItemsTheSame(Object obj, Object obj2) {
            return this.mWrappedCallback.areItemsTheSame(obj, obj2);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return this.mWrappedCallback.compare(obj, obj2);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public final Object getChangePayload(Object obj, Object obj2) {
            return this.mWrappedCallback.getChangePayload(obj, obj2);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
        public final void onChanged(int i, int i2, Object obj) {
            this.mBatchingListUpdateCallback.onChanged(i, i2, obj);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public final void onInserted(int i, int i2) {
            this.mBatchingListUpdateCallback.onInserted(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public final void onMoved(int i, int i2) {
            this.mBatchingListUpdateCallback.onMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public final void onRemoved(int i, int i2) {
            this.mBatchingListUpdateCallback.onRemoved(i, i2);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Callback implements Comparator, ListUpdateCallback {
        public abstract boolean areContentsTheSame(Object obj, Object obj2);

        public abstract boolean areItemsTheSame(Object obj, Object obj2);

        @Override // java.util.Comparator
        public abstract int compare(Object obj, Object obj2);

        public Object getChangePayload(Object obj, Object obj2) {
            return null;
        }

        public abstract void onChanged(int i, int i2, Object obj);
    }

    public final Object get(int i) {
        if (i < this.mSize && i >= 0) {
            return this.mData[i];
        }
        StringBuilder m179m = Modifier.CC.m179m("Asked to get item at ", i, " but size is ");
        m179m.append(this.mSize);
        throw new IndexOutOfBoundsException(m179m.toString());
    }
}
