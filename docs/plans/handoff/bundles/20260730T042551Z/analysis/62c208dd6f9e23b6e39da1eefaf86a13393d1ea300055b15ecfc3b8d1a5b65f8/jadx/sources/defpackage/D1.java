package defpackage;

import androidx.appcompat.app.AppCompatDelegateImpl;

/* loaded from: classes.dex */
public final class D1 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatDelegateImpl f462do;

    /* renamed from: D1$do, reason: invalid class name */
    public class Cdo extends C0820cd {
        public Cdo() {
            super(1);
        }

        @Override // defpackage.InterfaceC3503pL
        /* renamed from: do, reason: not valid java name */
        public final void mo325do() {
            D1 d1 = D1.this;
            d1.f462do.f5240do.setAlpha(1.0f);
            AppCompatDelegateImpl appCompatDelegateImpl = d1.f462do;
            appCompatDelegateImpl.f5243do.m7566new(null);
            appCompatDelegateImpl.f5243do = null;
        }

        @Override // defpackage.C0820cd, defpackage.InterfaceC3503pL
        /* renamed from: for, reason: not valid java name */
        public final void mo326for() {
            D1.this.f462do.f5240do.setVisibility(0);
        }
    }

    public D1(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f462do = appCompatDelegateImpl;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            androidx.appcompat.app.AppCompatDelegateImpl r0 = r5.f462do
            android.widget.PopupWindow r1 = r0.f5228do
            androidx.appcompat.widget.ActionBarContextView r2 = r0.f5240do
            r3 = 55
            r4 = 0
            r1.showAtLocation(r2, r3, r4, r4)
            nL r1 = r0.f5243do
            if (r1 == 0) goto L13
            r1.m7565if()
        L13:
            boolean r1 = r0.f5250for
            if (r1 == 0) goto L25
            android.view.ViewGroup r1 = r0.f5226do
            if (r1 == 0) goto L25
            java.util.WeakHashMap<android.view.View, nL> r2 = defpackage.QK.f2909do
            boolean r1 = r1.isLaidOut()
            if (r1 == 0) goto L25
            r1 = 1
            goto L26
        L25:
            r1 = 0
        L26:
            r2 = 1065353216(0x3f800000, float:1.0)
            if (r1 == 0) goto L44
            androidx.appcompat.widget.ActionBarContextView r1 = r0.f5240do
            r3 = 0
            r1.setAlpha(r3)
            androidx.appcompat.widget.ActionBarContextView r1 = r0.f5240do
            nL r1 = defpackage.QK.m1851do(r1)
            r1.m7563do(r2)
            r0.f5243do = r1
            D1$do r0 = new D1$do
            r0.<init>()
            r1.m7566new(r0)
            goto L4e
        L44:
            androidx.appcompat.widget.ActionBarContextView r1 = r0.f5240do
            r1.setAlpha(r2)
            androidx.appcompat.widget.ActionBarContextView r0 = r0.f5240do
            r0.setVisibility(r4)
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.D1.run():void");
    }
}
