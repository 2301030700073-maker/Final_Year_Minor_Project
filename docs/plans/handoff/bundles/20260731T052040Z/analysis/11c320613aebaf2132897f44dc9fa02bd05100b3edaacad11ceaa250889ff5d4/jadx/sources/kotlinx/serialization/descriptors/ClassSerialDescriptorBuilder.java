package kotlinx.serialization.descriptors;

import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    public static void element$default(ClassSerialDescriptorBuilder classSerialDescriptorBuilder, String str, SerialDescriptor serialDescriptor) {
        classSerialDescriptorBuilder.getClass();
        str.getClass();
        serialDescriptor.getClass();
        if (!classSerialDescriptorBuilder.uniqueNames.add(str)) {
            StringBuilder m180m = Modifier.CC.m180m("Element with name '", str, "' is already registered in ");
            m180m.append(classSerialDescriptorBuilder.serialName);
            throw new IllegalArgumentException(m180m.toString().toString());
        }
        classSerialDescriptorBuilder.elementNames.add(str);
        classSerialDescriptorBuilder.elementDescriptors.add(serialDescriptor);
        classSerialDescriptorBuilder.elementAnnotations.add(EmptyList.INSTANCE);
        classSerialDescriptorBuilder.elementOptionality.add(false);
    }
}
