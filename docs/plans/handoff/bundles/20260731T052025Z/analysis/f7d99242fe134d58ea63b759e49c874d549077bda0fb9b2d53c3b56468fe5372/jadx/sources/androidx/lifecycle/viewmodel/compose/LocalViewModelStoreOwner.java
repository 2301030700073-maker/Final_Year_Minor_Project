package androidx.lifecycle.viewmodel.compose;

import android.view.View;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStoreOwner;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LocalViewModelStoreOwner {
    public static final DynamicProvidableCompositionLocal LocalViewModelStoreOwner = new DynamicProvidableCompositionLocal(new TextKt$$ExternalSyntheticLambda4(23));

    public static ViewModelStoreOwner getCurrent(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) gapComposer.consume(LocalViewModelStoreOwner);
        if (viewModelStoreOwner == null) {
            gapComposer.startReplaceGroup(1260197608);
            viewModelStoreOwner = ViewModelKt.m801get((View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView));
        } else {
            gapComposer.startReplaceGroup(1260196492);
        }
        gapComposer.end(false);
        return viewModelStoreOwner;
    }
}
