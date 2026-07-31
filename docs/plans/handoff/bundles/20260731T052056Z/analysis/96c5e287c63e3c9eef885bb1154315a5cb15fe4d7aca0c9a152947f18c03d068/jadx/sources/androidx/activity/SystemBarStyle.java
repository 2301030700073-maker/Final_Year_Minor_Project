package androidx.activity;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
