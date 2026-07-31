package org.wikipedia.dataclient.wikidata;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
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
import org.wikipedia.dataclient.mwapi.MwPostResponse;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryPage$$serializer;
import org.wikipedia.dataclient.wikidata.Entities;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EntityPostResponse$$serializer implements GeneratedSerializer {
    public static final EntityPostResponse$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        EntityPostResponse$$serializer entityPostResponse$$serializer = new EntityPostResponse$$serializer();
        INSTANCE = entityPostResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.wikidata.EntityPostResponse", entityPostResponse$$serializer, 6);
        pluginGeneratedSerialDescriptor.addElement("errors", true);
        pluginGeneratedSerialDescriptor.addElement("servedby", true);
        pluginGeneratedSerialDescriptor.addElement("pageInfo", true);
        pluginGeneratedSerialDescriptor.addElement("options", true);
        pluginGeneratedSerialDescriptor.addElement("success", true);
        pluginGeneratedSerialDescriptor.addElement("entity", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable((KSerializer) EntityPostResponse.$childSerializers[0].getValue());
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{nullable, UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(MwQueryPage$$serializer.INSTANCE), UnsignedKt.getNullable(stringSerializer), IntSerializer.INSTANCE, UnsignedKt.getNullable(Entities$Entity$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = EntityPostResponse.$childSerializers;
        boolean z = true;
        int i = 0;
        int i2 = 0;
        List list = null;
        String str = null;
        MwQueryPage mwQueryPage = null;
        String str2 = null;
        Entities.Entity entity = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                    i |= 1;
                    break;
                case 1:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, str);
                    i |= 2;
                    break;
                case 2:
                    mwQueryPage = (MwQueryPage) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, MwQueryPage$$serializer.INSTANCE, mwQueryPage);
                    i |= 4;
                    break;
                case 3:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str2);
                    i |= 8;
                    break;
                case 4:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    entity = (Entities.Entity) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, Entities$Entity$$serializer.INSTANCE, entity);
                    i |= 32;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new EntityPostResponse(i, list, str, mwQueryPage, str2, i2, entity);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        EntityPostResponse entityPostResponse = (EntityPostResponse) obj;
        entityPostResponse.getClass();
        Entities.Entity entity = entityPostResponse.entity;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MwPostResponse.write$Self((MwPostResponse) entityPostResponse, beginStructure, serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || entity != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, Entities$Entity$$serializer.INSTANCE, entity);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
