package defpackage;

import java.io.File;
import java.io.FileFilter;

/* renamed from: It, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0288It implements FileFilter {
    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        return !file.getName().equals("MultiDex.lock");
    }
}
