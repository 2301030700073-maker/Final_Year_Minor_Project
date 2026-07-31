package androidx.lifecycle.viewmodel;

import android.os.Bundle;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewModelStoreProvider {
    public final Bundle defaultArgs;
    public final CreationExtras defaultCreationExtras;
    public final ViewModelProvider$Factory defaultFactory;
    public final Long parentKey;
    public final ViewModelStore parentStore;
    public final SynchronizedLazyImpl stateHolder$delegate;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Entry {
        public boolean isDisposable;
        public final Object key;
        public int refCount;
        public final ViewModelStore store;

        public Entry(Object obj) {
            ViewModelStore viewModelStore = new ViewModelStore();
            this.key = obj;
            this.store = viewModelStore;
            this.refCount = 0;
            this.isDisposable = false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return Intrinsics.areEqual(this.key, entry.key) && Intrinsics.areEqual(this.store, entry.store) && this.refCount == entry.refCount && this.isDisposable == entry.isDisposable;
        }

        public final int hashCode() {
            Object obj = this.key;
            return ((((this.store.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31)) * 31) + this.refCount) * 31) + (this.isDisposable ? 1231 : 1237);
        }

        public final String toString() {
            return "Entry(key=" + this.key + ", store=" + this.store + ", refCount=" + this.refCount + ", isDisposable=" + this.isDisposable + ")";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ProviderMarkerKey {
        public static final ProviderMarkerKey INSTANCE = new ProviderMarkerKey();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StateHolder extends ViewModel {
        public final MutableScatterMap entries;

        public StateHolder() {
            long[] jArr = ScatterMapKt.EmptyGroup;
            this.entries = new MutableScatterMap();
        }

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            MutableScatterMap mutableScatterMap;
            MutableScatterMap mutableScatterMap2 = this.entries;
            if (mutableScatterMap2.isEmpty()) {
                mutableScatterMap = ScatterMapKt.EmptyScatterMap;
                mutableScatterMap.getClass();
            } else {
                MutableScatterMap mutableScatterMap3 = new MutableScatterMap(mutableScatterMap2._size);
                mutableScatterMap3.putAll(mutableScatterMap2);
                mutableScatterMap = mutableScatterMap3;
            }
            Object[] objArr = mutableScatterMap.values;
            long[] jArr = mutableScatterMap.metadata;
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
                            Entry entry = (Entry) objArr[(i << 3) + i3];
                            entry.isDisposable = true;
                            if (entry.refCount <= 0) {
                                remove(entry.key);
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

        public final void remove(Object obj) {
            ViewModelStore viewModelStore;
            Entry entry = (Entry) this.entries.remove(obj);
            if (entry == null || (viewModelStore = entry.store) == null) {
                return;
            }
            viewModelStore.clear();
        }
    }

    public ViewModelStoreProvider(ViewModelStoreOwner viewModelStoreOwner, Long l, Bundle bundle, CreationExtras creationExtras, ViewModelProvider$Factory viewModelProvider$Factory) {
        creationExtras.getClass();
        viewModelProvider$Factory.getClass();
        this.parentStore = viewModelStoreOwner.getViewModelStore();
        this.parentKey = l;
        this.defaultArgs = bundle;
        this.defaultCreationExtras = creationExtras;
        this.defaultFactory = viewModelProvider$Factory;
        this.stateHolder$delegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(this, 12));
    }

    public final StateHolder getStateHolder() {
        return (StateHolder) this.stateHolder$delegate.getValue();
    }
}
