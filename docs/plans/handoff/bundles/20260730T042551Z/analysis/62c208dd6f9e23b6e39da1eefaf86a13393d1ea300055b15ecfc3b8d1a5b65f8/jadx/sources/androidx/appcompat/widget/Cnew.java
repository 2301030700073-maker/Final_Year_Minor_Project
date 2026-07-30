package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.view.menu.Cthis;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.Toolbar.Ctry;
import com.joeykrim.rootcheck.R;
import defpackage.C0820cd;
import defpackage.C3385nL;
import defpackage.C3970xH;
import defpackage.IH;
import defpackage.InterfaceC2701ed;
import defpackage.O4;
import defpackage.QK;
import defpackage.UA;

/* renamed from: androidx.appcompat.widget.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements InterfaceC2701ed {

    /* renamed from: do, reason: not valid java name */
    public int f5999do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f6000do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f6001do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Window.Callback f6002do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionMenuPresenter f6003do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Toolbar f6004do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f6005do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6006do;

    /* renamed from: for, reason: not valid java name */
    public Drawable f6007for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f6008for;

    /* renamed from: if, reason: not valid java name */
    public int f6009if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f6010if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f6011if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6012if;

    /* renamed from: new, reason: not valid java name */
    public Drawable f6013new;

    /* renamed from: androidx.appcompat.widget.new$do, reason: invalid class name */
    public class Cdo extends C0820cd {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6015do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f6016if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(int i) {
            super(1);
            this.f6016if = i;
            this.f6015do = false;
        }

        @Override // defpackage.InterfaceC3503pL
        /* renamed from: do */
        public final void mo325do() {
            if (this.f6015do) {
                return;
            }
            Cnew.this.f6004do.setVisibility(this.f6016if);
        }

        @Override // defpackage.C0820cd, defpackage.InterfaceC3503pL
        /* renamed from: for */
        public final void mo326for() {
            Cnew.this.f6004do.setVisibility(0);
        }

        @Override // defpackage.C0820cd, defpackage.InterfaceC3503pL
        /* renamed from: if, reason: not valid java name */
        public final void mo3547if() {
            this.f6015do = true;
        }
    }

    public Cnew(Toolbar toolbar, boolean z) {
        Drawable drawable;
        this.f6009if = 0;
        this.f6004do = toolbar;
        CharSequence charSequence = toolbar.f5950if;
        this.f6005do = charSequence;
        this.f6011if = toolbar.f5943for;
        this.f6006do = charSequence != null;
        this.f6007for = toolbar.m3482const();
        C3970xH m8626const = C3970xH.m8626const(toolbar.getContext(), null, O4.f2541else, R.attr.actionBarStyle);
        int i = 15;
        this.f6013new = m8626const.m8639try(15);
        if (z) {
            CharSequence m8629catch = m8626const.m8629catch(27);
            if (!TextUtils.isEmpty(m8629catch)) {
                mo3543throw(m8629catch);
            }
            CharSequence m8629catch2 = m8626const.m8629catch(25);
            if (!TextUtils.isEmpty(m8629catch2)) {
                this.f6011if = m8629catch2;
                if ((this.f5999do & 8) != 0) {
                    toolbar.mo3487finally(m8629catch2);
                }
            }
            Drawable m8639try = m8626const.m8639try(20);
            if (m8639try != null) {
                this.f6010if = m8639try;
                m3544throws();
            }
            Drawable m8639try2 = m8626const.m8639try(17);
            if (m8639try2 != null) {
                this.f6000do = m8639try2;
                m3544throws();
            }
            if (this.f6007for == null && (drawable = this.f6013new) != null) {
                this.f6007for = drawable;
                if ((this.f5999do & 4) != 0) {
                    toolbar.mo3483default(drawable);
                } else {
                    toolbar.mo3483default(null);
                }
            }
            mo3539static(m8626const.m8635goto(10, 0));
            int m8638this = m8626const.m8638this(9, 0);
            if (m8638this != 0) {
                View inflate = LayoutInflater.from(toolbar.getContext()).inflate(m8638this, (ViewGroup) toolbar, false);
                View view = this.f6001do;
                if (view != null && (this.f5999do & 16) != 0) {
                    toolbar.removeView(view);
                }
                this.f6001do = inflate;
                if (inflate != null && (this.f5999do & 16) != 0) {
                    toolbar.addView(inflate);
                }
                mo3539static(this.f5999do | 16);
            }
            int layoutDimension = m8626const.f16536do.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int m8634for = m8626const.m8634for(7, -1);
            int m8634for2 = m8626const.m8634for(3, -1);
            if (m8634for >= 0 || m8634for2 >= 0) {
                int max = Math.max(m8634for, 0);
                int max2 = Math.max(m8634for2, 0);
                if (toolbar.f5917do == null) {
                    toolbar.f5917do = new UA();
                }
                toolbar.f5917do.m2363do(max, max2);
            }
            int m8638this2 = m8626const.m8638this(28, 0);
            if (m8638this2 != 0) {
                Context context = toolbar.getContext();
                toolbar.f5953new = m8638this2;
                AppCompatTextView appCompatTextView = toolbar.f5930do;
                if (appCompatTextView != null) {
                    appCompatTextView.setTextAppearance(context, m8638this2);
                }
            }
            int m8638this3 = m8626const.m8638this(26, 0);
            if (m8638this3 != 0) {
                Context context2 = toolbar.getContext();
                toolbar.f5956try = m8638this3;
                AppCompatTextView appCompatTextView2 = toolbar.f5949if;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTextAppearance(context2, m8638this3);
                }
            }
            int m8638this4 = m8626const.m8638this(22, 0);
            if (m8638this4 != 0 && toolbar.f5942for != m8638this4) {
                toolbar.f5942for = m8638this4;
                if (m8638this4 == 0) {
                    toolbar.f5918do = toolbar.getContext();
                } else {
                    toolbar.f5918do = new ContextThemeWrapper(toolbar.getContext(), m8638this4);
                }
            }
        } else {
            if (toolbar.m3482const() != null) {
                this.f6013new = toolbar.m3482const();
            } else {
                i = 11;
            }
            this.f5999do = i;
        }
        m8626const.m8633final();
        if (R.string.abc_action_bar_up_description != this.f6009if) {
            this.f6009if = R.string.abc_action_bar_up_description;
            AppCompatImageButton appCompatImageButton = toolbar.f5928do;
            if (TextUtils.isEmpty(appCompatImageButton != null ? appCompatImageButton.getContentDescription() : null)) {
                int i2 = this.f6009if;
                this.f6008for = i2 == 0 ? null : getContext().getString(i2);
                m3541switch();
            }
        }
        AppCompatImageButton appCompatImageButton2 = toolbar.f5928do;
        this.f6008for = appCompatImageButton2 != null ? appCompatImageButton2.getContentDescription() : null;
        toolbar.mo3486extends(new IH(this));
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: break, reason: not valid java name */
    public final boolean mo3523break() {
        Toolbar.Ctry ctry = this.f6004do.f5934do;
        return (ctry == null || ctry.f5964do == null) ? false : true;
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: case, reason: not valid java name */
    public final boolean mo3524case() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f6004do;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f5927do) != null && actionMenuView.f5638for;
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: catch, reason: not valid java name */
    public final void mo3525catch() {
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: class, reason: not valid java name */
    public final void mo3526class() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f6004do.f5927do;
        if (actionMenuView == null || (actionMenuPresenter = actionMenuView.f5635do) == null) {
            return;
        }
        actionMenuPresenter.m3392if();
        ActionMenuPresenter.Cdo cdo = actionMenuPresenter.f5609do;
        if (cdo == null || !cdo.m3359if()) {
            return;
        }
        ((Cthis) cdo).f5535do.dismiss();
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: const, reason: not valid java name */
    public final void mo3527const() {
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: do, reason: not valid java name */
    public final boolean mo3528do() {
        ActionMenuView actionMenuView = this.f6004do.f5927do;
        if (actionMenuView == null) {
            return false;
        }
        ActionMenuPresenter actionMenuPresenter = actionMenuView.f5635do;
        return actionMenuPresenter != null && actionMenuPresenter.m3394try();
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: else, reason: not valid java name */
    public final boolean mo3529else() {
        ActionMenuView actionMenuView = this.f6004do.f5927do;
        if (actionMenuView == null) {
            return false;
        }
        ActionMenuPresenter actionMenuPresenter = actionMenuView.f5635do;
        return actionMenuPresenter != null && actionMenuPresenter.m3393super();
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: final, reason: not valid java name */
    public final void mo3530final() {
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: for, reason: not valid java name */
    public final void mo3531for(CharSequence charSequence) {
        if (this.f6006do) {
            return;
        }
        this.f6005do = charSequence;
        if ((this.f5999do & 8) != 0) {
            Toolbar toolbar = this.f6004do;
            toolbar.mo3493package(charSequence);
            if (this.f6006do) {
                QK.m1860public(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // defpackage.InterfaceC2701ed
    public final Context getContext() {
        return this.f6004do.getContext();
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: goto, reason: not valid java name */
    public final void mo3532goto() {
        this.f6012if = true;
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: if, reason: not valid java name */
    public final boolean mo3533if() {
        ActionMenuView actionMenuView = this.f6004do.f5927do;
        if (actionMenuView == null) {
            return false;
        }
        ActionMenuPresenter actionMenuPresenter = actionMenuView.f5635do;
        return actionMenuPresenter != null && actionMenuPresenter.m3392if();
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: import, reason: not valid java name */
    public final C3385nL mo3534import(int i, long j) {
        C3385nL m1851do = QK.m1851do(this.f6004do);
        m1851do.m7563do(i == 0 ? 1.0f : 0.0f);
        m1851do.m7564for(j);
        m1851do.m7566new(new Cdo(i));
        return m1851do;
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: native, reason: not valid java name */
    public final void mo3535native() {
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: new, reason: not valid java name */
    public final void mo3536new(Window.Callback callback) {
        this.f6002do = callback;
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: public, reason: not valid java name */
    public final void mo3537public(boolean z) {
        Toolbar toolbar = this.f6004do;
        toolbar.f5945for = z;
        toolbar.requestLayout();
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: return, reason: not valid java name */
    public final int mo3538return() {
        return this.f5999do;
    }

    @Override // defpackage.InterfaceC2701ed
    public final void setVisibility(int i) {
        this.f6004do.setVisibility(i);
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: static, reason: not valid java name */
    public final void mo3539static(int i) {
        View view;
        int i2 = this.f5999do ^ i;
        this.f5999do = i;
        if (i2 != 0) {
            int i3 = i2 & 4;
            Toolbar toolbar = this.f6004do;
            if (i3 != 0) {
                if ((i & 4) != 0) {
                    m3541switch();
                }
                if ((this.f5999do & 4) != 0) {
                    Drawable drawable = this.f6007for;
                    if (drawable == null) {
                        drawable = this.f6013new;
                    }
                    toolbar.mo3483default(drawable);
                } else {
                    toolbar.mo3483default(null);
                }
            }
            if ((i2 & 3) != 0) {
                m3544throws();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    toolbar.mo3493package(this.f6005do);
                    toolbar.mo3487finally(this.f6011if);
                } else {
                    toolbar.mo3493package(null);
                    toolbar.mo3487finally(null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f6001do) == null) {
                return;
            }
            if ((i & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: super, reason: not valid java name */
    public final void mo3540super() {
        Toolbar.Ctry ctry = this.f6004do.f5934do;
        Cgoto cgoto = ctry == null ? null : ctry.f5964do;
        if (cgoto != null) {
            cgoto.collapseActionView();
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m3541switch() {
        if ((this.f5999do & 4) != 0) {
            boolean isEmpty = TextUtils.isEmpty(this.f6008for);
            Toolbar toolbar = this.f6004do;
            if (!isEmpty) {
                toolbar.m3502throws(this.f6008for);
            } else {
                int i = this.f6009if;
                toolbar.m3502throws(i != 0 ? toolbar.getContext().getText(i) : null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.InterfaceC2701ed
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo3542this() {
        /*
            r4 = this;
            androidx.appcompat.widget.Toolbar r0 = r4.f6004do
            androidx.appcompat.widget.ActionMenuView r0 = r0.f5927do
            r1 = 0
            if (r0 == 0) goto L22
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f5635do
            r2 = 1
            if (r0 == 0) goto L1e
            androidx.appcompat.widget.ActionMenuPresenter$for r3 = r0.f5610do
            if (r3 != 0) goto L19
            boolean r0 = r0.m3394try()
            if (r0 == 0) goto L17
            goto L19
        L17:
            r0 = 0
            goto L1a
        L19:
            r0 = 1
        L1a:
            if (r0 == 0) goto L1e
            r0 = 1
            goto L1f
        L1e:
            r0 = 0
        L1f:
            if (r0 == 0) goto L22
            r1 = 1
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Cnew.mo3542this():boolean");
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: throw, reason: not valid java name */
    public final void mo3543throw(CharSequence charSequence) {
        this.f6006do = true;
        this.f6005do = charSequence;
        if ((this.f5999do & 8) != 0) {
            Toolbar toolbar = this.f6004do;
            toolbar.mo3493package(charSequence);
            if (this.f6006do) {
                QK.m1860public(toolbar.getRootView(), charSequence);
            }
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m3544throws() {
        Drawable drawable;
        int i = this.f5999do;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f6010if;
            if (drawable == null) {
                drawable = this.f6000do;
            }
        } else {
            drawable = this.f6000do;
        }
        this.f6004do.m3499switch(drawable);
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: try, reason: not valid java name */
    public final void mo3545try(Ccase ccase, AppCompatDelegateImpl.Cfor cfor) {
        ActionMenuPresenter actionMenuPresenter = this.f6003do;
        Toolbar toolbar = this.f6004do;
        if (actionMenuPresenter == null) {
            ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(toolbar.getContext());
            this.f6003do = actionMenuPresenter2;
            actionMenuPresenter2.f5456try = R.id.action_menu_presenter;
        }
        ActionMenuPresenter actionMenuPresenter3 = this.f6003do;
        ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5450do = cfor;
        if (ccase == null && toolbar.f5927do == null) {
            return;
        }
        toolbar.m3492new();
        Ccase ccase2 = toolbar.f5927do.f5634do;
        if (ccase2 == ccase) {
            return;
        }
        if (ccase2 != null) {
            ccase2.m3336import(toolbar.f5926do);
            ccase2.m3336import(toolbar.f5934do);
        }
        if (toolbar.f5934do == null) {
            toolbar.f5934do = toolbar.new Ctry();
        }
        actionMenuPresenter3.f5616for = true;
        if (ccase != null) {
            ccase.m3335if(actionMenuPresenter3, toolbar.f5918do);
            ccase.m3335if(toolbar.f5934do, toolbar.f5918do);
        } else {
            actionMenuPresenter3.mo980else(toolbar.f5918do, null);
            toolbar.f5934do.mo980else(toolbar.f5918do, null);
            actionMenuPresenter3.mo3321new(true);
            toolbar.f5934do.mo3321new(true);
        }
        ActionMenuView actionMenuView = toolbar.f5927do;
        int i = toolbar.f5942for;
        if (actionMenuView.f5629class != i) {
            actionMenuView.f5629class = i;
            if (i == 0) {
                actionMenuView.f5631do = actionMenuView.getContext();
            } else {
                actionMenuView.f5631do = new ContextThemeWrapper(actionMenuView.getContext(), i);
            }
        }
        ActionMenuView actionMenuView2 = toolbar.f5927do;
        actionMenuView2.f5635do = actionMenuPresenter3;
        ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5452do = actionMenuView2;
        actionMenuView2.f5634do = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5451do;
        toolbar.f5926do = actionMenuPresenter3;
        toolbar.m3479abstract();
    }

    @Override // defpackage.InterfaceC2701ed
    /* renamed from: while, reason: not valid java name */
    public final int mo3546while() {
        return 0;
    }
}
