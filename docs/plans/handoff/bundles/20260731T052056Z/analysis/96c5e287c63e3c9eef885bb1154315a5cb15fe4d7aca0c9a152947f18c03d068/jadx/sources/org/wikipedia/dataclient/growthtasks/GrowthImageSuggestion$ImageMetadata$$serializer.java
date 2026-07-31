package org.wikipedia.dataclient.growthtasks;

import java.util.List;
import kotlin.Lazy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GrowthImageSuggestion$ImageMetadata$$serializer implements GeneratedSerializer {
    public static final GrowthImageSuggestion$ImageMetadata$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        GrowthImageSuggestion$ImageMetadata$$serializer growthImageSuggestion$ImageMetadata$$serializer = new GrowthImageSuggestion$ImageMetadata$$serializer();
        INSTANCE = growthImageSuggestion$ImageMetadata$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion.ImageMetadata", growthImageSuggestion$ImageMetadata$$serializer, 14);
        pluginGeneratedSerialDescriptor.addElement("descriptionUrl", true);
        pluginGeneratedSerialDescriptor.addElement("thumbUrl", true);
        pluginGeneratedSerialDescriptor.addElement("fullUrl", true);
        pluginGeneratedSerialDescriptor.addElement("originalWidth", true);
        pluginGeneratedSerialDescriptor.addElement("originalHeight", true);
        pluginGeneratedSerialDescriptor.addElement("mediaType", true);
        pluginGeneratedSerialDescriptor.addElement("description", true);
        pluginGeneratedSerialDescriptor.addElement("author", true);
        pluginGeneratedSerialDescriptor.addElement("license", true);
        pluginGeneratedSerialDescriptor.addElement("date", true);
        pluginGeneratedSerialDescriptor.addElement("caption", true);
        pluginGeneratedSerialDescriptor.addElement("categories", true);
        pluginGeneratedSerialDescriptor.addElement("reason", true);
        pluginGeneratedSerialDescriptor.addElement("contentLanguageName", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = GrowthImageSuggestion.ImageMetadata.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, intSerializer, intSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, lazyArr[11].getValue(), stringSerializer, stringSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = GrowthImageSuggestion.ImageMetadata.$childSerializers;
        Object obj = null;
        boolean z = true;
        List list = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i |= 1;
                    break;
                case 1:
                    str2 = beginStructure.decodeStringElement(serialDescriptor, 1);
                    i |= 2;
                    break;
                case 2:
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i |= 4;
                    break;
                case 3:
                    i2 = beginStructure.decodeIntElement(serialDescriptor, 3);
                    i |= 8;
                    break;
                case 4:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 4);
                    i |= 16;
                    break;
                case 5:
                    str4 = beginStructure.decodeStringElement(serialDescriptor, 5);
                    i |= 32;
                    break;
                case 6:
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 6);
                    i |= 64;
                    break;
                case 7:
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 7);
                    i |= 128;
                    break;
                case 8:
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 8);
                    i |= 256;
                    break;
                case 9:
                    str8 = beginStructure.decodeStringElement(serialDescriptor, 9);
                    i |= 512;
                    break;
                case 10:
                    str9 = beginStructure.decodeStringElement(serialDescriptor, 10);
                    i |= 1024;
                    break;
                case 11:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 11, (KSerializer) lazyArr[11].getValue(), list);
                    i |= 2048;
                    break;
                case 12:
                    str10 = beginStructure.decodeStringElement(serialDescriptor, 12);
                    i |= 4096;
                    break;
                case IMAGE_VALUE:
                    str11 = beginStructure.decodeStringElement(serialDescriptor, 13);
                    i |= 8192;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return obj;
            }
            obj = null;
        }
        beginStructure.endStructure(serialDescriptor);
        return new GrowthImageSuggestion.ImageMetadata(i, str, str2, str3, i2, i3, str4, str5, str6, str7, str8, str9, list, str10, str11);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v26 java.lang.String, still in use, count: 2, list:
          (r0v26 java.lang.String) from 0x0114: INVOKE (r0v26 java.lang.String), ("") STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:277)
          (r0v26 java.lang.String) from 0x011a: PHI (r0v31 java.lang.String) = (r0v26 java.lang.String) binds: [B:61:0x0118] A[DONT_GENERATE, DONT_INLINE]
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
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion$ImageMetadata$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
