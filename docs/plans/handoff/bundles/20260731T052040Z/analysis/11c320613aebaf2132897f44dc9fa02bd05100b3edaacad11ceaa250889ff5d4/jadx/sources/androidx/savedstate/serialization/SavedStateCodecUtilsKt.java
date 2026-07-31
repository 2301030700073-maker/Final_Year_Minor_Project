package androidx.savedstate.serialization;

import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ArrayClassDesc;
import kotlinx.serialization.internal.BooleanArraySerializer;
import kotlinx.serialization.internal.CharArraySerializer;
import kotlinx.serialization.internal.DoubleArraySerializer;
import kotlinx.serialization.internal.FloatArraySerializer;
import kotlinx.serialization.internal.IntArraySerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongArraySerializer;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SavedStateCodecUtilsKt {
    public static final PrimitiveArrayDescriptor booleanArrayDescriptor;
    public static final PrimitiveArrayDescriptor charArrayDescriptor;
    public static final PrimitiveArrayDescriptor doubleArrayDescriptor;
    public static final PrimitiveArrayDescriptor floatArrayDescriptor;
    public static final PrimitiveArrayDescriptor intArrayDescriptor;
    public static final ArrayClassDesc intListDescriptor;
    public static final PrimitiveArrayDescriptor longArrayDescriptor;
    public static final ArrayClassDesc stringArrayDescriptor;
    public static final ArrayClassDesc stringListDescriptor;

    static {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        PrimitiveSerialDescriptor primitiveSerialDescriptor = IntSerializer.descriptor;
        primitiveSerialDescriptor.getClass();
        intListDescriptor = new ArrayClassDesc(primitiveSerialDescriptor, 1);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        PrimitiveSerialDescriptor primitiveSerialDescriptor2 = StringSerializer.descriptor;
        primitiveSerialDescriptor2.getClass();
        stringListDescriptor = new ArrayClassDesc(primitiveSerialDescriptor2, 1);
        booleanArrayDescriptor = BooleanArraySerializer.INSTANCE.descriptor;
        charArrayDescriptor = CharArraySerializer.INSTANCE.descriptor;
        doubleArrayDescriptor = DoubleArraySerializer.INSTANCE.descriptor;
        floatArrayDescriptor = FloatArraySerializer.INSTANCE.descriptor;
        intArrayDescriptor = IntArraySerializer.INSTANCE.descriptor;
        longArrayDescriptor = LongArraySerializer.INSTANCE.descriptor;
        Reflection.getOrCreateKotlinClass(String.class);
        SerialDescriptor descriptor = stringSerializer.getDescriptor();
        descriptor.getClass();
        stringArrayDescriptor = new ArrayClassDesc(descriptor, 0);
    }
}
