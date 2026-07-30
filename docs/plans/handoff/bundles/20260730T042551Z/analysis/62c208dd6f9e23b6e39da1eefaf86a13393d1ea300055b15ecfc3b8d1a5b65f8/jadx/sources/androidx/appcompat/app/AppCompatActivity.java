package androidx.appcompat.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.Cnew;
import androidx.fragment.app.FragmentActivity;
import com.joeykrim.rootcheck.R;
import defpackage.C0173Do;
import defpackage.C0466Ra;
import defpackage.C2659du;
import defpackage.C2863hK;
import defpackage.C3718t1;
import defpackage.C3777u1;
import defpackage.InterfaceC3895w1;
import defpackage.K;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AppCompatActivity extends FragmentActivity implements InterfaceC3895w1 {

    /* renamed from: do, reason: not valid java name */
    public AppCompatDelegateImpl f5207do;

    public AppCompatActivity() {
        ((ComponentActivity) this).f5097do.f14891do.m4581for("androidx:appcompat", new C3718t1(this));
        m3189break(new C3777u1(this));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3232while();
        m3230super().mo3247for(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(m3230super().mo3253new(context));
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ActionBar m3231throw = m3231throw();
        if (getWindow().hasFeature(0)) {
            if (m3231throw == null || !m3231throw.mo3214do()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ActionBar m3231throw = m3231throw();
        if (keyCode == 82 && m3231throw != null && m3231throw.mo3209break(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // defpackage.InterfaceC3895w1
    /* renamed from: do */
    public final void mo999do() {
    }

    @Override // defpackage.InterfaceC3895w1
    /* renamed from: else */
    public final void mo1000else() {
    }

    @Override // androidx.fragment.app.FragmentActivity
    /* renamed from: final, reason: not valid java name */
    public final void mo3229final() {
        m3230super().mo3239catch();
    }

    @Override // android.app.Activity
    public final <T extends View> T findViewById(int i) {
        return (T) m3230super().mo3266try(i);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        return m3230super().mo3248goto();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i = C2863hK.f13293do;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        m3230super().mo3239catch();
    }

    @Override // defpackage.InterfaceC3895w1
    /* renamed from: new */
    public final void mo1002new() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m3230super().mo3240const(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m3230super().mo3260super();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if ((Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        Intent m6469do;
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBar m3231throw = m3231throw();
        if (menuItem.getItemId() != 16908332 || m3231throw == null || (m3231throw.mo3220new() & 4) == 0 || (m6469do = C2659du.m6469do(this)) == null) {
            return false;
        }
        if (!shouldUpRecreateTask(m6469do)) {
            navigateUpTo(m6469do);
            return true;
        }
        ArrayList arrayList = new ArrayList();
        Intent m6469do2 = C2659du.m6469do(this);
        if (m6469do2 == null) {
            m6469do2 = C2659du.m6469do(this);
        }
        if (m6469do2 != null) {
            ComponentName component = m6469do2.getComponent();
            if (component == null) {
                component = m6469do2.resolveActivity(getPackageManager());
            }
            int size = arrayList.size();
            try {
                Intent m6471if = C2659du.m6471if(this, component);
                while (m6471if != null) {
                    arrayList.add(size, m6471if);
                    m6471if = C2659du.m6471if(this, m6471if.getComponent());
                }
                arrayList.add(m6469do2);
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException(e);
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (!C0466Ra.startActivities(this, intentArr, null)) {
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            startActivity(intent);
        }
        try {
            int i2 = K.f1736do;
            finishAffinity();
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((AppCompatDelegateImpl) m3230super()).m3265transient();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        m3230super().mo3263throw();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m3230super().mo3267while();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m3230super().mo3250import();
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m3230super().mo3244extends(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ActionBar m3231throw = m3231throw();
        if (getWindow().hasFeature(0)) {
            if (m3231throw == null || !m3231throw.mo3211catch()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(int i) {
        m3232while();
        m3230super().mo3257return(i);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        m3230super().mo3242default(i);
    }

    /* renamed from: super, reason: not valid java name */
    public final Cfor m3230super() {
        if (this.f5207do == null) {
            Cnew.Cdo cdo = Cfor.f5341do;
            this.f5207do = new AppCompatDelegateImpl(this, null, this, this);
        }
        return this.f5207do;
    }

    /* renamed from: throw, reason: not valid java name */
    public final ActionBar m3231throw() {
        return m3230super().mo3262this();
    }

    /* renamed from: while, reason: not valid java name */
    public final void m3232while() {
        View decorView = getWindow().getDecorView();
        C0173Do.m401try(decorView, "<this>");
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        C0173Do.m401try(decorView2, "<this>");
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        C0173Do.m401try(decorView3, "<this>");
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        C0173Do.m401try(decorView4, "<this>");
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view) {
        m3232while();
        m3230super().mo3258static(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3232while();
        m3230super().mo3261switch(view, layoutParams);
    }
}
