package b.e.i;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public ViewParent f762a;

    /* renamed from: b, reason: collision with root package name */
    public ViewParent f763b;

    /* renamed from: c, reason: collision with root package name */
    public final View f764c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f765d;
    public int[] e;

    public f(View view) {
        this.f764c = view;
    }

    public boolean a(float f, float f2, boolean z) {
        ViewParent f3;
        if (!this.f765d || (f3 = f(0)) == null) {
            return false;
        }
        return b.e.b.d.s(f3, this.f764c, f, f2, z);
    }

    public boolean b(float f, float f2) {
        ViewParent f3;
        if (!this.f765d || (f3 = f(0)) == null) {
            return false;
        }
        return b.e.b.d.t(f3, this.f764c, f, f2);
    }

    public boolean c(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent f;
        int i4;
        int i5;
        if (!this.f765d || (f = f(i3)) == null) {
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
        if (iArr2 != null) {
            this.f764c.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.e == null) {
                this.e = new int[2];
            }
            iArr = this.e;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        b.e.b.d.u(f, this.f764c, i, i2, iArr, i3);
        if (iArr2 != null) {
            this.f764c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean d(int i, int i2, int i3, int i4, int[] iArr) {
        return e(i, i2, i3, i4, iArr, 0, null);
    }

    public final boolean e(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent f;
        int i6;
        int i7;
        int[] iArr3;
        if (!this.f765d || (f = f(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f764c.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            if (this.e == null) {
                this.e = new int[2];
            }
            int[] iArr4 = this.e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        b.e.b.d.v(f, this.f764c, i, i2, i3, i4, i5, iArr3);
        if (iArr != null) {
            this.f764c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    public final ViewParent f(int i) {
        if (i == 0) {
            return this.f762a;
        }
        if (i != 1) {
            return null;
        }
        return this.f763b;
    }

    public boolean g(int i) {
        return f(i) != null;
    }

    public boolean h(int i, int i2) {
        boolean onStartNestedScroll;
        if (f(i2) != null) {
            return true;
        }
        if (this.f765d) {
            View view = this.f764c;
            for (ViewParent parent = this.f764c.getParent(); parent != null; parent = parent.getParent()) {
                View view2 = this.f764c;
                boolean z = parent instanceof g;
                if (z) {
                    onStartNestedScroll = ((g) parent).q(view, view2, i, i2);
                } else {
                    if (i2 == 0) {
                        try {
                            onStartNestedScroll = parent.onStartNestedScroll(view, view2, i);
                        } catch (AbstractMethodError e) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e);
                        }
                    }
                    onStartNestedScroll = false;
                }
                if (onStartNestedScroll) {
                    if (i2 == 0) {
                        this.f762a = parent;
                    } else if (i2 == 1) {
                        this.f763b = parent;
                    }
                    View view3 = this.f764c;
                    if (z) {
                        ((g) parent).j(view, view3, i, i2);
                    } else if (i2 == 0) {
                        try {
                            parent.onNestedScrollAccepted(view, view3, i);
                        } catch (AbstractMethodError e2) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e2);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view = parent;
                }
            }
        }
        return false;
    }

    public void i(int i) {
        ViewParent f = f(i);
        if (f != null) {
            View view = this.f764c;
            if (f instanceof g) {
                ((g) f).k(view, i);
            } else if (i == 0) {
                try {
                    f.onStopNestedScroll(view);
                } catch (AbstractMethodError e) {
                    Log.e("ViewParentCompat", "ViewParent " + f + " does not implement interface method onStopNestedScroll", e);
                }
            }
            if (i == 0) {
                this.f762a = null;
            } else {
                if (i != 1) {
                    return;
                }
                this.f763b = null;
            }
        }
    }
}
