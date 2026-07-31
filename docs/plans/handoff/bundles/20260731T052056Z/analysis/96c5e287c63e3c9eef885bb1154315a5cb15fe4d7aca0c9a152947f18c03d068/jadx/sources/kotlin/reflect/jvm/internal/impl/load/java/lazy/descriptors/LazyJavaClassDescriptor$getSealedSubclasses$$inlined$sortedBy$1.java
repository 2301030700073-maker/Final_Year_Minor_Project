package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.work.Operation$State;
import java.util.Comparator;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaClassDescriptor$getSealedSubclasses$$inlined$sortedBy$1 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Operation$State.compareValues(DescriptorUtilsKt.getFqNameSafe((ModuleAwareClassDescriptor) obj).asString(), DescriptorUtilsKt.getFqNameSafe((ModuleAwareClassDescriptor) obj2).asString());
    }
}
