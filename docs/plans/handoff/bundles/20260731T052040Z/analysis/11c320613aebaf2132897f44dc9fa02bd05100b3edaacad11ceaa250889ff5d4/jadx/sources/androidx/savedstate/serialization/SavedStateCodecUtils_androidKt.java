package androidx.savedstate.serialization;

import android.os.IBinder;
import android.os.Parcelable;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.SparseArraySerializer;
import java.io.Serializable;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.internal.ArrayClassDesc;
import kotlinx.serialization.internal.ReferenceArraySerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SavedStateCodecUtils_androidKt {
    public static final ArrayClassDesc charSequenceArrayDescriptor;
    public static final ArrayClassDesc charSequenceListDescriptor;
    public static final SerialDescriptor nullablePolymorphicSparseParcelableArrayDescriptor;
    public static final ArrayClassDesc parcelableArrayDescriptor;
    public static final ArrayClassDesc parcelableListDescriptor;
    public static final ArrayClassDesc polymorphicCharSequenceArrayDescriptor;
    public static final ArrayClassDesc polymorphicCharSequenceListDescriptor;
    public static final ArrayClassDesc polymorphicParcelableArrayDescriptor;
    public static final ArrayClassDesc polymorphicParcelableListDescriptor;
    public static final SerialDescriptor polymorphicSparseParcelableArrayDescriptor;
    public static final SerialDescriptor sparseParcelableArrayDescriptor;
    public static final SerialDescriptor polymorphicCharSequenceDescriptor = new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CharSequence.class)).getDescriptor();
    public static final SerialDescriptor polymorphicParcelableDescriptor = new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Parcelable.class)).getDescriptor();
    public static final SerialDescriptor polymorphicJavaSerializableDescriptor = new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Serializable.class)).getDescriptor();
    public static final SerialDescriptor polymorphicIBinderDescriptor = new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(IBinder.class)).getDescriptor();

    static {
        DefaultParcelableSerializer defaultParcelableSerializer = DefaultParcelableSerializer.INSTANCE;
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Parcelable.class);
        defaultParcelableSerializer.getClass();
        parcelableArrayDescriptor = new ReferenceArraySerializer(orCreateKotlinClass, defaultParcelableSerializer).descriptor;
        PolymorphicSerializer polymorphicSerializer = new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Parcelable.class));
        Reflection.getOrCreateKotlinClass(Parcelable.class);
        SerialDescriptor descriptor = polymorphicSerializer.getDescriptor();
        descriptor.getClass();
        polymorphicParcelableArrayDescriptor = new ArrayClassDesc(descriptor, 0);
        SerialDescriptor descriptor2 = defaultParcelableSerializer.getDescriptor();
        descriptor2.getClass();
        parcelableListDescriptor = new ArrayClassDesc(descriptor2, 1);
        SerialDescriptor descriptor3 = new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Parcelable.class)).getDescriptor();
        descriptor3.getClass();
        polymorphicParcelableListDescriptor = new ArrayClassDesc(descriptor3, 1);
        CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.INSTANCE;
        Reflection.getOrCreateKotlinClass(CharSequence.class);
        SerialDescriptor descriptor4 = charSequenceSerializer.getDescriptor();
        descriptor4.getClass();
        charSequenceArrayDescriptor = new ArrayClassDesc(descriptor4, 0);
        PolymorphicSerializer polymorphicSerializer2 = new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CharSequence.class));
        Reflection.getOrCreateKotlinClass(CharSequence.class);
        SerialDescriptor descriptor5 = polymorphicSerializer2.getDescriptor();
        descriptor5.getClass();
        polymorphicCharSequenceArrayDescriptor = new ArrayClassDesc(descriptor5, 0);
        SerialDescriptorImpl serialDescriptorImpl = CharSequenceSerializer.descriptor;
        serialDescriptorImpl.getClass();
        charSequenceListDescriptor = new ArrayClassDesc(serialDescriptorImpl, 1);
        SerialDescriptor descriptor6 = new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CharSequence.class)).getDescriptor();
        descriptor6.getClass();
        polymorphicCharSequenceListDescriptor = new ArrayClassDesc(descriptor6, 1);
        SparseArraySerializer.SparseArraySurrogate.Companion companion = SparseArraySerializer.SparseArraySurrogate.Companion;
        sparseParcelableArrayDescriptor = companion.serializer(defaultParcelableSerializer).getDescriptor();
        polymorphicSparseParcelableArrayDescriptor = companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Parcelable.class))).getDescriptor();
        nullablePolymorphicSparseParcelableArrayDescriptor = companion.serializer(MathKt.getNullable(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Parcelable.class)))).getDescriptor();
    }
}
