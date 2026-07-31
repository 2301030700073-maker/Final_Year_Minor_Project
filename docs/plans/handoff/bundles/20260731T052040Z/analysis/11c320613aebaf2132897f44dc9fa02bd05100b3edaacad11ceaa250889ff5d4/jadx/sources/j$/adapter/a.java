package j$.adapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
