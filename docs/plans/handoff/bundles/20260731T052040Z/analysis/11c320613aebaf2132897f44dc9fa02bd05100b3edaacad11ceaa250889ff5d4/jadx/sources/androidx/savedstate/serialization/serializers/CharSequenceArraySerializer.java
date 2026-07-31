package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.work.OperationKt;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.encoding.Decoder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CharSequenceArraySerializer implements KSerializer {
    public static final SerialDescriptorImpl descriptor = OperationKt.buildClassSerialDescriptor$default("kotlin.Array<kotlin.CharSequence>", new SerialDescriptor[0]);

    public static CharSequence[] deserialize(Decoder decoder) {
        if (!(decoder instanceof SavedStateDecoder)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.decoderErrorMessage(descriptor.serialName, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.savedState;
        bundle.getClass();
        String str = savedStateDecoder.key;
        str.getClass();
        CharSequence[] charSequenceArray = bundle.getCharSequenceArray(str);
        if (charSequenceArray != null) {
            return charSequenceArray;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }
}
