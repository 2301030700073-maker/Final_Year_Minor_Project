package androidx.lifecycle;

import androidx.compose.runtime.saveable.SaveableStateHolder;
import org.maplibre.android.location.LocationComponent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WeakReference {
    public final /* synthetic */ int $r8$classId;
    public final java.lang.ref.WeakReference delegate;

    public WeakReference(LocationComponent locationComponent, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 3:
                this.delegate = new java.lang.ref.WeakReference(locationComponent);
                break;
            default:
                this.delegate = new java.lang.ref.WeakReference(locationComponent);
                break;
        }
    }

    public WeakReference(SaveableStateHolder saveableStateHolder) {
        this.$r8$classId = 1;
        this.delegate = new java.lang.ref.WeakReference(saveableStateHolder);
    }

    public WeakReference(LifecycleOwner lifecycleOwner) {
        this.$r8$classId = 0;
        lifecycleOwner.getClass();
        this.delegate = new java.lang.ref.WeakReference(lifecycleOwner);
    }
}
