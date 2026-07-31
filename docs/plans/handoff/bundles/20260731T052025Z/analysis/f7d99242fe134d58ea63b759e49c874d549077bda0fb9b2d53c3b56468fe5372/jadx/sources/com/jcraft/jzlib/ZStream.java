package com.jcraft.jzlib;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZStream {
    public Adler32 _adler;
    public long adler;
    public int avail_in;
    public int avail_out;
    public Deflate dstate;
    public String msg;
    public byte[] next_in;
    public int next_in_index;
    public byte[] next_out;
    public int next_out_index;

    /* JADX WARN: Code restructure failed: missing block: B:167:0x0254, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0267, code lost:
    
        if (r24 == 4) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0375, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00f4, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0446  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int deflate(int r24) {
        /*
            Method dump skipped, instructions count: 1110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jzlib.ZStream.deflate(int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        if (r3.length >= (r5 + r1)) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void flush_pending() {
        /*
            r6 = this;
            com.jcraft.jzlib.Deflate r0 = r6.dstate
            int r1 = r0.pending
            int r2 = r6.avail_out
            if (r1 <= r2) goto L9
            r1 = r2
        L9:
            if (r1 != 0) goto Ld
            goto L99
        Ld:
            byte[] r2 = r0.pending_buf
            int r3 = r2.length
            int r0 = r0.pending_out
            if (r3 <= r0) goto L23
            byte[] r3 = r6.next_out
            int r4 = r3.length
            int r5 = r6.next_out_index
            if (r4 <= r5) goto L23
            int r2 = r2.length
            int r0 = r0 + r1
            if (r2 < r0) goto L23
            int r0 = r3.length
            int r5 = r5 + r1
            if (r0 >= r5) goto L71
        L23:
            java.io.PrintStream r0 = java.lang.System.out
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
            com.jcraft.jzlib.Deflate r3 = r6.dstate
            byte[] r3 = r3.pending_buf
            int r3 = r3.length
            r2.append(r3)
            java.lang.String r3 = ", "
            r2.append(r3)
            com.jcraft.jzlib.Deflate r4 = r6.dstate
            int r4 = r4.pending_out
            r2.append(r4)
            r2.append(r3)
            byte[] r4 = r6.next_out
            int r4 = r4.length
            r2.append(r4)
            r2.append(r3)
            int r4 = r6.next_out_index
            r2.append(r4)
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            r0.println(r2)
            java.io.PrintStream r0 = java.lang.System.out
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            java.lang.String r3 = "avail_out="
            r2.<init>(r3)
            int r3 = r6.avail_out
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r0.println(r2)
        L71:
            com.jcraft.jzlib.Deflate r0 = r6.dstate
            byte[] r2 = r0.pending_buf
            int r0 = r0.pending_out
            byte[] r3 = r6.next_out
            int r4 = r6.next_out_index
            java.lang.System.arraycopy(r2, r0, r3, r4, r1)
            int r0 = r6.next_out_index
            int r0 = r0 + r1
            r6.next_out_index = r0
            com.jcraft.jzlib.Deflate r0 = r6.dstate
            int r2 = r0.pending_out
            int r2 = r2 + r1
            r0.pending_out = r2
            int r2 = r6.avail_out
            int r2 = r2 - r1
            r6.avail_out = r2
            int r6 = r0.pending
            int r6 = r6 - r1
            r0.pending = r6
            if (r6 != 0) goto L99
            r6 = 0
            r0.pending_out = r6
        L99:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jzlib.ZStream.flush_pending():void");
    }
}
