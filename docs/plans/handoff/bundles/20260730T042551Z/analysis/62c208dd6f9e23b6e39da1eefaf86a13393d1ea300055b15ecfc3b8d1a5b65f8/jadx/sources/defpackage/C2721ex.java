package defpackage;

import android.view.MenuItem;
import androidx.appcompat.view.menu.Ccase;
import defpackage.C2839gx;

/* renamed from: ex, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2721ex implements Ccase.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C2839gx f12777do;

    public C2721ex(C2839gx c2839gx) {
        this.f12777do = c2839gx;
    }

    @Override // androidx.appcompat.view.menu.Ccase.Cdo
    /* renamed from: do */
    public final void mo2229do(Ccase ccase) {
    }

    @Override // androidx.appcompat.view.menu.Ccase.Cdo
    /* renamed from: if */
    public final boolean mo2230if(Ccase ccase, MenuItem menuItem) {
        C2839gx.Cdo cdo = this.f12777do.f13232do;
        if (cdo == null) {
            return false;
        }
        cdo.mo261do(menuItem);
        return true;
    }
}
