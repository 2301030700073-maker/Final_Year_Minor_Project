package org.wikipedia.yearinreview;

import java.util.List;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.uuid.UuidKt;
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
public final /* synthetic */ class YearInReviewModel$$serializer implements GeneratedSerializer {
    public static final YearInReviewModel$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        YearInReviewModel$$serializer yearInReviewModel$$serializer = new YearInReviewModel$$serializer();
        INSTANCE = yearInReviewModel$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.yearinreview.YearInReviewModel", yearInReviewModel$$serializer, 20);
        pluginGeneratedSerialDescriptor.addElement("totalReadingTimeMinutes", false);
        pluginGeneratedSerialDescriptor.addElement("localReadingArticlesCount", false);
        pluginGeneratedSerialDescriptor.addElement("localSavedArticlesCount", false);
        pluginGeneratedSerialDescriptor.addElement("localSavedArticles", false);
        pluginGeneratedSerialDescriptor.addElement("localTopVisitedArticles", false);
        pluginGeneratedSerialDescriptor.addElement("localTopCategories", false);
        pluginGeneratedSerialDescriptor.addElement("favoriteTimeToRead", false);
        pluginGeneratedSerialDescriptor.addElement("favoriteDayToRead", false);
        pluginGeneratedSerialDescriptor.addElement("favoriteMonthDidMostReading", false);
        pluginGeneratedSerialDescriptor.addElement("largestClusterLocation", false);
        pluginGeneratedSerialDescriptor.addElement("largestClusterTopLeft", false);
        pluginGeneratedSerialDescriptor.addElement("largestClusterBottomRight", false);
        pluginGeneratedSerialDescriptor.addElement("largestClusterCountryName", false);
        pluginGeneratedSerialDescriptor.addElement("largestClusterArticles", false);
        pluginGeneratedSerialDescriptor.addElement("userEditsCount", false);
        pluginGeneratedSerialDescriptor.addElement("userEditsViewedTimes", false);
        pluginGeneratedSerialDescriptor.addElement("isCustomIconUnlocked", false);
        pluginGeneratedSerialDescriptor.addElement("slideViewedCount", true);
        pluginGeneratedSerialDescriptor.addElement("isReadingListDialogShown", true);
        pluginGeneratedSerialDescriptor.addElement("isReadingListCreated", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = YearInReviewModel.$childSerializers;
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{longSerializer, intSerializer, intSerializer, lazyArr[3].getValue(), lazyArr[4].getValue(), lazyArr[5].getValue(), intSerializer, intSerializer, intSerializer, lazyArr[9].getValue(), lazyArr[10].getValue(), lazyArr[11].getValue(), StringSerializer.INSTANCE, lazyArr[13].getValue(), intSerializer, longSerializer, booleanSerializer, intSerializer, booleanSerializer, booleanSerializer};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        Lazy[] lazyArr;
        int i;
        Lazy[] lazyArr2;
        boolean z;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr3 = YearInReviewModel.$childSerializers;
        long j = 0;
        long j2 = 0;
        List list = null;
        Pair pair = null;
        boolean z2 = true;
        List list2 = null;
        Pair pair2 = null;
        Pair pair3 = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        List list3 = null;
        List list4 = null;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        String str = null;
        int i8 = 0;
        boolean z3 = false;
        int i9 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (z2) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    z2 = false;
                case 0:
                    lazyArr2 = lazyArr3;
                    z = z2;
                    j = beginStructure.decodeLongElement(serialDescriptor, 0);
                    i2 |= 1;
                    lazyArr3 = lazyArr2;
                    z2 = z;
                case 1:
                    lazyArr = lazyArr3;
                    i3 = beginStructure.decodeIntElement(serialDescriptor, 1);
                    i2 |= 2;
                    lazyArr3 = lazyArr;
                case 2:
                    lazyArr = lazyArr3;
                    i4 = beginStructure.decodeIntElement(serialDescriptor, 2);
                    i2 |= 4;
                    lazyArr3 = lazyArr;
                case 3:
                    lazyArr2 = lazyArr3;
                    z = z2;
                    list3 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr2[3].getValue(), list3);
                    i2 |= 8;
                    lazyArr3 = lazyArr2;
                    z2 = z;
                case 4:
                    lazyArr2 = lazyArr3;
                    z = z2;
                    list4 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr2[4].getValue(), list4);
                    i2 |= 16;
                    lazyArr3 = lazyArr2;
                    z2 = z;
                case 5:
                    lazyArr2 = lazyArr3;
                    z = z2;
                    list2 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr2[5].getValue(), list2);
                    i2 |= 32;
                    lazyArr3 = lazyArr2;
                    z2 = z;
                case 6:
                    lazyArr = lazyArr3;
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 6);
                    i2 |= 64;
                    lazyArr3 = lazyArr;
                case 7:
                    lazyArr = lazyArr3;
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 7);
                    i2 |= 128;
                    lazyArr3 = lazyArr;
                case 8:
                    lazyArr = lazyArr3;
                    i7 = beginStructure.decodeIntElement(serialDescriptor, 8);
                    i2 |= 256;
                    lazyArr3 = lazyArr;
                case 9:
                    lazyArr2 = lazyArr3;
                    z = z2;
                    pair3 = (Pair) beginStructure.decodeSerializableElement(serialDescriptor, 9, (KSerializer) lazyArr2[9].getValue(), pair3);
                    i2 |= 512;
                    lazyArr3 = lazyArr2;
                    z2 = z;
                case 10:
                    lazyArr2 = lazyArr3;
                    z = z2;
                    pair2 = (Pair) beginStructure.decodeSerializableElement(serialDescriptor, 10, (KSerializer) lazyArr2[10].getValue(), pair2);
                    i2 |= 1024;
                    lazyArr3 = lazyArr2;
                    z2 = z;
                case 11:
                    lazyArr2 = lazyArr3;
                    z = z2;
                    pair = (Pair) beginStructure.decodeSerializableElement(serialDescriptor, 11, (KSerializer) lazyArr2[11].getValue(), pair);
                    i2 |= 2048;
                    lazyArr3 = lazyArr2;
                    z2 = z;
                case 12:
                    lazyArr = lazyArr3;
                    str = beginStructure.decodeStringElement(serialDescriptor, 12);
                    i2 |= 4096;
                    lazyArr3 = lazyArr;
                case IMAGE_VALUE:
                    lazyArr2 = lazyArr3;
                    z = z2;
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 13, (KSerializer) lazyArr2[13].getValue(), list);
                    i2 |= 8192;
                    lazyArr3 = lazyArr2;
                    z2 = z;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    lazyArr = lazyArr3;
                    i8 = beginStructure.decodeIntElement(serialDescriptor, 14);
                    i2 |= 16384;
                    lazyArr3 = lazyArr;
                case 15:
                    lazyArr = lazyArr3;
                    j2 = beginStructure.decodeLongElement(serialDescriptor, 15);
                    i = 32768;
                    i2 |= i;
                    lazyArr3 = lazyArr;
                case LAZY_VERTICAL_GRID_VALUE:
                    lazyArr = lazyArr3;
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 16);
                    i = 65536;
                    i2 |= i;
                    lazyArr3 = lazyArr;
                case VERTICAL_GRID_ITEM_VALUE:
                    lazyArr = lazyArr3;
                    i9 = beginStructure.decodeIntElement(serialDescriptor, 17);
                    i = 131072;
                    i2 |= i;
                    lazyArr3 = lazyArr;
                case RADIO_GROUP_VALUE:
                    lazyArr = lazyArr3;
                    z4 = beginStructure.decodeBooleanElement(serialDescriptor, 18);
                    i = 262144;
                    i2 |= i;
                    lazyArr3 = lazyArr;
                case RADIO_BUTTON_VALUE:
                    lazyArr = lazyArr3;
                    z5 = beginStructure.decodeBooleanElement(serialDescriptor, 19);
                    i = 524288;
                    i2 |= i;
                    lazyArr3 = lazyArr;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new YearInReviewModel(i2, j, i3, i4, list3, list4, list2, i5, i6, i7, pair3, pair2, pair, str, list, i8, j2, z3, i9, z4, z5);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        YearInReviewModel yearInReviewModel = (YearInReviewModel) obj;
        yearInReviewModel.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = YearInReviewModel.$childSerializers;
        long j = yearInReviewModel.totalReadingTimeMinutes;
        boolean z = yearInReviewModel.isReadingListCreated;
        boolean z2 = yearInReviewModel.isReadingListDialogShown;
        int i = yearInReviewModel.slideViewedCount;
        beginStructure.encodeLongElement(serialDescriptor, 0, j);
        beginStructure.encodeIntElement(1, yearInReviewModel.localReadingArticlesCount, serialDescriptor);
        beginStructure.encodeIntElement(2, yearInReviewModel.localSavedArticlesCount, serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), yearInReviewModel.localSavedArticles);
        beginStructure.encodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), yearInReviewModel.localTopVisitedArticles);
        beginStructure.encodeSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), yearInReviewModel.localTopCategories);
        beginStructure.encodeIntElement(6, yearInReviewModel.favoriteTimeToRead, serialDescriptor);
        beginStructure.encodeIntElement(7, yearInReviewModel.favoriteDayToRead, serialDescriptor);
        beginStructure.encodeIntElement(8, yearInReviewModel.favoriteMonthDidMostReading, serialDescriptor);
        beginStructure.encodeSerializableElement(serialDescriptor, 9, (KSerializer) lazyArr[9].getValue(), yearInReviewModel.largestClusterLocation);
        beginStructure.encodeSerializableElement(serialDescriptor, 10, (KSerializer) lazyArr[10].getValue(), yearInReviewModel.largestClusterTopLeft);
        beginStructure.encodeSerializableElement(serialDescriptor, 11, (KSerializer) lazyArr[11].getValue(), yearInReviewModel.largestClusterBottomRight);
        beginStructure.encodeStringElement(serialDescriptor, 12, yearInReviewModel.largestClusterCountryName);
        beginStructure.encodeSerializableElement(serialDescriptor, 13, (KSerializer) lazyArr[13].getValue(), yearInReviewModel.largestClusterArticles);
        beginStructure.encodeIntElement(14, yearInReviewModel.userEditsCount, serialDescriptor);
        beginStructure.encodeLongElement(serialDescriptor, 15, yearInReviewModel.userEditsViewedTimes);
        beginStructure.encodeBooleanElement(serialDescriptor, 16, yearInReviewModel.isCustomIconUnlocked);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
            beginStructure.encodeIntElement(17, i, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z2) {
            beginStructure.encodeBooleanElement(serialDescriptor, 18, z2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 19, z);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
