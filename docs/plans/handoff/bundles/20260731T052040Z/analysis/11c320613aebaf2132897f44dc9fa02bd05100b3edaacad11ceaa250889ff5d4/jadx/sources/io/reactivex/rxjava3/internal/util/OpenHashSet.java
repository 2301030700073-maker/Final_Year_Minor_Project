package io.reactivex.rxjava3.internal.util;

import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.recyclerview.widget.RecyclerView;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.Arrays;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class OpenHashSet {
    public Object keys;
    public int mask;
    public int maxSize;
    public int size;

    public void add(Disposable disposable) {
        Object obj;
        Object obj2;
        Object[] objArr = (Object[]) this.keys;
        int i = this.mask;
        int hashCode = disposable.hashCode() * (-1640531527);
        int i2 = (hashCode ^ (hashCode >>> 16)) & i;
        Object obj3 = objArr[i2];
        if (obj3 != null) {
            if (obj3.equals(disposable)) {
                return;
            }
            do {
                i2 = (i2 + 1) & i;
                obj2 = objArr[i2];
                if (obj2 == null) {
                }
            } while (!obj2.equals(disposable));
            return;
        }
        objArr[i2] = disposable;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 < this.maxSize) {
            return;
        }
        Object[] objArr2 = (Object[]) this.keys;
        int length = objArr2.length;
        int i4 = length << 1;
        int i5 = i4 - 1;
        Object[] objArr3 = new Object[i4];
        while (true) {
            int i6 = i3 - 1;
            if (i3 == 0) {
                this.mask = i5;
                this.maxSize = (int) (i4 * 0.75f);
                this.keys = objArr3;
                return;
            }
            do {
                length--;
                obj = objArr2[length];
            } while (obj == null);
            int hashCode2 = obj.hashCode() * (-1640531527);
            int i7 = (hashCode2 ^ (hashCode2 >>> 16)) & i5;
            if (objArr3[i7] != null) {
                do {
                    i7 = (i7 + 1) & i5;
                } while (objArr3[i7] != null);
            }
            objArr3[i7] = objArr2[length];
            i3 = i6;
        }
    }

    public void addPosition(int i, int i2) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Layout positions must be non-negative");
            return;
        }
        if (i2 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Pixel distance must be non-negative");
            return;
        }
        int i3 = this.maxSize;
        int i4 = i3 * 2;
        int[] iArr = (int[]) this.keys;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.keys = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i4 >= iArr.length) {
            int[] iArr3 = new int[i3 * 4];
            this.keys = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = (int[]) this.keys;
        iArr4[i4] = i;
        iArr4[i4 + 1] = i2;
        this.maxSize++;
    }

    public void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z) {
        this.maxSize = 0;
        int[] iArr = (int[]) this.keys;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.mItemPrefetchEnabled) {
            return;
        }
        if (z) {
            if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            layoutManager.collectAdjacentPrefetchPositions(this.mask, this.size, recyclerView.mState, this);
        }
        int i = this.maxSize;
        if (i > layoutManager.mPrefetchMaxCountObserved) {
            layoutManager.mPrefetchMaxCountObserved = i;
            layoutManager.mPrefetchMaxObservedInInitialPrefetch = z;
            recyclerView.mRecycler.updateViewCacheSize();
        }
    }

    public int getInt(int i) {
        return ((Operations) this.keys).intArgs[this.size + i];
    }

    /* renamed from: getObject-PtL-UHM, reason: not valid java name */
    public Object m644getObjectPtLUHM(int i) {
        return ((Operations) this.keys).objectArgs[this.maxSize + i];
    }

    public void removeEntry(Object[] objArr, int i, int i2) {
        int i3;
        Object obj;
        this.size--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                obj = objArr[i3];
                if (obj == null) {
                    objArr[i] = null;
                    return;
                }
                int hashCode = obj.hashCode() * (-1640531527);
                int i5 = (hashCode ^ (hashCode >>> 16)) & i2;
                if (i > i3) {
                    if (i >= i5 && i5 > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                } else if (i < i5 && i5 <= i3) {
                    i4 = i3 + 1;
                }
            }
            objArr[i] = obj;
            i = i3;
        }
    }
}
