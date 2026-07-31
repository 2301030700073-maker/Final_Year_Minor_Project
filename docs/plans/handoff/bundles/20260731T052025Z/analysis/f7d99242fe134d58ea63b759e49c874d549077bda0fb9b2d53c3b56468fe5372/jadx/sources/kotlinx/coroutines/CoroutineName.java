package kotlinx.coroutines;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoroutineName extends AbstractCoroutineContextElement {
    public static final Job.Key Key = new Job.Key();
    public final String name;

    public CoroutineName(String str) {
        super(Key);
        this.name = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CoroutineName) && Intrinsics.areEqual(this.name, ((CoroutineName) obj).name);
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("CoroutineName("), this.name, ')');
    }
}
