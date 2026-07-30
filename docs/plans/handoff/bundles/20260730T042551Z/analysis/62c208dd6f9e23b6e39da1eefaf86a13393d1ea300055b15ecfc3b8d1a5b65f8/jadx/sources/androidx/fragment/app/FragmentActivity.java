package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.Cgoto;
import androidx.lifecycle.Ctry;
import defpackage.AbstractC0190Ej;
import defpackage.AbstractC4001xq;
import defpackage.C0102Aj;
import defpackage.C0124Bj;
import defpackage.C0168Dj;
import defpackage.C0212Fj;
import defpackage.C0431Pj;
import defpackage.C2687eL;
import defpackage.InterfaceC0234Gj;
import defpackage.InterfaceC0355Lv;
import defpackage.InterfaceC2608d0;
import defpackage.InterfaceC2746fL;
import defpackage.K;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class FragmentActivity extends ComponentActivity implements K.Cnew, K.Ctry {

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f6848for;

    /* renamed from: new, reason: not valid java name */
    public boolean f6849new;

    /* renamed from: do, reason: not valid java name */
    public final C0168Dj f6846do = new C0168Dj(new Cdo());

    /* renamed from: for, reason: not valid java name */
    public final Cgoto f6847for = new Cgoto(this);

    /* renamed from: try, reason: not valid java name */
    public boolean f6850try = true;

    /* renamed from: androidx.fragment.app.FragmentActivity$do, reason: invalid class name */
    public class Cdo extends AbstractC0190Ej<FragmentActivity> implements InterfaceC2746fL, InterfaceC0355Lv, InterfaceC2608d0, InterfaceC0234Gj {
        public Cdo() {
            super(FragmentActivity.this);
        }

        @Override // defpackage.AbstractC0190Ej
        /* renamed from: break */
        public final boolean mo497break(String str) {
            int i = K.f1736do;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
                return false;
            }
            FragmentActivity fragmentActivity = FragmentActivity.this;
            if (i2 >= 32) {
                return K.Cfor.m1096do(fragmentActivity, str);
            }
            if (i2 == 31) {
                return K.Cif.m1098if(fragmentActivity, str);
            }
            if (i2 >= 23) {
                return K.Cdo.m1094for(fragmentActivity, str);
            }
            return false;
        }

        @Override // defpackage.AbstractC0190Ej
        /* renamed from: case */
        public final void mo498case(PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump("  ", null, printWriter, strArr);
        }

        @Override // defpackage.AbstractC0190Ej
        /* renamed from: catch */
        public final void mo499catch() {
            FragmentActivity.this.mo3229final();
        }

        @Override // defpackage.InterfaceC0234Gj
        /* renamed from: do */
        public final void mo744do(Fragment fragment) {
            FragmentActivity.this.getClass();
        }

        @Override // defpackage.AbstractC0190Ej
        /* renamed from: else */
        public final FragmentActivity mo500else() {
            return FragmentActivity.this;
        }

        @Override // defpackage.InterfaceC0355Lv
        /* renamed from: for */
        public final OnBackPressedDispatcher mo1358for() {
            return FragmentActivity.this.mo1358for();
        }

        @Override // defpackage.InterfaceC2714eq
        public final Ctry getLifecycle() {
            return FragmentActivity.this.f6847for;
        }

        @Override // defpackage.InterfaceC2746fL
        public final C2687eL getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        @Override // defpackage.InterfaceC2608d0
        /* renamed from: goto */
        public final androidx.activity.result.Cdo mo3191goto() {
            return ((ComponentActivity) FragmentActivity.this).f5091do;
        }

        @Override // defpackage.AbstractC0146Cj
        /* renamed from: new */
        public final View mo286new(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // defpackage.AbstractC0190Ej
        /* renamed from: this */
        public final LayoutInflater mo501this() {
            FragmentActivity fragmentActivity = FragmentActivity.this;
            return fragmentActivity.getLayoutInflater().cloneInContext(fragmentActivity);
        }

        @Override // defpackage.AbstractC0146Cj
        /* renamed from: try */
        public final boolean mo287try() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }

    public FragmentActivity() {
        ((ComponentActivity) this).f5097do.f14891do.m4581for("android:support:fragments", new C0102Aj(this));
        m3189break(new C0124Bj(this));
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m4112const(FragmentManager fragmentManager) {
        boolean z = false;
        for (Fragment fragment : fragmentManager.f6868do.m4177case()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    z |= m4112const(fragment.getChildFragmentManager());
                }
                C0431Pj c0431Pj = fragment.mViewLifecycleOwner;
                Ctry.Cif cif = Ctry.Cif.STARTED;
                if (c0431Pj != null) {
                    c0431Pj.m1796new();
                    if (c0431Pj.f2818do.f7121do.compareTo(cif) >= 0) {
                        fragment.mViewLifecycleOwner.f2818do.m4262goto();
                        z = true;
                    }
                }
                if (fragment.mLifecycleRegistry.f7121do.compareTo(cif) >= 0) {
                    fragment.mLifecycleRegistry.m4262goto();
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: class, reason: not valid java name */
    public final C0212Fj m4113class() {
        return this.f6846do.f640do.f879do;
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f6848for);
        printWriter.print(" mResumed=");
        printWriter.print(this.f6849new);
        printWriter.print(" mStopped=");
        printWriter.print(this.f6850try);
        if (getApplication() != null) {
            AbstractC4001xq.m8671do(this).m8776if(str2, printWriter);
        }
        this.f6846do.f640do.f879do.m4141public(str, fileDescriptor, printWriter, strArr);
    }

    @Deprecated
    /* renamed from: final */
    public void mo3229final() {
        invalidateOptionsMenu();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f6846do.m377do();
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C0168Dj c0168Dj = this.f6846do;
        c0168Dj.m377do();
        super.onConfigurationChanged(configuration);
        c0168Dj.f640do.f879do.m4132goto(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6847for.m4258case(Ctry.Cdo.ON_CREATE);
        C0212Fj c0212Fj = this.f6846do.f640do.f879do;
        ((FragmentManager) c0212Fj).f6880for = false;
        ((FragmentManager) c0212Fj).f6886new = false;
        ((FragmentManager) c0212Fj).f6870do.f7047new = false;
        c0212Fj.m4137native(1);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            super.onCreatePanelMenu(i, menu);
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        return this.f6846do.f640do.f879do.m4119break(menu, getMenuInflater()) | true;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((FragmentManager) this.f6846do.f640do.f879do).f6867do.onCreateView(view, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(view, str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f6846do.f640do.f879do.m4121catch();
        this.f6847for.m4258case(Ctry.Cdo.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        this.f6846do.f640do.f879do.m4122class();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        C0168Dj c0168Dj = this.f6846do;
        if (i == 0) {
            return c0168Dj.f640do.f879do.m4129final(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return c0168Dj.f640do.f879do.m4148this(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        this.f6846do.f640do.f879do.m4123const(z);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        this.f6846do.m377do();
        super.onNewIntent(intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.f6846do.f640do.f879do.m4145super(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f6849new = false;
        this.f6846do.f640do.f879do.m4137native(5);
        this.f6847for.m4258case(Ctry.Cdo.ON_PAUSE);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        this.f6846do.f640do.f879do.m4153while(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f6847for.m4258case(Ctry.Cdo.ON_RESUME);
        C0212Fj c0212Fj = this.f6846do.f640do.f879do;
        ((FragmentManager) c0212Fj).f6880for = false;
        ((FragmentManager) c0212Fj).f6886new = false;
        ((FragmentManager) c0212Fj).f6870do.f7047new = false;
        c0212Fj.m4137native(7);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0) {
            super.onPreparePanel(0, view, menu);
            return this.f6846do.f640do.f879do.m4135import(menu) | true;
        }
        super.onPreparePanel(i, view, menu);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f6846do.m377do();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        C0168Dj c0168Dj = this.f6846do;
        c0168Dj.m377do();
        super.onResume();
        this.f6849new = true;
        c0168Dj.f640do.f879do.m4146switch(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        C0168Dj c0168Dj = this.f6846do;
        c0168Dj.m377do();
        super.onStart();
        this.f6850try = false;
        boolean z = this.f6848for;
        AbstractC0190Ej<?> abstractC0190Ej = c0168Dj.f640do;
        if (!z) {
            this.f6848for = true;
            C0212Fj c0212Fj = abstractC0190Ej.f879do;
            ((FragmentManager) c0212Fj).f6880for = false;
            ((FragmentManager) c0212Fj).f6886new = false;
            ((FragmentManager) c0212Fj).f6870do.f7047new = false;
            c0212Fj.m4137native(4);
        }
        abstractC0190Ej.f879do.m4146switch(true);
        this.f6847for.m4258case(Ctry.Cdo.ON_START);
        C0212Fj c0212Fj2 = abstractC0190Ej.f879do;
        ((FragmentManager) c0212Fj2).f6880for = false;
        ((FragmentManager) c0212Fj2).f6886new = false;
        ((FragmentManager) c0212Fj2).f6870do.f7047new = false;
        c0212Fj2.m4137native(5);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.f6846do.m377do();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f6850try = true;
        while (m4112const(m4113class())) {
        }
        C0212Fj c0212Fj = this.f6846do.f640do.f879do;
        ((FragmentManager) c0212Fj).f6886new = true;
        ((FragmentManager) c0212Fj).f6870do.f7047new = true;
        c0212Fj.m4137native(4);
        this.f6847for.m4258case(Ctry.Cdo.ON_STOP);
    }

    @Override // defpackage.K.Ctry
    @Deprecated
    /* renamed from: try */
    public final void mo1099try() {
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((FragmentManager) this.f6846do.f640do.f879do).f6867do.onCreateView(null, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(str, context, attributeSet) : onCreateView;
    }
}
