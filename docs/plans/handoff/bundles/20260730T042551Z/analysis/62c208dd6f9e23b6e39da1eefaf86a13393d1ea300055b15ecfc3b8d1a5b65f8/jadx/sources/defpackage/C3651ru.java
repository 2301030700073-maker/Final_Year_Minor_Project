package defpackage;

import android.view.View;
import android.view.ViewParent;
import j$.util.Objects;

/* renamed from: ru, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3651ru {

    /* renamed from: do, reason: not valid java name */
    public final View f15334do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewParent f15335do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15336do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f15337do;

    /* renamed from: if, reason: not valid java name */
    public ViewParent f15338if;

    public C3651ru(View view) {
        this.f15334do = view;
    }

    /* renamed from: case, reason: not valid java name */
    public final ViewParent m8024case(int i) {
        if (i == 0) {
            return this.f15335do;
        }
        if (i != 1) {
            return null;
        }
        return this.f15338if;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m8025do(float f, float f2, boolean z) {
        ViewParent m8024case;
        if (!this.f15336do || (m8024case = m8024case(0)) == null) {
            return false;
        }
        try {
            return C3208kL.m7232do(m8024case, this.f15334do, f, f2, z);
        } catch (AbstractMethodError unused) {
            Objects.toString(m8024case);
            return false;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m8026else(int i, int i2) {
        boolean m7231case;
        if (m8024case(i2) != null) {
            return true;
        }
        if (this.f15336do) {
            View view = this.f15334do;
            View view2 = view;
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                boolean z = parent instanceof InterfaceC3710su;
                if (z) {
                    m7231case = ((InterfaceC3710su) parent).mo3389while(view2, view, i, i2);
                } else {
                    if (i2 == 0) {
                        try {
                            m7231case = C3208kL.m7231case(parent, view2, view, i);
                        } catch (AbstractMethodError unused) {
                            Objects.toString(parent);
                        }
                    }
                    m7231case = false;
                }
                if (m7231case) {
                    if (i2 == 0) {
                        this.f15335do = parent;
                    } else if (i2 == 1) {
                        this.f15338if = parent;
                    }
                    if (z) {
                        ((InterfaceC3710su) parent).mo3385super(view2, view, i, i2);
                    } else if (i2 == 0) {
                        try {
                            C3208kL.m7237try(parent, view2, view, i);
                        } catch (AbstractMethodError unused2) {
                            Objects.toString(parent);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m8027for(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        ViewParent m8024case;
        int i4;
        int i5;
        int[] iArr3;
        if (!this.f15336do || (m8024case = m8024case(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        View view = this.f15334do;
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.f15337do == null) {
                this.f15337do = new int[2];
            }
            iArr3 = this.f15337do;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        View view2 = this.f15334do;
        if (m8024case instanceof InterfaceC3710su) {
            ((InterfaceC3710su) m8024case).mo3372catch(view2, i, i2, iArr3, i3);
        } else if (i3 == 0) {
            try {
                C3208kL.m7234for(m8024case, view2, i, i2, iArr3);
            } catch (AbstractMethodError unused) {
                Objects.toString(m8024case);
            }
        }
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8028goto(int i) {
        ViewParent m8024case = m8024case(i);
        if (m8024case != null) {
            boolean z = m8024case instanceof InterfaceC3710su;
            View view = this.f15334do;
            if (z) {
                ((InterfaceC3710su) m8024case).mo3373class(view, i);
            } else if (i == 0) {
                try {
                    C3208kL.m7233else(m8024case, view);
                } catch (AbstractMethodError unused) {
                    Objects.toString(m8024case);
                }
            }
            if (i == 0) {
                this.f15335do = null;
            } else {
                if (i != 1) {
                    return;
                }
                this.f15338if = null;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m8029if(float f, float f2) {
        ViewParent m8024case;
        if (!this.f15336do || (m8024case = m8024case(0)) == null) {
            return false;
        }
        try {
            return C3208kL.m7235if(m8024case, this.f15334do, f, f2);
        } catch (AbstractMethodError unused) {
            Objects.toString(m8024case);
            return false;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8030new(int i, int i2, int i3, int[] iArr) {
        m8031try(0, i, 0, i2, null, i3, iArr);
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m8031try(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m8024case;
        int i6;
        int i7;
        int[] iArr3;
        if (!this.f15336do || (m8024case = m8024case(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        View view = this.f15334do;
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            if (this.f15337do == null) {
                this.f15337do = new int[2];
            }
            int[] iArr4 = this.f15337do;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        View view2 = this.f15334do;
        if (m8024case instanceof InterfaceC3769tu) {
            ((InterfaceC3769tu) m8024case).mo3374const(view2, i, i2, i3, i4, i5, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i3;
            iArr3[1] = iArr3[1] + i4;
            if (m8024case instanceof InterfaceC3710su) {
                ((InterfaceC3710su) m8024case).mo3377final(view2, i, i2, i3, i4, i5);
            } else if (i5 == 0) {
                try {
                    C3208kL.m7236new(m8024case, view2, i, i2, i3, i4);
                } catch (AbstractMethodError unused) {
                    Objects.toString(m8024case);
                }
            }
        }
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }
}
