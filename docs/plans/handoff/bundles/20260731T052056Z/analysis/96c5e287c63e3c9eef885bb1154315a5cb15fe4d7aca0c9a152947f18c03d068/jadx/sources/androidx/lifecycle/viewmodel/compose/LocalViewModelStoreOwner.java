package androidx.lifecycle.viewmodel.compose;

import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.lifecycle.ViewModelStoreOwner;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LocalViewModelStoreOwner {
    public static final ComputedProvidableCompositionLocal LocalViewModelStoreOwner = new ComputedProvidableCompositionLocal(new SaversKt$$ExternalSyntheticLambda2(2));

    public static ViewModelStoreOwner getCurrent(GapComposer gapComposer) {
        return (ViewModelStoreOwner) gapComposer.consume(LocalViewModelStoreOwner);
    }
}
