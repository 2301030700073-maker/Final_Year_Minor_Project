package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.os.BundleKt;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import androidx.sqlite.SQLite;
import androidx.work.OperationKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.encoding.Decoder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultParcelableSerializer implements KSerializer {
    public static final DefaultParcelableSerializer INSTANCE = new DefaultParcelableSerializer();
    public final SerialDescriptorImpl descriptor = OperationKt.buildClassSerialDescriptor$default("android.os.Parcelable", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize */
    public final Parcelable mo469deserialize(Decoder decoder) {
        if (!(decoder instanceof SavedStateDecoder)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.decoderErrorMessage(this.descriptor.serialName, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.savedState;
        bundle.getClass();
        String str = savedStateDecoder.key;
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Parcelable.class);
        str.getClass();
        Parcelable parcelable = (Parcelable) MathKt.getParcelable(bundle, str, OperationKt.getJavaClass(orCreateKotlinClass));
        if (parcelable != null) {
            return parcelable;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(SQLite sQLite, Parcelable parcelable) {
        parcelable.getClass();
        if (!(sQLite instanceof SavedStateEncoder)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.encoderErrorMessage(this.descriptor.serialName, sQLite));
            return;
        }
        SavedStateEncoder savedStateEncoder = (SavedStateEncoder) sQLite;
        Bundle bundle = savedStateEncoder.savedState;
        String str = savedStateEncoder.key;
        str.getClass();
        bundle.putParcelable(str, parcelable);
    }
}
