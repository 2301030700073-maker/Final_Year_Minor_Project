package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EnumSerializer implements KSerializer {
    public final SynchronizedLazyImpl descriptor$delegate;
    public final Enum[] values;

    public EnumSerializer(String str, Enum[] enumArr) {
        enumArr.getClass();
        this.values = enumArr;
        this.descriptor$delegate = new SynchronizedLazyImpl(new SealedClassSerializer$$ExternalSyntheticLambda0(2, (Object) this, str));
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
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        Enum r5 = (Enum) obj;
        r5.getClass();
        Enum[] enumArr = this.values;
        int indexOf = ArraysKt___ArraysKt.indexOf(enumArr, r5);
        if (indexOf != -1) {
            charsKt__CharKt.encodeEnum(getDescriptor(), indexOf);
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
