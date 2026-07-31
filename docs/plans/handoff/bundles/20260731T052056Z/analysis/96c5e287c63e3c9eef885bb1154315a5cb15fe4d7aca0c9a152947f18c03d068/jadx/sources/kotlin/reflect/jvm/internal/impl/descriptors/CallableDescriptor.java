package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface CallableDescriptor extends DeclarationDescriptorNonRoot, DeclarationDescriptorWithVisibility, Substitutable {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface UserDataKey {
    }

    List getContextReceiverParameters();

    ReceiverParameterDescriptorImpl getDispatchReceiverParameter();

    ReceiverParameterDescriptorImpl getExtensionReceiverParameter();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    CallableDescriptor getOriginal();

    Collection getOverriddenDescriptors();

    KotlinType getReturnType();

    List getTypeParameters();

    Object getUserData(UserDataKey userDataKey);

    List getValueParameters();

    boolean hasSynthesizedParameterNames();
}
