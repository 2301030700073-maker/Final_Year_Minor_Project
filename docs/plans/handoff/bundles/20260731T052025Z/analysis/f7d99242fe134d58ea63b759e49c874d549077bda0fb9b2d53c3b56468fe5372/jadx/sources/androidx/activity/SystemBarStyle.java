package androidx.activity;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SystemBarStyle {
    public final int darkScrim;
    public final Function1 detectDarkMode;
    public final int lightScrim;

    public SystemBarStyle(int i, int i2, Function1 function1) {
        this.lightScrim = i;
        this.darkScrim = i2;
        this.detectDarkMode = function1;
    }
}
