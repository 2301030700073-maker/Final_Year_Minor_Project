package androidx.loader.app;

import androidx.collection.SparseArrayCompat;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.ViewModel;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class LoaderManagerImpl$LoaderViewModel extends ViewModel {
    public static final FragmentManagerViewModel.AnonymousClass1 FACTORY = new FragmentManagerViewModel.AnonymousClass1(3);
    public final SparseArrayCompat mLoaders = new SparseArrayCompat(0);

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        SparseArrayCompat sparseArrayCompat = this.mLoaders;
        if (sparseArrayCompat.size() > 0) {
            sparseArrayCompat.valueAt(0).getClass();
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return;
        }
        int i = sparseArrayCompat.size;
        Object[] objArr = sparseArrayCompat.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        sparseArrayCompat.size = 0;
        sparseArrayCompat.garbage = false;
    }
}
