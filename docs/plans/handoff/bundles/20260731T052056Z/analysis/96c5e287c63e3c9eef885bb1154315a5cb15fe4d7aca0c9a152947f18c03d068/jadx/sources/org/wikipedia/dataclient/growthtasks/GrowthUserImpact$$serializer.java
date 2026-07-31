package org.wikipedia.dataclient.growthtasks;

import java.util.Map;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GrowthUserImpact$$serializer implements GeneratedSerializer {
    public static final GrowthUserImpact$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        GrowthUserImpact$$serializer growthUserImpact$$serializer = new GrowthUserImpact$$serializer();
        INSTANCE = growthUserImpact$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.growthtasks.GrowthUserImpact", growthUserImpact$$serializer, 19);
        pluginGeneratedSerialDescriptor.addElement("@version", true);
        pluginGeneratedSerialDescriptor.addElement("userId", true);
        pluginGeneratedSerialDescriptor.addElement("userName", true);
        pluginGeneratedSerialDescriptor.addElement("receivedThanksCount", true);
        pluginGeneratedSerialDescriptor.addElement("givenThanksCount", true);
        pluginGeneratedSerialDescriptor.addElement("editCountByNamespace", true);
        pluginGeneratedSerialDescriptor.addElement("editCountByDay", true);
        pluginGeneratedSerialDescriptor.addElement("editCountByTaskType", true);
        pluginGeneratedSerialDescriptor.addElement("totalUserEditCount", true);
        pluginGeneratedSerialDescriptor.addElement("totalEditsCount", true);
        pluginGeneratedSerialDescriptor.addElement("newcomerTaskEditCount", true);
        pluginGeneratedSerialDescriptor.addElement("revertedEditCount", true);
        pluginGeneratedSerialDescriptor.addElement("lastEditTimestamp", true);
        pluginGeneratedSerialDescriptor.addElement("totalArticlesCreatedCount", true);
        pluginGeneratedSerialDescriptor.addElement("longestEditingStreak", true);
        pluginGeneratedSerialDescriptor.addElement("dailyTotalViews", true);
        pluginGeneratedSerialDescriptor.addElement("totalPageviewsCount", true);
        pluginGeneratedSerialDescriptor.addElement("topViewedArticles", true);
        pluginGeneratedSerialDescriptor.addElement("topViewedArticlesWithPageTitle", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = GrowthUserImpact.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, StringSerializer.INSTANCE, intSerializer, intSerializer, UnsignedKt.getNullable(jsonElementSerializer), UnsignedKt.getNullable(jsonElementSerializer), UnsignedKt.getNullable(jsonElementSerializer), intSerializer, intSerializer, intSerializer, intSerializer, longSerializer, intSerializer, UnsignedKt.getNullable(jsonElementSerializer), UnsignedKt.getNullable(jsonElementSerializer), longSerializer, UnsignedKt.getNullable(jsonElementSerializer), lazyArr[18].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int i;
        boolean z;
        int i2;
        boolean z2;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GrowthUserImpact.$childSerializers;
        long j = 0;
        long j2 = 0;
        Map map = null;
        JsonElement jsonElement = null;
        JsonElement jsonElement2 = null;
        JsonElement jsonElement3 = null;
        boolean z3 = true;
        JsonElement jsonElement4 = null;
        JsonElement jsonElement5 = null;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        String str = null;
        int i6 = 0;
        int i7 = 0;
        JsonElement jsonElement6 = null;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (z3) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    i = i4;
                    z3 = false;
                    i4 = i;
                case 0:
                    z2 = z3;
                    i3 |= 1;
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    z3 = z2;
                case 1:
                    z2 = z3;
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 1);
                    i3 |= 2;
                    z3 = z2;
                case 2:
                    z2 = z3;
                    str = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i3 |= 4;
                    z3 = z2;
                case 3:
                    z2 = z3;
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 3);
                    i3 |= 8;
                    z3 = z2;
                case 4:
                    z2 = z3;
                    i7 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i3 |= 16;
                    z3 = z2;
                case 5:
                    z = z3;
                    i = i4;
                    jsonElement6 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, JsonElementSerializer.INSTANCE, jsonElement6);
                    i3 |= 32;
                    z3 = z;
                    i4 = i;
                case 6:
                    z = z3;
                    i = i4;
                    jsonElement4 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, JsonElementSerializer.INSTANCE, jsonElement4);
                    i3 |= 64;
                    z3 = z;
                    i4 = i;
                case 7:
                    z = z3;
                    i = i4;
                    jsonElement5 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, JsonElementSerializer.INSTANCE, jsonElement5);
                    i3 |= 128;
                    z3 = z;
                    i4 = i;
                case 8:
                    z2 = z3;
                    i8 = beginStructure.decodeIntElement(serialDescriptor, 8);
                    i3 |= 256;
                    z3 = z2;
                case 9:
                    z2 = z3;
                    i9 = beginStructure.decodeIntElement(serialDescriptor, 9);
                    i3 |= 512;
                    z3 = z2;
                case 10:
                    z2 = z3;
                    i10 = beginStructure.decodeIntElement(serialDescriptor, 10);
                    i3 |= 1024;
                    z3 = z2;
                case 11:
                    z2 = z3;
                    i11 = beginStructure.decodeIntElement(serialDescriptor, 11);
                    i3 |= 2048;
                    z3 = z2;
                case 12:
                    z2 = z3;
                    j = beginStructure.decodeLongElement(serialDescriptor, 12);
                    i3 |= 4096;
                    z3 = z2;
                case IMAGE_VALUE:
                    z2 = z3;
                    i12 = beginStructure.decodeIntElement(serialDescriptor, 13);
                    i3 |= 8192;
                    z3 = z2;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    z = z3;
                    i = i4;
                    jsonElement3 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 14, JsonElementSerializer.INSTANCE, jsonElement3);
                    i3 |= 16384;
                    z3 = z;
                    i4 = i;
                case 15:
                    z = z3;
                    i = i4;
                    jsonElement2 = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 15, JsonElementSerializer.INSTANCE, jsonElement2);
                    i2 = 32768;
                    i3 |= i2;
                    z3 = z;
                    i4 = i;
                case LAZY_VERTICAL_GRID_VALUE:
                    z2 = z3;
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 16);
                    i3 |= 65536;
                    z3 = z2;
                case VERTICAL_GRID_ITEM_VALUE:
                    z = z3;
                    i = i4;
                    jsonElement = (JsonElement) beginStructure.decodeNullableSerializableElement(serialDescriptor, 17, JsonElementSerializer.INSTANCE, jsonElement);
                    i2 = 131072;
                    i3 |= i2;
                    z3 = z;
                    i4 = i;
                case RADIO_GROUP_VALUE:
                    z = z3;
                    i = i4;
                    map = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 18, (KSerializer) lazyArr[18].getValue(), map);
                    i2 = 262144;
                    i3 |= i2;
                    z3 = z;
                    i4 = i;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new GrowthUserImpact(i3, i4, i5, str, i6, i7, jsonElement6, jsonElement4, jsonElement5, i8, i9, i10, i11, j, i12, jsonElement3, jsonElement2, j2, jsonElement, map);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v29 org.wikipedia.dataclient.growthtasks.GrowthUserImpact, still in use, count: 2, list:
          (r1v29 org.wikipedia.dataclient.growthtasks.GrowthUserImpact) from 0x016a: IGET (r1v29 org.wikipedia.dataclient.growthtasks.GrowthUserImpact) A[WRAPPED] (LINE:363) org.wikipedia.dataclient.growthtasks.GrowthUserImpact.topViewedArticlesWithPageTitle java.util.Map
          (r1v29 org.wikipedia.dataclient.growthtasks.GrowthUserImpact) from 0x0174: PHI (r1v30 org.wikipedia.dataclient.growthtasks.GrowthUserImpact) = (r1v29 org.wikipedia.dataclient.growthtasks.GrowthUserImpact) binds: [B:67:0x0172] A[DONT_GENERATE, DONT_INLINE]
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
    public final void serialize(kotlin.uuid.UuidKt r26, java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.growthtasks.GrowthUserImpact$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
