package androidx.navigation;

import androidx.navigation.NavOptions;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavOptionsBuilder {
    public boolean inclusive;
    public String popUpToRoute;
    public boolean saveState;
    public final NavOptions.Builder builder = new NavOptions.Builder();
    public int popUpToId = -1;

    public static void popUpTo$default(NavOptionsBuilder navOptionsBuilder, String str) {
        navOptionsBuilder.getClass();
        if (StringsKt.isBlank(str)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Cannot pop up to an empty route");
            return;
        }
        navOptionsBuilder.popUpToRoute = str;
        navOptionsBuilder.popUpToId = -1;
        navOptionsBuilder.inclusive = false;
        navOptionsBuilder.saveState = false;
    }
}
