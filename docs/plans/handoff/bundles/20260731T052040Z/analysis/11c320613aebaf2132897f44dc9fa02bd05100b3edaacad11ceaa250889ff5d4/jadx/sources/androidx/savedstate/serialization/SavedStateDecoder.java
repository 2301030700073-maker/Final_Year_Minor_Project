package androidx.savedstate.serialization;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.os.BundleKt;
import androidx.savedstate.serialization.serializers.CharSequenceArraySerializer;
import androidx.savedstate.serialization.serializers.CharSequenceListSerializer;
import androidx.savedstate.serialization.serializers.CharSequenceSerializer;
import androidx.savedstate.serialization.serializers.DefaultJavaSerializableSerializer;
import androidx.savedstate.serialization.serializers.DefaultParcelableSerializer;
import androidx.savedstate.serialization.serializers.IBinderSerializer;
import androidx.savedstate.serialization.serializers.ParcelableArraySerializer;
import androidx.savedstate.serialization.serializers.ParcelableListSerializer;
import androidx.savedstate.serialization.serializers.SparseParcelableArraySerializer;
import androidx.work.OperationKt;
import coil3.ComponentRegistry;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateDecoder extends RangesKt {
    public final SavedStateConfiguration configuration;
    public int index;
    public String key;
    public final Bundle savedState;

    public SavedStateDecoder(Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        bundle.getClass();
        savedStateConfiguration.getClass();
        this.savedState = bundle;
        this.configuration = savedStateConfiguration;
        this.key = "";
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (Intrinsics.areEqual(this.key, "")) {
            return this;
        }
        Bundle bundle = this.savedState;
        bundle.getClass();
        return new SavedStateDecoder(MathKt.m666getSavedStateimpl(bundle, this.key), this.configuration);
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final boolean decodeBoolean() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        String str = this.key;
        str.getClass();
        boolean z = bundle.getBoolean(str, false);
        if (z || !bundle.getBoolean(str, true)) {
            return z;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final byte decodeByte() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        return (byte) MathKt.m665getIntimpl(bundle, this.key);
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        String str = this.key;
        str.getClass();
        char c = bundle.getChar(str, (char) 0);
        if (c != 0 || bundle.getChar(str, (char) 65535) != 65535) {
            return c;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        String str = this.key;
        str.getClass();
        double d = bundle.getDouble(str, Double.MIN_VALUE);
        if (d != Double.MIN_VALUE || bundle.getDouble(str, Double.MAX_VALUE) != Double.MAX_VALUE) {
            return d;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
    
        r4.key = r2;
        r5 = r4.index;
        r4.index = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
    
        return r5;
     */
    @Override // kotlinx.serialization.encoding.CompositeDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor r5) {
        /*
            r4 = this;
            r5.getClass()
            org.jsoup.Jsoup r0 = r5.getKind()
            kotlinx.serialization.descriptors.StructureKind$MAP r1 = kotlinx.serialization.descriptors.StructureKind$MAP.INSTANCE$2
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            android.os.Bundle r1 = r4.savedState
            if (r0 != 0) goto L23
            org.jsoup.Jsoup r0 = r5.getKind()
            kotlinx.serialization.descriptors.StructureKind$MAP r2 = kotlinx.serialization.descriptors.StructureKind$MAP.INSTANCE
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)
            if (r0 == 0) goto L1e
            goto L23
        L1e:
            int r0 = r5.getElementsCount()
            goto L2a
        L23:
            r1.getClass()
            int r0 = r1.size()
        L2a:
            int r2 = r4.index
            if (r2 >= r0) goto L56
            java.lang.String r2 = r5.getElementName(r2)
            int r3 = r4.index
            boolean r3 = r5.isElementOptional(r3)
            if (r3 == 0) goto L4d
            r1.getClass()
            r2.getClass()
            boolean r3 = r1.containsKey(r2)
            if (r3 != 0) goto L4d
            int r2 = r4.index
            int r2 = r2 + 1
            r4.index = r2
            goto L2a
        L4d:
            r4.key = r2
            int r5 = r4.index
            int r0 = r5 + 1
            r4.index = r0
            return r5
        L56:
            r4 = -1
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.savedstate.serialization.SavedStateDecoder.decodeElementIndex(kotlinx.serialization.descriptors.SerialDescriptor):int");
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        String str = this.key;
        str.getClass();
        float f = bundle.getFloat(str, Float.MIN_VALUE);
        if (f != Float.MIN_VALUE || bundle.getFloat(str, Float.MAX_VALUE) != Float.MAX_VALUE) {
            return f;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        return MathKt.m665getIntimpl(bundle, this.key);
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        String str = this.key;
        str.getClass();
        long j = bundle.getLong(str, Long.MIN_VALUE);
        if (j != Long.MIN_VALUE || bundle.getLong(str, Long.MAX_VALUE) != Long.MAX_VALUE) {
            return j;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final boolean decodeNotNullMark() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        String str = this.key;
        str.getClass();
        return !(bundle.containsKey(str) && bundle.get(str) == null);
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final Object decodeSerializableValue(KSerializer kSerializer) {
        Object deserialize;
        kSerializer.getClass();
        SerialDescriptor descriptor = kSerializer.getDescriptor();
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicCharSequenceDescriptor)) {
            CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.INSTANCE;
            deserialize = CharSequenceSerializer.deserialize((Decoder) this);
        } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicParcelableDescriptor)) {
            deserialize = DefaultParcelableSerializer.INSTANCE.mo469deserialize((Decoder) this);
        } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicJavaSerializableDescriptor)) {
            deserialize = DefaultJavaSerializableSerializer.INSTANCE.mo469deserialize((Decoder) this);
        } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicIBinderDescriptor)) {
            deserialize = IBinderSerializer.deserialize((Decoder) this);
        } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.charSequenceArrayDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicCharSequenceArrayDescriptor)) {
            deserialize = CharSequenceArraySerializer.deserialize((Decoder) this);
        } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.charSequenceListDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicCharSequenceListDescriptor)) {
            deserialize = CharSequenceListSerializer.INSTANCE.mo469deserialize((Decoder) this);
        } else if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.parcelableArrayDescriptor)) {
            Parcelable[] deserialize2 = ParcelableArraySerializer.deserialize((Decoder) this);
            Object mo469deserialize = kSerializer.mo469deserialize(EmptyArrayDecoder.INSTANCE);
            mo469deserialize.getClass();
            deserialize = Arrays.copyOf(deserialize2, deserialize2.length, OperationKt.getJavaClass(Reflection.getOrCreateKotlinClass(mo469deserialize.getClass())));
        } else {
            deserialize = Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicParcelableArrayDescriptor) ? ParcelableArraySerializer.deserialize((Decoder) this) : (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.parcelableListDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicParcelableListDescriptor)) ? ParcelableListSerializer.INSTANCE.mo469deserialize((Decoder) this) : (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.sparseParcelableArrayDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicSparseParcelableArrayDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.nullablePolymorphicSparseParcelableArrayDescriptor)) ? SparseParcelableArraySerializer.INSTANCE.mo469deserialize((Decoder) this) : null;
        }
        if (deserialize != null) {
            return deserialize;
        }
        SerialDescriptor descriptor2 = kSerializer.getDescriptor();
        boolean areEqual = Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.intListDescriptor);
        Bundle bundle = this.savedState;
        if (areEqual) {
            bundle.getClass();
            String str = this.key;
            str.getClass();
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(str);
            if (integerArrayList != null) {
                return integerArrayList;
            }
            BundleKt.keyOrValueNotFoundError(str);
            throw null;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.stringListDescriptor)) {
            bundle.getClass();
            String str2 = this.key;
            str2.getClass();
            ArrayList<String> stringArrayList = bundle.getStringArrayList(str2);
            if (stringArrayList != null) {
                return stringArrayList;
            }
            BundleKt.keyOrValueNotFoundError(str2);
            throw null;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.booleanArrayDescriptor)) {
            bundle.getClass();
            String str3 = this.key;
            str3.getClass();
            boolean[] booleanArray = bundle.getBooleanArray(str3);
            if (booleanArray != null) {
                return booleanArray;
            }
            BundleKt.keyOrValueNotFoundError(str3);
            throw null;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.charArrayDescriptor)) {
            bundle.getClass();
            String str4 = this.key;
            str4.getClass();
            char[] charArray = bundle.getCharArray(str4);
            if (charArray != null) {
                return charArray;
            }
            BundleKt.keyOrValueNotFoundError(str4);
            throw null;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.doubleArrayDescriptor)) {
            bundle.getClass();
            String str5 = this.key;
            str5.getClass();
            double[] doubleArray = bundle.getDoubleArray(str5);
            if (doubleArray != null) {
                return doubleArray;
            }
            BundleKt.keyOrValueNotFoundError(str5);
            throw null;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.floatArrayDescriptor)) {
            bundle.getClass();
            String str6 = this.key;
            str6.getClass();
            float[] floatArray = bundle.getFloatArray(str6);
            if (floatArray != null) {
                return floatArray;
            }
            BundleKt.keyOrValueNotFoundError(str6);
            throw null;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.intArrayDescriptor)) {
            bundle.getClass();
            String str7 = this.key;
            str7.getClass();
            int[] intArray = bundle.getIntArray(str7);
            if (intArray != null) {
                return intArray;
            }
            BundleKt.keyOrValueNotFoundError(str7);
            throw null;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.longArrayDescriptor)) {
            bundle.getClass();
            String str8 = this.key;
            str8.getClass();
            long[] longArray = bundle.getLongArray(str8);
            if (longArray != null) {
                return longArray;
            }
            BundleKt.keyOrValueNotFoundError(str8);
            throw null;
        }
        if (!Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.stringArrayDescriptor)) {
            return kSerializer.mo469deserialize(this);
        }
        bundle.getClass();
        String str9 = this.key;
        str9.getClass();
        String[] stringArray = bundle.getStringArray(str9);
        if (stringArray != null) {
            return stringArray;
        }
        BundleKt.keyOrValueNotFoundError(str9);
        throw null;
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final short decodeShort() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        return (short) MathKt.m665getIntimpl(bundle, this.key);
    }

    @Override // kotlin.ranges.RangesKt, kotlinx.serialization.encoding.Decoder
    public final String decodeString() {
        Bundle bundle = this.savedState;
        bundle.getClass();
        String str = this.key;
        str.getClass();
        String string = bundle.getString(str);
        if (string != null) {
            return string;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final ComponentRegistry.Builder getSerializersModule() {
        return this.configuration.serializersModule;
    }
}
