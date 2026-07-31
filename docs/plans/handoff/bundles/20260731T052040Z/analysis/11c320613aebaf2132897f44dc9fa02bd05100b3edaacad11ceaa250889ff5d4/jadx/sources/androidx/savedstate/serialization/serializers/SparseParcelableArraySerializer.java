package androidx.savedstate.serialization.serializers;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.core.os.BundleKt;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import androidx.work.OperationKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.util.ZipHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SparseParcelableArraySerializer implements KSerializer {
    public static final SparseParcelableArraySerializer INSTANCE = new SparseParcelableArraySerializer();
    public static final SerialDescriptorImpl descriptor = OperationKt.buildClassSerialDescriptor$default("android.util.SparseArray<android.os.Parcelable>", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final SparseArray mo469deserialize(Decoder decoder) {
        if (!(decoder instanceof SavedStateDecoder)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.decoderErrorMessage(descriptor.serialName, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.savedState;
        bundle.getClass();
        String str = savedStateDecoder.key;
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Parcelable.class);
        str.getClass();
        SparseArray sparseParcelableArray = Build.VERSION.SDK_INT >= 34 ? ZipHelper.getSparseParcelableArray(bundle, str, OperationKt.getJavaClass(orCreateKotlinClass)) : bundle.getSparseParcelableArray(str);
        if (sparseParcelableArray != null) {
            return sparseParcelableArray;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(Encoder encoder, SparseArray sparseArray) {
        sparseArray.getClass();
        if (!(encoder instanceof SavedStateEncoder)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.encoderErrorMessage(descriptor.serialName, encoder));
            return;
        }
        SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
        Bundle bundle = savedStateEncoder.savedState;
        String str = savedStateEncoder.key;
        str.getClass();
        bundle.putSparseParcelableArray(str, sparseArray);
    }
}
