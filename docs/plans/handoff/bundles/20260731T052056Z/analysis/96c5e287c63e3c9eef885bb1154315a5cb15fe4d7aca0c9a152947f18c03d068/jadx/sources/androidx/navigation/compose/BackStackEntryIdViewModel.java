package androidx.navigation.compose;

import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.WeakReference;
import androidx.lifecycle.internal.SavedStateHandleImpl_androidKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BackStackEntryIdViewModel extends ViewModel {
    public final String id;
    public WeakReference saveableStateHolderRef;

    public BackStackEntryIdViewModel(SavedStateHandle savedStateHandle) {
        String str = (String) savedStateHandle.get("SaveableStateHolder_BackStackEntryKey");
        if (str == null) {
            str = UUID.randomUUID().toString();
            if (str != null) {
                ArrayList arrayList = SavedStateHandleImpl_androidKt.ACCEPTABLE_CLASSES;
                if (arrayList == null || !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (((Class) it.next()).isInstance(str)) {
                        }
                    }
                }
                ContextsKt$$ExternalSyntheticBUOutline0.m(str.getClass(), " into saved state", "Can't put value with type ");
                throw null;
            }
            ArrayList arrayList2 = SavedStateHandleImpl_androidKt.ACCEPTABLE_CLASSES;
            Object obj = savedStateHandle.liveDatas.get("SaveableStateHolder_BackStackEntryKey");
            MutableLiveData mutableLiveData = obj instanceof MutableLiveData ? (MutableLiveData) obj : null;
            if (mutableLiveData != null) {
                mutableLiveData.setValue(str);
            }
            savedStateHandle.impl.set("SaveableStateHolder_BackStackEntryKey", str);
        }
        this.id = str;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        WeakReference weakReference = this.saveableStateHolderRef;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("saveableStateHolderRef");
            throw null;
        }
        SaveableStateHolder saveableStateHolder = (SaveableStateHolder) weakReference.delegate.get();
        if (saveableStateHolder != null) {
            saveableStateHolder.removeState(this.id);
        }
        WeakReference weakReference2 = this.saveableStateHolderRef;
        if (weakReference2 != null) {
            weakReference2.delegate.clear();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("saveableStateHolderRef");
            throw null;
        }
    }
}
