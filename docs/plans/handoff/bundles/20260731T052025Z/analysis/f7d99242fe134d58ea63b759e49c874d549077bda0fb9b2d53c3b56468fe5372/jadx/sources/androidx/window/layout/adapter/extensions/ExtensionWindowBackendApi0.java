package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.window.layout.adapter.WindowBackend;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ExtensionWindowBackendApi0 implements WindowBackend {
    @Override // androidx.window.layout.adapter.WindowBackend
    public void registerLayoutChangeCallback(Context context, Executor executor, Consumer consumer) {
        context.getClass();
        executor.execute(new Fragment$$ExternalSyntheticLambda0(3, consumer));
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public void unregisterLayoutChangeCallback(Consumer consumer) {
    }
}
