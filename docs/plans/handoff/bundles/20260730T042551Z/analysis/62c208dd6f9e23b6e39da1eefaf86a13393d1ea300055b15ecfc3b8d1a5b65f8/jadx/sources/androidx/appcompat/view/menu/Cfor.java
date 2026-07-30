package androidx.appcompat.view.menu;

import android.view.MenuItem;
import androidx.appcompat.view.menu.Cif;

/* renamed from: androidx.appcompat.view.menu.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ MenuItem f5460do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Ccase f5461do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cif.Cfor f5462do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cif.Cnew f5463do;

    public Cfor(Cif.Cfor cfor, Cif.Cnew cnew, Cgoto cgoto, Ccase ccase) {
        this.f5462do = cfor;
        this.f5463do = cnew;
        this.f5460do = cgoto;
        this.f5461do = ccase;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Cif.Cnew cnew = this.f5463do;
        if (cnew != null) {
            Cif.Cfor cfor = this.f5462do;
            Cif.this.f5496case = true;
            cnew.f5524do.m3333for(false);
            Cif.this.f5496case = false;
        }
        MenuItem menuItem = this.f5460do;
        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
            this.f5461do.m3348while(menuItem, null, 4);
        }
    }
}
