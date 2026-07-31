package androidx.lifecycle;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda5;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import coil3.svg.internal.AndroidSvg;
import java.util.Arrays;
import java.util.Map;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedStateHandlesProvider implements SavedStateRegistry$SavedStateProvider {
    public boolean restored;
    public Bundle restoredState;
    public final AndroidSvg savedStateRegistry;
    public final SynchronizedLazyImpl viewModel$delegate;

    public SavedStateHandlesProvider(AndroidSvg androidSvg, ViewModelStoreOwner viewModelStoreOwner) {
        androidSvg.getClass();
        this.savedStateRegistry = androidSvg;
        this.viewModel$delegate = new SynchronizedLazyImpl(new NavBackStackEntry$$ExternalSyntheticLambda0(29, viewModelStoreOwner));
    }

    public final void performRestore() {
        if (this.restored) {
            return;
        }
        Bundle consumeRestoredStateForKey = this.savedStateRegistry.consumeRestoredStateForKey("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            bundleOf.putAll(bundle);
        }
        if (consumeRestoredStateForKey != null) {
            bundleOf.putAll(consumeRestoredStateForKey);
        }
        this.restoredState = bundleOf;
        this.restored = true;
    }

    @Override // androidx.savedstate.SavedStateRegistry$SavedStateProvider
    public final Bundle saveState() {
        Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            bundleOf.putAll(bundle);
        }
        for (Map.Entry entry : ((SavedStateHandlesVM) this.viewModel$delegate.getValue()).handles.entrySet()) {
            String str = (String) entry.getKey();
            Bundle saveState = ((FragmentManager$$ExternalSyntheticLambda5) ((SavedStateHandle) entry.getValue()).impl.tags).saveState();
            if (!saveState.isEmpty()) {
                str.getClass();
                bundleOf.putBundle(str, saveState);
            }
        }
        this.restored = false;
        return bundleOf;
    }
}
