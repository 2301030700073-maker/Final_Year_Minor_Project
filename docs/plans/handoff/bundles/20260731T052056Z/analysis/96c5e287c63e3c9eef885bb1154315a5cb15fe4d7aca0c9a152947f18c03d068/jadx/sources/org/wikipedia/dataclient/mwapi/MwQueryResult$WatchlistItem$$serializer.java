package org.wikipedia.dataclient.mwapi;

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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.WikiSite$$serializer;
import org.wikipedia.dataclient.mwapi.MwQueryResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryResult$WatchlistItem$$serializer implements GeneratedSerializer {
    public static final MwQueryResult$WatchlistItem$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwQueryResult$WatchlistItem$$serializer mwQueryResult$WatchlistItem$$serializer = new MwQueryResult$WatchlistItem$$serializer();
        INSTANCE = mwQueryResult$WatchlistItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwQueryResult.WatchlistItem", mwQueryResult$WatchlistItem$$serializer, 19);
        pluginGeneratedSerialDescriptor.addElement("new", true);
        pluginGeneratedSerialDescriptor.addElement("anon", true);
        pluginGeneratedSerialDescriptor.addElement("minor", true);
        pluginGeneratedSerialDescriptor.addElement("bot", true);
        pluginGeneratedSerialDescriptor.addElement("old_revid", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("comment", true);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("pageid", true);
        pluginGeneratedSerialDescriptor.addElement("revid", true);
        pluginGeneratedSerialDescriptor.addElement("ns", true);
        pluginGeneratedSerialDescriptor.addElement("title", true);
        pluginGeneratedSerialDescriptor.addElement("user", true);
        pluginGeneratedSerialDescriptor.addElement("logtype", true);
        pluginGeneratedSerialDescriptor.addElement("logdisplay", true);
        pluginGeneratedSerialDescriptor.addElement("oldlen", true);
        pluginGeneratedSerialDescriptor.addElement("newlen", true);
        pluginGeneratedSerialDescriptor.addElement("wiki", true);
        pluginGeneratedSerialDescriptor.addElement("parsedcomment", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        KSerializer nullable = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable2 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable3 = UnsignedKt.getNullable(WikiSite$$serializer.INSTANCE);
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{booleanSerializer, booleanSerializer, booleanSerializer, booleanSerializer, longSerializer, nullable, nullable2, stringSerializer, intSerializer, longSerializer, intSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, intSerializer, intSerializer, nullable3, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int i;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Object obj = null;
        long j = 0;
        long j2 = 0;
        String str = null;
        WikiSite wikiSite = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        boolean z5 = true;
        while (z5) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z5 = false;
                case 0:
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 0);
                    i2 |= 1;
                    obj = null;
                case 1:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                    i2 |= 2;
                    obj = null;
                case 2:
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 2);
                    i2 |= 4;
                    obj = null;
                case 3:
                    z4 = beginStructure.decodeBooleanElement(serialDescriptor, 3);
                    i2 |= 8;
                    obj = null;
                case 4:
                    j = beginStructure.decodeLongElement(serialDescriptor, 4);
                    i2 |= 16;
                    obj = null;
                case 5:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str2);
                    i2 |= 32;
                    obj = null;
                case 6:
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str);
                    i2 |= 64;
                    obj = null;
                case 7:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 7);
                    i2 |= 128;
                    obj = null;
                case 8:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 8);
                    i2 |= 256;
                    obj = null;
                case 9:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 9);
                    i2 |= 512;
                    obj = null;
                case 10:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 10);
                    i2 |= 1024;
                    obj = null;
                case 11:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 11);
                    i2 |= 2048;
                    obj = null;
                case 12:
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 12);
                    i2 |= 4096;
                    obj = null;
                case IMAGE_VALUE:
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 13);
                    i2 |= 8192;
                    obj = null;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 14);
                    i2 |= 16384;
                    obj = null;
                case 15:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 15);
                    i = 32768;
                    i2 |= i;
                    obj = null;
                case LAZY_VERTICAL_GRID_VALUE:
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 16);
                    i = 65536;
                    i2 |= i;
                    obj = null;
                case VERTICAL_GRID_ITEM_VALUE:
                    wikiSite = (WikiSite) beginStructure.decodeNullableSerializableElement(serialDescriptor, 17, WikiSite$$serializer.INSTANCE, wikiSite);
                    i = 131072;
                    i2 |= i;
                    obj = null;
                case RADIO_GROUP_VALUE:
                    str8 = beginStructure.decodeStringElement(serialDescriptor, 18);
                    i2 |= 262144;
                    obj = null;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new MwQueryResult.WatchlistItem(i2, z, z2, z3, z4, j, str2, str, str3, i3, j2, i4, str4, str5, str6, str7, i5, i6, wikiSite, str8);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v15 java.lang.String, still in use, count: 2, list:
          (r1v15 java.lang.String) from 0x00f4: INVOKE (r1v15 java.lang.String), ("") STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:245)
          (r1v15 java.lang.String) from 0x00fa: PHI (r1v41 java.lang.String) = (r1v15 java.lang.String) binds: [B:84:0x00f8] A[DONT_GENERATE, DONT_INLINE]
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
    public final void serialize(kotlin.uuid.UuidKt r23, java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.mwapi.MwQueryResult$WatchlistItem$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
