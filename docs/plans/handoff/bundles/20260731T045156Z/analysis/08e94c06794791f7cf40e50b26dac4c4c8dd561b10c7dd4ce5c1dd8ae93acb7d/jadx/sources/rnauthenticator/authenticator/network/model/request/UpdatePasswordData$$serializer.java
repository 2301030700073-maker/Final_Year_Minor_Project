package rnauthenticator.authenticator.network.model.request;

import androidx.autofill.HintConstants;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: UpdatePasswordData.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"rnauthenticator/authenticator/network/model/request/UpdatePasswordData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
/* loaded from: classes3.dex */
public /* synthetic */ class UpdatePasswordData$$serializer implements GeneratedSerializer<UpdatePasswordData> {
    public static final UpdatePasswordData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private UpdatePasswordData$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        UpdatePasswordData$$serializer updatePasswordData$$serializer = new UpdatePasswordData$$serializer();
        INSTANCE = updatePasswordData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("rnauthenticator.authenticator.network.model.request.UpdatePasswordData", updatePasswordData$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement(HintConstants.AUTOFILL_HINT_NEW_PASSWORD, false);
        pluginGeneratedSerialDescriptor.addElement("redirectUrl", false);
        pluginGeneratedSerialDescriptor.addElement("clientId", false);
        pluginGeneratedSerialDescriptor.addElement("locale", false);
        pluginGeneratedSerialDescriptor.addElement("responseType", false);
        pluginGeneratedSerialDescriptor.addElement("token", false);
        pluginGeneratedSerialDescriptor.addElement("clientType", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE, StringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final UpdatePasswordData deserialize(Decoder decoder) {
        String str;
        String str2;
        String str3;
        int i;
        String str4;
        String str5;
        String str6;
        String str7;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(serialDescriptor, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(serialDescriptor, 1);
            String decodeStringElement3 = beginStructure.decodeStringElement(serialDescriptor, 2);
            String decodeStringElement4 = beginStructure.decodeStringElement(serialDescriptor, 3);
            String decodeStringElement5 = beginStructure.decodeStringElement(serialDescriptor, 4);
            String decodeStringElement6 = beginStructure.decodeStringElement(serialDescriptor, 5);
            str7 = decodeStringElement;
            str2 = beginStructure.decodeStringElement(serialDescriptor, 6);
            str3 = decodeStringElement6;
            str6 = decodeStringElement4;
            str4 = decodeStringElement5;
            str = decodeStringElement3;
            str5 = decodeStringElement2;
            i = 127;
        } else {
            String str8 = null;
            String str9 = null;
            String str10 = null;
            String str11 = null;
            String str12 = null;
            str = null;
            String str13 = null;
            boolean z = true;
            int i2 = 0;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        continue;
                    case 0:
                        str8 = beginStructure.decodeStringElement(serialDescriptor, 0);
                        i2 |= 1;
                        continue;
                    case 1:
                        str13 = beginStructure.decodeStringElement(serialDescriptor, 1);
                        i2 |= 2;
                        break;
                    case 2:
                        str = beginStructure.decodeStringElement(serialDescriptor, 2);
                        i2 |= 4;
                        break;
                    case 3:
                        str11 = beginStructure.decodeStringElement(serialDescriptor, 3);
                        i2 |= 8;
                        break;
                    case 4:
                        str12 = beginStructure.decodeStringElement(serialDescriptor, 4);
                        i2 |= 16;
                        break;
                    case 5:
                        str10 = beginStructure.decodeStringElement(serialDescriptor, 5);
                        i2 |= 32;
                        break;
                    case 6:
                        str9 = beginStructure.decodeStringElement(serialDescriptor, 6);
                        i2 |= 64;
                        break;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            str2 = str9;
            str3 = str10;
            i = i2;
            str4 = str12;
            str5 = str13;
            str6 = str11;
            str7 = str8;
        }
        beginStructure.endStructure(serialDescriptor);
        return new UpdatePasswordData(i, str7, str5, str, str6, str4, str3, str2, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, UpdatePasswordData value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor);
        UpdatePasswordData.write$Self$propertyguru_react_native_authenticator_release(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
