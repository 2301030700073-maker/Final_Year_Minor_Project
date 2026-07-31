package kotlinx.serialization.internal;

import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NullableSerializer implements KSerializer {
    public final SerialDescriptorForNullable descriptor;
    public final KSerializer serializer;

    public NullableSerializer(KSerializer kSerializer) {
        this.serializer = kSerializer;
        this.descriptor = new SerialDescriptorForNullable(kSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        if (decoder.decodeNotNullMark()) {
            return decoder.decodeSerializableValue(this.serializer);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && NullableSerializer.class == obj.getClass() && this.serializer.equals(((NullableSerializer) obj).serializer);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    public final int hashCode() {
        return this.serializer.hashCode();
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        if (obj != null) {
            charsKt__CharKt.encodeSerializableValue(this.serializer, obj);
        } else {
            charsKt__CharKt.encodeNull();
        }
    }
}
