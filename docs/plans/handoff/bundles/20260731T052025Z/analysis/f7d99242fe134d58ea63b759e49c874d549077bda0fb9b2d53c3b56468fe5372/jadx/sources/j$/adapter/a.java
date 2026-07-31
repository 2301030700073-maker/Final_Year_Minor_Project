package j$.adapter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class a {
    public static final boolean a;
    public static final boolean b;
    public static final boolean c;

    static {
        boolean z;
        boolean z2;
        boolean z3 = false;
        try {
            Class.forName("java.util.StringJoiner");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        a = z;
        try {
            Class.forName("java.nio.file.FileSystems");
            z2 = true;
        } catch (ClassNotFoundException unused2) {
            z2 = false;
        }
        b = z2;
        try {
            Class.forName("android.os.Build");
            z3 = true;
        } catch (ClassNotFoundException unused3) {
        }
        c = z3;
    }
}
