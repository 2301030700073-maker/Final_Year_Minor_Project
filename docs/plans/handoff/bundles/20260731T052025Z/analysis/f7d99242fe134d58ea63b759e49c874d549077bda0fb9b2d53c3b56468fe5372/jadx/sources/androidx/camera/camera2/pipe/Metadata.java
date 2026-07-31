package androidx.camera.camera2.pipe;

import androidx.camera.core.impl.TagBundle;
import java.util.HashMap;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Metadata {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Key {
        public static final HashMap keys = new HashMap();
        public final String name;
        public final ClassReference type;

        public Key(String str, ClassReference classReference) {
            this.name = str;
            this.type = classReference;
        }

        public final String toString() {
            return CameraDevices$CC.m(new StringBuilder("Metadata.Key("), this.name, ')');
        }
    }

    Object get(Key key);

    Object getOrDefault(Key key, TagBundle tagBundle);
}
