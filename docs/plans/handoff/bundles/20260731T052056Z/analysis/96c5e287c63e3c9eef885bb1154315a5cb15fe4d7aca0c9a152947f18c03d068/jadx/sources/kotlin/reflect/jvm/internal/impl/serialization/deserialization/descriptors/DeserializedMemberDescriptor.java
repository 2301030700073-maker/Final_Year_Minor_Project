package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface DeserializedMemberDescriptor extends DeclarationDescriptor, MemberDescriptor {
    DeserializedContainerSource getContainerSource();

    NameResolver getNameResolver();

    AbstractMessageLite getProto();

    Dispatcher$promoteAndExecute$Effects getTypeTable();
}
