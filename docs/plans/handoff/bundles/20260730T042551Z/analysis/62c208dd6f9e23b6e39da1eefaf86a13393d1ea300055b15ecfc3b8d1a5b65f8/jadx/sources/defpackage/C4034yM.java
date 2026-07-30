package defpackage;

import android.content.Context;
import android.os.Build;
import java.io.File;
import java.util.HashMap;

/* renamed from: yM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4034yM {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f16735do;

    static {
        AbstractC0614Xq.m2870try("WrkDbPathHelper");
        f16735do = new String[]{"-journal", "-shm", "-wal"};
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8715do(Context context) {
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        int i = Build.VERSION.SDK_INT;
        if (i < 23 || !databasePath.exists()) {
            return;
        }
        AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
        HashMap hashMap = new HashMap();
        if (i >= 23) {
            File databasePath2 = context.getDatabasePath("androidx.work.workdb");
            File databasePath3 = i < 23 ? context.getDatabasePath("androidx.work.workdb") : new File(context.getNoBackupFilesDir(), "androidx.work.workdb");
            hashMap.put(databasePath2, databasePath3);
            for (String str : f16735do) {
                hashMap.put(new File(databasePath2.getPath() + str), new File(databasePath3.getPath() + str));
            }
        }
        for (File file : hashMap.keySet()) {
            File file2 = (File) hashMap.get(file);
            if (file.exists() && file2 != null) {
                if (file2.exists()) {
                    String.format("Over-writing contents of %s", file2);
                    AbstractC0614Xq.m2869for().mo2871case(new Throwable[0]);
                }
                if (file.renameTo(file2)) {
                    String.format("Migrated %s to %s", file, file2);
                } else {
                    String.format("Renaming %s to %s failed", file, file2);
                }
                AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
            }
        }
    }
}
