package kotlinx.datetime.internal.format.parser;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParserStructure {
    public final List followedBy;
    public final List operations;

    public ParserStructure(List list, List list2) {
        list.getClass();
        list2.getClass();
        this.operations = list;
        this.followedBy = list2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(CollectionsKt.joinToString$default(this.operations, ", ", null, null, null, 62));
        sb.append('(');
        return CameraDevices$CC.m(sb, CollectionsKt.joinToString$default(this.followedBy, ";", null, null, null, 62), ')');
    }
}
