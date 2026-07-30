package defpackage;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.emoji2.text.Ccase;
import androidx.emoji2.text.Cnew;

/* renamed from: Gf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0230Gf implements KeyListener {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f1219do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final KeyListener f1220do;

    /* renamed from: Gf$do, reason: invalid class name */
    public static class Cdo {
    }

    public C0230Gf(KeyListener keyListener) {
        Cdo cdo = new Cdo();
        this.f1220do = keyListener;
        this.f1219do = cdo;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i) {
        this.f1220do.clearMetaKeyState(view, editable, i);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f1220do.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        boolean z;
        this.f1219do.getClass();
        Object obj = Cnew.f6777do;
        if (i != 67 ? i != 112 ? false : Ccase.m4091do(editable, keyEvent, true) : Ccase.m4091do(editable, keyEvent, false)) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z = true;
        } else {
            z = false;
        }
        return z || this.f1220do.onKeyDown(view, editable, i, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f1220do.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.f1220do.onKeyUp(view, editable, i, keyEvent);
    }
}
