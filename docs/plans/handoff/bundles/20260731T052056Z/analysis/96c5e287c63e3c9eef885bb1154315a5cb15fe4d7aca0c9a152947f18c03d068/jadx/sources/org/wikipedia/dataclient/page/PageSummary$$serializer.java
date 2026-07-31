package org.wikipedia.dataclient.page;

import android.location.Location;
import java.util.List;
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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.json.LocationSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageSummary$$serializer implements GeneratedSerializer {
    public static final PageSummary$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        PageSummary$$serializer pageSummary$$serializer = new PageSummary$$serializer();
        INSTANCE = pageSummary$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.page.PageSummary", pageSummary$$serializer, 18);
        pluginGeneratedSerialDescriptor.addElement("namespace", true);
        pluginGeneratedSerialDescriptor.addElement("titles", true);
        pluginGeneratedSerialDescriptor.addElement("lang", true);
        pluginGeneratedSerialDescriptor.addElement("thumbnail", true);
        pluginGeneratedSerialDescriptor.addElement("extract", true);
        pluginGeneratedSerialDescriptor.addElement("description", true);
        pluginGeneratedSerialDescriptor.addElement("originalimage", true);
        pluginGeneratedSerialDescriptor.addElement("wikibase_item", true);
        pluginGeneratedSerialDescriptor.addElement("extract_html", true);
        pluginGeneratedSerialDescriptor.addElement("description_source", true);
        pluginGeneratedSerialDescriptor.addElement("coordinates", true);
        pluginGeneratedSerialDescriptor.addElement("type", true);
        pluginGeneratedSerialDescriptor.addElement("pageid", true);
        pluginGeneratedSerialDescriptor.addElement("revision", true);
        pluginGeneratedSerialDescriptor.addElement("timestamp", true);
        pluginGeneratedSerialDescriptor.addElement("views", true);
        pluginGeneratedSerialDescriptor.addElement("rank", true);
        pluginGeneratedSerialDescriptor.addElement("view_history", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = PageSummary.$childSerializers;
        KSerializer nullable = UnsignedKt.getNullable(PageSummary$NamespaceContainer$$serializer.INSTANCE);
        KSerializer nullable2 = UnsignedKt.getNullable(PageSummary$Titles$$serializer.INSTANCE);
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        PageSummary$Thumbnail$$serializer pageSummary$Thumbnail$$serializer = PageSummary$Thumbnail$$serializer.INSTANCE;
        KSerializer nullable3 = UnsignedKt.getNullable(pageSummary$Thumbnail$$serializer);
        KSerializer nullable4 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable5 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable6 = UnsignedKt.getNullable(pageSummary$Thumbnail$$serializer);
        KSerializer nullable7 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable8 = UnsignedKt.getNullable(stringSerializer);
        KSerializer nullable9 = UnsignedKt.getNullable(LocationSerializer.INSTANCE);
        KSerializer nullable10 = UnsignedKt.getNullable((KSerializer) lazyArr[17].getValue());
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{nullable, nullable2, stringSerializer, nullable3, nullable4, nullable5, nullable6, nullable7, nullable8, stringSerializer, nullable9, stringSerializer, IntSerializer.INSTANCE, longSerializer, stringSerializer, longSerializer, longSerializer, nullable10};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Lazy[] lazyArr;
        boolean z;
        Lazy[] lazyArr2;
        int i;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr3 = PageSummary.$childSerializers;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        List list = null;
        Location location = null;
        String str = null;
        boolean z2 = true;
        PageSummary.Thumbnail thumbnail = null;
        String str2 = null;
        int i2 = 0;
        PageSummary.NamespaceContainer namespaceContainer = null;
        PageSummary.Titles titles = null;
        String str3 = null;
        PageSummary.Thumbnail thumbnail2 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i3 = 0;
        String str8 = null;
        while (z2) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z2 = false;
                case 0:
                    lazyArr = lazyArr3;
                    z = z2;
                    namespaceContainer = (PageSummary.NamespaceContainer) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, PageSummary$NamespaceContainer$$serializer.INSTANCE, namespaceContainer);
                    i2 |= 1;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 1:
                    lazyArr = lazyArr3;
                    z = z2;
                    titles = (PageSummary.Titles) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, PageSummary$Titles$$serializer.INSTANCE, titles);
                    i2 |= 2;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 2:
                    lazyArr2 = lazyArr3;
                    str3 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i2 |= 4;
                    lazyArr3 = lazyArr2;
                case 3:
                    lazyArr = lazyArr3;
                    z = z2;
                    thumbnail2 = (PageSummary.Thumbnail) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, PageSummary$Thumbnail$$serializer.INSTANCE, thumbnail2);
                    i2 |= 8;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 4:
                    lazyArr = lazyArr3;
                    z = z2;
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, StringSerializer.INSTANCE, str4);
                    i2 |= 16;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 5:
                    lazyArr = lazyArr3;
                    z = z2;
                    str5 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, StringSerializer.INSTANCE, str5);
                    i2 |= 32;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 6:
                    lazyArr = lazyArr3;
                    z = z2;
                    thumbnail = (PageSummary.Thumbnail) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, PageSummary$Thumbnail$$serializer.INSTANCE, thumbnail);
                    i2 |= 64;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 7:
                    lazyArr = lazyArr3;
                    z = z2;
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, StringSerializer.INSTANCE, str2);
                    i2 |= 128;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 8:
                    lazyArr = lazyArr3;
                    z = z2;
                    str = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str);
                    i2 |= 256;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 9:
                    lazyArr2 = lazyArr3;
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 9);
                    i2 |= 512;
                    lazyArr3 = lazyArr2;
                case 10:
                    lazyArr = lazyArr3;
                    z = z2;
                    location = (Location) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, LocationSerializer.INSTANCE, location);
                    i2 |= 1024;
                    lazyArr3 = lazyArr;
                    z2 = z;
                case 11:
                    lazyArr2 = lazyArr3;
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 11);
                    i2 |= 2048;
                    lazyArr3 = lazyArr2;
                case 12:
                    lazyArr2 = lazyArr3;
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 12);
                    i2 |= 4096;
                    lazyArr3 = lazyArr2;
                case IMAGE_VALUE:
                    lazyArr2 = lazyArr3;
                    j = beginStructure.decodeLongElement(serialDescriptor, 13);
                    i2 |= 8192;
                    lazyArr3 = lazyArr2;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    lazyArr2 = lazyArr3;
                    str8 = beginStructure.decodeStringElement(serialDescriptor, 14);
                    i2 |= 16384;
                    lazyArr3 = lazyArr2;
                case 15:
                    lazyArr2 = lazyArr3;
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 15);
                    i = 32768;
                    i2 |= i;
                    lazyArr3 = lazyArr2;
                case LAZY_VERTICAL_GRID_VALUE:
                    lazyArr2 = lazyArr3;
                    j3 = beginStructure.decodeLongElement(serialDescriptor, 16);
                    i = 65536;
                    i2 |= i;
                    lazyArr3 = lazyArr2;
                case VERTICAL_GRID_ITEM_VALUE:
                    lazyArr = lazyArr3;
                    z = z2;
                    list = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 17, (KSerializer) lazyArr[17].getValue(), list);
                    i2 |= 131072;
                    lazyArr3 = lazyArr;
                    z2 = z;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new PageSummary(i2, namespaceContainer, titles, str3, thumbnail2, str4, str5, thumbnail, str2, str, str6, location, str7, i3, j, str8, j2, j3, list);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v20 java.lang.String, still in use, count: 2, list:
          (r0v20 java.lang.String) from 0x013c: INVOKE (r0v20 java.lang.String), ("") STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:317)
          (r0v20 java.lang.String) from 0x0142: PHI (r0v29 java.lang.String) = (r0v20 java.lang.String) binds: [B:71:0x0140] A[DONT_GENERATE, DONT_INLINE]
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
    public final void serialize(kotlin.uuid.UuidKt r24, java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.page.PageSummary$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
