package b.b.f.m;

import android.content.Context;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

/* loaded from: classes.dex */
public class t extends s implements ActionProvider.VisibilityListener {

    /* renamed from: d, reason: collision with root package name */
    public q f414d;

    public t(x xVar, Context context, ActionProvider actionProvider) {
        super(xVar, context, actionProvider);
    }

    @Override // b.e.i.AbstractC0089c
    public boolean a() {
        return this.f412b.isVisible();
    }

    @Override // b.e.i.AbstractC0089c
    public View b(MenuItem menuItem) {
        return this.f412b.onCreateActionView(menuItem);
    }

    @Override // b.e.i.AbstractC0089c
    public boolean c() {
        return this.f412b.overridesItemVisibility();
    }

    @Override // b.e.i.AbstractC0089c
    public void d(q qVar) {
        this.f414d = qVar;
        this.f412b.setVisibilityListener(this);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public void onActionProviderVisibilityChanged(boolean z) {
        q qVar = this.f414d;
        if (qVar != null) {
            o oVar = qVar.f407a.n;
            oVar.h = true;
            oVar.p(true);
        }
    }
}
