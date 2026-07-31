package kotlinx.serialization.descriptors;

import androidx.compose.animation.core.Animation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            StringBuilder m21m = Animation.CC.m21m("Element with name '", str, "' is already registered in ");
            m21m.append(this.serialName);
            throw new IllegalArgumentException(m21m.toString().toString());
        }
        this.elementNames.add(str);
        this.elementDescriptors.add(serialDescriptor);
        this.elementAnnotations.add(EmptyList.INSTANCE);
        this.elementOptionality.add(Boolean.FALSE);
    }
}
