package androidx.navigation;

import androidx.compose.animation.core.Animation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavigatorProvider {
    public static final LinkedHashMap annotationNames = new LinkedHashMap();
    public final LinkedHashMap _navigators = new LinkedHashMap();

    public final void addNavigator(Navigator navigator) {
        navigator.getClass();
        String nameForNavigator$navigation_common_release = UuidKt.getNameForNavigator$navigation_common_release(navigator.getClass());
        if (nameForNavigator$navigation_common_release.length() <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("navigator name cannot be an empty string");
            return;
        }
        LinkedHashMap linkedHashMap = this._navigators;
        Navigator navigator2 = (Navigator) linkedHashMap.get(nameForNavigator$navigation_common_release);
        if (Intrinsics.areEqual(navigator2, navigator)) {
            return;
        }
        if (navigator2 != null && navigator2.isAttached) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m("Navigator ", navigator, " is replacing an already attached ", navigator2);
        } else if (navigator.isAttached) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$2(navigator, " is already attached to another NavController", "Navigator ");
        }
    }

    public final Navigator getNavigator(String str) {
        str.getClass();
        if (str.length() <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("navigator name cannot be an empty string");
            return null;
        }
        Navigator navigator = (Navigator) this._navigators.get(str);
        if (navigator != null) {
            return navigator;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
        return null;
    }
}
