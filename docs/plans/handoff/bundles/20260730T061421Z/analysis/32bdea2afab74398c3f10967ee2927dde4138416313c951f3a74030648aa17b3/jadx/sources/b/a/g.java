package b.a;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ReportFragment;
import b.a.g;
import b.j.A;
import b.j.AbstractC0137g;
import b.j.D;
import b.j.H;
import b.j.I;
import b.j.InterfaceC0138h;
import b.j.j;
import b.j.l;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class g extends b.e.b.f implements b.j.j, I, b.n.f, k, b.a.l.h {
    public b.a.l.g mActivityResultRegistry;
    public int mContentLayoutId;
    public D mDefaultFactory;
    public final l mLifecycleRegistry;
    public final AtomicInteger mNextLocalRequestCode;
    public final j mOnBackPressedDispatcher;
    public final b.n.e mSavedStateRegistryController;
    public H mViewModelStore;

    public g() {
        this.mLifecycleRegistry = new l(this);
        this.mSavedStateRegistryController = new b.n.e(this);
        this.mOnBackPressedDispatcher = new j(new b(this));
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new e(this);
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        getLifecycle().a(new InterfaceC0138h() { // from class: androidx.activity.ComponentActivity$3
            @Override // b.j.InterfaceC0138h
            public void d(j jVar, Lifecycle$Event lifecycle$Event) {
                if (lifecycle$Event == Lifecycle$Event.ON_STOP) {
                    Window window = g.this.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView != null) {
                        peekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        getLifecycle().a(new InterfaceC0138h() { // from class: androidx.activity.ComponentActivity$4
            @Override // b.j.InterfaceC0138h
            public void d(j jVar, Lifecycle$Event lifecycle$Event) {
                if (lifecycle$Event != Lifecycle$Event.ON_DESTROY || g.this.isChangingConfigurations()) {
                    return;
                }
                g.this.getViewModelStore().a();
            }
        });
    }

    private void initViewTreeOwners() {
        getWindow().getDecorView().setTag(R.id.view_tree_lifecycle_owner, this);
        getWindow().getDecorView().setTag(R.id.view_tree_view_model_store_owner, this);
        getWindow().getDecorView().setTag(R.id.view_tree_saved_state_registry_owner, this);
    }

    @Override // android.app.Activity
    public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    @Override // b.a.l.h
    public final b.a.l.g getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    public D getDefaultViewModelProviderFactory() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new A(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        f fVar = (f) getLastNonConfigurationInstance();
        if (fVar != null) {
            return fVar.f217a;
        }
        return null;
    }

    @Override // b.e.b.f, b.j.j
    public AbstractC0137g getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // b.a.k
    public final j getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // b.n.f
    public final b.n.d getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f1236b;
    }

    @Override // b.j.I
    public H getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.mViewModelStore == null) {
            f fVar = (f) getLastNonConfigurationInstance();
            if (fVar != null) {
                this.mViewModelStore = fVar.f218b;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new H();
            }
        }
        return this.mViewModelStore;
    }

    @Override // android.app.Activity
    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.mActivityResultRegistry.a(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.a();
    }

    @Override // b.e.b.f, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mSavedStateRegistryController.a(bundle);
        b.a.l.g gVar = this.mActivityResultRegistry;
        Objects.requireNonNull(gVar);
        if (bundle != null) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList != null && integerArrayList != null) {
                int size = stringArrayList.size();
                for (int i = 0; i < size; i++) {
                    int intValue = integerArrayList.get(i).intValue();
                    String str = stringArrayList.get(i);
                    gVar.f236b.put(Integer.valueOf(intValue), str);
                    gVar.f237c.put(str, Integer.valueOf(intValue));
                }
                gVar.f235a.set(size);
                gVar.e.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
            }
        }
        ReportFragment.b(this);
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        f fVar;
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        H h = this.mViewModelStore;
        if (h == null && (fVar = (f) getLastNonConfigurationInstance()) != null) {
            h = fVar.f218b;
        }
        if (h == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        f fVar2 = new f();
        fVar2.f217a = onRetainCustomNonConfigurationInstance;
        fVar2.f218b = h;
        return fVar2;
    }

    @Override // b.e.b.f, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC0137g lifecycle = getLifecycle();
        if (lifecycle instanceof l) {
            ((l) lifecycle).e(Lifecycle$State.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        b.a.l.g gVar = this.mActivityResultRegistry;
        Objects.requireNonNull(gVar);
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(gVar.f236b.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(gVar.f236b.values()));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", gVar.e);
    }

    public final b.a.l.c registerForActivityResult(b.a.l.j.b bVar, b.a.l.g gVar, b.a.l.b bVar2) {
        StringBuilder f = c.a.c.a.a.f("activity_rq#");
        f.append(this.mNextLocalRequestCode.getAndIncrement());
        return gVar.d(f.toString(), this, bVar, bVar2);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        initViewTreeOwners();
        super.setContentView(i);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        initViewTreeOwners();
        super.setContentView(view);
    }

    public final b.a.l.c registerForActivityResult(b.a.l.j.b bVar, b.a.l.b bVar2) {
        return registerForActivityResult(bVar, this.mActivityResultRegistry, bVar2);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.setContentView(view, layoutParams);
    }

    public g(int i) {
        this();
        this.mContentLayoutId = i;
    }
}
