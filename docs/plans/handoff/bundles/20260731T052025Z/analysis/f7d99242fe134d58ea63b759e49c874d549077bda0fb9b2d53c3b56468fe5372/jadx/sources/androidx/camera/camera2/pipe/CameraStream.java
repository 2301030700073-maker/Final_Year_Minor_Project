package androidx.camera.camera2.pipe;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraStream {
    public final int id;
    public final ArrayList outputs;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Config {
        public final List outputs;

        public Config(List list) {
            this.outputs = list;
            OutputStream$Config outputStream$Config = (OutputStream$Config) CollectionsKt.first(list);
            if (list.isEmpty()) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((OutputStream$Config) it.next()).format != outputStream$Config.format) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("All outputs must have the same format!");
                    throw null;
                }
            }
        }

        public final String toString() {
            return "CameraStream.Config(outputs=" + this.outputs + ", imageSourceConfig=null)";
        }
    }

    public CameraStream(int i, ArrayList arrayList) {
        this.id = i;
        this.outputs = arrayList;
    }

    public final String toString() {
        return StreamId.m46toStringimpl(this.id);
    }
}
