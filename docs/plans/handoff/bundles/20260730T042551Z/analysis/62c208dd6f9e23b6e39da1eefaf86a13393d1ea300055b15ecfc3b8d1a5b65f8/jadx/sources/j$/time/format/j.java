package j$.time.format;

/* loaded from: classes2.dex */
class j implements g {
    static final long[] f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L};
    final j$.time.temporal.r a;
    final int b;
    final int c;
    private final w d;
    final int e;

    j(j$.time.temporal.r rVar, int i, int i2, w wVar) {
        this.a = rVar;
        this.b = i;
        this.c = i2;
        this.d = wVar;
        this.e = 0;
    }

    protected j(j$.time.temporal.r rVar, int i, int i2, w wVar, int i3) {
        this.a = rVar;
        this.b = i;
        this.c = i2;
        this.d = wVar;
        this.e = i3;
    }

    j b() {
        return this.e == -1 ? this : new j(this.a, this.b, this.c, this.d, -1);
    }

    j c(int i) {
        return new j(this.a, this.b, this.c, this.d, this.e + i);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0097 A[LOOP:0: B:18:0x008f->B:20:0x0097, LOOP_END] */
    @Override // j$.time.format.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean i(j$.time.format.r r14, java.lang.StringBuilder r15) {
        /*
            r13 = this;
            j$.time.temporal.r r0 = r13.a
            java.lang.Long r1 = r14.e(r0)
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            long r3 = r1.longValue()
            j$.time.format.u r14 = r14.b()
            r5 = -9223372036854775808
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L1b
            java.lang.String r1 = "9223372036854775808"
            goto L23
        L1b:
            long r5 = java.lang.Math.abs(r3)
            java.lang.String r1 = java.lang.Long.toString(r5)
        L23:
            int r5 = r1.length()
            java.lang.String r6 = " cannot be printed as the value "
            java.lang.String r7 = "Field "
            int r8 = r13.c
            if (r5 > r8) goto La3
            r14.getClass()
            r14 = 1
            r8 = 0
            int r5 = r13.b
            r10 = 2
            j$.time.format.w r11 = r13.d
            int r12 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r12 < 0) goto L5a
            int[] r0 = j$.time.format.d.a
            int r6 = r11.ordinal()
            r0 = r0[r6]
            if (r0 == r14) goto L4b
            if (r0 == r10) goto L57
            goto L8f
        L4b:
            r0 = 19
            if (r5 >= r0) goto L8f
            long[] r0 = j$.time.format.j.f
            r6 = r0[r5]
            int r0 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r0 < 0) goto L8f
        L57:
            r0 = 43
            goto L8c
        L5a:
            int[] r8 = j$.time.format.d.a
            int r9 = r11.ordinal()
            r8 = r8[r9]
            if (r8 == r14) goto L8a
            if (r8 == r10) goto L8a
            r9 = 3
            if (r8 == r9) goto L8a
            r9 = 4
            if (r8 == r9) goto L6d
            goto L8f
        L6d:
            j$.time.d r14 = new j$.time.d
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>(r7)
            r15.append(r0)
            r15.append(r6)
            r15.append(r3)
            java.lang.String r0 = " cannot be negative according to the SignStyle"
            r15.append(r0)
            java.lang.String r15 = r15.toString()
            r14.<init>(r15)
            throw r14
        L8a:
            r0 = 45
        L8c:
            r15.append(r0)
        L8f:
            int r0 = r1.length()
            int r0 = r5 - r0
            if (r2 >= r0) goto L9f
            r0 = 48
            r15.append(r0)
            int r2 = r2 + 1
            goto L8f
        L9f:
            r15.append(r1)
            return r14
        La3:
            j$.time.d r14 = new j$.time.d
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>(r7)
            r15.append(r0)
            r15.append(r6)
            r15.append(r3)
            java.lang.String r0 = " exceeds the maximum print width of "
            r15.append(r0)
            r15.append(r8)
            java.lang.String r15 = r15.toString()
            r14.<init>(r15)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.j.i(j$.time.format.r, java.lang.StringBuilder):boolean");
    }

    public String toString() {
        int i = this.c;
        w wVar = this.d;
        j$.time.temporal.r rVar = this.a;
        int i2 = this.b;
        if (i2 == 1 && i == 19 && wVar == w.NORMAL) {
            return "Value(" + rVar + ")";
        }
        if (i2 == i && wVar == w.NOT_NEGATIVE) {
            return "Value(" + rVar + "," + i2 + ")";
        }
        return "Value(" + rVar + "," + i2 + "," + i + "," + wVar + ")";
    }
}
