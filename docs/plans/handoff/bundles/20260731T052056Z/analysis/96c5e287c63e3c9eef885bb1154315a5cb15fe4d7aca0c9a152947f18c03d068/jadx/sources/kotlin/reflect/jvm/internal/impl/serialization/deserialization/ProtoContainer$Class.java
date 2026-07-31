package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.compose.runtime.AbstractApplier;
import androidx.room.Room;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProtoContainer$Class extends AbstractApplier {
    public final ClassId classId;
    public final ProtoBuf$Class classProto;
    public final boolean isInner;
    public final ProtoBuf$Class.Kind kind;
    public final ProtoContainer$Class outerClass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProtoContainer$Class(ProtoBuf$Class protoBuf$Class, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, SourceElement sourceElement, ProtoContainer$Class protoContainer$Class) {
        super(nameResolver, dispatcher$promoteAndExecute$Effects, sourceElement);
        protoBuf$Class.getClass();
        nameResolver.getClass();
        this.classProto = protoBuf$Class;
        this.outerClass = protoContainer$Class;
        this.classId = Room.getClassId(nameResolver, protoBuf$Class.fqName_);
        ProtoBuf$Class.Kind kind = (ProtoBuf$Class.Kind) Flags.CLASS_KIND.get(protoBuf$Class.flags_);
        this.kind = kind == null ? ProtoBuf$Class.Kind.CLASS : kind;
        this.isInner = Flags.IS_INNER.get(protoBuf$Class.flags_).booleanValue();
    }

    @Override // androidx.compose.runtime.AbstractApplier
    public final FqName debugFqName() {
        return this.classId.asSingleFqName();
    }
}
