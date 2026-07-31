package androidx.compose.ui.res;

import android.content.res.Resources;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.graphics.vector.ImageVector;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageVectorCache {
    public final HashMap map = new HashMap();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImageVectorEntry {
        public final int configFlags;
        public final ImageVector imageVector;

        public ImageVectorEntry(ImageVector imageVector, int i) {
            this.imageVector = imageVector;
            this.configFlags = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImageVectorEntry)) {
                return false;
            }
            ImageVectorEntry imageVectorEntry = (ImageVectorEntry) obj;
            return this.imageVector.equals(imageVectorEntry.imageVector) && this.configFlags == imageVectorEntry.configFlags;
        }

        public final int hashCode() {
            return (this.imageVector.hashCode() * 31) + this.configFlags;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ImageVectorEntry(imageVector=");
            sb.append(this.imageVector);
            sb.append(", configFlags=");
            return CameraDevices$CC.m(sb, this.configFlags, ')');
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Key {
        public final int id;
        public final Resources.Theme theme;

        public Key(Resources.Theme theme, int i) {
            this.theme = theme;
            this.id = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return Intrinsics.areEqual(this.theme, key.theme) && this.id == key.id;
        }

        public final int hashCode() {
            return (this.theme.hashCode() * 31) + this.id;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Key(theme=");
            sb.append(this.theme);
            sb.append(", id=");
            return CameraDevices$CC.m(sb, this.id, ')');
        }
    }
}
