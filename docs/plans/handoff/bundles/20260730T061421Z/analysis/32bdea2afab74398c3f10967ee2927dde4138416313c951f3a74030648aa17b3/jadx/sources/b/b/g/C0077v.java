package b.b.g;

import android.view.MenuItem;
import androidx.appcompat.widget.ActionMenuView;

/* renamed from: b.b.g.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0077v implements b.b.f.m.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f586a;

    public C0077v(ActionMenuView actionMenuView) {
        this.f586a = actionMenuView;
    }

    @Override // b.b.f.m.m
    public boolean a(b.b.f.m.o oVar, MenuItem menuItem) {
        b1 b1Var = this.f586a.A;
        if (b1Var == null) {
            return false;
        }
        g1 g1Var = b1Var.f522a.G;
        return false;
    }

    @Override // b.b.f.m.m
    public void b(b.b.f.m.o oVar) {
        b.b.f.m.m mVar = this.f586a.v;
        if (mVar != null) {
            mVar.b(oVar);
        }
    }
}
