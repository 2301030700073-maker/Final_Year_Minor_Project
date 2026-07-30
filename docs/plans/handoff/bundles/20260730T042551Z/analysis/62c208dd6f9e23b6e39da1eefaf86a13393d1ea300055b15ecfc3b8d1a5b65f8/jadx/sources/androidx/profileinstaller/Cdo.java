package androidx.profileinstaller;

import java.io.File;

/* renamed from: androidx.profileinstaller.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {
    /* renamed from: do, reason: not valid java name */
    public static boolean m4293do(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : listFiles) {
            z = m4293do(file2) && z;
        }
        return z;
    }
}
