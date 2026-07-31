package androidx.activity.result;

import androidx.lifecycle.Lifecycle;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActivityResultRegistry$LifecycleContainer {
    public final Lifecycle lifecycle;
    public final ArrayList observers = new ArrayList();

    public ActivityResultRegistry$LifecycleContainer(Lifecycle lifecycle) {
        this.lifecycle = lifecycle;
    }
}
