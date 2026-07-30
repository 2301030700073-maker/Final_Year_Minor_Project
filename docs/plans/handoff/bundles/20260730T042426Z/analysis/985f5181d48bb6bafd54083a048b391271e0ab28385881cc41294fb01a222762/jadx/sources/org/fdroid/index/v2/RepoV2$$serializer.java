package org.fdroid.index.v2;

import ch.qos.logback.core.joran.action.Action;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
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
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: IndexV2.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"org/fdroid/index/v2/RepoV2.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lorg/fdroid/index/v2/RepoV2;", "<init>", "()V", "childSerializers", "", "Lkotlinx/serialization/KSerializer;", "()[Lkotlinx/serialization/KSerializer;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", Action.VALUE_ATTRIBUTE, "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "index_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated
/* loaded from: classes2.dex */
public /* synthetic */ class RepoV2$$serializer implements GeneratedSerializer {
    public static final RepoV2$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private RepoV2$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        RepoV2$$serializer repoV2$$serializer = new RepoV2$$serializer();
        INSTANCE = repoV2$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.fdroid.index.v2.RepoV2", repoV2$$serializer, 10);
        pluginGeneratedSerialDescriptor.addElement("name", true);
        pluginGeneratedSerialDescriptor.addElement("icon", true);
        pluginGeneratedSerialDescriptor.addElement("address", false);
        pluginGeneratedSerialDescriptor.addElement("webBaseUrl", true);
        pluginGeneratedSerialDescriptor.addElement("description", true);
        pluginGeneratedSerialDescriptor.addElement("mirrors", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", false);
        pluginGeneratedSerialDescriptor.addElement("antiFeatures", true);
        pluginGeneratedSerialDescriptor.addElement("categories", true);
        pluginGeneratedSerialDescriptor.addElement("releaseChannels", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer[] kSerializerArr;
        kSerializerArr = RepoV2.$childSerializers;
        KSerializer kSerializer = kSerializerArr[0];
        KSerializer kSerializer2 = kSerializerArr[1];
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        return new KSerializer[]{kSerializer, kSerializer2, stringSerializer, BuiltinSerializersKt.getNullable(stringSerializer), kSerializerArr[4], kSerializerArr[5], LongSerializer.INSTANCE, kSerializerArr[7], kSerializerArr[8], kSerializerArr[9]};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final RepoV2 deserialize(Decoder decoder) {
        KSerializer[] kSerializerArr;
        int i;
        Map map;
        List list;
        Map map2;
        Map map3;
        Map map4;
        String str;
        Map map5;
        Map map6;
        String str2;
        long j;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        kSerializerArr = RepoV2.$childSerializers;
        int i2 = 9;
        Map map7 = null;
        if (beginStructure.decodeSequentially()) {
            Map map8 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], null);
            Map map9 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], null);
            String decodeStringElement = beginStructure.decodeStringElement(serialDescriptor, 2);
            String str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, null);
            Map map10 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], null);
            List list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], null);
            long decodeLongElement = beginStructure.decodeLongElement(serialDescriptor, 6);
            Map map11 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 7, kSerializerArr[7], null);
            Map map12 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 8, kSerializerArr[8], null);
            map2 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 9, kSerializerArr[9], null);
            map5 = map8;
            map = map11;
            str = str3;
            str2 = decodeStringElement;
            i = 1023;
            map3 = map12;
            list = list2;
            map4 = map10;
            map6 = map9;
            j = decodeLongElement;
        } else {
            boolean z = true;
            int i3 = 0;
            Map map13 = null;
            List list3 = null;
            Map map14 = null;
            Map map15 = null;
            Map map16 = null;
            String str4 = null;
            long j2 = 0;
            Map map17 = null;
            String str5 = null;
            while (z) {
                int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
                switch (decodeElementIndex) {
                    case -1:
                        z = false;
                        i2 = 9;
                    case 0:
                        map7 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], map7);
                        i3 |= 1;
                        i2 = 9;
                    case 1:
                        map17 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], map17);
                        i3 |= 2;
                        i2 = 9;
                    case 2:
                        str5 = beginStructure.decodeStringElement(serialDescriptor, 2);
                        i3 |= 4;
                        i2 = 9;
                    case 3:
                        str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str4);
                        i3 |= 8;
                        i2 = 9;
                    case 4:
                        map16 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], map16);
                        i3 |= 16;
                        i2 = 9;
                    case 5:
                        list3 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], list3);
                        i3 |= 32;
                        i2 = 9;
                    case 6:
                        j2 = beginStructure.decodeLongElement(serialDescriptor, 6);
                        i3 |= 64;
                    case 7:
                        map13 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 7, kSerializerArr[7], map13);
                        i3 |= 128;
                    case 8:
                        map15 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 8, kSerializerArr[8], map15);
                        i3 |= 256;
                    case 9:
                        map14 = (Map) beginStructure.decodeSerializableElement(serialDescriptor, i2, kSerializerArr[i2], map14);
                        i3 |= 512;
                    default:
                        throw new UnknownFieldException(decodeElementIndex);
                }
            }
            i = i3;
            map = map13;
            list = list3;
            map2 = map14;
            map3 = map15;
            map4 = map16;
            str = str4;
            map5 = map7;
            map6 = map17;
            str2 = str5;
            j = j2;
        }
        beginStructure.endStructure(serialDescriptor);
        return new RepoV2(i, map5, map6, str2, str, map4, list, j, map, map3, map2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, RepoV2 value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder beginStructure = encoder.beginStructure(serialDescriptor);
        RepoV2.write$Self$index_release(value, beginStructure, serialDescriptor);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
