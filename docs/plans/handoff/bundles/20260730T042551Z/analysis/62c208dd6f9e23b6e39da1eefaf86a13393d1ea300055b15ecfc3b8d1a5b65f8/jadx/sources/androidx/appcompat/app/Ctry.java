package androidx.appcompat.app;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import defpackage.C3385nL;
import defpackage.QK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: androidx.appcompat.app.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry extends ActionBar {

    /* renamed from: do, reason: not valid java name */
    public final Window.Callback f5355do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0027try f5357do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.appcompat.widget.Cnew f5358do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5360do;

    /* renamed from: for, reason: not valid java name */
    public boolean f5361for;

    /* renamed from: if, reason: not valid java name */
    public boolean f5362if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<ActionBar.Cdo> f5359do = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5356do = new Cdo();

    /* renamed from: androidx.appcompat.app.try$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Ctry ctry = Ctry.this;
            Window.Callback callback = ctry.f5355do;
            Ccase m3303while = ctry.m3303while();
            Ccase ccase = m3303while instanceof Ccase ? m3303while : null;
            if (ccase != null) {
                ccase.m3331extends();
            }
            try {
                m3303while.clear();
                if (!callback.onCreatePanelMenu(0, m3303while) || !callback.onPreparePanel(0, null, m3303while)) {
                    m3303while.clear();
                }
            } finally {
                if (ccase != null) {
                    ccase.m3328default();
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.app.try$for, reason: invalid class name */
    public final class Cfor implements Cbreak.Cdo {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f5365do;

        public Cfor() {
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: for */
        public final void mo3279for(Ccase ccase, boolean z) {
            if (this.f5365do) {
                return;
            }
            this.f5365do = true;
            Ctry ctry = Ctry.this;
            ctry.f5358do.mo3526class();
            ctry.f5355do.onPanelClosed(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, ccase);
            this.f5365do = false;
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: new */
        public final boolean mo3280new(Ccase ccase) {
            Ctry.this.f5355do.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, ccase);
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.try$if, reason: invalid class name */
    public class Cif implements Toolbar.Ccase {
        public Cif() {
        }
    }

    /* renamed from: androidx.appcompat.app.try$new, reason: invalid class name */
    public final class Cnew implements Ccase.Cdo {
        public Cnew() {
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: do */
        public final void mo2229do(Ccase ccase) {
            Ctry ctry = Ctry.this;
            boolean mo3528do = ctry.f5358do.mo3528do();
            Window.Callback callback = ctry.f5355do;
            if (mo3528do) {
                callback.onPanelClosed(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, ccase);
            } else if (callback.onPreparePanel(0, null, ccase)) {
                callback.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, ccase);
            }
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: if */
        public final boolean mo2230if(Ccase ccase, MenuItem menuItem) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.app.try$try, reason: invalid class name and collision with other inner class name */
    public class C0027try implements AppCompatDelegateImpl.Cif {
        public C0027try() {
        }
    }

    public Ctry(Toolbar toolbar, CharSequence charSequence, AppCompatDelegateImpl.Cthis cthis) {
        Cif cif = new Cif();
        toolbar.getClass();
        androidx.appcompat.widget.Cnew cnew = new androidx.appcompat.widget.Cnew(toolbar, false);
        this.f5358do = cnew;
        cthis.getClass();
        this.f5355do = cthis;
        cnew.f6002do = cthis;
        toolbar.f5931do = cif;
        cnew.mo3531for(charSequence);
        this.f5357do = new C0027try();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: break */
    public final boolean mo3209break(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            mo3211catch();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: case */
    public final boolean mo3210case() {
        androidx.appcompat.widget.Cnew cnew = this.f5358do;
        Toolbar toolbar = cnew.f6004do;
        Cdo cdo = this.f5356do;
        toolbar.removeCallbacks(cdo);
        Toolbar toolbar2 = cnew.f6004do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        toolbar2.postOnAnimation(cdo);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: catch */
    public final boolean mo3211catch() {
        return this.f5358do.mo3529else();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: class */
    public final void mo3212class(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: const */
    public final void mo3213const(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: do */
    public final boolean mo3214do() {
        return this.f5358do.mo3533if();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: else */
    public final void mo3215else() {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: final */
    public final void mo3216final(String str) {
        this.f5358do.mo3543throw(str);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: for */
    public final void mo3217for(boolean z) {
        if (z == this.f5361for) {
            return;
        }
        this.f5361for = z;
        ArrayList<ActionBar.Cdo> arrayList = this.f5359do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).m3225do();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: goto */
    public final void mo3218goto() {
        this.f5358do.f6004do.removeCallbacks(this.f5356do);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: if */
    public final boolean mo3219if() {
        androidx.appcompat.widget.Cnew cnew = this.f5358do;
        if (!cnew.mo3523break()) {
            return false;
        }
        cnew.mo3540super();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: new */
    public final int mo3220new() {
        return this.f5358do.f5999do;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: super */
    public final void mo3221super(CharSequence charSequence) {
        this.f5358do.mo3531for(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: this */
    public final boolean mo3222this(int i, KeyEvent keyEvent) {
        Ccase m3303while = m3303while();
        if (m3303while == null) {
            return false;
        }
        m3303while.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return m3303while.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: try */
    public final Context mo3224try() {
        return this.f5358do.getContext();
    }

    /* renamed from: while, reason: not valid java name */
    public final Ccase m3303while() {
        boolean z = this.f5362if;
        androidx.appcompat.widget.Cnew cnew = this.f5358do;
        if (!z) {
            Cfor cfor = new Cfor();
            Cnew cnew2 = new Cnew();
            Toolbar toolbar = cnew.f6004do;
            toolbar.f5924do = cfor;
            toolbar.f5925do = cnew2;
            ActionMenuView actionMenuView = toolbar.f5927do;
            if (actionMenuView != null) {
                actionMenuView.f5632do = cfor;
                actionMenuView.f5633do = cnew2;
            }
            this.f5362if = true;
        }
        return cnew.f6004do.m3481class();
    }
}
