package org.wikipedia.readinglist.sync;

import j$.time.LocalDateTime;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.json.LocalDateTimeSerializer;
import org.wikipedia.readinglist.sync.SyncedReadingLists;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SyncedReadingLists$RemoteReadingListEntry$$serializer implements GeneratedSerializer {
    public static final SyncedReadingLists$RemoteReadingListEntry$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SyncedReadingLists$RemoteReadingListEntry$$serializer syncedReadingLists$RemoteReadingListEntry$$serializer = new SyncedReadingLists$RemoteReadingListEntry$$serializer();
        INSTANCE = syncedReadingLists$RemoteReadingListEntry$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.readinglist.sync.SyncedReadingLists.RemoteReadingListEntry", syncedReadingLists$RemoteReadingListEntry$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("listId", true);
        pluginGeneratedSerialDescriptor.addElement("project", false);
        pluginGeneratedSerialDescriptor.addElement("title", false);
        pluginGeneratedSerialDescriptor.addElement("deleted", true);
        pluginGeneratedSerialDescriptor.addElement("created", true);
        pluginGeneratedSerialDescriptor.addElement("updated", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        LocalDateTimeSerializer localDateTimeSerializer = LocalDateTimeSerializer.INSTANCE;
        return new KSerializer[]{longSerializer, longSerializer, stringSerializer, stringSerializer, BooleanSerializer.INSTANCE, localDateTimeSerializer, localDateTimeSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Object obj = null;
        long j = 0;
        long j2 = 0;
        LocalDateTime localDateTime = null;
        LocalDateTime localDateTime2 = null;
        String str = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        while (z2) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z2 = false;
                    continue;
                case 0:
                    j = beginStructure.decodeLongElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    localDateTime = (LocalDateTime) beginStructure.decodeSerializableElement(serialDescriptor, 5, LocalDateTimeSerializer.INSTANCE, localDateTime);
                    i |= 32;
                    break;
                case 6:
                    localDateTime2 = (LocalDateTime) beginStructure.decodeSerializableElement(serialDescriptor, 6, LocalDateTimeSerializer.INSTANCE, localDateTime2);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new SyncedReadingLists.RemoteReadingListEntry(i, j, j2, str, str2, z, localDateTime, localDateTime2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0060, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r2, r9) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007a, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, r9) == false) goto L30;
     */
    @Override // kotlinx.serialization.KSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(kotlin.uuid.UuidKt r8, java.lang.Object r9) {
        /*
            r7 = this;
            org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingListEntry r9 = (org.wikipedia.readinglist.sync.SyncedReadingLists.RemoteReadingListEntry) r9
            r9.getClass()
            long r0 = r9.listId
            long r2 = r9.id
            kotlinx.serialization.descriptors.SerialDescriptor r7 = org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingListEntry$$serializer.descriptor
            kotlin.uuid.UuidKt r8 = r8.beginStructure(r7)
            boolean r4 = r8.shouldEncodeElementDefault(r7)
            r5 = -1
            if (r4 == 0) goto L18
            goto L1c
        L18:
            int r4 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r4 == 0) goto L20
        L1c:
            r4 = 0
            r8.encodeLongElement(r7, r4, r2)
        L20:
            boolean r2 = r8.shouldEncodeElementDefault(r7)
            if (r2 == 0) goto L27
            goto L2b
        L27:
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L2f
        L2b:
            r2 = 1
            r8.encodeLongElement(r7, r2, r0)
        L2f:
            java.lang.String r0 = r9.project
            j$.time.LocalDateTime r1 = r9.updated
            j$.time.LocalDateTime r2 = r9.created
            boolean r3 = r9.isDeleted
            r4 = 2
            r8.encodeStringElement(r7, r4, r0)
            r0 = 3
            java.lang.String r9 = r9.title
            r8.encodeStringElement(r7, r0, r9)
            boolean r9 = r8.shouldEncodeElementDefault(r7)
            if (r9 == 0) goto L48
            goto L4a
        L48:
            if (r3 == 0) goto L4e
        L4a:
            r9 = 4
            r8.encodeBooleanElement(r7, r9, r3)
        L4e:
            boolean r9 = r8.shouldEncodeElementDefault(r7)
            if (r9 == 0) goto L55
            goto L62
        L55:
            j$.time.LocalDateTime r9 = j$.time.LocalDateTime.now()
            r9.getClass()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r9)
            if (r9 != 0) goto L68
        L62:
            org.wikipedia.json.LocalDateTimeSerializer r9 = org.wikipedia.json.LocalDateTimeSerializer.INSTANCE
            r0 = 5
            r8.encodeSerializableElement(r7, r0, r9, r2)
        L68:
            boolean r9 = r8.shouldEncodeElementDefault(r7)
            if (r9 == 0) goto L6f
            goto L7c
        L6f:
            j$.time.LocalDateTime r9 = j$.time.LocalDateTime.now()
            r9.getClass()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r9)
            if (r9 != 0) goto L82
        L7c:
            org.wikipedia.json.LocalDateTimeSerializer r9 = org.wikipedia.json.LocalDateTimeSerializer.INSTANCE
            r0 = 6
            r8.encodeSerializableElement(r7, r0, r9, r1)
        L82:
            r8.endStructure(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingListEntry$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
