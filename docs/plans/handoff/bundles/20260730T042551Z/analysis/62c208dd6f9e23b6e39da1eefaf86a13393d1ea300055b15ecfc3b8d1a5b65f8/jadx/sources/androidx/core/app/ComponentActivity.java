package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.Cclass;
import androidx.lifecycle.Cgoto;
import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.C0262Hp;
import defpackage.C2680eE;
import defpackage.InterfaceC2714eq;

/* loaded from: classes.dex */
public class ComponentActivity extends Activity implements InterfaceC2714eq, C0262Hp.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final Cgoto f6485do;

    public ComponentActivity() {
        new C2680eE();
        this.f6485do = new Cgoto(this);
    }

    @Override // defpackage.C0262Hp.Cdo
    /* renamed from: case */
    public final boolean mo887case(KeyEvent keyEvent) {
        C0173Do.m401try(keyEvent, "event");
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        C0173Do.m401try(keyEvent, "event");
        View decorView = getWindow().getDecorView();
        C0173Do.m399new(decorView, "window.decorView");
        if (C0262Hp.m885do(decorView, keyEvent)) {
            return true;
        }
        return C0262Hp.m886if(this, decorView, this, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        C0173Do.m401try(keyEvent, "event");
        View decorView = getWindow().getDecorView();
        C0173Do.m399new(decorView, "window.decorView");
        if (C0262Hp.m885do(decorView, keyEvent)) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    public Ctry getLifecycle() {
        return this.f6485do;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = Cclass.f7100for;
        Cclass.Cif.m4249if(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C0173Do.m401try(bundle, "outState");
        this.f6485do.m4262goto();
        super.onSaveInstanceState(bundle);
    }
}
