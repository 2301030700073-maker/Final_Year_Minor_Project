package org.wikipedia.login;

import java.util.Set;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.WikiSite$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LoginResult$$serializer implements GeneratedSerializer {
    public static final LoginResult$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        LoginResult$$serializer loginResult$$serializer = new LoginResult$$serializer();
        INSTANCE = loginResult$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.login.LoginResult", loginResult$$serializer, 8);
        pluginGeneratedSerialDescriptor.addElement("site", false);
        pluginGeneratedSerialDescriptor.addElement("status", false);
        pluginGeneratedSerialDescriptor.addElement("userName", false);
        pluginGeneratedSerialDescriptor.addElement("password", false);
        pluginGeneratedSerialDescriptor.addElement("message", false);
        pluginGeneratedSerialDescriptor.addElement("userId", true);
        pluginGeneratedSerialDescriptor.addElement("groups", true);
        pluginGeneratedSerialDescriptor.addElement("messageCode", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = LoginResult.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{WikiSite$$serializer.INSTANCE, stringSerializer, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), IntSerializer.INSTANCE, lazyArr[6].getValue(), UnsignedKt.getNullable(stringSerializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = LoginResult.$childSerializers;
        Object obj = null;
        boolean z = true;
        String str = null;
        WikiSite wikiSite = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        Set set = null;
        int i = 0;
        int i2 = 0;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    wikiSite = (WikiSite) beginStructure.decodeSerializableElement(serialDescriptor, 0, WikiSite$$serializer.INSTANCE, wikiSite);
                    i |= 1;
                    break;
                case 1:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str3);
                    i |= 4;
                    break;
                case 3:
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str4);
                    i |= 8;
                    break;
                case 4:
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str5);
                    i |= 16;
                    break;
                case 5:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    set = (Set) beginStructure.decodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), set);
                    i |= 64;
                    break;
                case 7:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str);
                    i |= 128;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new LoginResult(i, wikiSite, str2, str3, str4, str5, i2, set, str);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        LoginResult loginResult = (LoginResult) obj;
        loginResult.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = LoginResult.$childSerializers;
        WikiSite$$serializer wikiSite$$serializer = WikiSite$$serializer.INSTANCE;
        WikiSite wikiSite = loginResult.site;
        String str = loginResult.messageCode;
        beginStructure.encodeSerializableElement(serialDescriptor, 0, wikiSite$$serializer, wikiSite);
        beginStructure.encodeStringElement(serialDescriptor, 1, loginResult.status);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, stringSerializer, loginResult.userName);
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, stringSerializer, loginResult.password);
        beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, stringSerializer, loginResult.message);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || loginResult.userId != 0) {
            beginStructure.encodeIntElement(5, loginResult.userId, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(loginResult.groups, EmptySet.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), loginResult.groups);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, stringSerializer, str);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
