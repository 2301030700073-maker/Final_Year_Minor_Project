package org.wikipedia.dataclient.mwapi;

import java.util.List;
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
import org.wikipedia.dataclient.mwapi.MwQueryResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryResult$RecentChange$$serializer implements GeneratedSerializer {
    public static final MwQueryResult$RecentChange$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwQueryResult$RecentChange$$serializer mwQueryResult$RecentChange$$serializer = new MwQueryResult$RecentChange$$serializer();
        INSTANCE = mwQueryResult$RecentChange$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwQueryResult.RecentChange", mwQueryResult$RecentChange$$serializer, 18);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("ns", true);
        pluginGeneratedSerialDescriptor.addElement("title", true);
        pluginGeneratedSerialDescriptor.addElement("pageid", true);
        pluginGeneratedSerialDescriptor.addElement("revid", true);
        pluginGeneratedSerialDescriptor.addElement("old_revid", true);
        pluginGeneratedSerialDescriptor.addElement("rcid", true);
        pluginGeneratedSerialDescriptor.addElement("user", true);
        pluginGeneratedSerialDescriptor.addElement("anon", true);
        pluginGeneratedSerialDescriptor.addElement("bot", true);
        pluginGeneratedSerialDescriptor.addElement("new", true);
        pluginGeneratedSerialDescriptor.addElement("minor", true);
        pluginGeneratedSerialDescriptor.addElement("oldlen", true);
        pluginGeneratedSerialDescriptor.addElement("newlen", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("parsedcomment", true);
        pluginGeneratedSerialDescriptor.addElement("tags", true);
        pluginGeneratedSerialDescriptor.addElement("oresscores", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        KSerializer nullable = UnsignedKt.getNullable((KSerializer) MwQueryResult.RecentChange.$childSerializers[16].getValue());
        KSerializer nullable2 = UnsignedKt.getNullable(JsonElementSerializer.INSTANCE);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, intSerializer, stringSerializer, intSerializer, longSerializer, longSerializer, longSerializer, stringSerializer, booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, intSerializer, intSerializer, stringSerializer, stringSerializer, nullable, nullable2};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int i;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = MwQueryResult.RecentChange.$childSerializers;
        Object obj = null;
        JsonElement jsonElement = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z5 = true;
        List list = null;
        while (z5) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z5 = false;
                case 0:
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i2 |= 1;
                    obj = null;
                case 1:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 1);
                    i2 |= 2;
                    obj = null;
                case 2:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i2 |= 4;
                    obj = null;
                case 3:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 3);
                    i2 |= 8;
                    obj = null;
                case 4:
                    j = beginStructure.decodeLongElement(serialDescriptor, 4);
                    i2 |= 16;
                    obj = null;
                case 5:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 5);
                    i2 |= 32;
                    obj = null;
                case 6:
                    j3 = beginStructure.decodeLongElement(serialDescriptor, 6);
                    i2 |= 64;
                    obj = null;
                case 7:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 7);
                    i2 |= 128;
                    obj = null;
                case 8:
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 8);
                    i2 |= 256;
                    obj = null;
                case 9:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 9);
                    i2 |= 512;
                    obj = null;
                case 10:
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 10);
                    i2 |= 1024;
                    obj = null;
                case 11:
                    z4 = beginStructure.decodeBooleanElement(serialDescriptor, 11);
                    i2 |= 2048;
                    obj = null;
                case 12:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 12);
                    i2 |= 4096;
                    obj = null;
                case IMAGE_VALUE:
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 13);
                    i2 |= 8192;
                    obj = null;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 14);
                    i2 |= 16384;
                    obj = null;
                case 15:
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 15);
                    i = 32768;
                    i2 |= i;
                    obj = null;
                case LAZY_VERTICAL_GRID_VALUE:
                    list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 16, (KSerializer) lazyArr[16].getValue(), list);
                    i = 65536;
                    i2 |= i;
                    obj = null;
                case VERTICAL_GRID_ITEM_VALUE:
                    jsonElement = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 17, JsonElementSerializer.INSTANCE, jsonElement);
                    i = 131072;
                    i2 |= i;
                    obj = null;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwQueryResult.RecentChange(i2, str, i3, str2, i4, j, j2, j3, str3, z, z2, z3, z4, i5, i6, str4, str5, list, jsonElement);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v30 java.lang.String, still in use, count: 2, list:
          (r0v30 java.lang.String) from 0x0132: INVOKE (r0v30 java.lang.String), ("") STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:307)
          (r0v30 java.lang.String) from 0x0138: PHI (r0v39 java.lang.String) = (r0v30 java.lang.String) binds: [B:71:0x0136] A[DONT_GENERATE, DONT_INLINE]
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
    public final void serialize(kotlin.uuid.UuidKt r25, java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.mwapi.MwQueryResult$RecentChange$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
