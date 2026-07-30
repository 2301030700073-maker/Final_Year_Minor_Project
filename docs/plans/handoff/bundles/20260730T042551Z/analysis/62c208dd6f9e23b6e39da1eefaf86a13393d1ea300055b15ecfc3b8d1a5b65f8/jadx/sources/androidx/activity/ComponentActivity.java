package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.ComponentActivity;
import androidx.activity.result.IntentSenderRequest;
import androidx.lifecycle.Cclass;
import androidx.lifecycle.Celse;
import androidx.lifecycle.Cfinal;
import androidx.lifecycle.Cgoto;
import androidx.lifecycle.Ctry;
import androidx.lifecycle.Cwhile;
import androidx.lifecycle.SavedStateHandleAttacher;
import androidx.savedstate.Cdo;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC3398nc;
import defpackage.C0173Do;
import defpackage.C0199Es;
import defpackage.C0397Nt;
import defpackage.C0444Qa;
import defpackage.C0708ak;
import defpackage.C0802cI;
import defpackage.C2687eL;
import defpackage.C3316mB;
import defpackage.C3493pB;
import defpackage.InterfaceC0291Ja;
import defpackage.InterfaceC0309Js;
import defpackage.InterfaceC0355Lv;
import defpackage.InterfaceC0421Ov;
import defpackage.InterfaceC0768bk;
import defpackage.InterfaceC2608d0;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC2746fL;
import defpackage.InterfaceC3552qB;
import defpackage.K;
import defpackage.O2;
import defpackage.O4;
import defpackage.RunnableC2852h9;
import defpackage.W;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements InterfaceC2746fL, androidx.lifecycle.Cfor, InterfaceC3552qB, InterfaceC0355Lv, InterfaceC2608d0 {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f5087for = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0708ak f5090do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5091do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f5092do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnBackPressedDispatcher f5093do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2687eL f5094do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArrayList<InterfaceC0291Ja<Configuration>> f5095do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f5096do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3493pB f5097do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5098do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArrayList<InterfaceC0291Ja<Intent>> f5099for;

    /* renamed from: if, reason: not valid java name */
    public final Cgoto f5100if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArrayList<InterfaceC0291Ja<Integer>> f5101if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5102if;

    /* renamed from: new, reason: not valid java name */
    public final CopyOnWriteArrayList<InterfaceC0291Ja<O2>> f5103new;

    /* renamed from: try, reason: not valid java name */
    public final CopyOnWriteArrayList<InterfaceC0291Ja<O4>> f5104try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0444Qa f5089do = new C0444Qa();

    /* renamed from: do, reason: not valid java name */
    public final C0199Es f5088do = new C0199Es();

    /* renamed from: androidx.activity.ComponentActivity$do, reason: invalid class name */
    public class Cdo extends androidx.activity.result.Cdo {
        public Cdo() {
        }

        @Override // androidx.activity.result.Cdo
        /* renamed from: if, reason: not valid java name */
        public final void mo3193if(int i, W w, Object obj) {
            Bundle bundle;
            ComponentActivity componentActivity = ComponentActivity.this;
            W.Cdo synchronousResult = w.getSynchronousResult(componentActivity, obj);
            if (synchronousResult != null) {
                new Handler(Looper.getMainLooper()).post(new androidx.activity.Cdo(this, i, synchronousResult));
                return;
            }
            Intent createIntent = w.createIntent(componentActivity, obj);
            if (createIntent.getExtras() != null && createIntent.getExtras().getClassLoader() == null) {
                createIntent.setExtrasClassLoader(componentActivity.getClassLoader());
            }
            if (createIntent.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                Bundle bundleExtra = createIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                createIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                bundle = bundleExtra;
            } else {
                bundle = null;
            }
            if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(createIntent.getAction())) {
                String[] stringArrayExtra = createIntent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                if (stringArrayExtra == null) {
                    stringArrayExtra = new String[0];
                }
                K.m1092do(componentActivity, stringArrayExtra, i);
                return;
            }
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(createIntent.getAction())) {
                int i2 = K.f1736do;
                componentActivity.startActivityForResult(createIntent, i, bundle);
                return;
            }
            IntentSenderRequest intentSenderRequest = (IntentSenderRequest) createIntent.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                IntentSender intentSender = intentSenderRequest.f5154do;
                Intent intent = intentSenderRequest.f5153do;
                int i3 = intentSenderRequest.f5155for;
                int i4 = intentSenderRequest.f5156new;
                int i5 = K.f1736do;
                componentActivity.startIntentSenderForResult(intentSender, i, intent, i3, i4, 0, bundle);
            } catch (IntentSender.SendIntentException e) {
                new Handler(Looper.getMainLooper()).post(new androidx.activity.Cif(this, i, e));
            }
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static OnBackInvokedDispatcher m3194do(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                ComponentActivity.super.onBackPressed();
            } catch (IllegalStateException e) {
                if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                    throw e;
                }
            } catch (NullPointerException e2) {
                if (!TextUtils.equals(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                    throw e2;
                }
            }
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public C2687eL f5111do;
    }

    /* renamed from: androidx.activity.ComponentActivity$try, reason: invalid class name */
    public class Ctry implements Executor, ViewTreeObserver.OnDrawListener, Runnable {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Runnable f5114do;

        /* renamed from: do, reason: not valid java name */
        public final long f5112do = SystemClock.uptimeMillis() + 10000;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f5115do = false;

        public Ctry() {
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3195do(View view) {
            if (this.f5115do) {
                return;
            }
            this.f5115do = true;
            view.getViewTreeObserver().addOnDrawListener(this);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f5114do = runnable;
            View decorView = ComponentActivity.this.getWindow().getDecorView();
            if (!this.f5115do) {
                decorView.postOnAnimation(new RunnableC2852h9(this, 0));
            } else if (Looper.myLooper() == Looper.getMainLooper()) {
                decorView.invalidate();
            } else {
                decorView.postInvalidate();
            }
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            boolean z;
            Runnable runnable = this.f5114do;
            if (runnable == null) {
                if (SystemClock.uptimeMillis() > this.f5112do) {
                    this.f5115do = false;
                    ComponentActivity.this.getWindow().getDecorView().post(this);
                    return;
                }
                return;
            }
            runnable.run();
            this.f5114do = null;
            C0708ak c0708ak = ComponentActivity.this.f5090do;
            synchronized (c0708ak.f5005do) {
                z = c0708ak.f5008do;
            }
            if (z) {
                this.f5115do = false;
                ComponentActivity.this.getWindow().getDecorView().post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            ComponentActivity.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [e9] */
    public ComponentActivity() {
        Cgoto cgoto = new Cgoto(this);
        this.f5100if = cgoto;
        C3493pB c3493pB = new C3493pB(this);
        this.f5097do = c3493pB;
        this.f5093do = null;
        Ctry ctry = new Ctry();
        this.f5092do = ctry;
        this.f5090do = new C0708ak(ctry, new InterfaceC0768bk() { // from class: e9
            @Override // defpackage.InterfaceC0768bk
            /* renamed from: new */
            public final Object mo585new() {
                int i = ComponentActivity.f5087for;
                ComponentActivity.this.reportFullyDrawn();
                return null;
            }
        });
        this.f5096do = new AtomicInteger();
        this.f5091do = new Cdo();
        this.f5095do = new CopyOnWriteArrayList<>();
        this.f5101if = new CopyOnWriteArrayList<>();
        this.f5099for = new CopyOnWriteArrayList<>();
        this.f5103new = new CopyOnWriteArrayList<>();
        this.f5104try = new CopyOnWriteArrayList<>();
        this.f5098do = false;
        this.f5102if = false;
        int i = Build.VERSION.SDK_INT;
        cgoto.mo4259do(new Celse() { // from class: androidx.activity.ComponentActivity.2
            @Override // androidx.lifecycle.Celse
            /* renamed from: case, reason: not valid java name */
            public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
                if (cdo == Ctry.Cdo.ON_STOP) {
                    Window window = ComponentActivity.this.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView != null) {
                        peekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        cgoto.mo4259do(new Celse() { // from class: androidx.activity.ComponentActivity.3
            @Override // androidx.lifecycle.Celse
            /* renamed from: case */
            public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
                if (cdo == Ctry.Cdo.ON_DESTROY) {
                    ComponentActivity.this.f5089do.f2957do = null;
                    if (!ComponentActivity.this.isChangingConfigurations()) {
                        ComponentActivity.this.getViewModelStore().m6559do();
                    }
                    Ctry ctry2 = ComponentActivity.this.f5092do;
                    ComponentActivity componentActivity = ComponentActivity.this;
                    componentActivity.getWindow().getDecorView().removeCallbacks(ctry2);
                    componentActivity.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(ctry2);
                }
            }
        });
        cgoto.mo4259do(new Celse() { // from class: androidx.activity.ComponentActivity.4
            @Override // androidx.lifecycle.Celse
            /* renamed from: case */
            public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
                ComponentActivity componentActivity = ComponentActivity.this;
                if (componentActivity.f5094do == null) {
                    Cnew cnew = (Cnew) componentActivity.getLastNonConfigurationInstance();
                    if (cnew != null) {
                        componentActivity.f5094do = cnew.f5111do;
                    }
                    if (componentActivity.f5094do == null) {
                        componentActivity.f5094do = new C2687eL();
                    }
                }
                componentActivity.f5100if.mo4261for(this);
            }
        });
        c3493pB.m7787do();
        Ctry.Cif cif = cgoto.f7121do;
        if (!(cif == Ctry.Cif.INITIALIZED || cif == Ctry.Cif.CREATED)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        androidx.savedstate.Cdo cdo = c3493pB.f14891do;
        if (cdo.m4582if() == null) {
            C3316mB c3316mB = new C3316mB(cdo, this);
            cdo.m4581for("androidx.lifecycle.internal.SavedStateHandlesProvider", c3316mB);
            cgoto.mo4259do(new SavedStateHandleAttacher(c3316mB));
        }
        if (i <= 23) {
            cgoto.mo4259do(new ImmLeaksCleaner(this));
        }
        cdo.m4581for("android:support:activity-result", new Cdo.Cif() { // from class: f9
            @Override // androidx.savedstate.Cdo.Cif
            /* renamed from: do */
            public final Bundle mo94do() {
                int i2 = ComponentActivity.f5087for;
                ComponentActivity componentActivity = ComponentActivity.this;
                componentActivity.getClass();
                Bundle bundle = new Bundle();
                ComponentActivity.Cdo cdo2 = componentActivity.f5091do;
                cdo2.getClass();
                HashMap hashMap = cdo2.f5161if;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(hashMap.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(hashMap.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(((androidx.activity.result.Cdo) cdo2).f5158do));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) ((androidx.activity.result.Cdo) cdo2).f5157do.clone());
                return bundle;
            }
        });
        m3189break(new InterfaceC0421Ov() { // from class: g9
            @Override // defpackage.InterfaceC0421Ov
            /* renamed from: do */
            public final void mo200do() {
                ComponentActivity componentActivity = ComponentActivity.this;
                Bundle m4580do = componentActivity.f5097do.f14891do.m4580do("android:support:activity-result");
                if (m4580do != null) {
                    ComponentActivity.Cdo cdo2 = componentActivity.f5091do;
                    cdo2.getClass();
                    ArrayList<Integer> integerArrayList = m4580do.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = m4580do.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    ((androidx.activity.result.Cdo) cdo2).f5158do = m4580do.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    Bundle bundle = m4580do.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                    Bundle bundle2 = ((androidx.activity.result.Cdo) cdo2).f5157do;
                    bundle2.putAll(bundle);
                    for (int i2 = 0; i2 < stringArrayList.size(); i2++) {
                        String str = stringArrayList.get(i2);
                        HashMap hashMap = cdo2.f5161if;
                        boolean containsKey = hashMap.containsKey(str);
                        HashMap hashMap2 = ((androidx.activity.result.Cdo) cdo2).f5159do;
                        if (containsKey) {
                            Integer num = (Integer) hashMap.remove(str);
                            if (!bundle2.containsKey(str)) {
                                hashMap2.remove(num);
                            }
                        }
                        int intValue = integerArrayList.get(i2).intValue();
                        String str2 = stringArrayList.get(i2);
                        hashMap2.put(Integer.valueOf(intValue), str2);
                        hashMap.put(str2, Integer.valueOf(intValue));
                    }
                }
            }
        });
    }

    @Override // android.app.Activity
    public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        m3190catch();
        this.f5092do.m3195do(getWindow().getDecorView());
        super.addContentView(view, layoutParams);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m3189break(InterfaceC0421Ov interfaceC0421Ov) {
        C0444Qa c0444Qa = this.f5089do;
        c0444Qa.getClass();
        if (c0444Qa.f2957do != null) {
            interfaceC0421Ov.mo200do();
        }
        c0444Qa.f2958do.add(interfaceC0421Ov);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m3190catch() {
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
        View decorView5 = getWindow().getDecorView();
        C0173Do.m401try(decorView5, "<this>");
        decorView5.setTag(R.id.report_drawn, this);
    }

    @Override // defpackage.InterfaceC0355Lv
    /* renamed from: for */
    public final OnBackPressedDispatcher mo1358for() {
        if (this.f5093do == null) {
            this.f5093do = new OnBackPressedDispatcher(new Cif());
            this.f5100if.mo4259do(new Celse() { // from class: androidx.activity.ComponentActivity.6
                @Override // androidx.lifecycle.Celse
                /* renamed from: case */
                public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
                    if (cdo != Ctry.Cdo.ON_CREATE || Build.VERSION.SDK_INT < 33) {
                        return;
                    }
                    OnBackPressedDispatcher onBackPressedDispatcher = ComponentActivity.this.f5093do;
                    OnBackInvokedDispatcher m3194do = Cfor.m3194do((ComponentActivity) interfaceC2714eq);
                    onBackPressedDispatcher.getClass();
                    C0173Do.m401try(m3194do, "invoker");
                    onBackPressedDispatcher.f5125do = m3194do;
                    onBackPressedDispatcher.m3197for(onBackPressedDispatcher.f5128if);
                }
            });
        }
        return this.f5093do;
    }

    @Override // androidx.lifecycle.Cfor
    public final AbstractC3398nc getDefaultViewModelCreationExtras() {
        C0397Nt c0397Nt = new C0397Nt();
        Application application = getApplication();
        LinkedHashMap linkedHashMap = c0397Nt.f14537do;
        if (application != null) {
            linkedHashMap.put(Cwhile.f7154do, getApplication());
        }
        linkedHashMap.put(Cfinal.f7117do, this);
        linkedHashMap.put(Cfinal.f7116do, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(Cfinal.f7115do, getIntent().getExtras());
        }
        return c0397Nt;
    }

    @Override // androidx.core.app.ComponentActivity, defpackage.InterfaceC2714eq
    public final androidx.lifecycle.Ctry getLifecycle() {
        return this.f5100if;
    }

    @Override // defpackage.InterfaceC3552qB
    public final androidx.savedstate.Cdo getSavedStateRegistry() {
        return this.f5097do.f14891do;
    }

    @Override // defpackage.InterfaceC2746fL
    public final C2687eL getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f5094do == null) {
            Cnew cnew = (Cnew) getLastNonConfigurationInstance();
            if (cnew != null) {
                this.f5094do = cnew.f5111do;
            }
            if (this.f5094do == null) {
                this.f5094do = new C2687eL();
            }
        }
        return this.f5094do;
    }

    @Override // defpackage.InterfaceC2608d0
    /* renamed from: goto, reason: not valid java name */
    public final androidx.activity.result.Cdo mo3191goto() {
        return this.f5091do;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f5091do.m3205do(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    @Deprecated
    public void onBackPressed() {
        mo1358for().m3198if();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator<InterfaceC0291Ja<Configuration>> it = this.f5095do.iterator();
        while (it.hasNext()) {
            it.next().accept(configuration);
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f5097do.m7789if(bundle);
        C0444Qa c0444Qa = this.f5089do;
        c0444Qa.getClass();
        c0444Qa.f2957do = this;
        Iterator it = c0444Qa.f2958do.iterator();
        while (it.hasNext()) {
            ((InterfaceC0421Ov) it.next()).mo200do();
        }
        super.onCreate(bundle);
        int i = Cclass.f7100for;
        Cclass.Cif.m4249if(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        getMenuInflater();
        Iterator<InterfaceC0309Js> it = this.f5088do.f915do.iterator();
        while (it.hasNext()) {
            it.next().m1075do();
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i != 0) {
            return false;
        }
        Iterator<InterfaceC0309Js> it = this.f5088do.f915do.iterator();
        while (it.hasNext()) {
            if (it.next().m1078new()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        if (this.f5098do) {
            return;
        }
        Iterator<InterfaceC0291Ja<O2>> it = this.f5103new.iterator();
        while (it.hasNext()) {
            it.next().accept(new O2());
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness", "MissingNullability"}) Intent intent) {
        super.onNewIntent(intent);
        Iterator<InterfaceC0291Ja<Intent>> it = this.f5099for.iterator();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        Iterator<InterfaceC0309Js> it = this.f5088do.f915do.iterator();
        while (it.hasNext()) {
            it.next().m1076for();
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        if (this.f5102if) {
            return;
        }
        Iterator<InterfaceC0291Ja<O4>> it = this.f5104try.iterator();
        while (it.hasNext()) {
            it.next().accept(new O4());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            return true;
        }
        super.onPreparePanel(i, view, menu);
        Iterator<InterfaceC0309Js> it = this.f5088do.f915do.iterator();
        while (it.hasNext()) {
            it.next().m1077if();
        }
        return true;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.f5091do.m3205do(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Cnew cnew;
        C2687eL c2687eL = this.f5094do;
        if (c2687eL == null && (cnew = (Cnew) getLastNonConfigurationInstance()) != null) {
            c2687eL = cnew.f5111do;
        }
        if (c2687eL == null) {
            return null;
        }
        Cnew cnew2 = new Cnew();
        cnew2.f5111do = c2687eL;
        return cnew2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Cgoto cgoto = this.f5100if;
        if (cgoto instanceof Cgoto) {
            cgoto.m4262goto();
        }
        super.onSaveInstanceState(bundle);
        this.f5097do.m7788for(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator<InterfaceC0291Ja<Integer>> it = this.f5101if.iterator();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (C0802cI.m4897do()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            this.f5090do.m3152do();
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m3190catch();
        this.f5092do.m3195do(getWindow().getDecorView());
        super.setContentView(i);
    }

    @Override // android.app.Activity
    @Deprecated
    public final void startActivityForResult(Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @Deprecated
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public final void startActivityForResult(Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        this.f5098do = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.f5098do = false;
            Iterator<InterfaceC0291Ja<O2>> it = this.f5103new.iterator();
            while (it.hasNext()) {
                it.next().accept(new O2(configuration));
            }
        } catch (Throwable th) {
            this.f5098do = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        this.f5102if = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.f5102if = false;
            Iterator<InterfaceC0291Ja<O4>> it = this.f5104try.iterator();
            while (it.hasNext()) {
                it.next().accept(new O4(configuration));
            }
        } catch (Throwable th) {
            this.f5102if = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        m3190catch();
        this.f5092do.m3195do(getWindow().getDecorView());
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        m3190catch();
        this.f5092do.m3195do(getWindow().getDecorView());
        super.setContentView(view, layoutParams);
    }
}
