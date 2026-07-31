package androidx.collection;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ObjectListKt {
    public static final Object[] EmptyArray = new Object[0];
    public static final MutableObjectList EmptyObjectList = new MutableObjectList(0);

    public static final void access$checkIndex(int i, List list) {
        int size = list.size();
        if (i < 0 || i >= size) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Config.CC.m("Index ", i, " is out of bounds. The list has ", size, " elements."));
        }
    }

    public static final void access$checkSubIndex(List list, int i, int i2) {
        int size = list.size();
        if (i > i2) {
            UriKt$$ExternalSyntheticBUOutline0.m(Config.CC.m("Indices are out of order. fromIndex (", i, ") is greater than toIndex (", i2, ")."));
            return;
        }
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(CameraDevices$CC.m(i, "fromIndex (", ") is less than 0."));
            return;
        }
        if (i2 <= size) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is more than than the list size (" + size + ')');
    }
}
