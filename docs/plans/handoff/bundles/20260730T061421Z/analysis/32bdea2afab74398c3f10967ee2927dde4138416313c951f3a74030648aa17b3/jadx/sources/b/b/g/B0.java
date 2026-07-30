package b.b.g;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;

/* loaded from: classes.dex */
public class B0 extends C0084y0 implements InterfaceC0086z0 {
    public InterfaceC0086z0 C;

    public B0(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, null, i, i2);
    }

    @Override // b.b.g.InterfaceC0086z0
    public void e(b.b.f.m.o oVar, MenuItem menuItem) {
        InterfaceC0086z0 interfaceC0086z0 = this.C;
        if (interfaceC0086z0 != null) {
            interfaceC0086z0.e(oVar, menuItem);
        }
    }

    @Override // b.b.g.InterfaceC0086z0
    public void h(b.b.f.m.o oVar, MenuItem menuItem) {
        InterfaceC0086z0 interfaceC0086z0 = this.C;
        if (interfaceC0086z0 != null) {
            interfaceC0086z0.h(oVar, menuItem);
        }
    }

    @Override // b.b.g.C0084y0
    public C0061m0 q(Context context, boolean z) {
        A0 a0 = new A0(context, z);
        a0.p = this;
        return a0;
    }
}
