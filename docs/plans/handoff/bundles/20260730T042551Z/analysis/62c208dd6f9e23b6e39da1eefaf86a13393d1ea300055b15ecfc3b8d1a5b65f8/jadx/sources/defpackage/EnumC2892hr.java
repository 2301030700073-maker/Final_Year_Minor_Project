package defpackage;

import java.util.Arrays;

/* renamed from: hr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC2892hr {
    FACEBOOK("facebook"),
    INSTAGRAM("instagram");


    /* renamed from: break, reason: not valid java name */
    public final String f13368break;

    EnumC2892hr(String str) {
        this.f13368break = str;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static EnumC2892hr[] valuesCustom() {
        return (EnumC2892hr[]) Arrays.copyOf(values(), 2);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f13368break;
    }
}
