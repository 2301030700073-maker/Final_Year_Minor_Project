package defpackage;

import android.content.Context;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: Sh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0495Sh {

    /* renamed from: case, reason: not valid java name */
    public final File f3534case;

    /* renamed from: do, reason: not valid java name */
    public final File f3535do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3536do;

    /* renamed from: for, reason: not valid java name */
    public final File f3537for;

    /* renamed from: if, reason: not valid java name */
    public final File f3538if;

    /* renamed from: new, reason: not valid java name */
    public final File f3539new;

    /* renamed from: try, reason: not valid java name */
    public final File f3540try;

    public C0495Sh(Context context) {
        String str;
        String mo1387for = Jx.f1732do.m1090for(context).mo1387for();
        this.f3536do = mo1387for;
        File filesDir = context.getFilesDir();
        this.f3535do = filesDir;
        if (!mo1387for.isEmpty()) {
            StringBuilder sb = new StringBuilder(".crashlytics.v3");
            sb.append(File.separator);
            sb.append(mo1387for.length() > 40 ? J8.m1018this(mo1387for) : mo1387for.replaceAll("[^a-zA-Z0-9.]", "_"));
            str = sb.toString();
        } else {
            str = ".com.google.firebase.crashlytics.files.v1";
        }
        File file = new File(filesDir, str);
        m2180for(file);
        this.f3538if = file;
        File file2 = new File(file, "open-sessions");
        m2180for(file2);
        this.f3537for = file2;
        File file3 = new File(file, "reports");
        m2180for(file3);
        this.f3539new = file3;
        File file4 = new File(file, "priority-reports");
        m2180for(file4);
        this.f3540try = file4;
        File file5 = new File(file, "native-reports");
        m2180for(file5);
        this.f3534case = file5;
    }

    /* renamed from: for, reason: not valid java name */
    public static synchronized void m2180for(File file) {
        synchronized (C0495Sh.class) {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return;
                }
                file.toString();
                file.delete();
            }
            if (!file.mkdirs()) {
                file.toString();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m2181new(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                m2181new(file2);
            }
        }
        return file.delete();
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> List<T> m2182try(T[] tArr) {
        return tArr == null ? Collections.emptyList() : Arrays.asList(tArr);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2183do(String str) {
        File file = new File(this.f3535do, str);
        if (file.exists() && m2181new(file)) {
            file.getPath();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final File m2184if(String str, String str2) {
        File file = new File(this.f3537for, str);
        file.mkdirs();
        return new File(file, str2);
    }
}
