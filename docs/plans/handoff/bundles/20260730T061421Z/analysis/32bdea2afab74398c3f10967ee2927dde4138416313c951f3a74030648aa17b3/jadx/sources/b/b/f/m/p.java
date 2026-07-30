package b.b.f.m;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import b.b.c.DialogInterfaceC0015n;

/* loaded from: classes.dex */
public class p implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, B {

    /* renamed from: a, reason: collision with root package name */
    public o f404a;

    /* renamed from: b, reason: collision with root package name */
    public DialogInterfaceC0015n f405b;

    /* renamed from: c, reason: collision with root package name */
    public C0034k f406c;

    public p(o oVar) {
        this.f404a = oVar;
    }

    @Override // b.b.f.m.B
    public void a(o oVar, boolean z) {
        DialogInterfaceC0015n dialogInterfaceC0015n;
        if ((z || oVar == this.f404a) && (dialogInterfaceC0015n = this.f405b) != null) {
            dialogInterfaceC0015n.dismiss();
        }
    }

    @Override // b.b.f.m.B
    public boolean b(o oVar) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f404a.q(((C0033j) this.f406c.b()).getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        C0034k c0034k = this.f406c;
        o oVar = this.f404a;
        B b2 = c0034k.h;
        if (b2 != null) {
            b2.a(oVar, true);
        }
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f405b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f405b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f404a.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f404a.performShortcut(i, keyEvent, 0);
    }
}
