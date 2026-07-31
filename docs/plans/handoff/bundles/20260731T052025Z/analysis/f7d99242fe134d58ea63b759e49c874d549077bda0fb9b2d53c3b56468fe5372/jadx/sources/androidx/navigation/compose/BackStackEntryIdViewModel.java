package androidx.navigation.compose;

import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.internal.SavedStateHandleImpl_androidKt;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackStackEntryIdViewModel extends ViewModel {
    public final String IdKey = "SaveableStateHolder_BackStackEntryKey";
    public final String id;
    public Fragment.AnonymousClass7 saveableStateHolderRef;

    public BackStackEntryIdViewModel(SavedStateHandle savedStateHandle) {
        Object obj;
        savedStateHandle.getClass();
        LocalStore.AnonymousClass7 anonymousClass7 = savedStateHandle.impl;
        LinkedHashMap linkedHashMap = (LinkedHashMap) anonymousClass7.val$queryString;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) anonymousClass7.val$messages;
        try {
            MutableStateFlow mutableStateFlow = (MutableStateFlow) linkedHashMap2.get("SaveableStateHolder_BackStackEntryKey");
            if (mutableStateFlow == null || (obj = ((StateFlowImpl) mutableStateFlow).getValue()) == null) {
                obj = linkedHashMap.get("SaveableStateHolder_BackStackEntryKey");
            }
        } catch (ClassCastException unused) {
            linkedHashMap.remove("SaveableStateHolder_BackStackEntryKey");
            ((LinkedHashMap) anonymousClass7.val$folder).remove("SaveableStateHolder_BackStackEntryKey");
            linkedHashMap2.remove("SaveableStateHolder_BackStackEntryKey");
            obj = null;
        }
        String str = (String) obj;
        if (str == null) {
            str = UUID.randomUUID().toString();
            String str2 = this.IdKey;
            str2.getClass();
            if (str != null) {
                ArrayList arrayList = SavedStateHandleImpl_androidKt.ACCEPTABLE_CLASSES;
                if (arrayList == null || !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (((Class) it.next()).isInstance(str)) {
                        }
                    }
                }
                DBUtil$$ExternalSyntheticBUOutline0.m(str.getClass(), " into saved state", "Can't put value with type ");
                throw null;
            }
            ArrayList arrayList2 = SavedStateHandleImpl_androidKt.ACCEPTABLE_CLASSES;
            Object obj2 = savedStateHandle.liveDatas.get(str2);
            MutableLiveData mutableLiveData = obj2 instanceof MutableLiveData ? (MutableLiveData) obj2 : null;
            if (mutableLiveData != null) {
                mutableLiveData.setValue(str);
            }
            anonymousClass7.set(str, str2);
        }
        this.id = str;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        Fragment.AnonymousClass7 anonymousClass7 = this.saveableStateHolderRef;
        if (anonymousClass7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("saveableStateHolderRef");
            throw null;
        }
        SaveableStateHolder saveableStateHolder = (SaveableStateHolder) ((WeakReference) anonymousClass7.this$0).get();
        if (saveableStateHolder != null) {
            saveableStateHolder.removeState(this.id);
        }
        Fragment.AnonymousClass7 anonymousClass72 = this.saveableStateHolderRef;
        if (anonymousClass72 != null) {
            ((WeakReference) anonymousClass72.this$0).clear();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("saveableStateHolderRef");
            throw null;
        }
    }
}
