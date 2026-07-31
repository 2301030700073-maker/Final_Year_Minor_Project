package androidx.compose.ui.platform;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.lifecycle.ViewModel;
import androidx.paging.HintHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LifecycleRetainedValuesStoreOwner extends ViewModel {
    public final MutableIntObjectMap scopes;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface FrameEndScheduler {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RetainedValuesStoreEntry {
        public final HintHandler _retainedValuesStore;
        public CancellationHandle endRetainCancellationHandle;
        public boolean isInUse;
        public final HintHandler retainedValuesStore;

        public RetainedValuesStoreEntry() {
            HintHandler hintHandler = new HintHandler(5);
            this._retainedValuesStore = hintHandler;
            this.retainedValuesStore = hintHandler;
        }
    }

    public LifecycleRetainedValuesStoreOwner() {
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
        this.scopes = new MutableIntObjectMap();
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        MutableIntObjectMap mutableIntObjectMap = this.scopes;
        int[] iArr = mutableIntObjectMap.keys;
        Object[] objArr = mutableIntObjectMap.values;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        int i5 = iArr[i4];
                        MutableObjectList mutableObjectList = (MutableObjectList) objArr[i4];
                        Object[] objArr2 = mutableObjectList.content;
                        int i6 = mutableObjectList._size;
                        for (int i7 = 0; i7 < i6; i7++) {
                            RetainedValuesStoreEntry retainedValuesStoreEntry = (RetainedValuesStoreEntry) objArr2[i7];
                            CancellationHandle cancellationHandle = retainedValuesStoreEntry.endRetainCancellationHandle;
                            if (cancellationHandle != null) {
                                cancellationHandle.cancel();
                            }
                            retainedValuesStoreEntry.endRetainCancellationHandle = null;
                            ManagedRetainedValuesStore managedRetainedValuesStore = (ManagedRetainedValuesStore) retainedValuesStoreEntry._retainedValuesStore.state;
                            managedRetainedValuesStore.isDisposed = true;
                            managedRetainedValuesStore.isEnabled = false;
                            managedRetainedValuesStore.purgeUnusedExitedValues();
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }
}
