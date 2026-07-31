package androidx.savedstate.serialization;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.compose.ui.Modifier;
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
import androidx.sqlite.SQLite;
import androidx.work.OperationKt;
import coil3.ComponentRegistry;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import kotlinx.serialization.encoding.Encoder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateEncoder extends SQLite {
    public final SavedStateConfiguration configuration;
    public String key;
    public final Bundle savedState;

    public SavedStateEncoder(Bundle bundle, SavedStateConfiguration savedStateConfiguration) {
        savedStateConfiguration.getClass();
        this.savedState = bundle;
        this.configuration = savedStateConfiguration;
        this.key = "";
    }

    public static void putClassDiscriminatorIfRequired(SavedStateConfiguration savedStateConfiguration, SerialDescriptor serialDescriptor, Bundle bundle) {
        if (savedStateConfiguration.classDiscriminatorMode == 1 && !bundle.containsKey("type")) {
            if (Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind$MAP.INSTANCE$1) || Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind$MAP.INSTANCE$3)) {
                String serialName = serialDescriptor.getSerialName();
                serialName.getClass();
                bundle.putString("type", serialName);
            }
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final SQLite beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        boolean areEqual = Intrinsics.areEqual(this.key, "");
        Bundle bundle = this.savedState;
        SavedStateConfiguration savedStateConfiguration = this.configuration;
        if (areEqual) {
            putClassDiscriminatorIfRequired(savedStateConfiguration, serialDescriptor, bundle);
            return this;
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        String str = this.key;
        str.getClass();
        bundle.putBundle(str, bundleOf);
        putClassDiscriminatorIfRequired(savedStateConfiguration, serialDescriptor, bundleOf);
        return new SavedStateEncoder(bundleOf, savedStateConfiguration);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeBoolean(boolean z) {
        String str = this.key;
        str.getClass();
        this.savedState.putBoolean(str, z);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeByte(byte b) {
        String str = this.key;
        str.getClass();
        this.savedState.putInt(str, b);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeChar(char c) {
        String str = this.key;
        str.getClass();
        this.savedState.putChar(str, c);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeDouble(double d) {
        String str = this.key;
        str.getClass();
        this.savedState.putDouble(str, d);
    }

    @Override // androidx.sqlite.SQLite
    public final void encodeElement(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        this.key = serialDescriptor.getElementName(i);
        if (this.configuration.classDiscriminatorMode == 1) {
            Bundle bundle = this.savedState;
            boolean containsKey = bundle.containsKey("type");
            boolean areEqual = Intrinsics.areEqual(this.key, "type");
            if (containsKey && areEqual) {
                String string = bundle.getString("type");
                if (string != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(Modifier.CC.m180m("SavedStateEncoder for ", string, " has property '"), this.key, "' that conflicts with the class discriminator. You can rename a property with @SerialName annotation."));
                } else {
                    BundleKt.keyOrValueNotFoundError("type");
                    throw null;
                }
            }
        }
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeFloat(float f) {
        String str = this.key;
        str.getClass();
        this.savedState.putFloat(str, f);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeInt(int i) {
        String str = this.key;
        str.getClass();
        this.savedState.putInt(str, i);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeLong(long j) {
        String str = this.key;
        str.getClass();
        this.savedState.putLong(str, j);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeNull() {
        String str = this.key;
        str.getClass();
        this.savedState.putString(str, null);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeSerializableValue(KSerializer kSerializer, Object obj) {
        kSerializer.getClass();
        SerialDescriptor descriptor = kSerializer.getDescriptor();
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicCharSequenceDescriptor)) {
            CharSequenceSerializer charSequenceSerializer = CharSequenceSerializer.INSTANCE;
            obj.getClass();
            CharSequenceSerializer.serialize((SQLite) this, (CharSequence) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicParcelableDescriptor)) {
            DefaultParcelableSerializer defaultParcelableSerializer = DefaultParcelableSerializer.INSTANCE;
            obj.getClass();
            defaultParcelableSerializer.serialize((SQLite) this, (Parcelable) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicJavaSerializableDescriptor)) {
            DefaultJavaSerializableSerializer defaultJavaSerializableSerializer = DefaultJavaSerializableSerializer.INSTANCE;
            obj.getClass();
            defaultJavaSerializableSerializer.serialize((SQLite) this, (Serializable) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicIBinderDescriptor)) {
            SerialDescriptorImpl serialDescriptorImpl = IBinderSerializer.descriptor;
            obj.getClass();
            IBinder iBinder = (IBinder) obj;
            iBinder.getClass();
            if (!(this instanceof SavedStateEncoder)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.encoderErrorMessage(IBinderSerializer.descriptor.serialName, this));
                return;
            }
            String str = this.key;
            str.getClass();
            this.savedState.putBinder(str, iBinder);
            return;
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.charSequenceArrayDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicCharSequenceArrayDescriptor)) {
            SerialDescriptorImpl serialDescriptorImpl2 = CharSequenceArraySerializer.descriptor;
            obj.getClass();
            CharSequence[] charSequenceArr = (CharSequence[]) obj;
            charSequenceArr.getClass();
            if (!(this instanceof SavedStateEncoder)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.encoderErrorMessage(CharSequenceArraySerializer.descriptor.serialName, this));
                return;
            }
            String str2 = this.key;
            str2.getClass();
            this.savedState.putCharSequenceArray(str2, charSequenceArr);
            return;
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.charSequenceListDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicCharSequenceListDescriptor)) {
            CharSequenceListSerializer charSequenceListSerializer = CharSequenceListSerializer.INSTANCE;
            obj.getClass();
            charSequenceListSerializer.serialize((SQLite) this, (List) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.parcelableArrayDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicParcelableArrayDescriptor)) {
            SerialDescriptorImpl serialDescriptorImpl3 = ParcelableArraySerializer.descriptor;
            obj.getClass();
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            parcelableArr.getClass();
            if (!(this instanceof SavedStateEncoder)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.encoderErrorMessage(ParcelableArraySerializer.descriptor.serialName, this));
                return;
            }
            String str3 = this.key;
            str3.getClass();
            this.savedState.putParcelableArray(str3, parcelableArr);
            return;
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.parcelableListDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicParcelableListDescriptor)) {
            ParcelableListSerializer parcelableListSerializer = ParcelableListSerializer.INSTANCE;
            obj.getClass();
            parcelableListSerializer.serialize((SQLite) this, (List) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.sparseParcelableArrayDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.polymorphicSparseParcelableArrayDescriptor) || Intrinsics.areEqual(descriptor, SavedStateCodecUtils_androidKt.nullablePolymorphicSparseParcelableArrayDescriptor)) {
            SparseParcelableArraySerializer sparseParcelableArraySerializer = SparseParcelableArraySerializer.INSTANCE;
            obj.getClass();
            sparseParcelableArraySerializer.serialize((Encoder) this, (SparseArray) obj);
            return;
        }
        SerialDescriptor descriptor2 = kSerializer.getDescriptor();
        boolean areEqual = Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.intListDescriptor);
        Bundle bundle = this.savedState;
        if (areEqual) {
            String str4 = this.key;
            obj.getClass();
            str4.getClass();
            bundle.putIntegerArrayList(str4, OperationKt.toArrayListUnsafe((List) obj));
            return;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.stringListDescriptor)) {
            String str5 = this.key;
            obj.getClass();
            str5.getClass();
            bundle.putStringArrayList(str5, OperationKt.toArrayListUnsafe((List) obj));
            return;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.booleanArrayDescriptor)) {
            String str6 = this.key;
            obj.getClass();
            str6.getClass();
            bundle.putBooleanArray(str6, (boolean[]) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.charArrayDescriptor)) {
            String str7 = this.key;
            obj.getClass();
            str7.getClass();
            bundle.putCharArray(str7, (char[]) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.doubleArrayDescriptor)) {
            String str8 = this.key;
            obj.getClass();
            str8.getClass();
            bundle.putDoubleArray(str8, (double[]) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.floatArrayDescriptor)) {
            String str9 = this.key;
            obj.getClass();
            str9.getClass();
            bundle.putFloatArray(str9, (float[]) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.intArrayDescriptor)) {
            String str10 = this.key;
            obj.getClass();
            str10.getClass();
            bundle.putIntArray(str10, (int[]) obj);
            return;
        }
        if (Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.longArrayDescriptor)) {
            String str11 = this.key;
            obj.getClass();
            str11.getClass();
            bundle.putLongArray(str11, (long[]) obj);
            return;
        }
        if (!Intrinsics.areEqual(descriptor2, SavedStateCodecUtilsKt.stringArrayDescriptor)) {
            kSerializer.serialize(this, obj);
            return;
        }
        String str12 = this.key;
        obj.getClass();
        str12.getClass();
        bundle.putStringArray(str12, (String[]) obj);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeShort(short s) {
        String str = this.key;
        str.getClass();
        this.savedState.putInt(str, s);
    }

    @Override // androidx.sqlite.SQLite, kotlinx.serialization.encoding.Encoder
    public final void encodeString(String str) {
        str.getClass();
        String str2 = this.key;
        str2.getClass();
        this.savedState.putString(str2, str);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final ComponentRegistry.Builder getSerializersModule() {
        return this.configuration.serializersModule;
    }

    @Override // androidx.sqlite.SQLite
    public final boolean shouldEncodeElementDefault(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        this.configuration.getClass();
        return false;
    }
}
