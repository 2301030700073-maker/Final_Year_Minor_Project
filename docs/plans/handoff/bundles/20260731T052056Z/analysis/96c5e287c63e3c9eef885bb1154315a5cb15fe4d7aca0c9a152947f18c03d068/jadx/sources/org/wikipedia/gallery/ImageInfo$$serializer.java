package org.wikipedia.gallery;

import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.UnsignedKt;
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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageInfo$$serializer implements GeneratedSerializer {
    public static final ImageInfo$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        ImageInfo$$serializer imageInfo$$serializer = new ImageInfo$$serializer();
        INSTANCE = imageInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.gallery.ImageInfo", imageInfo$$serializer, 20);
        pluginGeneratedSerialDescriptor.addElement("source", true);
        pluginGeneratedSerialDescriptor.addElement("captions", true);
        pluginGeneratedSerialDescriptor.addElement("short_name", true);
        pluginGeneratedSerialDescriptor.addElement("descriptionshorturl", true);
        pluginGeneratedSerialDescriptor.addElement("derivatives", true);
        pluginGeneratedSerialDescriptor.addElement("codecs", true);
        pluginGeneratedSerialDescriptor.addElement("name", true);
        pluginGeneratedSerialDescriptor.addElement("descriptionurl", true);
        pluginGeneratedSerialDescriptor.addElement("thumburl", true);
        pluginGeneratedSerialDescriptor.addElement("thumbwidth", true);
        pluginGeneratedSerialDescriptor.addElement("thumbheight", true);
        pluginGeneratedSerialDescriptor.addElement("url", true);
        pluginGeneratedSerialDescriptor.addElement("mime", true);
        pluginGeneratedSerialDescriptor.addElement("metadata", true);
        pluginGeneratedSerialDescriptor.addElement("extmetadata", true);
        pluginGeneratedSerialDescriptor.addElement("user", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("size", true);
        pluginGeneratedSerialDescriptor.addElement("width", true);
        pluginGeneratedSerialDescriptor.addElement("height", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = ImageInfo.$childSerializers;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        return new KSerializer[]{stringSerializer, lazyArr[1].getValue(), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), lazyArr[4].getValue(), UnsignedKt.getNullable((KSerializer) lazyArr[5].getValue()), UnsignedKt.getNullable(stringSerializer), stringSerializer, stringSerializer, intSerializer, intSerializer, stringSerializer, stringSerializer, lazyArr[13].getValue(), UnsignedKt.getNullable(ExtMetadata$$serializer.INSTANCE), stringSerializer, stringSerializer, intSerializer, intSerializer, intSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int i;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = ImageInfo.$childSerializers;
        ExtMetadata extMetadata = null;
        boolean z = true;
        List list = null;
        int i2 = 0;
        String str = null;
        Map map = null;
        String str2 = null;
        String str3 = null;
        List list2 = null;
        List list3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        int i3 = 0;
        int i4 = 0;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = beginStructure.decodeStringElement(serialDescriptor, 0);
                    i2 |= 1;
                    continue;
                case 1:
                    map = (Map) beginStructure.decodeSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), map);
                    i2 |= 2;
                    continue;
                case 2:
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, StringSerializer.INSTANCE, str2);
                    i2 |= 4;
                    continue;
                case 3:
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, StringSerializer.INSTANCE, str3);
                    i2 |= 8;
                    continue;
                case 4:
                    list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), list2);
                    i2 |= 16;
                    continue;
                case 5:
                    list3 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), list3);
                    i2 |= 32;
                    continue;
                case 6:
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, StringSerializer.INSTANCE, str4);
                    i2 |= 64;
                    continue;
                case 7:
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 7);
                    i2 |= 128;
                    continue;
                case 8:
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 8);
                    i2 |= 256;
                    continue;
                case 9:
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 9);
                    i2 |= 512;
                    continue;
                case 10:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 10);
                    i2 |= 1024;
                    continue;
                case 11:
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 11);
                    i2 |= 2048;
                    continue;
                case 12:
                    str8 = beginStructure.decodeStringElement(serialDescriptor, 12);
                    i2 |= 4096;
                    continue;
                case IMAGE_VALUE:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 13, (KSerializer) lazyArr[13].getValue(), list);
                    i2 |= 8192;
                    continue;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    extMetadata = (ExtMetadata) beginStructure.decodeNullableSerializableElement(serialDescriptor, 14, ExtMetadata$$serializer.INSTANCE, extMetadata);
                    i2 |= 16384;
                    continue;
                case 15:
                    str9 = beginStructure.decodeStringElement(serialDescriptor, 15);
                    i = 32768;
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    str10 = beginStructure.decodeStringElement(serialDescriptor, 16);
                    i = 65536;
                    break;
                case VERTICAL_GRID_ITEM_VALUE:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 17);
                    i = 131072;
                    break;
                case RADIO_GROUP_VALUE:
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 18);
                    i = 262144;
                    break;
                case RADIO_BUTTON_VALUE:
                    i7 = beginStructure.decodeIntElement(serialDescriptor, 19);
                    i = 524288;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
            i2 |= i;
        }
        beginStructure.endStructure(serialDescriptor);
        return new ImageInfo(i2, str, map, str2, str3, list2, list3, str4, str5, str6, i3, i4, str7, str8, list, extMetadata, str9, str10, i5, i6, i7);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v6 java.lang.String, still in use, count: 2, list:
          (r1v6 java.lang.String) from 0x013b: INVOKE (r1v6 java.lang.String), ("*/*") STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:316)
          (r1v6 java.lang.String) from 0x0141: PHI (r1v17 java.lang.String) = (r1v6 java.lang.String) binds: [B:85:0x013f] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0137  */
    @Override // kotlinx.serialization.KSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void serialize(kotlin.uuid.UuidKt r24, java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.gallery.ImageInfo$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
