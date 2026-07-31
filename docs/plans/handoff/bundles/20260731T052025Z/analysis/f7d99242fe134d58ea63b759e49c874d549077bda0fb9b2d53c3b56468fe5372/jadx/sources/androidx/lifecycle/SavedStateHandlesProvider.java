package androidx.lifecycle;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda6;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import com.beetstra.jutf7.Base64Util;
import java.util.Arrays;
import java.util.Map;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SavedStateHandlesProvider implements SavedStateRegistry$SavedStateProvider {
    public boolean restored;
    public Bundle restoredState;
    public final Base64Util savedStateRegistry;
    public final SynchronizedLazyImpl viewModel$delegate;

    public SavedStateHandlesProvider(Base64Util base64Util, ViewModelStoreOwner viewModelStoreOwner) {
        base64Util.getClass();
        this.savedStateRegistry = base64Util;
        this.viewModel$delegate = new SynchronizedLazyImpl(new ImageLoader$Builder$$ExternalSyntheticLambda1(15, viewModelStoreOwner));
    }

    public final void performRestore() {
        if (this.restored) {
            return;
        }
        Bundle consumeRestoredStateForKey = this.savedStateRegistry.consumeRestoredStateForKey("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
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
        Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            bundleOf.putAll(bundle);
        }
        for (Map.Entry entry : ((SavedStateHandlesVM) this.viewModel$delegate.getValue()).handles.entrySet()) {
            String str = (String) entry.getKey();
            Bundle saveState = ((FragmentManager$$ExternalSyntheticLambda6) ((SavedStateHandle) entry.getValue()).impl.this$0).saveState();
            if (!saveState.isEmpty()) {
                str.getClass();
                bundleOf.putBundle(str, saveState);
            }
        }
        this.restored = false;
        return bundleOf;
    }
}
