package org.wikipedia.dataclient.mwapi;

import java.util.List;
import kotlin.Lazy;
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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UserContribution$$serializer implements GeneratedSerializer {
    public static final UserContribution$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        UserContribution$$serializer userContribution$$serializer = new UserContribution$$serializer();
        INSTANCE = userContribution$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.UserContribution", userContribution$$serializer, 15);
        pluginGeneratedSerialDescriptor.addElement("userid", true);
        pluginGeneratedSerialDescriptor.addElement("user", true);
        pluginGeneratedSerialDescriptor.addElement("pageid", true);
        pluginGeneratedSerialDescriptor.addElement("revid", true);
        pluginGeneratedSerialDescriptor.addElement("parentid", true);
        pluginGeneratedSerialDescriptor.addElement("ns", true);
        pluginGeneratedSerialDescriptor.addElement("title", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("comment", true);
        pluginGeneratedSerialDescriptor.addElement("new", true);
        pluginGeneratedSerialDescriptor.addElement("minor", true);
        pluginGeneratedSerialDescriptor.addElement("top", true);
        pluginGeneratedSerialDescriptor.addElement("size", true);
        pluginGeneratedSerialDescriptor.addElement("sizediff", true);
        pluginGeneratedSerialDescriptor.addElement("tags", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = UserContribution.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, stringSerializer, intSerializer, longSerializer, longSerializer, intSerializer, stringSerializer, stringSerializer, stringSerializer, booleanSerializer, booleanSerializer, booleanSerializer, intSerializer, intSerializer, lazyArr[14].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = UserContribution.$childSerializers;
        Object obj = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i5 = 0;
        int i6 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        long j = 0;
        long j2 = 0;
        boolean z4 = true;
        List list = null;
        while (z4) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z4 = false;
                    continue;
                case 0:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    str = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    j = beginStructure.decodeLongElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                case 9:
                    z = beginStructure.decodeBooleanElement(serialDescriptor, 9);
                    i |= 512;
                    break;
                case 10:
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 10);
                    i |= 1024;
                    break;
                case 11:
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 11);
                    i |= 2048;
                    break;
                case 12:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 12);
                    i |= 4096;
                    break;
                case IMAGE_VALUE:
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 13);
                    i |= 8192;
                    break;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 14, (KSerializer) lazyArr[14].getValue(), list);
                    i |= 16384;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new UserContribution(i, i2, str, i3, j, j2, i4, str2, str3, str4, z, z2, z3, i5, i6, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v5 java.util.List, still in use, count: 2, list:
          (r1v5 java.util.List) from 0x0122: INVOKE 
          (r1v5 java.util.List)
          (wrap:kotlin.collections.EmptyList:0x011e: SGET  A[WRAPPED] (LINE:287) kotlin.collections.EmptyList.INSTANCE kotlin.collections.EmptyList)
         STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:291)
          (r1v5 java.util.List) from 0x0128: PHI (r1v6 java.util.List) = (r1v5 java.util.List) binds: [B:58:0x0126] A[DONT_GENERATE, DONT_INLINE]
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
    public final void serialize(kotlin.uuid.UuidKt r22, java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.mwapi.UserContribution$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
