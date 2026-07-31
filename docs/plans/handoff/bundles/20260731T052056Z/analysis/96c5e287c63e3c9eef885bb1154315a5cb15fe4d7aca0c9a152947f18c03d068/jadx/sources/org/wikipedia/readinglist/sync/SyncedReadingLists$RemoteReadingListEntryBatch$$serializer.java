package org.wikipedia.readinglist.sync;

import java.util.List;
import kotlin.Lazy;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.readinglist.sync.SyncedReadingLists;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SyncedReadingLists$RemoteReadingListEntryBatch$$serializer implements GeneratedSerializer {
    public static final SyncedReadingLists$RemoteReadingListEntryBatch$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SyncedReadingLists$RemoteReadingListEntryBatch$$serializer syncedReadingLists$RemoteReadingListEntryBatch$$serializer = new SyncedReadingLists$RemoteReadingListEntryBatch$$serializer();
        INSTANCE = syncedReadingLists$RemoteReadingListEntryBatch$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.readinglist.sync.SyncedReadingLists.RemoteReadingListEntryBatch", syncedReadingLists$RemoteReadingListEntryBatch$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("batch", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{SyncedReadingLists.RemoteReadingListEntryBatch.$childSerializers[0].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SyncedReadingLists.RemoteReadingListEntryBatch.$childSerializers;
        boolean z = true;
        int i = 0;
        List list = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else {
                if (decodeElementIndex != 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
                }
                list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), list);
                i = 1;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SyncedReadingLists.RemoteReadingListEntryBatch(list, i);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        SyncedReadingLists.RemoteReadingListEntryBatch remoteReadingListEntryBatch = (SyncedReadingLists.RemoteReadingListEntryBatch) obj;
        remoteReadingListEntryBatch.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 0, (KSerializer) SyncedReadingLists.RemoteReadingListEntryBatch.$childSerializers[0].getValue(), remoteReadingListEntryBatch.batch);
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
