package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.compose.runtime.AbstractApplier;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface AnnotationLoader {
    List loadCallableAnnotations(AbstractApplier abstractApplier, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind);

    ArrayList loadClassAnnotations(ProtoContainer$Class protoContainer$Class);

    List loadEnumEntryAnnotations(AbstractApplier abstractApplier, ProtoBuf$EnumEntry protoBuf$EnumEntry);

    List loadExtensionReceiverParameterAnnotations(AbstractApplier abstractApplier, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind);

    List loadPropertyBackingFieldAnnotations(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property);

    List loadPropertyDelegateFieldAnnotations(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property);

    ArrayList loadTypeAnnotations(ProtoBuf$Type protoBuf$Type, NameResolver nameResolver);

    ArrayList loadTypeParameterAnnotations(ProtoBuf$TypeParameter protoBuf$TypeParameter, NameResolver nameResolver);

    List loadValueParameterAnnotations(AbstractApplier abstractApplier, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind, int i, ProtoBuf$ValueParameter protoBuf$ValueParameter);
}
