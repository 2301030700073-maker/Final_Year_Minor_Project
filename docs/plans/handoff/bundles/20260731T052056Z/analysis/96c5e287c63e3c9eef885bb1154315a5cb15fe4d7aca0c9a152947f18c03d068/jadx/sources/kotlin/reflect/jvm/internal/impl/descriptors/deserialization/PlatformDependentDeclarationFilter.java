package kotlin.reflect.jvm.internal.impl.descriptors.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedSimpleFunctionDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface PlatformDependentDeclarationFilter {
    boolean isFunctionAvailable(ModuleAwareClassDescriptor moduleAwareClassDescriptor, DeserializedSimpleFunctionDescriptor deserializedSimpleFunctionDescriptor);
}
