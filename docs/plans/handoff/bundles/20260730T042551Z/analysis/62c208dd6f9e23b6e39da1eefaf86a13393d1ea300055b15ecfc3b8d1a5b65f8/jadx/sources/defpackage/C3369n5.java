package defpackage;

import defpackage.SG;

/* renamed from: n5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3369n5 {

    /* renamed from: do, reason: not valid java name */
    public static final String f14448do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3369n5 f14449do;

    /* renamed from: if, reason: not valid java name */
    public static final String f14450if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final C3369n5 f14451if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f14452do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RG f14453do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f14454do;

    /* renamed from: n5$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final byte[] f14455do = new byte[1792];

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public char f14456do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f14457do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final CharSequence f14458do;

        /* renamed from: if, reason: not valid java name */
        public int f14459if;

        static {
            for (int i = 0; i < 1792; i++) {
                f14455do[i] = Character.getDirectionality(i);
            }
        }

        public Cdo(String str) {
            this.f14458do = str;
            this.f14457do = str.length();
        }

        /* renamed from: do, reason: not valid java name */
        public final byte m7548do() {
            int i = this.f14459if - 1;
            CharSequence charSequence = this.f14458do;
            char charAt = charSequence.charAt(i);
            this.f14456do = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(charSequence, this.f14459if);
                this.f14459if -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f14459if--;
            char c = this.f14456do;
            return c < 1792 ? f14455do[c] : Character.getDirectionality(c);
        }
    }

    static {
        SG.Cnew cnew = SG.f3482for;
        f14448do = Character.toString((char) 8206);
        f14450if = Character.toString((char) 8207);
        f14449do = new C3369n5(false, 2, cnew);
        f14451if = new C3369n5(true, 2, cnew);
    }

    public C3369n5(boolean z, int i, SG.Cnew cnew) {
        this.f14454do = z;
        this.f14452do = i;
        this.f14453do = cnew;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006e, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0071, code lost:
    
        if (r2 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008f, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0077, code lost:
    
        if (r0.f14459if <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x007d, code lost:
    
        switch(r0.m7548do()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0081, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0084, code lost:
    
        if (r1 != r3) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x008c, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0088, code lost:
    
        if (r1 != r3) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:?, code lost:
    
        return 0;
     */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m7546do(java.lang.String r9) {
        /*
            n5$do r0 = new n5$do
            r0.<init>(r9)
            r9 = 0
            r0.f14459if = r9
            r1 = 0
            r2 = 0
            r3 = 0
        Lb:
            int r4 = r0.f14459if
            int r5 = r0.f14457do
            r6 = -1
            r7 = 1
            if (r4 >= r5) goto L6e
            if (r1 != 0) goto L6e
            java.lang.CharSequence r5 = r0.f14458do
            char r4 = r5.charAt(r4)
            r0.f14456do = r4
            boolean r4 = java.lang.Character.isHighSurrogate(r4)
            if (r4 == 0) goto L37
            int r4 = r0.f14459if
            int r4 = java.lang.Character.codePointAt(r5, r4)
            int r5 = r0.f14459if
            int r8 = java.lang.Character.charCount(r4)
            int r8 = r8 + r5
            r0.f14459if = r8
            byte r4 = java.lang.Character.getDirectionality(r4)
            goto L4b
        L37:
            int r4 = r0.f14459if
            int r4 = r4 + r7
            r0.f14459if = r4
            char r4 = r0.f14456do
            r5 = 1792(0x700, float:2.511E-42)
            if (r4 >= r5) goto L47
            byte[] r5 = defpackage.C3369n5.Cdo.f14455do
            r4 = r5[r4]
            goto L4b
        L47:
            byte r4 = java.lang.Character.getDirectionality(r4)
        L4b:
            if (r4 == 0) goto L69
            if (r4 == r7) goto L66
            r5 = 2
            if (r4 == r5) goto L66
            r5 = 9
            if (r4 == r5) goto Lb
            switch(r4) {
                case 14: goto L62;
                case 15: goto L62;
                case 16: goto L5e;
                case 17: goto L5e;
                case 18: goto L5a;
                default: goto L59;
            }
        L59:
            goto L6c
        L5a:
            int r3 = r3 + (-1)
            r2 = 0
            goto Lb
        L5e:
            int r3 = r3 + 1
            r2 = 1
            goto Lb
        L62:
            int r3 = r3 + 1
            r2 = -1
            goto Lb
        L66:
            if (r3 != 0) goto L6c
            goto L86
        L69:
            if (r3 != 0) goto L6c
            goto L8a
        L6c:
            r1 = r3
            goto Lb
        L6e:
            if (r1 != 0) goto L71
            goto L8f
        L71:
            if (r2 == 0) goto L75
            r9 = r2
            goto L8f
        L75:
            int r2 = r0.f14459if
            if (r2 <= 0) goto L8f
            byte r2 = r0.m7548do()
            switch(r2) {
                case 14: goto L88;
                case 15: goto L88;
                case 16: goto L84;
                case 17: goto L84;
                case 18: goto L81;
                default: goto L80;
            }
        L80:
            goto L75
        L81:
            int r3 = r3 + 1
            goto L75
        L84:
            if (r1 != r3) goto L8c
        L86:
            r9 = 1
            goto L8f
        L88:
            if (r1 != r3) goto L8c
        L8a:
            r9 = -1
            goto L8f
        L8c:
            int r3 = r3 + (-1)
            goto L75
        L8f:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3369n5.m7546do(java.lang.String):int");
    }

    /* renamed from: if, reason: not valid java name */
    public static int m7547if(String str) {
        Cdo cdo = new Cdo(str);
        cdo.f14459if = cdo.f14457do;
        int i = 0;
        int i2 = 0;
        while (cdo.f14459if > 0) {
            byte m7548do = cdo.m7548do();
            if (m7548do != 0) {
                if (m7548do == 1 || m7548do == 2) {
                    if (i == 0) {
                        return 1;
                    }
                    if (i2 == 0) {
                        i2 = i;
                    }
                } else if (m7548do != 9) {
                    switch (m7548do) {
                        case 14:
                        case 15:
                            if (i2 == i) {
                                return -1;
                            }
                            i--;
                            break;
                        case 16:
                        case 17:
                            if (i2 == i) {
                                return 1;
                            }
                            i--;
                            break;
                        case 18:
                            i++;
                            break;
                        default:
                            if (i2 != 0) {
                                break;
                            } else {
                                i2 = i;
                                break;
                            }
                    }
                } else {
                    continue;
                }
            } else {
                if (i == 0) {
                    return -1;
                }
                if (i2 == 0) {
                    i2 = i;
                }
            }
        }
        return 0;
    }
}
