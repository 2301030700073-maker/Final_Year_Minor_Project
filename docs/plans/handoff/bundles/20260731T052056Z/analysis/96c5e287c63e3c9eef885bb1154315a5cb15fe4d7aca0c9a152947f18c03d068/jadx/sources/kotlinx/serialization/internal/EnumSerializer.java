package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EnumSerializer implements KSerializer {
    public final SynchronizedLazyImpl descriptor$delegate;
    public final Enum[] values;

    public EnumSerializer(String str, Enum[] enumArr) {
        enumArr.getClass();
        this.values = enumArr;
        this.descriptor$delegate = new SynchronizedLazyImpl(new Regex$$ExternalSyntheticLambda0(4, this, str));
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int decodeEnum = decoder.decodeEnum(getDescriptor());
        Enum[] enumArr = this.values;
        if (decodeEnum >= 0 && decodeEnum < enumArr.length) {
            return enumArr[decodeEnum];
        }
        throw new SerializationException(decodeEnum + " is not among valid " + getDescriptor().getSerialName() + " enum values, values size is " + enumArr.length);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return (SerialDescriptor) this.descriptor$delegate.getValue();
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Enum r5 = (Enum) obj;
        r5.getClass();
        Enum[] enumArr = this.values;
        int indexOf = ArraysKt___ArraysKt.indexOf(r5, enumArr);
        if (indexOf != -1) {
            uuidKt.encodeEnum(getDescriptor(), indexOf);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(r5);
        String serialName = getDescriptor().getSerialName();
        String arrays = Arrays.toString(enumArr);
        arrays.getClass();
        sb.append(" is not a valid enum ");
        sb.append(serialName);
        sb.append(", must be one of ");
        sb.append(arrays);
        throw new SerializationException(sb.toString());
    }

    public final String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().getSerialName() + '>';
    }
}
