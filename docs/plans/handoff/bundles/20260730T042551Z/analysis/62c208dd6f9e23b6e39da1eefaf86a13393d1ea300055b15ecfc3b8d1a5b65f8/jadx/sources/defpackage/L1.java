package defpackage;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.emoji2.text.Cnew;
import defpackage.C0142Cf;
import defpackage.C0318Kf;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class L1 {

    /* renamed from: do, reason: not valid java name */
    public final C0142Cf f1907do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EditText f1908do;

    public L1(EditText editText) {
        this.f1908do = editText;
        this.f1907do = new C0142Cf(editText);
    }

    /* renamed from: do, reason: not valid java name */
    public final KeyListener m1255do(KeyListener keyListener) {
        if (!(!(keyListener instanceof NumberKeyListener))) {
            return keyListener;
        }
        this.f1907do.f403do.getClass();
        if (keyListener instanceof C0230Gf) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new C0230Gf(keyListener);
    }

    /* renamed from: for, reason: not valid java name */
    public final InputConnection m1256for(InputConnection inputConnection, EditorInfo editorInfo) {
        C0142Cf c0142Cf = this.f1907do;
        if (inputConnection == null) {
            c0142Cf.getClass();
            return null;
        }
        C0142Cf.Cdo cdo = c0142Cf.f403do;
        cdo.getClass();
        return inputConnection instanceof C0186Ef ? inputConnection : new C0186Ef(cdo.f405do, inputConnection, editorInfo);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1257if(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f1908do.getContext().obtainStyledAttributes(attributeSet, O4.f2575throw, i, 0);
        try {
            boolean z = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
            obtainStyledAttributes.recycle();
            C0318Kf c0318Kf = this.f1907do.f403do.f404do;
            if (c0318Kf.f1852if != z) {
                if (c0318Kf.f1849do != null) {
                    Cnew m4104do = Cnew.m4104do();
                    C0318Kf.Cdo cdo = c0318Kf.f1849do;
                    m4104do.getClass();
                    O4.m1627this(cdo, "initCallback cannot be null");
                    ReentrantReadWriteLock reentrantReadWriteLock = m4104do.f6784do;
                    reentrantReadWriteLock.writeLock().lock();
                    try {
                        m4104do.f6779do.remove(cdo);
                    } finally {
                        reentrantReadWriteLock.writeLock().unlock();
                    }
                }
                c0318Kf.f1852if = z;
                if (z) {
                    C0318Kf.m1187do(c0318Kf.f1850do, Cnew.m4104do().m4108if());
                }
            }
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
