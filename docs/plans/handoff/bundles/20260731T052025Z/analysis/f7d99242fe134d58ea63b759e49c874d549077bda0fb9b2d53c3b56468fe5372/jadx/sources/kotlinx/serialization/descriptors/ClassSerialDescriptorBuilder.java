package kotlinx.serialization.descriptors;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClassSerialDescriptorBuilder {
    public final String serialName;
    public List annotations = EmptyList.INSTANCE;
    public final ArrayList elementNames = new ArrayList();
    public final HashSet uniqueNames = new HashSet();
    public final ArrayList elementDescriptors = new ArrayList();
    public final ArrayList elementAnnotations = new ArrayList();
    public final ArrayList elementOptionality = new ArrayList();

    public ClassSerialDescriptorBuilder(String str) {
        this.serialName = str;
    }

    public final void element(String str, SerialDescriptor serialDescriptor) {
        str.getClass();
        serialDescriptor.getClass();
        if (!this.uniqueNames.add(str)) {
            StringBuilder m31m = CameraDevices$CC.m31m("Element with name '", str, "' is already registered in ");
            m31m.append(this.serialName);
            throw new IllegalArgumentException(m31m.toString().toString());
        }
        this.elementNames.add(str);
        this.elementDescriptors.add(serialDescriptor);
        this.elementAnnotations.add(EmptyList.INSTANCE);
        this.elementOptionality.add(Boolean.FALSE);
    }
}
