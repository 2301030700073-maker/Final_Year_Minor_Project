package defpackage;

import java.util.zip.Inflater;

/* renamed from: Fn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0216Fn implements KE {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0671a6 f1086do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Inflater f1087do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1088do;

    /* renamed from: for, reason: not valid java name */
    public int f1089for;

    public C0216Fn(Uy uy, Inflater inflater) {
        this.f1086do = uy;
        this.f1087do = inflater;
    }

    @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f1088do) {
            return;
        }
        this.f1087do.end();
        this.f1088do = true;
        this.f1086do.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0071 A[Catch: DataFormatException -> 0x00ae, TryCatch #0 {DataFormatException -> 0x00ae, blocks: (B:19:0x004d, B:43:0x0065, B:21:0x0071, B:23:0x0077, B:28:0x0081, B:29:0x0088, B:32:0x0089, B:35:0x009c, B:37:0x00a2, B:40:0x008e), top: B:18:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0065 A[SYNTHETIC] */
    @Override // defpackage.KE
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo631throw(defpackage.U5 r8, long r9) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0216Fn.mo631throw(U5, long):long");
    }

    @Override // defpackage.KE
    /* renamed from: try, reason: not valid java name */
    public final C3675sH mo632try() {
        return this.f1086do.mo632try();
    }
}
