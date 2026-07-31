package j$.time.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class v {
    public static final v LENIENT;
    public static final v SMART;
    public static final v STRICT;
    public static final /* synthetic */ v[] a;

    static {
        v vVar = new v("STRICT", 0);
        STRICT = vVar;
        v vVar2 = new v("SMART", 1);
        SMART = vVar2;
        v vVar3 = new v("LENIENT", 2);
        LENIENT = vVar3;
        a = new v[]{vVar, vVar2, vVar3};
    }

    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    public static v[] values() {
        return (v[]) a.clone();
    }
}
