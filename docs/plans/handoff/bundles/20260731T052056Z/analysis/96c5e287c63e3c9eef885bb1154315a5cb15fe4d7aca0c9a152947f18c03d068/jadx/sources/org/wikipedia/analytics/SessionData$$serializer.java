package org.wikipedia.analytics;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SessionData$$serializer implements GeneratedSerializer {
    public static final SessionData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SessionData$$serializer sessionData$$serializer = new SessionData$$serializer();
        INSTANCE = sessionData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.analytics.SessionData", sessionData$$serializer, 12);
        pluginGeneratedSerialDescriptor.addElement("total_pages", true);
        pluginGeneratedSerialDescriptor.addElement("page_load_latency_ms", true);
        pluginGeneratedSerialDescriptor.addElement("from_search", true);
        pluginGeneratedSerialDescriptor.addElement("from_random", true);
        pluginGeneratedSerialDescriptor.addElement("from_lang_link", true);
        pluginGeneratedSerialDescriptor.addElement("from_internal", true);
        pluginGeneratedSerialDescriptor.addElement("from_external", true);
        pluginGeneratedSerialDescriptor.addElement("from_history", true);
        pluginGeneratedSerialDescriptor.addElement("from_reading_list", true);
        pluginGeneratedSerialDescriptor.addElement("from_back", true);
        pluginGeneratedSerialDescriptor.addElement("no_description", true);
        pluginGeneratedSerialDescriptor.addElement("from_suggested_edits", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        boolean z = true;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    break;
                case 0:
                    beginStructure.decodeIntElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    beginStructure.decodeIntElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    i7 = beginStructure.decodeIntElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    i8 = beginStructure.decodeIntElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                case 9:
                    i9 = beginStructure.decodeIntElement(serialDescriptor, 9);
                    i |= 512;
                    break;
                case 10:
                    i10 = beginStructure.decodeIntElement(serialDescriptor, 10);
                    i |= 1024;
                    break;
                case 11:
                    i11 = beginStructure.decodeIntElement(serialDescriptor, 11);
                    i |= 2048;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SessionData(i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
    
        if (((int) (r1 == 0 ? 0.0d : r8.sampleSum / r1)) != 0) goto L17;
     */
    @Override // kotlinx.serialization.KSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(kotlin.uuid.UuidKt r9, java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.analytics.SessionData$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
