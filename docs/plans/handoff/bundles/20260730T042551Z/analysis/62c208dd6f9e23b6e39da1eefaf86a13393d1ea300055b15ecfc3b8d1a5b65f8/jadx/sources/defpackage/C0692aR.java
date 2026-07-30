package defpackage;

import dalvik.system.PathClassLoader;

/* renamed from: aR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0692aR extends PathClassLoader {
    public C0692aR(ClassLoader classLoader, String str) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    public final Class loadClass(String str, boolean z) {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        return super.loadClass(str, z);
    }
}
