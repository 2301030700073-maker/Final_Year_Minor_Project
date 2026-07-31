package androidx.camera.core;

import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.LensFacingCameraFilter;
import androidx.room.util.RelationUtil;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraSelector {
    public static final CameraSelector DEFAULT_BACK_CAMERA;
    public static final CameraSelector DEFAULT_FRONT_CAMERA;
    public final LinkedHashSet mCameraFilterSet;

    static {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(new LensFacingCameraFilter(0));
        DEFAULT_FRONT_CAMERA = new CameraSelector(linkedHashSet);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        linkedHashSet2.add(new LensFacingCameraFilter(1));
        DEFAULT_BACK_CAMERA = new CameraSelector(linkedHashSet2);
    }

    public CameraSelector(LinkedHashSet linkedHashSet) {
        this.mCameraFilterSet = linkedHashSet;
    }

    public final ArrayList filter(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        Iterator it = this.mCameraFilterSet.iterator();
        while (it.hasNext()) {
            CameraFilter cameraFilter = (CameraFilter) it.next();
            List<CameraInfo> unmodifiableList = DesugarCollections.unmodifiableList(arrayList2);
            LensFacingCameraFilter lensFacingCameraFilter = (LensFacingCameraFilter) cameraFilter;
            lensFacingCameraFilter.getClass();
            ArrayList arrayList3 = new ArrayList();
            for (CameraInfo cameraInfo : unmodifiableList) {
                RelationUtil.checkArgument("The camera info doesn't contain internal implementation.", cameraInfo instanceof CameraInfoInternal);
                if (cameraInfo.getLensFacing() == lensFacingCameraFilter.mLensFacing) {
                    arrayList3.add(cameraInfo);
                }
            }
            arrayList2 = arrayList3;
        }
        arrayList2.retainAll(arrayList);
        return arrayList2;
    }

    public final Integer getLensFacing() {
        Iterator it = this.mCameraFilterSet.iterator();
        Integer num = null;
        while (it.hasNext()) {
            CameraFilter cameraFilter = (CameraFilter) it.next();
            if (cameraFilter instanceof LensFacingCameraFilter) {
                Integer valueOf = Integer.valueOf(((LensFacingCameraFilter) cameraFilter).mLensFacing);
                if (num == null) {
                    num = valueOf;
                } else if (!num.equals(valueOf)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Multiple conflicting lens facing requirements exist.");
                    return null;
                }
            }
        }
        return num;
    }

    public final CameraInternal select(LinkedHashSet linkedHashSet) {
        ArrayList arrayList = new ArrayList();
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((CameraInternal) it.next()).getCameraInfo());
        }
        ArrayList filter = filter(arrayList);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            CameraInternal cameraInternal = (CameraInternal) it2.next();
            if (filter.contains(cameraInternal.getCameraInfo())) {
                linkedHashSet2.add(cameraInternal);
            }
        }
        Iterator it3 = linkedHashSet2.iterator();
        if (it3.hasNext()) {
            return (CameraInternal) it3.next();
        }
        StringBuilder sb = new StringBuilder("Cams:");
        sb.append(linkedHashSet.size());
        Iterator it4 = linkedHashSet.iterator();
        while (it4.hasNext()) {
            CameraInfoInternal cameraInfoInternal = ((CameraInternal) it4.next()).getCameraInfoInternal();
            sb.append(" Id:" + cameraInfoInternal.getCameraId() + "  Lens:" + cameraInfoInternal.getLensFacing());
        }
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        LinkedHashSet linkedHashSet3 = this.mCameraFilterSet;
        sb3.append("PhyId:null  Filters:" + linkedHashSet3.size());
        Iterator it5 = linkedHashSet3.iterator();
        while (it5.hasNext()) {
            CameraFilter cameraFilter = (CameraFilter) it5.next();
            sb3.append(" Id:");
            ((LensFacingCameraFilter) cameraFilter).getClass();
            sb3.append(CameraFilter.DEFAULT_ID);
            if (cameraFilter instanceof LensFacingCameraFilter) {
                sb3.append(" LensFilter:");
                sb3.append(((LensFacingCameraFilter) cameraFilter).mLensFacing);
            }
        }
        UriKt$$ExternalSyntheticBUOutline0.m(ImageAnalysis$$ExternalSyntheticLambda3.m("No available camera can be found. ", sb2, " ", sb3.toString()));
        return null;
    }
}
