package b.b.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import b.b.g.E0;
import b.b.g.l1;
import b.i.b.ActivityC0124t;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Objects;

/* renamed from: b.b.c.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class ActivityC0016o extends ActivityC0124t implements InterfaceC0017p {

    /* renamed from: a, reason: collision with root package name */
    public AbstractC0018q f313a;

    /* renamed from: b, reason: collision with root package name */
    public Resources f314b;

    @Override // b.b.c.InterfaceC0017p
    public void a(b.b.f.b bVar) {
    }

    @Override // b.a.g, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        d().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        J j = (J) d();
        j.I = true;
        int i = j.M;
        if (i == -100) {
            i = -100;
        }
        int I = j.I(context, i);
        Configuration configuration = null;
        if (J.d0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(j.w(context, I, null));
            } catch (IllegalStateException unused) {
            }
            super.attachBaseContext(context);
        }
        if (context instanceof b.b.f.d) {
            try {
                ((b.b.f.d) context).a(j.w(context, I, null));
            } catch (IllegalStateException unused2) {
            }
            super.attachBaseContext(context);
        }
        if (J.c0) {
            try {
                Configuration configuration2 = context.getPackageManager().getResourcesForApplication(context.getApplicationInfo()).getConfiguration();
                Configuration configuration3 = context.getResources().getConfiguration();
                if (!configuration2.equals(configuration3)) {
                    configuration = new Configuration();
                    configuration.fontScale = RecentsState.NO_OFFSET;
                    if (configuration3 != null && configuration2.diff(configuration3) != 0) {
                        float f = configuration2.fontScale;
                        float f2 = configuration3.fontScale;
                        if (f != f2) {
                            configuration.fontScale = f2;
                        }
                        int i2 = configuration2.mcc;
                        int i3 = configuration3.mcc;
                        if (i2 != i3) {
                            configuration.mcc = i3;
                        }
                        int i4 = configuration2.mnc;
                        int i5 = configuration3.mnc;
                        if (i4 != i5) {
                            configuration.mnc = i5;
                        }
                        LocaleList locales = configuration2.getLocales();
                        LocaleList locales2 = configuration3.getLocales();
                        if (!locales.equals(locales2)) {
                            configuration.setLocales(locales2);
                            configuration.locale = configuration3.locale;
                        }
                        int i6 = configuration2.touchscreen;
                        int i7 = configuration3.touchscreen;
                        if (i6 != i7) {
                            configuration.touchscreen = i7;
                        }
                        int i8 = configuration2.keyboard;
                        int i9 = configuration3.keyboard;
                        if (i8 != i9) {
                            configuration.keyboard = i9;
                        }
                        int i10 = configuration2.keyboardHidden;
                        int i11 = configuration3.keyboardHidden;
                        if (i10 != i11) {
                            configuration.keyboardHidden = i11;
                        }
                        int i12 = configuration2.navigation;
                        int i13 = configuration3.navigation;
                        if (i12 != i13) {
                            configuration.navigation = i13;
                        }
                        int i14 = configuration2.navigationHidden;
                        int i15 = configuration3.navigationHidden;
                        if (i14 != i15) {
                            configuration.navigationHidden = i15;
                        }
                        int i16 = configuration2.orientation;
                        int i17 = configuration3.orientation;
                        if (i16 != i17) {
                            configuration.orientation = i17;
                        }
                        int i18 = configuration2.screenLayout & 15;
                        int i19 = configuration3.screenLayout & 15;
                        if (i18 != i19) {
                            configuration.screenLayout |= i19;
                        }
                        int i20 = configuration2.screenLayout & 192;
                        int i21 = configuration3.screenLayout & 192;
                        if (i20 != i21) {
                            configuration.screenLayout |= i21;
                        }
                        int i22 = configuration2.screenLayout & 48;
                        int i23 = configuration3.screenLayout & 48;
                        if (i22 != i23) {
                            configuration.screenLayout |= i23;
                        }
                        int i24 = configuration2.screenLayout & 768;
                        int i25 = configuration3.screenLayout & 768;
                        if (i24 != i25) {
                            configuration.screenLayout |= i25;
                        }
                        int i26 = configuration2.colorMode & 3;
                        int i27 = configuration3.colorMode & 3;
                        if (i26 != i27) {
                            configuration.colorMode |= i27;
                        }
                        int i28 = configuration2.colorMode & 12;
                        int i29 = configuration3.colorMode & 12;
                        if (i28 != i29) {
                            configuration.colorMode |= i29;
                        }
                        int i30 = configuration2.uiMode & 15;
                        int i31 = configuration3.uiMode & 15;
                        if (i30 != i31) {
                            configuration.uiMode |= i31;
                        }
                        int i32 = configuration2.uiMode & 48;
                        int i33 = configuration3.uiMode & 48;
                        if (i32 != i33) {
                            configuration.uiMode |= i33;
                        }
                        int i34 = configuration2.screenWidthDp;
                        int i35 = configuration3.screenWidthDp;
                        if (i34 != i35) {
                            configuration.screenWidthDp = i35;
                        }
                        int i36 = configuration2.screenHeightDp;
                        int i37 = configuration3.screenHeightDp;
                        if (i36 != i37) {
                            configuration.screenHeightDp = i37;
                        }
                        int i38 = configuration2.smallestScreenWidthDp;
                        int i39 = configuration3.smallestScreenWidthDp;
                        if (i38 != i39) {
                            configuration.smallestScreenWidthDp = i39;
                        }
                        int i40 = configuration2.densityDpi;
                        int i41 = configuration3.densityDpi;
                        if (i40 != i41) {
                            configuration.densityDpi = i41;
                        }
                    }
                }
                Configuration w = j.w(context, I, configuration);
                b.b.f.d dVar = new b.b.f.d(context, R.style.Theme_AppCompat_Empty);
                dVar.a(w);
                boolean z = false;
                try {
                    z = context.getTheme() != null;
                } catch (NullPointerException unused3) {
                }
                if (z) {
                    dVar.getTheme().rebase();
                }
                j.d();
                context = dVar;
            } catch (PackageManager.NameNotFoundException e) {
                throw new RuntimeException("Application failed to obtain resources from itself", e);
            }
        } else {
            j.d();
        }
        super.attachBaseContext(context);
    }

    @Override // b.b.c.InterfaceC0017p
    public void b(b.b.f.b bVar) {
    }

    @Override // b.b.c.InterfaceC0017p
    public b.b.f.b c(b.b.f.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        e();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    public AbstractC0018q d() {
        if (this.f313a == null) {
            this.f313a = AbstractC0018q.e(this, this);
        }
        return this.f313a;
    }

    @Override // b.e.b.f, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        e();
        return super.dispatchKeyEvent(keyEvent);
    }

    public AbstractC0004c e() {
        J j = (J) d();
        j.G();
        return j.h;
    }

    public Intent f() {
        return b.e.b.d.i(this);
    }

    @Override // android.app.Activity
    public View findViewById(int i) {
        J j = (J) d();
        j.A();
        return j.e.findViewById(i);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        J j = (J) d();
        if (j.i == null) {
            j.G();
            AbstractC0004c abstractC0004c = j.h;
            j.i = new b.b.f.j(abstractC0004c != null ? abstractC0004c.d() : j.f259d);
        }
        return j.i;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f314b == null) {
            l1.a();
        }
        Resources resources = this.f314b;
        return resources == null ? super.getResources() : resources;
    }

    public final void initViewTreeOwners() {
        getWindow().getDecorView().setTag(R.id.view_tree_lifecycle_owner, this);
        getWindow().getDecorView().setTag(R.id.view_tree_view_model_store_owner, this);
        getWindow().getDecorView().setTag(R.id.view_tree_saved_state_registry_owner, this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        d().h();
    }

    @Override // b.i.b.ActivityC0124t, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        J j = (J) d();
        if (j.z && j.t) {
            j.G();
            AbstractC0004c abstractC0004c = j.h;
            if (abstractC0004c != null) {
                abstractC0004c.e(configuration);
            }
        }
        b.b.g.D a2 = b.b.g.D.a();
        Context context = j.f259d;
        synchronized (a2) {
            E0 e0 = a2.f435a;
            synchronized (e0) {
                b.d.l lVar = (b.d.l) e0.f442d.get(context);
                if (lVar != null) {
                    lVar.a();
                }
            }
        }
        j.r(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
    }

    @Override // b.i.b.ActivityC0124t, b.a.g, b.e.b.f, android.app.Activity
    public void onCreate(Bundle bundle) {
        AbstractC0018q d2 = d();
        d2.g();
        d2.i(bundle);
        super.onCreate(bundle);
    }

    @Override // b.i.b.ActivityC0124t, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d().j();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override // b.i.b.ActivityC0124t, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        Intent i2;
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        AbstractC0004c e = e();
        if (menuItem.getItemId() == 16908332 && e != null && (e.c() & 4) != 0 && (i2 = b.e.b.d.i(this)) != null) {
            if (!shouldUpRecreateTask(i2)) {
                navigateUpTo(i2);
                return true;
            }
            ArrayList arrayList = new ArrayList();
            Intent f = f();
            if (f == null) {
                f = b.e.b.d.i(this);
            }
            if (f != null) {
                ComponentName component = f.getComponent();
                if (component == null) {
                    component = f.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent j = b.e.b.d.j(this, component);
                    while (j != null) {
                        arrayList.add(size, j);
                        j = b.e.b.d.j(this, j.getComponent());
                    }
                    arrayList.add(f);
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e2);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            b.e.b.b.n(this, intentArr, null);
            try {
                finishAffinity();
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // b.i.b.ActivityC0124t, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((J) d()).A();
    }

    @Override // b.i.b.ActivityC0124t, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        J j = (J) d();
        j.G();
        AbstractC0004c abstractC0004c = j.h;
        if (abstractC0004c != null) {
            abstractC0004c.h(true);
        }
    }

    @Override // b.i.b.ActivityC0124t, b.a.g, b.e.b.f, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Objects.requireNonNull((J) d());
    }

    @Override // b.i.b.ActivityC0124t, android.app.Activity
    public void onStart() {
        super.onStart();
        J j = (J) d();
        j.K = true;
        j.q();
    }

    @Override // b.i.b.ActivityC0124t, android.app.Activity
    public void onStop() {
        super.onStop();
        J j = (J) d();
        j.K = false;
        j.G();
        AbstractC0004c abstractC0004c = j.h;
        if (abstractC0004c != null) {
            abstractC0004c.h(false);
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        d().p(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        e();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    @Override // b.a.g, android.app.Activity
    public void setContentView(int i) {
        initViewTreeOwners();
        d().m(i);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        ((J) d()).N = i;
    }

    @Override // b.i.b.ActivityC0124t
    public void supportInvalidateOptionsMenu() {
        d().h();
    }

    @Override // b.a.g, android.app.Activity
    public void setContentView(View view) {
        initViewTreeOwners();
        d().n(view);
    }

    @Override // b.a.g, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        d().o(view, layoutParams);
    }
}
