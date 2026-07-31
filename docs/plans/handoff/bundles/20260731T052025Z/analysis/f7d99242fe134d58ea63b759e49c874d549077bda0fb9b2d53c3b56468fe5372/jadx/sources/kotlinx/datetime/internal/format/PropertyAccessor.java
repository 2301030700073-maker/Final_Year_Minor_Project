package kotlinx.datetime.internal.format;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PropertyAccessor {
    public final String name;
    public final MutablePropertyReference1Impl property;

    public PropertyAccessor(MutablePropertyReference1Impl mutablePropertyReference1Impl, String str) {
        str.getClass();
        this.property = mutablePropertyReference1Impl;
        this.name = str;
    }

    public final Object getterNotNull(Object obj) {
        Object obj2 = this.property.get(obj);
        if (obj2 != null) {
            return obj2;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m(new StringBuilder("Field "), this.name, " is not set"));
        return null;
    }

    public final Object trySetWithoutReassigning(Object obj, Object obj2) {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = this.property;
        Object obj3 = mutablePropertyReference1Impl.get(obj);
        if (obj3 == null) {
            mutablePropertyReference1Impl.set(obj, obj2);
            return null;
        }
        if (obj3.equals(obj2)) {
            return null;
        }
        return obj3;
    }

    public /* synthetic */ PropertyAccessor(MutablePropertyReference1Impl mutablePropertyReference1Impl) {
        this(mutablePropertyReference1Impl, mutablePropertyReference1Impl.getName());
    }
}
