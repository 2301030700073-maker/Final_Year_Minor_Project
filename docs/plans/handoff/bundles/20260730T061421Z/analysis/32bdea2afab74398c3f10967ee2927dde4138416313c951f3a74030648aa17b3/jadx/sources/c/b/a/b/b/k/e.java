package c.b.a.b.b.k;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.KeyEvent;
import android.view.MotionEvent;
import b.e.i.q;
import c.b.a.b.a.a.a.a.c.C0380t;
import c.b.a.b.a.a.a.a.c.InterfaceC0379s;
import c.b.a.b.a.a.a.a.c.r;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class e implements r {

    /* renamed from: a, reason: collision with root package name */
    public InterfaceC0379s f2604a;

    /* renamed from: b, reason: collision with root package name */
    public b.f.b.d f2605b;

    /* renamed from: c, reason: collision with root package name */
    public C0380t f2606c;
    public final Context e;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f2607d = new ArrayList();
    public int f = 1;

    public e(Context context) {
        this.e = context;
    }

    @Override // c.b.a.b.a.a.a.a.c.r
    public void a(C0380t c0380t) {
        this.f2606c = c0380t;
        d dVar = new d(this, c0380t);
        this.f2605b = dVar;
        q.D(c0380t, dVar);
    }

    @Override // c.b.a.b.a.a.a.a.c.r
    public boolean b(MotionEvent motionEvent) {
        return this.f2605b.dispatchHoverEvent(motionEvent);
    }

    @Override // c.b.a.b.a.a.a.a.c.r
    public void c(RectF rectF, String str) {
        ArrayList arrayList = this.f2607d;
        int i = this.f;
        this.f = i + 1;
        arrayList.add(new c(this, i, rectF, str));
    }

    @Override // c.b.a.b.a.a.a.a.c.r
    public void d(boolean z, int i, Rect rect) {
        b.f.b.d dVar = this.f2605b;
        int i2 = dVar.mKeyboardFocusedVirtualViewId;
        if (i2 != Integer.MIN_VALUE) {
            dVar.clearKeyboardFocusForVirtualView(i2);
        }
        if (z) {
            dVar.moveFocus(i, rect);
        }
    }

    @Override // c.b.a.b.a.a.a.a.c.r
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f2605b.dispatchKeyEvent(keyEvent);
    }

    @Override // c.b.a.b.a.a.a.a.c.r
    public void e(InterfaceC0379s interfaceC0379s) {
        this.f2604a = interfaceC0379s;
    }
}
