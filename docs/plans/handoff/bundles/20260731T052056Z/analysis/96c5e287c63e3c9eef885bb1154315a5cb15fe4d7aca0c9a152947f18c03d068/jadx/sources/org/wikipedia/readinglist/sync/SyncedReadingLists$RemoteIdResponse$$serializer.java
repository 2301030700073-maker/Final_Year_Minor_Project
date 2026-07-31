package org.wikipedia.readinglist.sync;

import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.readinglist.sync.SyncedReadingLists;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SyncedReadingLists$RemoteIdResponse$$serializer implements GeneratedSerializer {
    public static final SyncedReadingLists$RemoteIdResponse$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SyncedReadingLists$RemoteIdResponse$$serializer syncedReadingLists$RemoteIdResponse$$serializer = new SyncedReadingLists$RemoteIdResponse$$serializer();
        INSTANCE = syncedReadingLists$RemoteIdResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.readinglist.sync.SyncedReadingLists.RemoteIdResponse", syncedReadingLists$RemoteIdResponse$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{LongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        long j = 0;
        boolean z = true;
        int i = 0;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                j = beginStructure.decodeLongElement(serialDescriptor, 0);
                i = 1;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SyncedReadingLists.RemoteIdResponse(j, i);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        SyncedReadingLists.RemoteIdResponse remoteIdResponse = (SyncedReadingLists.RemoteIdResponse) obj;
        remoteIdResponse.getClass();
        long j = remoteIdResponse.id;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || j != 0) {
            beginStructure.encodeLongElement(serialDescriptor, 0, j);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
