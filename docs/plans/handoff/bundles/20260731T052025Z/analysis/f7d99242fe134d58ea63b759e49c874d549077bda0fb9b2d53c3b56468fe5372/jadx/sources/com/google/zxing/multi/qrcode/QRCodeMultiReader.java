package com.google.zxing.multi.qrcode;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.multi.qrcode.detector.MultiDetector;
import com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder;
import com.google.zxing.qrcode.detector.FinderPattern;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.io.ByteArrayOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QRCodeMultiReader {
    public static final Result[] EMPTY_RESULT_ARRAY = new Result[0];
    public final ConnectionPool decoder = new ConnectionPool(17);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SAComparator implements Comparator, Serializable {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ SAComparator(int i) {
            this.$r8$classId = i;
        }

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 0:
                    EnumMap enumMap = ((Result) obj).resultMetadata;
                    ResultMetadataType resultMetadataType = ResultMetadataType.STRUCTURED_APPEND_SEQUENCE;
                    return Integer.compare(((Integer) enumMap.get(resultMetadataType)).intValue(), ((Integer) ((Result) obj2).resultMetadata.get(resultMetadataType)).intValue());
                default:
                    double d = ((FinderPattern) obj2).estimatedModuleSize - ((FinderPattern) obj).estimatedModuleSize;
                    if (d < 0.0d) {
                        return -1;
                    }
                    return d > 0.0d ? 1 : 0;
            }
        }
    }

    public final Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map map) {
        char c;
        int i;
        char c2;
        FinderPattern[][] finderPatternArr;
        int i2;
        char c3;
        int i3;
        ArrayList arrayList;
        int i4;
        int i5;
        FinderPattern finderPattern;
        ArrayList arrayList2;
        int i6;
        int i7;
        int i8;
        FinderPattern finderPattern2;
        ResultMetadataType resultMetadataType;
        ResultMetadataType resultMetadataType2;
        int i9;
        int i10;
        ArrayList arrayList3 = new ArrayList();
        BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
        MultiDetector multiDetector = new MultiDetector(blackMatrix);
        if (map != null && map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK) != null) {
            DBUtil$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        MultiFinderPatternFinder multiFinderPatternFinder = new MultiFinderPatternFinder(blackMatrix);
        int i11 = 1;
        int i12 = 0;
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int i13 = blackMatrix.height;
        int i14 = blackMatrix.width;
        int i15 = (i13 * 3) / 388;
        int i16 = 3;
        if (i15 < 3 || z) {
            i15 = 3;
        }
        int[] iArr = new int[5];
        int i17 = i15 - 1;
        while (true) {
            c = 2;
            if (i17 >= i13) {
                break;
            }
            Arrays.fill(iArr, 0);
            int i18 = 0;
            int i19 = 0;
            while (i18 < i14) {
                if (blackMatrix.get(i18, i17)) {
                    i10 = i16;
                    if ((i19 & 1) == 1) {
                        i19++;
                    }
                    iArr[i19] = iArr[i19] + 1;
                } else {
                    i10 = i16;
                    if ((i19 & 1) != 0) {
                        iArr[i19] = iArr[i19] + 1;
                    } else if (i19 != 4) {
                        i19++;
                        iArr[i19] = iArr[i19] + 1;
                    } else if (MultiFinderPatternFinder.foundPatternCross(iArr) && multiFinderPatternFinder.handlePossibleCenter(i17, i18, iArr)) {
                        Arrays.fill(iArr, 0);
                        i19 = 0;
                    } else {
                        iArr[0] = iArr[2];
                        iArr[1] = iArr[i10];
                        iArr[2] = iArr[4];
                        iArr[i10] = 1;
                        iArr[4] = 0;
                        i19 = i10;
                    }
                }
                i18++;
                i16 = i10;
            }
            int i20 = i16;
            if (MultiFinderPatternFinder.foundPatternCross(iArr)) {
                multiFinderPatternFinder.handlePossibleCenter(i17, i14, iArr);
            }
            i17 += i15;
            i16 = i20;
        }
        int i21 = i16;
        ArrayList arrayList4 = new ArrayList();
        Iterator it = multiFinderPatternFinder.possibleCenters.iterator();
        while (it.hasNext()) {
            FinderPattern finderPattern3 = (FinderPattern) it.next();
            if (finderPattern3.count >= 2) {
                arrayList4.add(finderPattern3);
            }
        }
        int size = arrayList4.size();
        if (size < i21) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (size == i21) {
            finderPatternArr = new FinderPattern[][]{(FinderPattern[]) arrayList4.toArray(MultiFinderPatternFinder.EMPTY_FP_ARRAY)};
            i = 0;
            c2 = 2;
        } else {
            Collections.sort(arrayList4, new SAComparator(i11));
            ArrayList arrayList5 = new ArrayList();
            int i22 = 0;
            while (i22 < size - 2) {
                FinderPattern finderPattern4 = (FinderPattern) arrayList4.get(i22);
                if (finderPattern4 != null) {
                    float f = finderPattern4.estimatedModuleSize;
                    int i23 = i22 + 1;
                    while (i23 < size - 1) {
                        FinderPattern finderPattern5 = (FinderPattern) arrayList4.get(i23);
                        if (finderPattern5 != null) {
                            float f2 = finderPattern5.estimatedModuleSize;
                            float f3 = f - f2;
                            float min = f3 / Math.min(f, f2);
                            if (Math.abs(f3) > 0.5f && min >= 0.05f) {
                                break;
                            }
                            int i24 = i23 + 1;
                            while (i24 < size) {
                                i2 = i11;
                                FinderPattern finderPattern6 = (FinderPattern) arrayList4.get(i24);
                                if (finderPattern6 != null) {
                                    c3 = c;
                                    float f4 = finderPattern6.estimatedModuleSize;
                                    float f5 = f2 - f4;
                                    float min2 = f5 / Math.min(f2, f4);
                                    if (Math.abs(f5) > 0.5f && min2 >= 0.05f) {
                                        arrayList2 = arrayList4;
                                        i6 = size;
                                        i7 = i12;
                                        i8 = i22;
                                        finderPattern2 = finderPattern4;
                                        break;
                                    }
                                    i3 = i12;
                                    FinderPattern[] finderPatternArr2 = new FinderPattern[3];
                                    finderPatternArr2[i3] = finderPattern4;
                                    finderPatternArr2[i2] = finderPattern5;
                                    finderPatternArr2[c3] = finderPattern6;
                                    ResultPoint.orderBestPatterns(finderPatternArr2);
                                    FinderPattern finderPattern7 = finderPatternArr2[i3];
                                    FinderPattern finderPattern8 = finderPatternArr2[i2];
                                    arrayList = arrayList4;
                                    FinderPattern finderPattern9 = finderPatternArr2[c3];
                                    i4 = size;
                                    float distance = ResultPoint.distance(finderPattern8, finderPattern7);
                                    float distance2 = ResultPoint.distance(finderPattern9, finderPattern7);
                                    float distance3 = ResultPoint.distance(finderPattern8, finderPattern9);
                                    float f6 = (distance + distance3) / (2.0f * f);
                                    if (f6 > 180.0f || f6 < 9.0f || Math.abs((distance - distance3) / Math.min(distance, distance3)) >= 0.1f) {
                                        i5 = i22;
                                        finderPattern = finderPattern4;
                                    } else {
                                        i5 = i22;
                                        finderPattern = finderPattern4;
                                        double d = distance;
                                        double d2 = distance3;
                                        float sqrt = (float) Math.sqrt((d2 * d2) + (d * d));
                                        if (Math.abs((distance2 - sqrt) / Math.min(distance2, sqrt)) < 0.1f) {
                                            arrayList5.add(finderPatternArr2);
                                        }
                                    }
                                } else {
                                    arrayList = arrayList4;
                                    i4 = size;
                                    i3 = i12;
                                    finderPattern = finderPattern4;
                                    c3 = c;
                                    i5 = i22;
                                }
                                i24++;
                                i22 = i5;
                                c = c3;
                                i11 = i2;
                                i12 = i3;
                                arrayList4 = arrayList;
                                size = i4;
                                finderPattern4 = finderPattern;
                            }
                        }
                        arrayList2 = arrayList4;
                        i6 = size;
                        i2 = i11;
                        i7 = i12;
                        finderPattern2 = finderPattern4;
                        c3 = c;
                        i8 = i22;
                        i23++;
                        i22 = i8;
                        c = c3;
                        i11 = i2;
                        i12 = i7;
                        arrayList4 = arrayList2;
                        size = i6;
                        finderPattern4 = finderPattern2;
                    }
                }
                i22++;
                c = c;
                i11 = i11;
                i12 = i12;
                arrayList4 = arrayList4;
                size = size;
            }
            i = i12;
            c2 = c;
            if (arrayList5.isEmpty()) {
                throw NotFoundException.getNotFoundInstance();
            }
            finderPatternArr = (FinderPattern[][]) arrayList5.toArray(MultiFinderPatternFinder.EMPTY_FP_2D_ARRAY);
        }
        ArrayList arrayList6 = new ArrayList();
        int length = finderPatternArr.length;
        for (int i25 = i; i25 < length; i25++) {
            FinderPattern[] finderPatternArr3 = finderPatternArr[i25];
            ResultPoint.orderBestPatterns(finderPatternArr3);
            arrayList6.add(new FinderPatternInfo(finderPatternArr3));
        }
        boolean isEmpty = arrayList6.isEmpty();
        FinderPatternInfo[] finderPatternInfoArr = MultiFinderPatternFinder.EMPTY_RESULT_ARRAY;
        if (!isEmpty) {
            finderPatternInfoArr = (FinderPatternInfo[]) arrayList6.toArray(finderPatternInfoArr);
        }
        if (finderPatternInfoArr.length == 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        ArrayList arrayList7 = new ArrayList();
        int length2 = finderPatternInfoArr.length;
        for (int i26 = i; i26 < length2; i26++) {
            try {
                arrayList7.add(multiDetector.processFinderPatternInfo(finderPatternInfoArr[i26]));
            } catch (ReaderException unused) {
            }
        }
        boolean isEmpty2 = arrayList7.isEmpty();
        DetectorResult[] detectorResultArr = MultiDetector.EMPTY_DETECTOR_RESULTS;
        if (!isEmpty2) {
            detectorResultArr = (DetectorResult[]) arrayList7.toArray(detectorResultArr);
        }
        int length3 = detectorResultArr.length;
        int i27 = i;
        while (true) {
            resultMetadataType = ResultMetadataType.STRUCTURED_APPEND_SEQUENCE;
            resultMetadataType2 = ResultMetadataType.BYTE_SEGMENTS;
            if (i27 >= length3) {
                break;
            }
            DetectorResult detectorResult = detectorResultArr[i27];
            try {
                DecoderResult decode = this.decoder.decode(detectorResult.bits, map);
                ResultPoint[] resultPointArr = detectorResult.points;
                if (ImageAnalysis$$ExternalSyntheticLambda3.m(decode.other) && resultPointArr.length >= 3) {
                    try {
                        ResultPoint resultPoint = resultPointArr[i];
                        resultPointArr[i] = resultPointArr[c2];
                        resultPointArr[c2] = resultPoint;
                    } catch (ReaderException unused2) {
                    }
                }
                Result result = new Result(decode.text, decode.rawBytes);
                List list = decode.byteSegments;
                if (list != null) {
                    result.putMetadata(resultMetadataType2, list);
                }
                String str = decode.ecLevel;
                if (str != null) {
                    result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, str);
                }
                if (decode.structuredAppendParity >= 0 && (i9 = decode.structuredAppendSequenceNumber) >= 0) {
                    result.putMetadata(resultMetadataType, Integer.valueOf(i9));
                    result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decode.structuredAppendParity));
                }
                result.putMetadata(ResultMetadataType.SYMBOLOGY_IDENTIFIER, "]Q" + decode.symbologyModifier);
                arrayList3.add(result);
            } catch (ReaderException unused3) {
            }
            i27++;
        }
        boolean isEmpty3 = arrayList3.isEmpty();
        Result[] resultArr = EMPTY_RESULT_ARRAY;
        if (isEmpty3) {
            return resultArr;
        }
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            Result result2 = (Result) it2.next();
            if (result2.resultMetadata.containsKey(resultMetadataType)) {
                arrayList9.add(result2);
            } else {
                arrayList8.add(result2);
            }
        }
        if (!arrayList9.isEmpty()) {
            Collections.sort(arrayList9, new SAComparator(i));
            StringBuilder sb = new StringBuilder();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            Iterator it3 = arrayList9.iterator();
            while (it3.hasNext()) {
                Result result3 = (Result) it3.next();
                sb.append(result3.text);
                byte[] bArr = result3.rawBytes;
                byteArrayOutputStream.write(bArr, 0, bArr.length);
                Iterable<byte[]> iterable = (Iterable) result3.resultMetadata.get(resultMetadataType2);
                if (iterable != null) {
                    for (byte[] bArr2 : iterable) {
                        byteArrayOutputStream2.write(bArr2, 0, bArr2.length);
                    }
                }
            }
            Result result4 = new Result(sb.toString(), byteArrayOutputStream.toByteArray());
            if (byteArrayOutputStream2.size() > 0) {
                result4.putMetadata(resultMetadataType2, Collections.singletonList(byteArrayOutputStream2.toByteArray()));
            }
            arrayList8.add(result4);
            arrayList3 = arrayList8;
        }
        return (Result[]) arrayList3.toArray(resultArr);
    }
}
