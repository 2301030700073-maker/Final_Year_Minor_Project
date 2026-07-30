package b.e.b;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ReportFragment;
import b.e.i.q;
import b.j.AbstractC0137g;

/* loaded from: classes.dex */
public class f extends Activity implements b.j.j, b.e.i.e {
    public b.d.n mExtraDataMap = new b.d.n();
    public b.j.l mLifecycleRegistry = new b.j.l(this);

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView != null) {
            q.c(decorView, keyEvent);
        }
        return superDispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView != null) {
            q.c(decorView, keyEvent);
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Deprecated
    public e getExtraData(Class cls) {
        return (e) this.mExtraDataMap.getOrDefault(cls, null);
    }

    public abstract AbstractC0137g getLifecycle();

    @Override // android.app.Activity
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ReportFragment.b(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.mLifecycleRegistry.e(Lifecycle$State.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @Deprecated
    public void putExtraData(e eVar) {
        this.mExtraDataMap.put(eVar.getClass(), eVar);
    }

    @Override // b.e.i.e
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
