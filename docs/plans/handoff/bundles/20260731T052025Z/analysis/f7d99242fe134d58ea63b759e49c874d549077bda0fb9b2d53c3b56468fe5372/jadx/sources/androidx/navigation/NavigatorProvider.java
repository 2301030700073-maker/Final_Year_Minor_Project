package androidx.navigation;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavigatorProvider {
    public static final LinkedHashMap annotationNames = new LinkedHashMap();
    public final LinkedHashMap _navigators = new LinkedHashMap();

    public final void addNavigator(Navigator navigator) {
        navigator.getClass();
        String nameForNavigator$navigation_common_release = DBUtil.getNameForNavigator$navigation_common_release(navigator.getClass());
        if (nameForNavigator$navigation_common_release.length() <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("navigator name cannot be an empty string");
            return;
        }
        LinkedHashMap linkedHashMap = this._navigators;
        Navigator navigator2 = (Navigator) linkedHashMap.get(nameForNavigator$navigation_common_release);
        if (Intrinsics.areEqual(navigator2, navigator)) {
            return;
        }
        if (navigator2 != null && navigator2.isAttached) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Navigator ", navigator, " is replacing an already attached ", navigator2);
        } else if (navigator.isAttached) {
            UriKt$$ExternalSyntheticBUOutline0.m(navigator, " is already attached to another NavController", "Navigator ");
        }
    }

    public final Navigator getNavigator(String str) {
        str.getClass();
        if (str.length() <= 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("navigator name cannot be an empty string");
            return null;
        }
        Navigator navigator = (Navigator) this._navigators.get(str);
        if (navigator != null) {
            return navigator;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
        return null;
    }
}
