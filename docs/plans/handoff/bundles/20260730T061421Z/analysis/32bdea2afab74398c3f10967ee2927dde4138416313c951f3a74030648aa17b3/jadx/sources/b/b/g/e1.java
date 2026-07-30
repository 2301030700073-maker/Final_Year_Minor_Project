package b.b.g;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class e1 implements b.b.f.m.C {

    /* renamed from: a, reason: collision with root package name */
    public b.b.f.m.o f528a;

    /* renamed from: b, reason: collision with root package name */
    public b.b.f.m.r f529b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Toolbar f530c;

    public e1(Toolbar toolbar) {
        this.f530c = toolbar;
    }

    @Override // b.b.f.m.C
    public void a(b.b.f.m.o oVar, boolean z) {
    }

    @Override // b.b.f.m.C
    public boolean c() {
        return false;
    }

    @Override // b.b.f.m.C
    public void d(Context context, b.b.f.m.o oVar) {
        b.b.f.m.r rVar;
        b.b.f.m.o oVar2 = this.f528a;
        if (oVar2 != null && (rVar = this.f529b) != null) {
            oVar2.d(rVar);
        }
        this.f528a = oVar;
    }

    @Override // b.b.f.m.C
    public boolean e(b.b.f.m.o oVar, b.b.f.m.r rVar) {
        KeyEvent.Callback callback = this.f530c.i;
        if (callback instanceof b.b.f.c) {
            ((b.b.f.c) callback).d();
        }
        Toolbar toolbar = this.f530c;
        toolbar.removeView(toolbar.i);
        Toolbar toolbar2 = this.f530c;
        toolbar2.removeView(toolbar2.h);
        Toolbar toolbar3 = this.f530c;
        toolbar3.i = null;
        int size = toolbar3.E.size();
        while (true) {
            size--;
            if (size < 0) {
                toolbar3.E.clear();
                this.f529b = null;
                this.f530c.requestLayout();
                rVar.C = false;
                rVar.n.p(false);
                return true;
            }
            toolbar3.addView((View) toolbar3.E.get(size));
        }
    }

    @Override // b.b.f.m.C
    public boolean g(b.b.f.m.o oVar, b.b.f.m.r rVar) {
        Toolbar toolbar = this.f530c;
        if (toolbar.h == null) {
            F f = new F(toolbar.getContext(), null, R.attr.toolbarNavigationButtonStyle);
            toolbar.h = f;
            f.setImageDrawable(toolbar.f);
            toolbar.h.setContentDescription(toolbar.g);
            f1 generateDefaultLayoutParams = toolbar.generateDefaultLayoutParams();
            generateDefaultLayoutParams.f290a = (toolbar.n & 112) | 8388611;
            generateDefaultLayoutParams.f536b = 2;
            toolbar.h.setLayoutParams(generateDefaultLayoutParams);
            toolbar.h.setOnClickListener(new d1(toolbar));
        }
        ViewParent parent = this.f530c.h.getParent();
        Toolbar toolbar2 = this.f530c;
        if (parent != toolbar2) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar2.h);
            }
            Toolbar toolbar3 = this.f530c;
            toolbar3.addView(toolbar3.h);
        }
        this.f530c.i = rVar.getActionView();
        this.f529b = rVar;
        ViewParent parent2 = this.f530c.i.getParent();
        Toolbar toolbar4 = this.f530c;
        if (parent2 != toolbar4) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar4.i);
            }
            f1 generateDefaultLayoutParams2 = this.f530c.generateDefaultLayoutParams();
            Toolbar toolbar5 = this.f530c;
            generateDefaultLayoutParams2.f290a = 8388611 | (toolbar5.n & 112);
            generateDefaultLayoutParams2.f536b = 2;
            toolbar5.i.setLayoutParams(generateDefaultLayoutParams2);
            Toolbar toolbar6 = this.f530c;
            toolbar6.addView(toolbar6.i);
        }
        Toolbar toolbar7 = this.f530c;
        int childCount = toolbar7.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            View childAt = toolbar7.getChildAt(childCount);
            if (((f1) childAt.getLayoutParams()).f536b != 2 && childAt != toolbar7.f66a) {
                toolbar7.removeViewAt(childCount);
                toolbar7.E.add(childAt);
            }
        }
        this.f530c.requestLayout();
        rVar.C = true;
        rVar.n.p(false);
        KeyEvent.Callback callback = this.f530c.i;
        if (callback instanceof b.b.f.c) {
            ((b.b.f.c) callback).c();
        }
        return true;
    }

    @Override // b.b.f.m.C
    public void h(b.b.f.m.B b2) {
    }

    @Override // b.b.f.m.C
    public boolean i(b.b.f.m.K k) {
        return false;
    }

    @Override // b.b.f.m.C
    public void j(boolean z) {
        if (this.f529b != null) {
            b.b.f.m.o oVar = this.f528a;
            boolean z2 = false;
            if (oVar != null) {
                int size = oVar.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    if (this.f528a.getItem(i) == this.f529b) {
                        z2 = true;
                        break;
                    }
                    i++;
                }
            }
            if (z2) {
                return;
            }
            e(this.f528a, this.f529b);
        }
    }
}
