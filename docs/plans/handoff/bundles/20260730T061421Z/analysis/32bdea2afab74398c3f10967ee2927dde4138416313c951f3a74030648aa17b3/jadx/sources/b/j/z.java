package b.j;

import androidx.lifecycle.SavedStateHandleController;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class z implements b.n.b {
    @Override // b.n.b
    public void a(b.n.f fVar) {
        if (!(fVar instanceof I)) {
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
        H viewModelStore = ((I) fVar).getViewModelStore();
        b.n.d savedStateRegistry = fVar.getSavedStateRegistry();
        Objects.requireNonNull(viewModelStore);
        Iterator it = new HashSet(viewModelStore.f985a.keySet()).iterator();
        while (it.hasNext()) {
            SavedStateHandleController.h((B) viewModelStore.f985a.get((String) it.next()), savedStateRegistry, fVar.getLifecycle());
        }
        if (new HashSet(viewModelStore.f985a.keySet()).isEmpty()) {
            return;
        }
        savedStateRegistry.b(z.class);
    }
}
