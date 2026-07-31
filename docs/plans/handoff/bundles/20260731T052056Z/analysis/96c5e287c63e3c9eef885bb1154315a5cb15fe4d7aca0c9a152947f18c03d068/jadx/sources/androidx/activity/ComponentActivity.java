package androidx.activity;

import android.app.Application;
import android.app.PictureInPictureUiState;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.ComponentActivity;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.app.PictureInPictureUiStateCompat$Companion;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.core.view.MenuHostHelper$LifecycleContainer;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.FragmentViewLifecycleOwner;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ReportFragment;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.navigationevent.DirectNavigationEventInput;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.transition.Transition;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.ImageLoader$Builder;
import coil3.request.ViewTargetDisposable;
import coil3.svg.internal.AndroidSvg;
import com.caverock.androidsvg.SVG;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ExceptionsKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ComponentActivity extends androidx.core.app.ComponentActivity implements ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, OnBackPressedDispatcherOwner, NavigationEventDispatcherOwner, ActivityResultRegistryOwner {
    public ViewModelStore _viewModelStore;
    public final ComponentActivity$activityResultRegistry$1 activityResultRegistry;
    public final ViewTargetDisposable contextAwareHelper = new ViewTargetDisposable();
    public final SynchronizedLazyImpl defaultViewModelProviderFactory$delegate;
    public boolean dispatchingOnMultiWindowModeChanged;
    public boolean dispatchingOnPictureInPictureModeChanged;
    public final SynchronizedLazyImpl fullyDrawnReporter$delegate;
    public final SVG menuHostHelper;
    public final AtomicInteger nextLocalRequestCode;
    public final SynchronizedLazyImpl onBackPressedDispatcher$delegate;
    public final SynchronizedLazyImpl onBackPressedInput$delegate;
    public final CopyOnWriteArrayList onConfigurationChangedListeners;
    public final CopyOnWriteArrayList onMultiWindowModeChangedListeners;
    public final CopyOnWriteArrayList onNewIntentListeners;
    public final CopyOnWriteArrayList onPictureInPictureModeChangedListeners;
    public final CopyOnWriteArrayList onPictureInPictureUiStateChangedListeners;
    public final CopyOnWriteArrayList onTrimMemoryListeners;
    public final CopyOnWriteArrayList onUserLeaveHintListeners;
    public final ReportFullyDrawnExecutorImpl reportFullyDrawnExecutor;
    public final AndroidSvg savedStateRegistryController;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NonConfigurationInstances {
        public ViewModelStore viewModelStore;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReportFullyDrawnExecutorImpl implements ViewTreeObserver.OnDrawListener, Runnable, Executor {
        public Runnable currentRunnable;
        public final long endWatchTimeMillis = SystemClock.uptimeMillis() + 10000;
        public boolean onDrawScheduled;
        public final /* synthetic */ AppCompatActivity this$0;

        public ReportFullyDrawnExecutorImpl(AppCompatActivity appCompatActivity) {
            this.this$0 = appCompatActivity;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.getClass();
            this.currentRunnable = runnable;
            View decorView = this.this$0.getWindow().getDecorView();
            decorView.getClass();
            if (!this.onDrawScheduled) {
                decorView.postOnAnimation(new Task$$ExternalSyntheticLambda0(1, this));
            } else if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                decorView.invalidate();
            } else {
                decorView.postInvalidate();
            }
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            boolean z;
            Runnable runnable = this.currentRunnable;
            if (runnable == null) {
                if (SystemClock.uptimeMillis() > this.endWatchTimeMillis) {
                    this.onDrawScheduled = false;
                    this.this$0.getWindow().getDecorView().post(this);
                    return;
                }
                return;
            }
            runnable.run();
            this.currentRunnable = null;
            FullyDrawnReporter fullyDrawnReporter = (FullyDrawnReporter) this.this$0.fullyDrawnReporter$delegate.getValue();
            synchronized (fullyDrawnReporter.lock) {
                z = fullyDrawnReporter.reportedFullyDrawn;
            }
            if (z) {
                this.onDrawScheduled = false;
                this.this$0.getWindow().getDecorView().post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.this$0.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }
    }

    public ComponentActivity() {
        final AppCompatActivity appCompatActivity = (AppCompatActivity) this;
        final int i = 0;
        this.menuHostHelper = new SVG((Runnable) new ComponentActivity$$ExternalSyntheticLambda0(appCompatActivity, i));
        SavedStateRegistryImpl savedStateRegistryImpl = new SavedStateRegistryImpl(this, new Worker$$ExternalSyntheticLambda0(9, this));
        AndroidSvg androidSvg = new AndroidSvg(savedStateRegistryImpl);
        this.savedStateRegistryController = androidSvg;
        this.reportFullyDrawnExecutor = new ReportFullyDrawnExecutorImpl(appCompatActivity);
        this.fullyDrawnReporter$delegate = new SynchronizedLazyImpl(new ComponentActivity$$ExternalSyntheticLambda1(appCompatActivity, i));
        this.nextLocalRequestCode = new AtomicInteger();
        this.activityResultRegistry = new ComponentActivity$activityResultRegistry$1(appCompatActivity);
        this.onConfigurationChangedListeners = new CopyOnWriteArrayList();
        this.onTrimMemoryListeners = new CopyOnWriteArrayList();
        this.onNewIntentListeners = new CopyOnWriteArrayList();
        this.onMultiWindowModeChangedListeners = new CopyOnWriteArrayList();
        this.onPictureInPictureModeChangedListeners = new CopyOnWriteArrayList();
        this.onPictureInPictureUiStateChangedListeners = new CopyOnWriteArrayList();
        this.onUserLeaveHintListeners = new CopyOnWriteArrayList();
        this.onBackPressedInput$delegate = new SynchronizedLazyImpl(new ComponentActivity$$ExternalSyntheticLambda1(appCompatActivity, 2));
        LifecycleRegistry lifecycleRegistry = this.lifecycleRegistry;
        if (lifecycleRegistry == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
            throw null;
        }
        lifecycleRegistry.addObserver(new LifecycleEventObserver() { // from class: androidx.activity.ComponentActivity$$ExternalSyntheticLambda3
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
                Window window;
                View peekDecorView;
                int i2 = i;
                AppCompatActivity appCompatActivity2 = appCompatActivity;
                switch (i2) {
                    case 0:
                        if (lifecycle$Event == Lifecycle$Event.ON_STOP && (window = appCompatActivity2.getWindow()) != null && (peekDecorView = window.peekDecorView()) != null) {
                            peekDecorView.cancelPendingInputEvents();
                            break;
                        }
                        break;
                    default:
                        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                            appCompatActivity2.contextAwareHelper.job = null;
                            if (!appCompatActivity2.isChangingConfigurations()) {
                                appCompatActivity2.getViewModelStore().clear();
                            }
                            ComponentActivity.ReportFullyDrawnExecutorImpl reportFullyDrawnExecutorImpl = appCompatActivity2.reportFullyDrawnExecutor;
                            AppCompatActivity appCompatActivity3 = reportFullyDrawnExecutorImpl.this$0;
                            appCompatActivity3.getWindow().getDecorView().removeCallbacks(reportFullyDrawnExecutorImpl);
                            appCompatActivity3.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(reportFullyDrawnExecutorImpl);
                            break;
                        }
                        break;
                }
            }
        });
        final int i2 = 1;
        this.lifecycleRegistry.addObserver(new LifecycleEventObserver() { // from class: androidx.activity.ComponentActivity$$ExternalSyntheticLambda3
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
                Window window;
                View peekDecorView;
                int i22 = i2;
                AppCompatActivity appCompatActivity2 = appCompatActivity;
                switch (i22) {
                    case 0:
                        if (lifecycle$Event == Lifecycle$Event.ON_STOP && (window = appCompatActivity2.getWindow()) != null && (peekDecorView = window.peekDecorView()) != null) {
                            peekDecorView.cancelPendingInputEvents();
                            break;
                        }
                        break;
                    default:
                        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                            appCompatActivity2.contextAwareHelper.job = null;
                            if (!appCompatActivity2.isChangingConfigurations()) {
                                appCompatActivity2.getViewModelStore().clear();
                            }
                            ComponentActivity.ReportFullyDrawnExecutorImpl reportFullyDrawnExecutorImpl = appCompatActivity2.reportFullyDrawnExecutor;
                            AppCompatActivity appCompatActivity3 = reportFullyDrawnExecutorImpl.this$0;
                            appCompatActivity3.getWindow().getDecorView().removeCallbacks(reportFullyDrawnExecutorImpl);
                            appCompatActivity3.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(reportFullyDrawnExecutorImpl);
                            break;
                        }
                        break;
                }
            }
        });
        this.lifecycleRegistry.addObserver(new Recreator(i2, appCompatActivity));
        savedStateRegistryImpl.performAttach();
        ViewModelKt.enableSavedStateHandles(this);
        if (Build.VERSION.SDK_INT == 23) {
            this.lifecycleRegistry.addObserver(new ImmLeaksCleaner(appCompatActivity));
        }
        ((AndroidSvg) androidSvg.renderOptions).registerSavedStateProvider("android:support:activity-result", new ComponentActivity$$ExternalSyntheticLambda5(appCompatActivity, i));
        addOnContextAvailableListener(new ComponentActivity$$ExternalSyntheticLambda6(appCompatActivity, i));
        this.defaultViewModelProviderFactory$delegate = new SynchronizedLazyImpl(new ComponentActivity$$ExternalSyntheticLambda1(appCompatActivity, 3));
        this.onBackPressedDispatcher$delegate = new SynchronizedLazyImpl(new ComponentActivity$$ExternalSyntheticLambda1(appCompatActivity, 4));
    }

    public static final void addObserverForBackInvoker$lambda$0(OnBackPressedDispatcher onBackPressedDispatcher, ComponentActivity componentActivity, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_CREATE) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = componentActivity.getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.getClass();
            onBackPressedDispatcher.setOnBackInvokedDispatcher(onBackInvokedDispatcher);
        }
    }

    public static final void onBackPressedDispatcher_delegate$lambda$0$0(AppCompatActivity appCompatActivity) {
        try {
            super.onBackPressed();
        } catch (IllegalStateException e) {
            if (!Intrinsics.areEqual(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e;
            }
        } catch (NullPointerException e2) {
            if (!Intrinsics.areEqual(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                throw e2;
            }
        }
    }

    public final void addMenuProvider(MenuProvider menuProvider, FragmentViewLifecycleOwner fragmentViewLifecycleOwner, Lifecycle$State lifecycle$State) {
        menuProvider.getClass();
        lifecycle$State.getClass();
        SVG svg = this.menuHostHelper;
        svg.getClass();
        fragmentViewLifecycleOwner.initialize$1();
        LifecycleRegistry lifecycleRegistry = fragmentViewLifecycleOwner.mLifecycleRegistry;
        HashMap hashMap = (HashMap) svg.idToElementMap;
        MenuHostHelper$LifecycleContainer menuHostHelper$LifecycleContainer = (MenuHostHelper$LifecycleContainer) hashMap.remove(menuProvider);
        if (menuHostHelper$LifecycleContainer != null) {
            menuHostHelper$LifecycleContainer.mLifecycle.removeObserver(menuHostHelper$LifecycleContainer.mObserver);
            menuHostHelper$LifecycleContainer.mObserver = null;
        }
        hashMap.put(menuProvider, new MenuHostHelper$LifecycleContainer(lifecycleRegistry, new MenuHostHelper$$ExternalSyntheticLambda0(svg, lifecycle$State, menuProvider, 0)));
    }

    public final void addOnContextAvailableListener(OnContextAvailableListener onContextAvailableListener) {
        ViewTargetDisposable viewTargetDisposable = this.contextAwareHelper;
        viewTargetDisposable.getClass();
        ComponentActivity componentActivity = (ComponentActivity) viewTargetDisposable.job;
        if (componentActivity != null) {
            onContextAvailableListener.onContextAvailable(componentActivity);
        }
        ((CopyOnWriteArraySet) viewTargetDisposable.view).add(onContextAvailableListener);
    }

    @Override // androidx.activity.result.ActivityResultRegistryOwner
    public final ComponentActivity$activityResultRegistry$1 getActivityResultRegistry() {
        return this.activityResultRegistry;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final MutableCreationExtras getDefaultViewModelCreationExtras() {
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(0);
        Application application = getApplication();
        LinkedHashMap linkedHashMap = mutableCreationExtras.extras;
        if (application != null) {
            linkedHashMap.put(ViewModelProvider$AndroidViewModelFactory.APPLICATION_KEY, getApplication());
        }
        linkedHashMap.put(ViewModelKt.SAVED_STATE_REGISTRY_OWNER_KEY, this);
        linkedHashMap.put(ViewModelKt.VIEW_MODEL_STORE_OWNER_KEY, this);
        Intent intent = getIntent();
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras != null) {
            linkedHashMap.put(ViewModelKt.DEFAULT_ARGS_KEY, extras);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider$Factory getDefaultViewModelProviderFactory() {
        return (ViewModelProvider$Factory) this.defaultViewModelProviderFactory$delegate.getValue();
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final LifecycleRegistry getLifecycle() {
        return this.lifecycleRegistry;
    }

    @Override // androidx.navigationevent.NavigationEventDispatcherOwner
    public final ImageLoader$Builder getNavigationEventDispatcher() {
        return getOnBackPressedDispatcher().getEventInput().dispatcher;
    }

    @Override // androidx.activity.OnBackPressedDispatcherOwner
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return (OnBackPressedDispatcher) this.onBackPressedDispatcher$delegate.getValue();
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final AndroidSvg getSavedStateRegistry() {
        return (AndroidSvg) this.savedStateRegistryController.renderOptions;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        if (getApplication() == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
            return null;
        }
        ViewModelStore viewModelStore = this._viewModelStore;
        if (viewModelStore == null) {
            NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
            if (nonConfigurationInstances != null) {
                this._viewModelStore = nonConfigurationInstances.viewModelStore;
            }
            viewModelStore = this._viewModelStore;
            if (viewModelStore == null) {
                viewModelStore = new ViewModelStore();
                this._viewModelStore = viewModelStore;
            }
        }
        viewModelStore.getClass();
        return viewModelStore;
    }

    public final void initializeViewTreeOwners() {
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        decorView2.getClass();
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        decorView3.getClass();
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        decorView4.getClass();
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView5 = getWindow().getDecorView();
        decorView5.getClass();
        decorView5.setTag(R.id.report_drawn, this);
        View decorView6 = getWindow().getDecorView();
        decorView6.getClass();
        decorView6.setTag(R.id.view_tree_navigation_event_dispatcher_owner, this);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.activityResultRegistry.dispatchResult(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        ((DirectNavigationEventInput) this.onBackPressedInput$delegate.getValue()).dispatchOnBackCompleted();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        super.onConfigurationChanged(configuration);
        Iterator it = this.onConfigurationChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(configuration);
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.savedStateRegistryController.performRestore(bundle);
        ViewTargetDisposable viewTargetDisposable = this.contextAwareHelper;
        viewTargetDisposable.getClass();
        viewTargetDisposable.job = this;
        Iterator it = ((CopyOnWriteArraySet) viewTargetDisposable.view).iterator();
        while (it.hasNext()) {
            ((OnContextAvailableListener) it.next()).onContextAvailable(this);
        }
        super.onCreate(bundle);
        int i = ReportFragment.$r8$clinit;
        ReportFragment.Companion.injectIfNeededIn(this);
        getPackageManager().hasSystemFeature("android.software.picture_in_picture");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        menu.getClass();
        if (i != 0) {
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        MenuInflater menuInflater = getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.menuHostHelper.cssRules).iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).onCreateMenu(menu, menuInflater);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        menuItem.getClass();
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            Iterator it = ((CopyOnWriteArrayList) this.menuHostHelper.cssRules).iterator();
            while (it.hasNext()) {
                if (((MenuProvider) it.next()).onMenuItemSelected(menuItem)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        configuration.getClass();
        this.dispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.dispatchingOnMultiWindowModeChanged = false;
            Iterator it = this.onMultiWindowModeChangedListeners.iterator();
            it.getClass();
            while (it.hasNext()) {
                ((Consumer) it.next()).accept(new MultiWindowModeChangedInfo(z));
            }
        } catch (Throwable th) {
            this.dispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        Iterator it = this.onNewIntentListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        menu.getClass();
        Iterator it = ((CopyOnWriteArrayList) this.menuHostHelper.cssRules).iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).onMenuClosed(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        configuration.getClass();
        this.dispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.dispatchingOnPictureInPictureModeChanged = false;
            Iterator it = this.onPictureInPictureModeChangedListeners.iterator();
            it.getClass();
            while (it.hasNext()) {
                ((Consumer) it.next()).accept(new PictureInPictureModeChangedInfo(z));
            }
        } catch (Throwable th) {
            this.dispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureUiStateChanged(PictureInPictureUiState pictureInPictureUiState) {
        pictureInPictureUiState.getClass();
        super.onPictureInPictureUiStateChanged(pictureInPictureUiState);
        Transition.AnonymousClass1 fromPictureInPictureUiState = PictureInPictureUiStateCompat$Companion.fromPictureInPictureUiState(pictureInPictureUiState);
        Iterator it = this.onPictureInPictureUiStateChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(fromPictureInPictureUiState);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        menu.getClass();
        if (i != 0) {
            return true;
        }
        super.onPreparePanel(i, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.menuHostHelper.cssRules).iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).onPrepareMenu(menu);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        if (this.activityResultRegistry.dispatchResult(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances;
        ViewModelStore viewModelStore = this._viewModelStore;
        if (viewModelStore == null && (nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance()) != null) {
            viewModelStore = nonConfigurationInstances.viewModelStore;
        }
        if (viewModelStore == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances2 = new NonConfigurationInstances();
        nonConfigurationInstances2.viewModelStore = viewModelStore;
        return nonConfigurationInstances2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        LifecycleRegistry lifecycleRegistry = this.lifecycleRegistry;
        if (lifecycleRegistry != null) {
            lifecycleRegistry.getClass();
            lifecycleRegistry.setCurrentState(Lifecycle$State.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.savedStateRegistryController.performSave(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator it = this.onTrimMemoryListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator it = this.onUserLeaveHintListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public final ActivityResultLauncher registerForActivityResult(ActivityResultCallback activityResultCallback, ExceptionsKt exceptionsKt) {
        ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = this.activityResultRegistry;
        componentActivity$activityResultRegistry$1.getClass();
        return componentActivity$activityResultRegistry$1.register("activity_rq#" + this.nextLocalRequestCode.getAndIncrement(), this, exceptionsKt, activityResultCallback);
    }

    public final void removeMenuProvider(MenuProvider menuProvider) {
        menuProvider.getClass();
        this.menuHostHelper.removeMenuProvider(menuProvider);
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (TuplesKt.isEnabled()) {
                Trace.beginSection(TuplesKt.truncatedTraceSectionLabel("reportFullyDrawn() for ComponentActivity"));
            }
            super.reportFullyDrawn();
            FullyDrawnReporter fullyDrawnReporter = (FullyDrawnReporter) this.fullyDrawnReporter$delegate.getValue();
            synchronized (fullyDrawnReporter.lock) {
                try {
                    fullyDrawnReporter.reportedFullyDrawn = true;
                    Iterator it = fullyDrawnReporter.onReportCallbacks.iterator();
                    while (it.hasNext()) {
                        ((Function0) it.next()).invoke();
                    }
                    fullyDrawnReporter.onReportCallbacks.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        ReportFullyDrawnExecutorImpl reportFullyDrawnExecutorImpl = this.reportFullyDrawnExecutor;
        reportFullyDrawnExecutorImpl.getClass();
        if (!reportFullyDrawnExecutorImpl.onDrawScheduled) {
            reportFullyDrawnExecutorImpl.onDrawScheduled = true;
            decorView.getViewTreeObserver().addOnDrawListener(reportFullyDrawnExecutorImpl);
        }
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i) {
        intent.getClass();
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        intentSender.getClass();
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public final void startActivityForResult(Intent intent, int i, Bundle bundle) {
        intent.getClass();
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public final void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        intentSender.getClass();
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        if (this.dispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator it = this.onMultiWindowModeChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(new MultiWindowModeChangedInfo(z));
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        if (this.dispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator it = this.onPictureInPictureModeChangedListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(new PictureInPictureModeChangedInfo(z));
        }
    }
}
