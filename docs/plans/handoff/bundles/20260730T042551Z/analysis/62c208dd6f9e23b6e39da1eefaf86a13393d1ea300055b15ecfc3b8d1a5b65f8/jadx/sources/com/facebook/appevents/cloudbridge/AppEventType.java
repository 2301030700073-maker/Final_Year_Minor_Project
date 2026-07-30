package com.facebook.appevents.cloudbridge;

import defpackage.C0173Do;
import defpackage.C2819gd;
import java.util.Arrays;

/* loaded from: classes.dex */
public enum AppEventType {
    MOBILE_APP_INSTALL,
    CUSTOM,
    OTHER;

    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public final AppEventType invoke(String str) {
            C0173Do.m401try(str, "rawValue");
            return C0173Do.m394do(str, "MOBILE_APP_INSTALL") ? AppEventType.MOBILE_APP_INSTALL : C0173Do.m394do(str, "CUSTOM_APP_EVENTS") ? AppEventType.CUSTOM : AppEventType.OTHER;
        }
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static AppEventType[] valuesCustom() {
        AppEventType[] valuesCustom = values();
        return (AppEventType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
    }
}
