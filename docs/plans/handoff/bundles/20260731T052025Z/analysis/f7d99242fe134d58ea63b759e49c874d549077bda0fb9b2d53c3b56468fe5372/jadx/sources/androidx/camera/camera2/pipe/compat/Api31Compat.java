package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticApiModelOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api31Compat {
    public static final Map getPhysicalCameraTotalResults(TotalCaptureResult totalCaptureResult) {
        return totalCaptureResult.getPhysicalCameraTotalResults();
    }

    public static final List getSupportedExtensions(CameraExtensionCharacteristics cameraExtensionCharacteristics) {
        List<Integer> supportedExtensions = cameraExtensionCharacteristics.getSupportedExtensions();
        supportedExtensions.getClass();
        return supportedExtensions;
    }

    public static final InputConfiguration newInputConfiguration(String str, List list) {
        list.getClass();
        str.getClass();
        if (list.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Call to create InputConfiguration but list of InputConfigData is empty.");
            return null;
        }
        if (list.size() == 1) {
            InputConfigData inputConfigData = (InputConfigData) CollectionsKt.first(list);
            return new InputConfiguration(inputConfigData.width, inputConfigData.height, inputConfigData.format);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            InputConfigData inputConfigData2 = (InputConfigData) it.next();
            TypefaceCompat$$ExternalSyntheticApiModelOutline0.m();
            arrayList.add(TypefaceCompat$$ExternalSyntheticApiModelOutline0.m(inputConfigData2.width, str, inputConfigData2.height));
        }
        return TypefaceCompat$$ExternalSyntheticApiModelOutline0.m(((InputConfigData) CollectionsKt.first(list)).format, arrayList);
    }
}
