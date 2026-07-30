package b.b.c;

import android.app.Dialog;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class L extends Dialog implements InterfaceC0017p {

    /* renamed from: a, reason: collision with root package name */
    public AbstractC0018q f261a;

    /* renamed from: b, reason: collision with root package name */
    public final b.e.i.e f262b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public L(android.content.Context r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r1 = 2130968710(0x7f040086, float:1.7546081E38)
            if (r6 != 0) goto L15
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r5.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L16
        L15:
            r2 = r6
        L16:
            r4.<init>(r5, r2)
            b.b.c.K r2 = new b.b.c.K
            r2.<init>(r4)
            r4.f262b = r2
            b.b.c.q r4 = r4.d()
            if (r6 != 0) goto L34
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            r5.resolveAttribute(r1, r6, r0)
            int r6 = r6.resourceId
        L34:
            r5 = r4
            b.b.c.J r5 = (b.b.c.J) r5
            r5.N = r6
            r5 = 0
            r4.i(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.L.<init>(android.content.Context, int):void");
    }

    @Override // b.b.c.InterfaceC0017p
    public void a(b.b.f.b bVar) {
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d().c(view, layoutParams);
    }

    @Override // b.b.c.InterfaceC0017p
    public void b(b.b.f.b bVar) {
    }

    @Override // b.b.c.InterfaceC0017p
    public b.b.f.b c(b.b.f.a aVar) {
        return null;
    }

    public AbstractC0018q d() {
        if (this.f261a == null) {
            this.f261a = AbstractC0018q.f(this, this);
        }
        return this.f261a;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        d().j();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        getWindow().getDecorView();
        b.e.i.e eVar = this.f262b;
        if (eVar == null) {
            return false;
        }
        return eVar.superDispatchKeyEvent(keyEvent);
    }

    public boolean e(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public View findViewById(int i) {
        J j = (J) d();
        j.A();
        return j.e.findViewById(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        d().h();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        d().g();
        super.onCreate(bundle);
        d().i(bundle);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        J j = (J) d();
        j.K = false;
        j.G();
        AbstractC0004c abstractC0004c = j.h;
        if (abstractC0004c != null) {
            abstractC0004c.h(false);
        }
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        d().m(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        d().p(charSequence);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        d().n(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d().o(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        d().p(getContext().getString(i));
    }
}
