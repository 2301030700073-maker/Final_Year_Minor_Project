package org.wikipedia.readinglist.sync;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SyncedReadingLists$$serializer implements GeneratedSerializer {
    public static final SyncedReadingLists$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SyncedReadingLists$$serializer syncedReadingLists$$serializer = new SyncedReadingLists$$serializer();
        INSTANCE = syncedReadingLists$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.readinglist.sync.SyncedReadingLists", syncedReadingLists$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("lists", true);
        pluginGeneratedSerialDescriptor.addElement("entries", true);
        pluginGeneratedSerialDescriptor.addElement("next", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = SyncedReadingLists.$childSerializers;
        return new KSerializer[]{UnsignedKt.getNullable((KSerializer) lazyArr[0].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[1].getValue()), UnsignedKt.getNullable(StringSerializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SyncedReadingLists.$childSerializers;
        boolean z = true;
        int i = 0;
        List list = null;
        List list2 = null;
        String str = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                list2 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), list2);
                i |= 2;
            } else {
                if (decodeElementIndex != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str);
                i |= 4;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SyncedReadingLists(i, str, list, list2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        SyncedReadingLists syncedReadingLists = (SyncedReadingLists) obj;
        syncedReadingLists.getClass();
        String str = syncedReadingLists.continueStr;
        List list = syncedReadingLists.entries;
        List list2 = syncedReadingLists.lists;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SyncedReadingLists.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
