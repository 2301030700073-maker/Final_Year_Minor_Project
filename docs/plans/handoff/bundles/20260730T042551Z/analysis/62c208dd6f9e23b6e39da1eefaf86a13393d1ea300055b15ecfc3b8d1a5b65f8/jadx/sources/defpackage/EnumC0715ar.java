package defpackage;

import java.util.Arrays;

/* renamed from: ar, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0715ar {
    NATIVE_WITH_FALLBACK(true, true, true, false, true, true),
    /* JADX INFO: Fake field, exist only in values array */
    NATIVE_ONLY(true, true, false, false, false, true),
    /* JADX INFO: Fake field, exist only in values array */
    KATANA_ONLY(false, true, false, false, false, false),
    /* JADX INFO: Fake field, exist only in values array */
    WEB_ONLY(false, false, true, false, true, false),
    /* JADX INFO: Fake field, exist only in values array */
    DIALOG_ONLY(false, true, true, false, true, true),
    /* JADX INFO: Fake field, exist only in values array */
    DEVICE_AUTH(false, false, false, true, false, false);


    /* renamed from: case, reason: not valid java name */
    public final boolean f8239case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8240do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f8241for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f8242if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f8243new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f8244try;

    EnumC0715ar(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f8240do = z;
        this.f8242if = z2;
        this.f8241for = z3;
        this.f8243new = z4;
        this.f8244try = z5;
        this.f8239case = z6;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static EnumC0715ar[] valuesCustom() {
        return (EnumC0715ar[]) Arrays.copyOf(values(), 6);
    }
}
