package defpackage;

import android.app.LocaleManager;
import android.os.LocaleList;

/* renamed from: Fq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0219Fq {
    /* renamed from: do, reason: not valid java name */
    public static LocaleList m633do(Object obj) {
        return ((LocaleManager) obj).getApplicationLocales();
    }

    /* renamed from: if, reason: not valid java name */
    public static LocaleList m634if(Object obj) {
        return ((LocaleManager) obj).getSystemLocales();
    }
}
