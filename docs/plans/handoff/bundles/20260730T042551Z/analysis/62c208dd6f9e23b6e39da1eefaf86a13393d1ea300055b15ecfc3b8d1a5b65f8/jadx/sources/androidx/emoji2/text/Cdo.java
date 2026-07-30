package androidx.emoji2.text;

import android.content.pm.PackageManager;
import android.content.pm.Signature;

/* renamed from: androidx.emoji2.text.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: androidx.emoji2.text.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0036do {
        /* renamed from: do, reason: not valid java name */
        public Signature[] mo4097do(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }
    }

    /* renamed from: androidx.emoji2.text.do$for, reason: invalid class name */
    public static class Cfor extends Cif {
        @Override // androidx.emoji2.text.Cdo.C0036do
        /* renamed from: do */
        public final Signature[] mo4097do(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }
    }

    /* renamed from: androidx.emoji2.text.do$if, reason: invalid class name */
    public static class Cif extends C0036do {
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b A[EDGE_INSN: B:15:0x004b->B:16:0x004b BREAK  A[LOOP:0: B:5:0x002a->B:31:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[LOOP:0: B:5:0x002a->B:31:?, LOOP_END, SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.emoji2.text.Celse m4096do(android.content.Context r8) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            if (r0 < r1) goto Lc
            androidx.emoji2.text.do$for r0 = new androidx.emoji2.text.do$for
            r0.<init>()
            goto L11
        Lc:
            androidx.emoji2.text.do$if r0 = new androidx.emoji2.text.do$if
            r0.<init>()
        L11:
            android.content.pm.PackageManager r1 = r8.getPackageManager()
            java.lang.String r2 = "Package manager required to locate emoji font provider"
            defpackage.O4.m1627this(r1, r2)
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r3 = "androidx.content.action.LOAD_EMOJI_FONT"
            r2.<init>(r3)
            r3 = 0
            java.util.List r2 = r1.queryIntentContentProviders(r2, r3)
            java.util.Iterator r2 = r2.iterator()
        L2a:
            boolean r4 = r2.hasNext()
            r5 = 0
            if (r4 == 0) goto L4a
            java.lang.Object r4 = r2.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ProviderInfo r4 = r4.providerInfo
            if (r4 == 0) goto L46
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo
            if (r6 == 0) goto L46
            int r6 = r6.flags
            r7 = 1
            r6 = r6 & r7
            if (r6 != r7) goto L46
            goto L47
        L46:
            r7 = 0
        L47:
            if (r7 == 0) goto L2a
            goto L4b
        L4a:
            r4 = r5
        L4b:
            if (r4 != 0) goto L4e
            goto L77
        L4e:
            java.lang.String r2 = r4.authority     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            java.lang.String r4 = r4.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            android.content.pm.Signature[] r0 = r0.mo4097do(r1, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            r1.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            int r6 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
        L5c:
            if (r3 >= r6) goto L6a
            r7 = r0[r3]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            byte[] r7 = r7.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            r1.add(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            int r3 = r3 + 1
            goto L5c
        L6a:
            java.util.List r0 = java.util.Collections.singletonList(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            ij r1 = new ij     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            java.lang.String r3 = "emojicompat-emoji-font"
            r1.<init>(r2, r4, r3, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L76
            goto L78
        L76:
        L77:
            r1 = r5
        L78:
            if (r1 != 0) goto L7b
            goto L80
        L7b:
            androidx.emoji2.text.else r5 = new androidx.emoji2.text.else
            r5.<init>(r8, r1)
        L80:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.Cdo.m4096do(android.content.Context):androidx.emoji2.text.else");
    }
}
