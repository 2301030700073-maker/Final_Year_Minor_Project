package rnauthenticator.authenticator.network.model.request;

import androidx.autofill.HintConstants;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: AuthenticationData.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"rnauthenticator/authenticator/network/model/request/AuthenticationData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lrnauthenticator/authenticator/network/model/request/AuthenticationData;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly")
/* loaded from: classes3.dex */
public /* synthetic */ class AuthenticationData$$serializer implements GeneratedSerializer<AuthenticationData> {
    public static final AuthenticationData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private AuthenticationData$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        AuthenticationData$$serializer authenticationData$$serializer = new AuthenticationData$$serializer();
        INSTANCE = authenticationData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("rnauthenticator.authenticator.network.model.request.AuthenticationData", authenticationData$$serializer, 12);
        pluginGeneratedSerialDescriptor.addElement("codeChallenge", false);
        pluginGeneratedSerialDescriptor.addElement("codeChallengeMethod", false);
        pluginGeneratedSerialDescriptor.addElement("username", false);
        pluginGeneratedSerialDescriptor.addElement(HintConstants.AUTOFILL_HINT_PASSWORD, false);
        pluginGeneratedSerialDescriptor.addElement("socialToken", false);
        pluginGeneratedSerialDescriptor.addElement("grantType", false);
        pluginGeneratedSerialDescriptor.addElement("responseType", false);
        pluginGeneratedSerialDescriptor.addElement("provider", false);
        pluginGeneratedSerialDescriptor.addElement("otpId", false);
        pluginGeneratedSerialDescriptor.addElement("otp", false);
        pluginGeneratedSerialDescriptor.addElement("scope", false);
        pluginGeneratedSerialDescriptor.addElement("redirectUrl", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE, StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), StringSerializer.INSTANCE, StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE), StringSerializer.INSTANCE, BuiltinSerializersKt.getNullable(StringSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final AuthenticationData deserialize(Decoder decoder) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int i;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        char c;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        int i2 = 11;
        int i3 = 10;
        String str13 = null;
        if (beginStructure.decodeSequentially()) {
            String decodeStringElement = beginStructure.decodeStringElement(serialDescriptor, 0);
            String decodeStringElement2 = beginStructure.decodeStringElement(serialDescriptor, 1);
            String str14 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, null);
            String str15 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, null);
            String str16 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, null);
            String decodeStringElement3 = beginStructure.decodeStringElement(serialDescriptor, 5);
            String decodeStringElement4 = beginStructure.decodeStringElement(serialDescriptor, 6);
            String str17 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, null);
            String str18 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, null);
            String str19 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, null);
            String decodeStringElement5 = beginStructure.decodeStringElement(serialDescriptor, 10);
            str10 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 11, StringSerializer.INSTANCE, null);
            str6 = decodeStringElement5;
            str = str19;
            str7 = str17;
            str9 = decodeStringElement4;
            str2 = str18;
            str4 = decodeStringElement2;
            str11 = str16;
            str3 = str14;
            str12 = str15;
            str8 = decodeStringElement;
            str5 = decodeStringElement3;
            i = 4095;
        } else {
            boolean z = true;
            int i4 = 0;
            String str20 = null;
            String str21 = null;
            String str22 = null;
            String str23 = null;
            String str24 = null;
            String str25 = null;
            String str26 = null;
            String str27 = null;
            String str28 = null;
            String str29 = null;
            String str30 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 11;
                    case 0:
                        i4 |= 1;
                        str13 = beginStructure.decodeStringElement(serialDescriptor, 0);
                        i2 = 11;
                        i3 = 10;
                    case 1:
                        str27 = beginStructure.decodeStringElement(serialDescriptor, 1);
                        i4 |= 2;
                        i2 = 11;
                        i3 = 10;
                    case 2:
                        str26 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str26);
                        i4 |= 4;
                        i2 = 11;
                        i3 = 10;
                    case 3:
                        str25 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str25);
                        i4 |= 8;
                        i2 = 11;
                        i3 = 10;
                    case 4:
                        str24 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str24);
                        i4 |= 16;
                        i2 = 11;
                        i3 = 10;
                    case 5:
                        str28 = beginStructure.decodeStringElement(serialDescriptor, 5);
                        i4 |= 32;
                        i2 = 11;
                    case 6:
                        c = 7;
                        str29 = beginStructure.decodeStringElement(serialDescriptor, 6);
                        i4 |= 64;
                        i2 = 11;
                    case 7:
                        c = 7;
                        str22 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str22);
                        i4 |= 128;
                        i2 = 11;
                    case 8:
                        str23 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str23);
                        i4 |= 256;
                    case 9:
                        str21 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, str21);
                        i4 |= 512;
                    case 10:
                        str30 = beginStructure.decodeStringElement(serialDescriptor, i3);
                        i4 |= 1024;
                    case 11:
                        str20 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, i2, StringSerializer.INSTANCE, str20);
                        i4 |= 2048;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            str = str21;
            str2 = str23;
            str3 = str26;
            str4 = str27;
            str5 = str28;
            str6 = str30;
            i = i4;
            str7 = str22;
            str8 = str13;
            str9 = str29;
            str10 = str20;
            String str31 = str25;
            str11 = str24;
            str12 = str31;
        }
        beginStructure.endStructure(serialDescriptor);
        return new AuthenticationData(i, str8, str4, str3, str12, str11, str5, str9, str7, str2, str, str6, str10, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, AuthenticationData value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor);
        AuthenticationData.write$Self$propertyguru_react_native_authenticator_release(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
