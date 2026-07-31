package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class a0 implements OpenOption {
    public static final a0 APPEND;
    public static final a0 CREATE;
    public static final a0 CREATE_NEW;
    public static final a0 DELETE_ON_CLOSE;
    public static final a0 DSYNC;
    public static final a0 READ;
    public static final a0 SPARSE;
    public static final a0 SYNC;
    public static final a0 TRUNCATE_EXISTING;
    public static final a0 WRITE;
    public static final /* synthetic */ a0[] a;

    static {
        a0 a0Var = new a0("READ", 0);
        READ = a0Var;
        a0 a0Var2 = new a0("WRITE", 1);
        WRITE = a0Var2;
        a0 a0Var3 = new a0("APPEND", 2);
        APPEND = a0Var3;
        a0 a0Var4 = new a0("TRUNCATE_EXISTING", 3);
        TRUNCATE_EXISTING = a0Var4;
        a0 a0Var5 = new a0("CREATE", 4);
        CREATE = a0Var5;
        a0 a0Var6 = new a0("CREATE_NEW", 5);
        CREATE_NEW = a0Var6;
        a0 a0Var7 = new a0("DELETE_ON_CLOSE", 6);
        DELETE_ON_CLOSE = a0Var7;
        a0 a0Var8 = new a0("SPARSE", 7);
        SPARSE = a0Var8;
        a0 a0Var9 = new a0("SYNC", 8);
        SYNC = a0Var9;
        a0 a0Var10 = new a0("DSYNC", 9);
        DSYNC = a0Var10;
        a = new a0[]{a0Var, a0Var2, a0Var3, a0Var4, a0Var5, a0Var6, a0Var7, a0Var8, a0Var9, a0Var10};
    }

    public static a0 valueOf(String str) {
        return (a0) Enum.valueOf(a0.class, str);
    }

    public static a0[] values() {
        return (a0[]) a.clone();
    }
}
