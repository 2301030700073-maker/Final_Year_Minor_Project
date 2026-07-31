package org.wikimedia.testkitchen.context;

import j$.time.Instant;
import java.util.Collection;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PerformerData$$serializer implements GeneratedSerializer {
    public static final PerformerData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        PerformerData$$serializer performerData$$serializer = new PerformerData$$serializer();
        INSTANCE = performerData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.context.PerformerData", performerData$$serializer, 10);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("name", true);
        pluginGeneratedSerialDescriptor.addElement("is_logged_in", true);
        pluginGeneratedSerialDescriptor.addElement("is_temp", true);
        pluginGeneratedSerialDescriptor.addElement("session_id", true);
        pluginGeneratedSerialDescriptor.addElement("pageview_id", true);
        pluginGeneratedSerialDescriptor.addElement("groups", true);
        pluginGeneratedSerialDescriptor.addElement("language_groups", true);
        pluginGeneratedSerialDescriptor.addElement("language_primary", true);
        pluginGeneratedSerialDescriptor.addElement("registration_dt", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = PerformerData.$childSerializers;
        KSerializer nullable = UnsignedKt.getNullable(IntSerializer.INSTANCE);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer nullable2 = UnsignedKt.getNullable(stringSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, UnsignedKt.getNullable(booleanSerializer), UnsignedKt.getNullable(booleanSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable((KSerializer) lazyArr[6].getValue()), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(InstantSerializer.INSTANCE)};
    }

    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [j$.time.Instant, java.lang.Boolean, java.lang.String, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r1v5 */
    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        ?? r1;
        Lazy[] lazyArr;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr2 = PerformerData.$childSerializers;
        Instant instant = null;
        String str = null;
        boolean z = true;
        int i = 0;
        Integer num = null;
        String str2 = null;
        Boolean bool = null;
        Boolean bool2 = null;
        String str3 = null;
        String str4 = null;
        Collection collection = null;
        String str5 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    lazyArr = lazyArr2;
                    num = (Integer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, IntSerializer.INSTANCE, num);
                    i |= 1;
                    break;
                case 1:
                    lazyArr = lazyArr2;
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str2);
                    i |= 2;
                    break;
                case 2:
                    lazyArr = lazyArr2;
                    bool = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, BooleanSerializer.INSTANCE, bool);
                    i |= 4;
                    break;
                case 3:
                    lazyArr = lazyArr2;
                    bool2 = (Boolean) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, BooleanSerializer.INSTANCE, bool2);
                    i |= 8;
                    break;
                case 4:
                    lazyArr = lazyArr2;
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str3);
                    i |= 16;
                    break;
                case 5:
                    lazyArr = lazyArr2;
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str4);
                    i |= 32;
                    break;
                case 6:
                    lazyArr = lazyArr2;
                    collection = (Collection) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), collection);
                    i |= 64;
                    break;
                case 7:
                    lazyArr = lazyArr2;
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str5);
                    i |= 128;
                    break;
                case 8:
                    lazyArr = lazyArr2;
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str);
                    i |= 256;
                    break;
                case 9:
                    lazyArr = lazyArr2;
                    instant = (Instant) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, InstantSerializer.INSTANCE, instant);
                    i |= 512;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
            lazyArr2 = lazyArr;
        }
        beginStructure.endStructure(serialDescriptor);
        PerformerData performerData = new PerformerData();
        if ((i & 1) == 0) {
            r1 = 0;
            performerData.id = null;
        } else {
            r1 = 0;
            performerData.id = num;
        }
        if ((i & 2) == 0) {
            performerData.name = r1;
        } else {
            performerData.name = str2;
        }
        if ((i & 4) == 0) {
            performerData.isLoggedIn = r1;
        } else {
            performerData.isLoggedIn = bool;
        }
        if ((i & 8) == 0) {
            performerData.isTemp = r1;
        } else {
            performerData.isTemp = bool2;
        }
        if ((i & 16) == 0) {
            performerData.sessionId = r1;
        } else {
            performerData.sessionId = str3;
        }
        if ((i & 32) == 0) {
            performerData.pageviewId = r1;
        } else {
            performerData.pageviewId = str4;
        }
        if ((i & 64) == 0) {
            performerData.groups = r1;
        } else {
            performerData.groups = collection;
        }
        if ((i & 128) == 0) {
            performerData.languageGroups = r1;
        } else {
            performerData.languageGroups = str5;
        }
        if ((i & 256) == 0) {
            performerData.languagePrimary = r1;
        } else {
            performerData.languagePrimary = str;
        }
        if ((i & 512) == 0) {
            performerData.registrationDt = r1;
            return performerData;
        }
        performerData.registrationDt = instant;
        return performerData;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        PerformerData performerData = (PerformerData) obj;
        performerData.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = PerformerData.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.id != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, IntSerializer.INSTANCE, performerData.id);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.name != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, performerData.name);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.isLoggedIn != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, BooleanSerializer.INSTANCE, performerData.isLoggedIn);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.isTemp != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, BooleanSerializer.INSTANCE, performerData.isTemp);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.sessionId != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, performerData.sessionId);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.pageviewId != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, performerData.pageviewId);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.groups != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), performerData.groups);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.languageGroups != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, performerData.languageGroups);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.languagePrimary != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, performerData.languagePrimary);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || performerData.registrationDt != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 9, InstantSerializer.INSTANCE, performerData.registrationDt);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
