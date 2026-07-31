package androidx.camera.core.internal;

import android.util.Rational;
import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.datastore.preferences.protobuf.Utf8;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SupportedOutputSizesSorter {
    public Object mCameraInfoInternal;
    public Serializable mFullFovRatio;
    public int mLensFacing;
    public int mSensorOrientation;
    public Object mSupportedOutputSizesSorterLegacy;

    public SupportedOutputSizesSorter(CameraInfoInternal cameraInfoInternal, Size size) {
        Rational rational;
        this.mCameraInfoInternal = cameraInfoInternal;
        this.mSensorOrientation = cameraInfoInternal.getSensorRotationDegrees();
        this.mLensFacing = cameraInfoInternal.getLensFacing();
        if (size != null) {
            rational = new Rational(size.getWidth(), size.getHeight());
        } else {
            List supportedResolutions = cameraInfoInternal.getSupportedResolutions(256);
            if (supportedResolutions.isEmpty()) {
                rational = null;
            } else {
                Size size2 = (Size) Collections.max(supportedResolutions, new CompareSizesByArea(false));
                rational = new Rational(size2.getWidth(), size2.getHeight());
            }
        }
        this.mFullFovRatio = rational;
        this.mSupportedOutputSizesSorterLegacy = new SupportedOutputSizesSorterLegacy(cameraInfoInternal, rational);
    }

    public static ArrayList getResolutionListGroupingAspectRatioKeys(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(AspectRatioUtil.ASPECT_RATIO_4_3);
        arrayList2.add(AspectRatioUtil.ASPECT_RATIO_16_9);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Size size = (Size) it.next();
            Rational rational = new Rational(size.getWidth(), size.getHeight());
            if (!arrayList2.contains(rational)) {
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        arrayList2.add(rational);
                        break;
                    }
                    if (AspectRatioUtil.hasMatchingAspectRatio((Rational) it2.next(), size)) {
                        break;
                    }
                }
            }
        }
        return arrayList2;
    }

    public static Rational getTargetAspectRatioRationalValue(int i, boolean z) {
        if (i == -1 || i == 0) {
            return z ? AspectRatioUtil.ASPECT_RATIO_4_3 : AspectRatioUtil.ASPECT_RATIO_3_4;
        }
        if (i == 1) {
            return z ? AspectRatioUtil.ASPECT_RATIO_16_9 : AspectRatioUtil.ASPECT_RATIO_9_16;
        }
        Utf8.SafeProcessor.e("SupportedOutputSizesCollector", "Undefined target aspect ratio: " + i);
        return null;
    }

    public static HashMap groupSizesByAspectRatio(ArrayList arrayList) {
        HashMap hashMap = new HashMap();
        Iterator it = getResolutionListGroupingAspectRatioKeys(arrayList).iterator();
        while (it.hasNext()) {
            hashMap.put((Rational) it.next(), new ArrayList());
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Size size = (Size) it2.next();
            for (Rational rational : hashMap.keySet()) {
                if (AspectRatioUtil.hasMatchingAspectRatio(rational, size)) {
                    ((List) hashMap.get(rational)).add(size);
                }
            }
        }
        return hashMap;
    }

    public static void sortSupportedSizesByFallbackRuleClosestHigherThenLower(List list, Size size, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            Size size3 = (Size) list.get(size2);
            if (size3.getWidth() >= size.getWidth() && size3.getHeight() >= size.getHeight()) {
                break;
            }
            arrayList.add(0, size3);
        }
        list.removeAll(arrayList);
        Collections.reverse(list);
        if (z) {
            list.addAll(arrayList);
        }
    }

    public static void sortSupportedSizesByFallbackRuleClosestLowerThenHigher(List list, Size size, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Size size2 = (Size) list.get(i);
            if (size2.getWidth() <= size.getWidth() && size2.getHeight() <= size.getHeight()) {
                break;
            }
            arrayList.add(0, size2);
        }
        list.removeAll(arrayList);
        if (z) {
            list.addAll(arrayList);
        }
    }

    /* JADX WARN: Type inference failed for: r2v9, types: [int[], java.io.Serializable] */
    public int add(long j) {
        int i = this.mSensorOrientation + 1;
        long[] jArr = (long[]) this.mCameraInfoInternal;
        int length = jArr.length;
        if (i > length) {
            int i2 = length * 2;
            long[] jArr2 = new long[i2];
            ?? r2 = new int[i2];
            ArraysKt___ArraysKt.copyInto(jArr, jArr2, 0, 0, jArr.length);
            ArraysKt___ArraysKt.copyInto$default(0, 0, 14, (int[]) this.mFullFovRatio, (int[]) r2);
            this.mCameraInfoInternal = jArr2;
            this.mFullFovRatio = r2;
        }
        int i3 = this.mSensorOrientation;
        this.mSensorOrientation = i3 + 1;
        int length2 = ((int[]) this.mSupportedOutputSizesSorterLegacy).length;
        if (this.mLensFacing >= length2) {
            int i4 = length2 * 2;
            int[] iArr = new int[i4];
            int i5 = 0;
            while (i5 < i4) {
                int i6 = i5 + 1;
                iArr[i5] = i6;
                i5 = i6;
            }
            ArraysKt___ArraysKt.copyInto$default(0, 0, 14, (int[]) this.mSupportedOutputSizesSorterLegacy, iArr);
            this.mSupportedOutputSizesSorterLegacy = iArr;
        }
        int i7 = this.mLensFacing;
        int[] iArr2 = (int[]) this.mSupportedOutputSizesSorterLegacy;
        this.mLensFacing = iArr2[i7];
        long[] jArr3 = (long[]) this.mCameraInfoInternal;
        jArr3[i3] = j;
        ((int[]) this.mFullFovRatio)[i3] = i7;
        iArr2[i7] = i3;
        while (i3 > 0) {
            int i8 = ((i3 + 1) >> 1) - 1;
            if (Intrinsics.compare(jArr3[i8], j) <= 0) {
                break;
            }
            swap(i8, i3);
            i3 = i8;
        }
        return i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b5, code lost:
    
        if (androidx.camera.core.internal.utils.SizeUtil.getArea(r3) < (r2.getHeight() * r2.getWidth())) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List getSortedSupportedOutputSizes(androidx.camera.core.impl.UseCaseConfig r13) {
        /*
            Method dump skipped, instructions count: 857
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.internal.SupportedOutputSizesSorter.getSortedSupportedOutputSizes(androidx.camera.core.impl.UseCaseConfig):java.util.List");
    }

    public void swap(int i, int i2) {
        long[] jArr = (long[]) this.mCameraInfoInternal;
        int[] iArr = (int[]) this.mFullFovRatio;
        int[] iArr2 = (int[]) this.mSupportedOutputSizesSorterLegacy;
        long j = jArr[i];
        jArr[i] = jArr[i2];
        jArr[i2] = j;
        int i3 = iArr[i];
        int i4 = iArr[i2];
        iArr[i] = i4;
        iArr[i2] = i3;
        iArr2[i4] = i;
        iArr2[i3] = i2;
    }
}
