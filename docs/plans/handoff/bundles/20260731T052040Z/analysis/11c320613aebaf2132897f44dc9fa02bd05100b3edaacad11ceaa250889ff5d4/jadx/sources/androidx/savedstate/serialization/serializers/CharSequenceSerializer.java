package androidx.savedstate.serialization.serializers;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import androidx.sqlite.SQLite;
import androidx.work.OperationKt;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CharSequenceSerializer implements KSerializer {
    public static final CharSequenceSerializer INSTANCE = new CharSequenceSerializer();
    public static final SerialDescriptorImpl descriptor = OperationKt.buildClassSerialDescriptor$default("kotlin.CharSequence", new SerialDescriptor[0]);

    public static CharSequence deserialize(Decoder decoder) {
        if (!(decoder instanceof SavedStateDecoder)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.decoderErrorMessage(descriptor.serialName, decoder));
            return null;
        }
        SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
        Bundle bundle = savedStateDecoder.savedState;
        bundle.getClass();
        String str = savedStateDecoder.key;
        str.getClass();
        CharSequence charSequence = bundle.getCharSequence(str);
        if (charSequence != null) {
            return charSequence;
        }
        BundleKt.keyOrValueNotFoundError(str);
        throw null;
    }

    public static void serialize(SQLite sQLite, CharSequence charSequence) {
        charSequence.getClass();
        if (!(sQLite instanceof SavedStateEncoder)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) RangesKt.encoderErrorMessage(descriptor.serialName, sQLite));
            return;
        }
        SavedStateEncoder savedStateEncoder = (SavedStateEncoder) sQLite;
        Bundle bundle = savedStateEncoder.savedState;
        String str = savedStateEncoder.key;
        str.getClass();
        bundle.putCharSequence(str, charSequence);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        serialize((SQLite) encoder, (CharSequence) obj);
    }

    @Override // kotlinx.serialization.KSerializer
    /* renamed from: deserialize, reason: collision with other method in class */
    public final /* bridge */ /* synthetic */ Object mo469deserialize(Decoder decoder) {
        return deserialize(decoder);
    }
}
