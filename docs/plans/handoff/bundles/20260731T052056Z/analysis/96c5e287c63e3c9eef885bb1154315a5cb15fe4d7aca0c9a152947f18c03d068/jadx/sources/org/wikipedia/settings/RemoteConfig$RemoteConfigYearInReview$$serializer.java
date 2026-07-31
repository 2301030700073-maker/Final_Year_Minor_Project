package org.wikipedia.settings;

import j$.time.LocalDateTime;
import java.util.List;
import kotlin.Lazy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.json.LocalDateTimeSerializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RemoteConfig$RemoteConfigYearInReview$$serializer implements GeneratedSerializer {
    public static final RemoteConfig$RemoteConfigYearInReview$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        RemoteConfig$RemoteConfigYearInReview$$serializer remoteConfig$RemoteConfigYearInReview$$serializer = new RemoteConfig$RemoteConfigYearInReview$$serializer();
        INSTANCE = remoteConfig$RemoteConfigYearInReview$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.settings.RemoteConfig.RemoteConfigYearInReview", remoteConfig$RemoteConfigYearInReview$$serializer, 21);
        pluginGeneratedSerialDescriptor.addElement("year", true);
        pluginGeneratedSerialDescriptor.addElement("activeStartDate", true);
        pluginGeneratedSerialDescriptor.addElement("activeEndDate", true);
        pluginGeneratedSerialDescriptor.addElement("dataStartDate", true);
        pluginGeneratedSerialDescriptor.addElement("dataEndDate", true);
        pluginGeneratedSerialDescriptor.addElement("languages", true);
        pluginGeneratedSerialDescriptor.addElement("articles", true);
        pluginGeneratedSerialDescriptor.addElement("savedArticlesApps", true);
        pluginGeneratedSerialDescriptor.addElement("viewsApps", true);
        pluginGeneratedSerialDescriptor.addElement("editsApps", true);
        pluginGeneratedSerialDescriptor.addElement("editsPerMinute", true);
        pluginGeneratedSerialDescriptor.addElement("averageArticlesReadPerYear", true);
        pluginGeneratedSerialDescriptor.addElement("edits", true);
        pluginGeneratedSerialDescriptor.addElement("editsEN", true);
        pluginGeneratedSerialDescriptor.addElement("bytesAddedEN", true);
        pluginGeneratedSerialDescriptor.addElement("hoursReadEN", true);
        pluginGeneratedSerialDescriptor.addElement("yearsReadEN", true);
        pluginGeneratedSerialDescriptor.addElement("topReadEN", true);
        pluginGeneratedSerialDescriptor.addElement("topReadPercentages", true);
        pluginGeneratedSerialDescriptor.addElement("hideCountryCodes", true);
        pluginGeneratedSerialDescriptor.addElement("hideDonateCountryCodes", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = RemoteConfig$RemoteConfigYearInReview.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        LocalDateTimeSerializer localDateTimeSerializer = LocalDateTimeSerializer.INSTANCE;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, localDateTimeSerializer, localDateTimeSerializer, localDateTimeSerializer, localDateTimeSerializer, intSerializer, longSerializer, longSerializer, longSerializer, longSerializer, intSerializer, intSerializer, longSerializer, longSerializer, longSerializer, longSerializer, intSerializer, lazyArr[17].getValue(), lazyArr[18].getValue(), lazyArr[19].getValue(), lazyArr[20].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        int i;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = RemoteConfig$RemoteConfigYearInReview.$childSerializers;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        List list = null;
        boolean z = true;
        List list2 = null;
        List list3 = null;
        List list4 = null;
        int i2 = 0;
        int i3 = 0;
        LocalDateTime localDateTime = null;
        LocalDateTime localDateTime2 = null;
        LocalDateTime localDateTime3 = null;
        LocalDateTime localDateTime4 = null;
        int i4 = 0;
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
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i2 |= 1;
                    continue;
                case 1:
                    localDateTime = (LocalDateTime) beginStructure.decodeSerializableElement(serialDescriptor, 1, LocalDateTimeSerializer.INSTANCE, localDateTime);
                    i2 |= 2;
                    continue;
                case 2:
                    localDateTime2 = (LocalDateTime) beginStructure.decodeSerializableElement(serialDescriptor, 2, LocalDateTimeSerializer.INSTANCE, localDateTime2);
                    i2 |= 4;
                    continue;
                case 3:
                    localDateTime3 = (LocalDateTime) beginStructure.decodeSerializableElement(serialDescriptor, 3, LocalDateTimeSerializer.INSTANCE, localDateTime3);
                    i2 |= 8;
                    continue;
                case 4:
                    localDateTime4 = (LocalDateTime) beginStructure.decodeSerializableElement(serialDescriptor, 4, LocalDateTimeSerializer.INSTANCE, localDateTime4);
                    i2 |= 16;
                    continue;
                case 5:
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 5);
                    i2 |= 32;
                    continue;
                case 6:
                    j = beginStructure.decodeLongElement(serialDescriptor, 6);
                    i2 |= 64;
                    continue;
                case 7:
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 7);
                    i2 |= 128;
                    continue;
                case 8:
                    j3 = beginStructure.decodeLongElement(serialDescriptor, 8);
                    i2 |= 256;
                    continue;
                case 9:
                    j4 = beginStructure.decodeLongElement(serialDescriptor, 9);
                    i2 |= 512;
                    continue;
                case 10:
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 10);
                    i2 |= 1024;
                    continue;
                case 11:
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 11);
                    i2 |= 2048;
                    continue;
                case 12:
                    j5 = beginStructure.decodeLongElement(serialDescriptor, 12);
                    i2 |= 4096;
                    continue;
                case IMAGE_VALUE:
                    j6 = beginStructure.decodeLongElement(serialDescriptor, 13);
                    i2 |= 8192;
                    continue;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    j7 = beginStructure.decodeLongElement(serialDescriptor, 14);
                    i2 |= 16384;
                    continue;
                case 15:
                    j8 = beginStructure.decodeLongElement(serialDescriptor, 15);
                    i = 32768;
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    i7 = beginStructure.decodeIntElement(serialDescriptor, 16);
                    i = 65536;
                    break;
                case VERTICAL_GRID_ITEM_VALUE:
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 17, (KSerializer) lazyArr[17].getValue(), list);
                    i = 131072;
                    break;
                case RADIO_GROUP_VALUE:
                    list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 18, (KSerializer) lazyArr[18].getValue(), list2);
                    i = 262144;
                    break;
                case RADIO_BUTTON_VALUE:
                    list3 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 19, (KSerializer) lazyArr[19].getValue(), list3);
                    i = 524288;
                    break;
                case RADIO_ROW_VALUE:
                    list4 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 20, (KSerializer) lazyArr[20].getValue(), list4);
                    i = 1048576;
                    break;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
            i2 |= i;
        }
        beginStructure.endStructure(serialDescriptor);
        return new RemoteConfig$RemoteConfigYearInReview(i2, i3, localDateTime, localDateTime2, localDateTime3, localDateTime4, i4, j, j2, j3, j4, i5, i6, j5, j6, j7, j8, i7, list, list2, list3, list4);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v36 java.util.List, still in use, count: 2, list:
          (r0v36 java.util.List) from 0x01a0: INVOKE (r0v36 java.util.List), (r1v9 kotlin.collections.EmptyList) STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:417)
          (r0v36 java.util.List) from 0x01a6: PHI (r0v49 java.util.List) = (r0v36 java.util.List) binds: [B:91:0x01a4] A[DONT_GENERATE, DONT_INLINE]
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
    public final void serialize(kotlin.uuid.UuidKt r34, java.lang.Object r35) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.RemoteConfig$RemoteConfigYearInReview$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
