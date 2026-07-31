package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutPinnableItem {
    public boolean isDisposed;
    public final Object key;
    public LazyLayoutPinnableItem parentHandle;
    public final LazyLayoutPinnedItemList pinnedItemList;
    public int pinsCount;
    public int index = -1;
    public final ParcelableSnapshotMutableState _parentPinnableContainer$delegate = Updater.mutableStateOf$default(null);

    public LazyLayoutPinnableItem(Object obj, LazyLayoutPinnedItemList lazyLayoutPinnedItemList) {
        this.key = obj;
        this.pinnedItemList = lazyLayoutPinnedItemList;
    }

    public final LazyLayoutPinnableItem pin() {
        if (this.isDisposed) {
            InlineClassHelperKt.throwIllegalStateException("Pin should not be called on an already disposed item ");
        }
        if (this.pinsCount == 0) {
            this.pinnedItemList.items.add(this);
            LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) this._parentPinnableContainer$delegate.getValue();
            if (lazyLayoutPinnableItem != null) {
                lazyLayoutPinnableItem.pin();
            } else {
                lazyLayoutPinnableItem = null;
            }
            this.parentHandle = lazyLayoutPinnableItem;
        }
        this.pinsCount++;
        return this;
    }

    public final void release() {
        if (this.isDisposed) {
            return;
        }
        if (this.pinsCount <= 0) {
            InlineClassHelperKt.throwIllegalStateException("Release should only be called once");
        }
        int i = this.pinsCount - 1;
        this.pinsCount = i;
        if (i == 0) {
            this.pinnedItemList.items.remove(this);
            LazyLayoutPinnableItem lazyLayoutPinnableItem = this.parentHandle;
            if (lazyLayoutPinnableItem != null) {
                lazyLayoutPinnableItem.release();
            }
            this.parentHandle = null;
        }
    }
}
