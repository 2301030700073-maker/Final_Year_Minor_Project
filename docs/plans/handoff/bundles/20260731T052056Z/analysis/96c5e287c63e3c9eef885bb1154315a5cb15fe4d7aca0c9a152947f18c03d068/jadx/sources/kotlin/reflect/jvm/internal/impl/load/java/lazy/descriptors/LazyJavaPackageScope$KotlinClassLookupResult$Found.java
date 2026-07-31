package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.work.Operation$State;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaPackageScope$KotlinClassLookupResult$Found extends Operation$State {
    public final ModuleAwareClassDescriptor descriptor;

    public LazyJavaPackageScope$KotlinClassLookupResult$Found(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        super(26);
        this.descriptor = moduleAwareClassDescriptor;
    }
}
