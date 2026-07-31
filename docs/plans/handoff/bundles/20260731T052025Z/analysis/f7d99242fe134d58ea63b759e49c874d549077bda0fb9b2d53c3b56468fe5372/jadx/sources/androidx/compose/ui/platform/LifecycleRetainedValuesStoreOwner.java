package androidx.compose.ui.platform;

import androidx.camera.view.PreviewView;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.lifecycle.ViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LifecycleRetainedValuesStoreOwner extends ViewModel {
    public final MutableIntObjectMap scopes;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface FrameEndScheduler {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RetainedValuesStoreEntry {
        public final PreviewView.AnonymousClass1 _retainedValuesStore;
        public CancellationHandle endRetainCancellationHandle;
        public boolean isInUse;
        public final PreviewView.AnonymousClass1 retainedValuesStore;

        public RetainedValuesStoreEntry() {
            PreviewView.AnonymousClass1 anonymousClass1 = new PreviewView.AnonymousClass1(26);
            this._retainedValuesStore = anonymousClass1;
            this.retainedValuesStore = anonymousClass1;
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
                            ManagedRetainedValuesStore managedRetainedValuesStore = (ManagedRetainedValuesStore) retainedValuesStoreEntry._retainedValuesStore.this$0;
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
