package defpackage;

import java.util.Arrays;

/* renamed from: protected, reason: invalid class name */
/* loaded from: classes.dex */
public enum Cprotected {
    /* JADX INFO: Fake field, exist only in values array */
    NONE(false),
    FACEBOOK_APPLICATION_WEB(true),
    /* JADX INFO: Fake field, exist only in values array */
    FACEBOOK_APPLICATION_NATIVE(true),
    FACEBOOK_APPLICATION_SERVICE(true),
    WEB_VIEW(true),
    CHROME_CUSTOM_TAB(true),
    /* JADX INFO: Fake field, exist only in values array */
    TEST_USER(true),
    /* JADX INFO: Fake field, exist only in values array */
    CLIENT_TOKEN(true),
    DEVICE_AUTH(true),
    INSTAGRAM_APPLICATION_WEB(true),
    INSTAGRAM_CUSTOM_CHROME_TAB(true),
    INSTAGRAM_WEB_VIEW(true);


    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f15005do;

    Cprotected(boolean z) {
        this.f15005do = z;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static Cprotected[] valuesCustom() {
        return (Cprotected[]) Arrays.copyOf(values(), 12);
    }
}
