package defpackage;

import android.os.Build;

/* renamed from: aN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0688aN {
    /* renamed from: case, reason: not valid java name */
    public static int m3122case(CM cm) {
        int ordinal = cm.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return 5;
                        }
                        throw new IllegalArgumentException("Could not convert " + cm + " to int");
                    }
                }
            }
        }
        return i;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x005c: MOVE (r7 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]) (LINE:93), block:B:35:0x005b */
    /* JADX WARN: Removed duplicated region for block: B:37:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.C0400Oa m3123do(byte[] r7) {
        /*
            Oa r0 = new Oa
            r0.<init>()
            if (r7 != 0) goto L8
            return r0
        L8:
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream
            r1.<init>(r7)
            r7 = 0
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L3f java.io.IOException -> L41
            int r7 = r2.readInt()     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3d
        L17:
            if (r7 <= 0) goto L32
            java.lang.String r3 = r2.readUTF()     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3d
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3d
            boolean r4 = r2.readBoolean()     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3d
            Oa$do r5 = new Oa$do     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3d
            r5.<init>(r4, r3)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3d
            java.util.HashSet r3 = r0.f2650do     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3d
            r3.add(r5)     // Catch: java.lang.Throwable -> L3b java.io.IOException -> L3d
            int r7 = r7 + (-1)
            goto L17
        L32:
            r2.close()     // Catch: java.io.IOException -> L36
            goto L52
        L36:
            r7 = move-exception
            r7.printStackTrace()
            goto L52
        L3b:
            r7 = move-exception
            goto L5b
        L3d:
            r7 = move-exception
            goto L45
        L3f:
            r0 = move-exception
            goto L5d
        L41:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
        L45:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L3b
            if (r2 == 0) goto L52
            r2.close()     // Catch: java.io.IOException -> L4e
            goto L52
        L4e:
            r7 = move-exception
            r7.printStackTrace()
        L52:
            r1.close()     // Catch: java.io.IOException -> L56
            goto L5a
        L56:
            r7 = move-exception
            r7.printStackTrace()
        L5a:
            return r0
        L5b:
            r0 = r7
            r7 = r2
        L5d:
            if (r7 == 0) goto L67
            r7.close()     // Catch: java.io.IOException -> L63
            goto L67
        L63:
            r7 = move-exception
            r7.printStackTrace()
        L67:
            r1.close()     // Catch: java.io.IOException -> L6b
            goto L6f
        L6b:
            r7 = move-exception
            r7.printStackTrace()
        L6f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0688aN.m3123do(byte[]):Oa");
    }

    /* renamed from: for, reason: not valid java name */
    public static EnumC0201Eu m3124for(int i) {
        if (i == 0) {
            return EnumC0201Eu.NOT_REQUIRED;
        }
        if (i == 1) {
            return EnumC0201Eu.CONNECTED;
        }
        if (i == 2) {
            return EnumC0201Eu.UNMETERED;
        }
        if (i == 3) {
            return EnumC0201Eu.NOT_ROAMING;
        }
        if (i == 4) {
            return EnumC0201Eu.METERED;
        }
        if (Build.VERSION.SDK_INT < 30 || i != 5) {
            throw new IllegalArgumentException(Creturn.m7981if("Could not convert ", i, " to NetworkType"));
        }
        return EnumC0201Eu.TEMPORARILY_UNMETERED;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3125if(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        throw new IllegalArgumentException(Creturn.m7981if("Could not convert ", i, " to BackoffPolicy"));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3126new(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        throw new IllegalArgumentException(Creturn.m7981if("Could not convert ", i, " to OutOfQuotaPolicy"));
    }

    /* renamed from: try, reason: not valid java name */
    public static CM m3127try(int i) {
        if (i == 0) {
            return CM.ENQUEUED;
        }
        if (i == 1) {
            return CM.RUNNING;
        }
        if (i == 2) {
            return CM.SUCCEEDED;
        }
        if (i == 3) {
            return CM.FAILED;
        }
        if (i == 4) {
            return CM.BLOCKED;
        }
        if (i == 5) {
            return CM.CANCELLED;
        }
        throw new IllegalArgumentException(Creturn.m7981if("Could not convert ", i, " to State"));
    }
}
