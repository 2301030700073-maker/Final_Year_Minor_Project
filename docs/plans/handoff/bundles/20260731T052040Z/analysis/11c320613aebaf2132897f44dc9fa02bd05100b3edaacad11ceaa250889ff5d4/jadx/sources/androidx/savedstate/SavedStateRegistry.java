package androidx.savedstate;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.LegacySavedStateHandleController$OnRecreation;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateRegistry {
    public final SavedStateRegistryImpl impl;
    public AppCompatActivity.AnonymousClass1 recreatorProvider;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface AutoRecreated {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface SavedStateProvider {
        Bundle saveState();
    }

    public SavedStateRegistry(SavedStateRegistryImpl savedStateRegistryImpl) {
        this.impl = savedStateRegistryImpl;
    }

    public final Bundle consumeRestoredStateForKey(String str) {
        SavedStateRegistryImpl savedStateRegistryImpl = this.impl;
        if (!savedStateRegistryImpl.isRestored) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
            return null;
        }
        Bundle bundle = savedStateRegistryImpl.restoredState;
        if (bundle == null) {
            return null;
        }
        Bundle m666getSavedStateimpl = bundle.containsKey(str) ? MathKt.m666getSavedStateimpl(bundle, str) : null;
        bundle.remove(str);
        if (bundle.isEmpty()) {
            savedStateRegistryImpl.restoredState = null;
        }
        return m666getSavedStateimpl;
    }

    public final SavedStateProvider getSavedStateProvider(String str) {
        SavedStateProvider savedStateProvider;
        SavedStateRegistryImpl savedStateRegistryImpl = this.impl;
        synchronized (savedStateRegistryImpl.lock) {
            Iterator it = savedStateRegistryImpl.keyToProviders.entrySet().iterator();
            do {
                savedStateProvider = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = (String) entry.getKey();
                SavedStateProvider savedStateProvider2 = (SavedStateProvider) entry.getValue();
                if (Intrinsics.areEqual(str2, str)) {
                    savedStateProvider = savedStateProvider2;
                }
            } while (savedStateProvider == null);
        }
        return savedStateProvider;
    }

    public final void registerSavedStateProvider(String str, SavedStateProvider savedStateProvider) {
        savedStateProvider.getClass();
        SavedStateRegistryImpl savedStateRegistryImpl = this.impl;
        synchronized (savedStateRegistryImpl.lock) {
            if (savedStateRegistryImpl.keyToProviders.containsKey(str)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            savedStateRegistryImpl.keyToProviders.put(str, savedStateProvider);
        }
    }

    public final void runOnNextRecreation() {
        if (!this.impl.isAllowingSavingState) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Can not perform this action after onSaveInstanceState");
            return;
        }
        AppCompatActivity.AnonymousClass1 anonymousClass1 = this.recreatorProvider;
        if (anonymousClass1 == null) {
            anonymousClass1 = new AppCompatActivity.AnonymousClass1(this);
        }
        this.recreatorProvider = anonymousClass1;
        try {
            LegacySavedStateHandleController$OnRecreation.class.getDeclaredConstructor(null);
            AppCompatActivity.AnonymousClass1 anonymousClass12 = this.recreatorProvider;
            if (anonymousClass12 != null) {
                ((LinkedHashSet) anonymousClass12.this$0).add(LegacySavedStateHandleController$OnRecreation.class.getName());
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + LegacySavedStateHandleController$OnRecreation.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }
}
