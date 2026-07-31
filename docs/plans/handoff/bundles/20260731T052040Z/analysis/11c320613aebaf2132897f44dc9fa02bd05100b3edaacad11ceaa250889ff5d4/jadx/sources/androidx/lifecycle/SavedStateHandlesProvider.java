package androidx.lifecycle;

import android.os.Bundle;
import androidx.activity.ComponentActivity$$ExternalSyntheticLambda5;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateRegistry;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.Arrays;
import java.util.Map;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateHandlesProvider implements SavedStateRegistry.SavedStateProvider {
    public boolean restored;
    public Bundle restoredState;
    public final SavedStateRegistry savedStateRegistry;
    public final SynchronizedLazyImpl viewModel$delegate;

    public SavedStateHandlesProvider(SavedStateRegistry savedStateRegistry, ViewModelStoreOwner viewModelStoreOwner) {
        savedStateRegistry.getClass();
        this.savedStateRegistry = savedStateRegistry;
        this.viewModel$delegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(viewModelStoreOwner, 11));
    }

    public final void performRestore() {
        if (this.restored) {
            return;
        }
        Bundle consumeRestoredStateForKey = this.savedStateRegistry.consumeRestoredStateForKey("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
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

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            bundleOf.putAll(bundle);
        }
        for (Map.Entry entry : ((SavedStateHandlesVM) this.viewModel$delegate.getValue()).handles.entrySet()) {
            String str = (String) entry.getKey();
            Bundle saveState = ((ComponentActivity$$ExternalSyntheticLambda5) ((SavedStateHandle) entry.getValue()).impl.lazyDecoderFactories).saveState();
            if (!saveState.isEmpty()) {
                str.getClass();
                bundleOf.putBundle(str, saveState);
            }
        }
        this.restored = false;
        return bundleOf;
    }
}
