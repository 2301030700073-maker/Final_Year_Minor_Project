package org.wikipedia.readinglist.sync;

import j$.time.LocalDateTime;
import kotlin.UnsignedKt;
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
public final /* synthetic */ class SyncedReadingLists$RemoteReadingList$$serializer implements GeneratedSerializer {
    public static final SyncedReadingLists$RemoteReadingList$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SyncedReadingLists$RemoteReadingList$$serializer syncedReadingLists$RemoteReadingList$$serializer = new SyncedReadingLists$RemoteReadingList$$serializer();
        INSTANCE = syncedReadingLists$RemoteReadingList$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.readinglist.sync.SyncedReadingLists.RemoteReadingList", syncedReadingLists$RemoteReadingList$$serializer, 7);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("default", true);
        pluginGeneratedSerialDescriptor.addElement("name", false);
        pluginGeneratedSerialDescriptor.addElement("description", true);
        pluginGeneratedSerialDescriptor.addElement("deleted", true);
        pluginGeneratedSerialDescriptor.addElement("created", true);
        pluginGeneratedSerialDescriptor.addElement("updated", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer nullable = UnsignedKt.getNullable(stringSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        LocalDateTimeSerializer localDateTimeSerializer = LocalDateTimeSerializer.INSTANCE;
        return new KSerializer[]{LongSerializer.INSTANCE, booleanSerializer, stringSerializer, nullable, booleanSerializer, localDateTimeSerializer, localDateTimeSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Object obj = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        long j = 0;
        LocalDateTime localDateTime = null;
        String str = null;
        String str2 = null;
        LocalDateTime localDateTime2 = null;
        boolean z3 = true;
        while (z3) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z3 = false;
                    continue;
                case 0:
                    j = beginStructure.decodeLongElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str2);
                    i |= 8;
                    break;
                case 4:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    localDateTime2 = (LocalDateTime) beginStructure.decodeSerializableElement(serialDescriptor, 5, LocalDateTimeSerializer.INSTANCE, localDateTime2);
                    i |= 32;
                    break;
                case 6:
                    localDateTime = (LocalDateTime) beginStructure.decodeSerializableElement(serialDescriptor, 6, LocalDateTimeSerializer.INSTANCE, localDateTime);
                    i |= 64;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new SyncedReadingLists.RemoteReadingList(i, j, z, str, str2, z2, localDateTime2, localDateTime);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0069, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, r5) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0083, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r0, r5) == false) goto L34;
     */
    @Override // kotlinx.serialization.KSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(kotlin.uuid.UuidKt r6, java.lang.Object r7) {
        /*
            r5 = this;
            org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingList r7 = (org.wikipedia.readinglist.sync.SyncedReadingLists.RemoteReadingList) r7
            r7.getClass()
            boolean r5 = r7.isDefault
            long r0 = r7.id
            kotlinx.serialization.descriptors.SerialDescriptor r2 = org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingList$$serializer.descriptor
            kotlin.uuid.UuidKt r6 = r6.beginStructure(r2)
            boolean r3 = r6.shouldEncodeElementDefault(r2)
            if (r3 == 0) goto L16
            goto L1c
        L16:
            r3 = 0
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 == 0) goto L20
        L1c:
            r3 = 0
            r6.encodeLongElement(r2, r3, r0)
        L20:
            boolean r0 = r6.shouldEncodeElementDefault(r2)
            if (r0 == 0) goto L27
            goto L29
        L27:
            if (r5 == 0) goto L2d
        L29:
            r0 = 1
            r6.encodeBooleanElement(r2, r0, r5)
        L2d:
            java.lang.String r5 = r7.name
            j$.time.LocalDateTime r0 = r7.updated
            j$.time.LocalDateTime r1 = r7.created
            boolean r3 = r7.isDeleted
            java.lang.String r7 = r7.description
            r4 = 2
            r6.encodeStringElement(r2, r4, r5)
            boolean r5 = r6.shouldEncodeElementDefault(r2)
            if (r5 == 0) goto L42
            goto L44
        L42:
            if (r7 == 0) goto L4a
        L44:
            kotlinx.serialization.internal.StringSerializer r5 = kotlinx.serialization.internal.StringSerializer.INSTANCE
            r4 = 3
            r6.encodeNullableSerializableElement(r2, r4, r5, r7)
        L4a:
            boolean r5 = r6.shouldEncodeElementDefault(r2)
            if (r5 == 0) goto L51
            goto L53
        L51:
            if (r3 == 0) goto L57
        L53:
            r5 = 4
            r6.encodeBooleanElement(r2, r5, r3)
        L57:
            boolean r5 = r6.shouldEncodeElementDefault(r2)
            if (r5 == 0) goto L5e
            goto L6b
        L5e:
            j$.time.LocalDateTime r5 = j$.time.LocalDateTime.now()
            r5.getClass()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r5)
            if (r5 != 0) goto L71
        L6b:
            org.wikipedia.json.LocalDateTimeSerializer r5 = org.wikipedia.json.LocalDateTimeSerializer.INSTANCE
            r7 = 5
            r6.encodeSerializableElement(r2, r7, r5, r1)
        L71:
            boolean r5 = r6.shouldEncodeElementDefault(r2)
            if (r5 == 0) goto L78
            goto L85
        L78:
            j$.time.LocalDateTime r5 = j$.time.LocalDateTime.now()
            r5.getClass()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r5)
            if (r5 != 0) goto L8b
        L85:
            org.wikipedia.json.LocalDateTimeSerializer r5 = org.wikipedia.json.LocalDateTimeSerializer.INSTANCE
            r7 = 6
            r6.encodeSerializableElement(r2, r7, r5, r0)
        L8b:
            r6.endStructure(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.sync.SyncedReadingLists$RemoteReadingList$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
