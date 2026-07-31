package androidx.window.layout.adapter;

import android.content.Context;
import androidx.core.util.Consumer;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface WindowBackend {
    void registerLayoutChangeCallback(Context context, Executor executor, Consumer consumer);

    void unregisterLayoutChangeCallback(Consumer consumer);
}
