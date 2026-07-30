package defpackage;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionMenuPresenter;
import defpackage.G;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class TE extends G implements Ccase.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final G.Cdo f3624do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f3625do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f3626do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ActionBarContextView f3627do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WeakReference<View> f3628do;

    /* renamed from: if, reason: not valid java name */
    public boolean f3629if;

    public TE(Context context, ActionBarContextView actionBarContextView, G.Cdo cdo) {
        this.f3625do = context;
        this.f3627do = actionBarContextView;
        this.f3624do = cdo;
        Ccase ccase = new Ccase(actionBarContextView.getContext());
        ccase.f5402do = 1;
        this.f3626do = ccase;
        ccase.f5407do = this;
    }

    @Override // defpackage.G
    /* renamed from: break */
    public final boolean mo661break() {
        return this.f3627do.f5568for;
    }

    @Override // defpackage.G
    /* renamed from: case */
    public final MenuInflater mo662case() {
        return new YF(this.f3627do.getContext());
    }

    @Override // defpackage.G
    /* renamed from: catch */
    public final void mo663catch(View view) {
        this.f3627do.m3364break(view);
        this.f3628do = view != null ? new WeakReference<>(view) : null;
    }

    @Override // defpackage.G
    /* renamed from: class */
    public final void mo664class(int i) {
        mo665const(this.f3625do.getString(i));
    }

    @Override // defpackage.G
    /* renamed from: const */
    public final void mo665const(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.f3627do;
        actionBarContextView.f5571if = charSequence;
        actionBarContextView.m3366goto();
    }

    @Override // androidx.appcompat.view.menu.Ccase.Cdo
    /* renamed from: do, reason: not valid java name */
    public final void mo2229do(Ccase ccase) {
        mo672this();
        ActionMenuPresenter actionMenuPresenter = ((Ctry) this.f3627do).f15806do;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m3393super();
        }
    }

    @Override // defpackage.G
    /* renamed from: else */
    public final CharSequence mo666else() {
        return this.f3627do.f5571if;
    }

    @Override // defpackage.G
    /* renamed from: final */
    public final void mo667final(int i) {
        mo671super(this.f3625do.getString(i));
    }

    @Override // defpackage.G
    /* renamed from: for */
    public final void mo668for() {
        if (this.f3629if) {
            return;
        }
        this.f3629if = true;
        this.f3624do.mo677if(this);
    }

    @Override // defpackage.G
    /* renamed from: goto */
    public final CharSequence mo669goto() {
        return this.f3627do.f5566do;
    }

    @Override // androidx.appcompat.view.menu.Ccase.Cdo
    /* renamed from: if, reason: not valid java name */
    public final boolean mo2230if(Ccase ccase, MenuItem menuItem) {
        return this.f3624do.mo675do(this, menuItem);
    }

    @Override // defpackage.G
    /* renamed from: new */
    public final View mo670new() {
        WeakReference<View> weakReference = this.f3628do;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // defpackage.G
    /* renamed from: super */
    public final void mo671super(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.f3627do;
        actionBarContextView.f5566do = charSequence;
        actionBarContextView.m3366goto();
        QK.m1860public(actionBarContextView, charSequence);
    }

    @Override // defpackage.G
    /* renamed from: this */
    public final void mo672this() {
        this.f3624do.mo676for(this, this.f3626do);
    }

    @Override // defpackage.G
    /* renamed from: throw */
    public final void mo673throw(boolean z) {
        ((G) this).f1113do = z;
        ActionBarContextView actionBarContextView = this.f3627do;
        if (z != actionBarContextView.f5568for) {
            actionBarContextView.requestLayout();
        }
        actionBarContextView.f5568for = z;
    }

    @Override // defpackage.G
    /* renamed from: try */
    public final Ccase mo674try() {
        return this.f3626do;
    }
}
