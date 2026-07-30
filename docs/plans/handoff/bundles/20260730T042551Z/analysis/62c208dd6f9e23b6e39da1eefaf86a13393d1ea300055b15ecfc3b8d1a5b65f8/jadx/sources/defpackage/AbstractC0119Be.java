package defpackage;

import java.util.concurrent.CancellationException;

/* renamed from: Be, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC0119Be<T> extends EG {

    /* renamed from: for, reason: not valid java name */
    public int f252for;

    public AbstractC0119Be(int i) {
        this.f252for = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: case, reason: not valid java name */
    public <T> T mo193case(Object obj) {
        return obj;
    }

    /* renamed from: do, reason: not valid java name */
    public void mo194do(Object obj, CancellationException cancellationException) {
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m195goto(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            C3850vF.m8451for(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        C0173Do.m398if(th);
        C3515pb.m7796do(mo196new().mo2221if(), new C0415Op("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    /* renamed from: new, reason: not valid java name */
    public abstract InterfaceC0576Wa<T> mo196new();

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        r6 = (defpackage.InterfaceC0634Yo) r6.mo814new(defpackage.InterfaceC0634Yo.Cif.f4763do);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r12 = this;
            HG r0 = r12.f765do
            Wa r1 = r12.mo196new()     // Catch: java.lang.Throwable -> L9e
            java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"
            defpackage.C0173Do.m396for(r1, r2)     // Catch: java.lang.Throwable -> L9e
            ze r1 = (defpackage.C4107ze) r1     // Catch: java.lang.Throwable -> L9e
            Wa<T> r2 = r1.f16932do     // Catch: java.lang.Throwable -> L9e
            java.lang.Object r1 = r1.f16935if     // Catch: java.lang.Throwable -> L9e
            jb r3 = r2.mo2221if()     // Catch: java.lang.Throwable -> L9e
            java.lang.Object r1 = defpackage.C2683eH.m6541for(r3, r1)     // Catch: java.lang.Throwable -> L9e
            Dp r4 = defpackage.C2683eH.f12658do     // Catch: java.lang.Throwable -> L9e
            r5 = 0
            if (r1 == r4) goto L23
            fJ r4 = defpackage.C3220kb.m7273if(r2, r3, r1)     // Catch: java.lang.Throwable -> L9e
            goto L24
        L23:
            r4 = r5
        L24:
            jb r6 = r2.mo2221if()     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r7 = r12.mo197this()     // Catch: java.lang.Throwable -> L5f
            java.lang.Throwable r8 = r12.mo198try(r7)     // Catch: java.lang.Throwable -> L5f
            if (r8 != 0) goto L47
            int r9 = r12.f252for     // Catch: java.lang.Throwable -> L5f
            r10 = 1
            if (r9 == r10) goto L3c
            r11 = 2
            if (r9 != r11) goto L3b
            goto L3c
        L3b:
            r10 = 0
        L3c:
            if (r10 == 0) goto L47
            Yo$if r9 = defpackage.InterfaceC0634Yo.Cif.f4763do     // Catch: java.lang.Throwable -> L5f
            jb$if r6 = r6.mo814new(r9)     // Catch: java.lang.Throwable -> L5f
            Yo r6 = (defpackage.InterfaceC0634Yo) r6     // Catch: java.lang.Throwable -> L5f
            goto L48
        L47:
            r6 = r5
        L48:
            if (r6 == 0) goto L61
            boolean r9 = r6.mo2955for()     // Catch: java.lang.Throwable -> L5f
            if (r9 != 0) goto L61
            java.util.concurrent.CancellationException r6 = r6.mo2956goto()     // Catch: java.lang.Throwable -> L5f
            r12.mo194do(r7, r6)     // Catch: java.lang.Throwable -> L5f
            aA$do r6 = defpackage.C3645ro.m8004import(r6)     // Catch: java.lang.Throwable -> L5f
            r2.mo1746while(r6)     // Catch: java.lang.Throwable -> L5f
            goto L72
        L5f:
            r2 = move-exception
            goto L92
        L61:
            if (r8 == 0) goto L6b
            aA$do r6 = defpackage.C3645ro.m8004import(r8)     // Catch: java.lang.Throwable -> L5f
            r2.mo1746while(r6)     // Catch: java.lang.Throwable -> L5f
            goto L72
        L6b:
            java.lang.Object r6 = r12.mo193case(r7)     // Catch: java.lang.Throwable -> L5f
            r2.mo1746while(r6)     // Catch: java.lang.Throwable -> L5f
        L72:
            kJ r2 = defpackage.C3206kJ.f13965do     // Catch: java.lang.Throwable -> L5f
            if (r4 == 0) goto L7c
            boolean r2 = r4.y()     // Catch: java.lang.Throwable -> L9e
            if (r2 == 0) goto L7f
        L7c:
            defpackage.C2683eH.m6540do(r3, r1)     // Catch: java.lang.Throwable -> L9e
        L7f:
            r0.mo496if()     // Catch: java.lang.Throwable -> L85
            kJ r0 = defpackage.C3206kJ.f13965do     // Catch: java.lang.Throwable -> L85
            goto L8a
        L85:
            r0 = move-exception
            aA$do r0 = defpackage.C3645ro.m8004import(r0)
        L8a:
            java.lang.Throwable r0 = defpackage.C0675aA.m3108do(r0)
            r12.m195goto(r5, r0)
            goto Lb1
        L92:
            if (r4 == 0) goto L9a
            boolean r4 = r4.y()     // Catch: java.lang.Throwable -> L9e
            if (r4 == 0) goto L9d
        L9a:
            defpackage.C2683eH.m6540do(r3, r1)     // Catch: java.lang.Throwable -> L9e
        L9d:
            throw r2     // Catch: java.lang.Throwable -> L9e
        L9e:
            r1 = move-exception
            r0.mo496if()     // Catch: java.lang.Throwable -> La5
            kJ r0 = defpackage.C3206kJ.f13965do     // Catch: java.lang.Throwable -> La5
            goto Laa
        La5:
            r0 = move-exception
            aA$do r0 = defpackage.C3645ro.m8004import(r0)
        Laa:
            java.lang.Throwable r0 = defpackage.C0675aA.m3108do(r0)
            r12.m195goto(r1, r0)
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC0119Be.run():void");
    }

    /* renamed from: this, reason: not valid java name */
    public abstract Object mo197this();

    /* renamed from: try, reason: not valid java name */
    public Throwable mo198try(Object obj) {
        U8 u8 = obj instanceof U8 ? (U8) obj : null;
        if (u8 != null) {
            return u8.f3839do;
        }
        return null;
    }
}
