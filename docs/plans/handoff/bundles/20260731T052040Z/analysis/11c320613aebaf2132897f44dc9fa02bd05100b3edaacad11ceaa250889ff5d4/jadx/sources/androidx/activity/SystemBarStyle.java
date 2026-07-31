package androidx.activity;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
