package org.wikipedia.dataclient.mwapi;

import java.util.Map;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwQueryPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryPage$Revision$$serializer implements GeneratedSerializer {
    public static final MwQueryPage$Revision$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwQueryPage$Revision$$serializer mwQueryPage$Revision$$serializer = new MwQueryPage$Revision$$serializer();
        INSTANCE = mwQueryPage$Revision$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwQueryPage.Revision", mwQueryPage$Revision$$serializer, 13);
        pluginGeneratedSerialDescriptor.addElement("slots", true);
        pluginGeneratedSerialDescriptor.addElement("minor", true);
        pluginGeneratedSerialDescriptor.addElement("revid", true);
        pluginGeneratedSerialDescriptor.addElement("parentid", true);
        pluginGeneratedSerialDescriptor.addElement("anon", true);
        pluginGeneratedSerialDescriptor.addElement("temp", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("size", true);
        pluginGeneratedSerialDescriptor.addElement("user", true);
        pluginGeneratedSerialDescriptor.addElement("comment", true);
        pluginGeneratedSerialDescriptor.addElement("parsedcomment", true);
        pluginGeneratedSerialDescriptor.addElement("oresscores", true);
        pluginGeneratedSerialDescriptor.addElement("diffSize", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable((KSerializer) MwQueryPage.Revision.$childSerializers[0].getValue());
        KSerializer nullable2 = UnsignedKt.getNullable(JsonElementSerializer.INSTANCE);
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{nullable, booleanSerializer, longSerializer, longSerializer, booleanSerializer, booleanSerializer, stringSerializer, intSerializer, stringSerializer, stringSerializer, stringSerializer, nullable2, intSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = MwQueryPage.Revision.$childSerializers;
        Object obj = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        int i3 = 0;
        Map map = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        long j = 0;
        long j2 = 0;
        boolean z4 = true;
        JsonElement jsonElement = null;
        while (z4) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z4 = false;
                    continue;
                case 0:
                    map = (Map) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), map);
                    i |= 1;
                    break;
                case 1:
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    j = beginStructure.decodeLongElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    str = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                case 9:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 9);
                    i |= 512;
                    break;
                case 10:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 10);
                    i |= 1024;
                    break;
                case 11:
                    jsonElement = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 11, JsonElementSerializer.INSTANCE, jsonElement);
                    i |= 2048;
                    break;
                case 12:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 12);
                    i |= 4096;
                    continue;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwQueryPage.Revision(i, map, z, j, j2, z2, z3, str, i2, str2, str3, str4, jsonElement, i3);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v20 java.lang.String, still in use, count: 2, list:
          (r1v20 java.lang.String) from 0x00e2: INVOKE (r1v20 java.lang.String), ("") STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:227)
          (r1v20 java.lang.String) from 0x00e8: PHI (r1v28 java.lang.String) = (r1v20 java.lang.String) binds: [B:55:0x00e6] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // kotlinx.serialization.KSerializer
    public final void serialize(kotlin.uuid.UuidKt r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.mwapi.MwQueryPage$Revision$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
