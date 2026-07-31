package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.ComponentActivity$$ExternalSyntheticLambda5;
import androidx.activity.ComponentActivity$$ExternalSyntheticLambda6;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.core.app.NavUtils;
import androidx.core.app.TaskStackBuilder;
import androidx.core.content.res.CamUtils;
import androidx.core.os.LocaleListCompat;
import androidx.core.util.Consumer;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity$HostCallbacks;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentViewLifecycleOwner;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleRegistry;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.TransactionExecutor;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import androidx.work.OperationKt;
import coil3.svg.internal.AndroidSvg;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import j$.util.Objects;
import java.util.Arrays;
import java.util.LinkedHashSet;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.activity.BaseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AppCompatActivity extends ComponentActivity implements AppCompatCallback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean mCreated;
    public AppCompatDelegateImpl mDelegate;
    public boolean mResumed;
    public final HintHandler mFragments = new HintHandler(24, new FragmentActivity$HostCallbacks(this));
    public final LifecycleRegistry mFragmentLifecycleRegistry = new LifecycleRegistry(this, true);
    public boolean mStopped = true;

    public AppCompatActivity() {
        final int i = 1;
        ((AndroidSvg) this.savedStateRegistryController.renderOptions).registerSavedStateProvider("android:support:lifecycle", new ComponentActivity$$ExternalSyntheticLambda5(this, i));
        final int i2 = 0;
        this.onConfigurationChangedListeners.add(new Consumer(this) { // from class: androidx.fragment.app.FragmentActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ AppCompatActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i3 = i2;
                AppCompatActivity appCompatActivity = this.f$0;
                switch (i3) {
                    case 0:
                        int i4 = AppCompatActivity.$r8$clinit;
                        appCompatActivity.mFragments.noteStateNotSaved();
                        break;
                    default:
                        int i5 = AppCompatActivity.$r8$clinit;
                        appCompatActivity.mFragments.noteStateNotSaved();
                        break;
                }
            }
        });
        this.onNewIntentListeners.add(new Consumer(this) { // from class: androidx.fragment.app.FragmentActivity$$ExternalSyntheticLambda1
            public final /* synthetic */ AppCompatActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i3 = i;
                AppCompatActivity appCompatActivity = this.f$0;
                switch (i3) {
                    case 0:
                        int i4 = AppCompatActivity.$r8$clinit;
                        appCompatActivity.mFragments.noteStateNotSaved();
                        break;
                    default:
                        int i5 = AppCompatActivity.$r8$clinit;
                        appCompatActivity.mFragments.noteStateNotSaved();
                        break;
                }
            }
        });
        addOnContextAvailableListener(new ComponentActivity$$ExternalSyntheticLambda6(this, i));
    }

    public static boolean markState(FragmentManagerImpl fragmentManagerImpl, Lifecycle$State lifecycle$State) {
        boolean z = false;
        for (Fragment fragment : fragmentManagerImpl.mFragmentStore.getFragments()) {
            if (fragment != null) {
                FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = fragment.mHost;
                if ((fragmentActivity$HostCallbacks == null ? null : fragmentActivity$HostCallbacks.this$0) != null) {
                    z |= markState(fragment.getChildFragmentManager(), lifecycle$State);
                }
                FragmentViewLifecycleOwner fragmentViewLifecycleOwner = fragment.mViewLifecycleOwner;
                if (fragmentViewLifecycleOwner != null) {
                    fragmentViewLifecycleOwner.initialize$1();
                    if (fragmentViewLifecycleOwner.mLifecycleRegistry.state.isAtLeast(Lifecycle$State.STARTED)) {
                        fragment.mViewLifecycleOwner.mLifecycleRegistry.setCurrentState(lifecycle$State);
                        z = true;
                    }
                }
                if (fragment.mLifecycleRegistry.state.isAtLeast(Lifecycle$State.STARTED)) {
                    fragment.mLifecycleRegistry.setCurrentState(lifecycle$State);
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.ensureSubDecor();
        ((ViewGroup) appCompatDelegateImpl.mSubDecor.findViewById(R.id.content)).addView(view, layoutParams);
        appCompatDelegateImpl.mAppCompatWindowCallback.bypassOnContentChanged(appCompatDelegateImpl.mWindow.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.mBaseContextAttached = true;
        int i = appCompatDelegateImpl.mLocalNightMode;
        if (i == -100) {
            i = AppCompatDelegate.sDefaultNightMode;
        }
        int mapNightMode = appCompatDelegateImpl.mapNightMode(context, i);
        int i2 = 0;
        if (AppCompatDelegate.isAutoStorageOptedIn(context) && AppCompatDelegate.isAutoStorageOptedIn(context)) {
            if (Build.VERSION.SDK_INT < 33) {
                synchronized (AppCompatDelegate.sAppLocalesStorageSyncLock) {
                    try {
                        LocaleListCompat localeListCompat = AppCompatDelegate.sRequestedAppLocales;
                        if (localeListCompat == null) {
                            LocaleListCompat localeListCompat2 = AppCompatDelegate.sStoredAppLocales;
                            if (localeListCompat2 == null) {
                                localeListCompat2 = LocaleListCompat.forLanguageTags(NavUtils.readLocales(context));
                                AppCompatDelegate.sStoredAppLocales = localeListCompat2;
                            }
                            if (!localeListCompat2.mImpl.isEmpty()) {
                                AppCompatDelegate.sRequestedAppLocales = AppCompatDelegate.sStoredAppLocales;
                            }
                        } else if (!localeListCompat.equals(AppCompatDelegate.sStoredAppLocales)) {
                            LocaleListCompat localeListCompat3 = AppCompatDelegate.sRequestedAppLocales;
                            AppCompatDelegate.sStoredAppLocales = localeListCompat3;
                            NavUtils.persistLocales(context, localeListCompat3.mImpl.toLanguageTags());
                        }
                    } finally {
                    }
                }
            } else if (!AppCompatDelegate.sIsFrameworkSyncChecked) {
                AppCompatDelegate.sSerialExecutorForLocalesStorage.execute(new AppCompatDelegate$$ExternalSyntheticLambda0(context, i2));
            }
        }
        LocaleListCompat calculateApplicationLocales = AppCompatDelegateImpl.calculateApplicationLocales(context);
        Configuration configuration = null;
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(AppCompatDelegateImpl.createOverrideAppConfiguration(context, mapNightMode, calculateApplicationLocales, null, false));
            } catch (IllegalStateException unused) {
            }
            super.attachBaseContext(context);
        }
        if (context instanceof androidx.appcompat.view.ContextThemeWrapper) {
            try {
                ((androidx.appcompat.view.ContextThemeWrapper) context).applyOverrideConfiguration(AppCompatDelegateImpl.createOverrideAppConfiguration(context, mapNightMode, calculateApplicationLocales, null, false));
            } catch (IllegalStateException unused2) {
            }
            super.attachBaseContext(context);
        }
        if (AppCompatDelegateImpl.sCanReturnDifferentContext) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = RecyclerView.DECELERATION_RATE;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = RecyclerView.DECELERATION_RATE;
                if (configuration3.diff(configuration4) != 0) {
                    float f = configuration3.fontScale;
                    float f2 = configuration4.fontScale;
                    if (f != f2) {
                        configuration.fontScale = f2;
                    }
                    int i3 = configuration3.mcc;
                    int i4 = configuration4.mcc;
                    if (i3 != i4) {
                        configuration.mcc = i4;
                    }
                    int i5 = configuration3.mnc;
                    int i6 = configuration4.mnc;
                    if (i5 != i6) {
                        configuration.mnc = i6;
                    }
                    int i7 = Build.VERSION.SDK_INT;
                    if (i7 >= 24) {
                        AppCompatDelegateImpl.Api24Impl.generateConfigDelta_locale(configuration3, configuration4, configuration);
                    } else if (!Objects.equals(configuration3.locale, configuration4.locale)) {
                        configuration.locale = configuration4.locale;
                    }
                    int i8 = configuration3.touchscreen;
                    int i9 = configuration4.touchscreen;
                    if (i8 != i9) {
                        configuration.touchscreen = i9;
                    }
                    int i10 = configuration3.keyboard;
                    int i11 = configuration4.keyboard;
                    if (i10 != i11) {
                        configuration.keyboard = i11;
                    }
                    int i12 = configuration3.keyboardHidden;
                    int i13 = configuration4.keyboardHidden;
                    if (i12 != i13) {
                        configuration.keyboardHidden = i13;
                    }
                    int i14 = configuration3.navigation;
                    int i15 = configuration4.navigation;
                    if (i14 != i15) {
                        configuration.navigation = i15;
                    }
                    int i16 = configuration3.navigationHidden;
                    int i17 = configuration4.navigationHidden;
                    if (i16 != i17) {
                        configuration.navigationHidden = i17;
                    }
                    int i18 = configuration3.orientation;
                    int i19 = configuration4.orientation;
                    if (i18 != i19) {
                        configuration.orientation = i19;
                    }
                    int i20 = configuration3.screenLayout & 15;
                    int i21 = configuration4.screenLayout & 15;
                    if (i20 != i21) {
                        configuration.screenLayout |= i21;
                    }
                    int i22 = configuration3.screenLayout & 192;
                    int i23 = configuration4.screenLayout & 192;
                    if (i22 != i23) {
                        configuration.screenLayout |= i23;
                    }
                    int i24 = configuration3.screenLayout & 48;
                    int i25 = configuration4.screenLayout & 48;
                    if (i24 != i25) {
                        configuration.screenLayout |= i25;
                    }
                    int i26 = configuration3.screenLayout & 768;
                    int i27 = configuration4.screenLayout & 768;
                    if (i26 != i27) {
                        configuration.screenLayout |= i27;
                    }
                    if (i7 >= 26) {
                        BitmapsKt.generateConfigDelta_colorMode(configuration3, configuration4, configuration);
                    }
                    int i28 = configuration3.uiMode & 15;
                    int i29 = configuration4.uiMode & 15;
                    if (i28 != i29) {
                        configuration.uiMode |= i29;
                    }
                    int i30 = configuration3.uiMode & 48;
                    int i31 = configuration4.uiMode & 48;
                    if (i30 != i31) {
                        configuration.uiMode |= i31;
                    }
                    int i32 = configuration3.screenWidthDp;
                    int i33 = configuration4.screenWidthDp;
                    if (i32 != i33) {
                        configuration.screenWidthDp = i33;
                    }
                    int i34 = configuration3.screenHeightDp;
                    int i35 = configuration4.screenHeightDp;
                    if (i34 != i35) {
                        configuration.screenHeightDp = i35;
                    }
                    int i36 = configuration3.smallestScreenWidthDp;
                    int i37 = configuration4.smallestScreenWidthDp;
                    if (i36 != i37) {
                        configuration.smallestScreenWidthDp = i37;
                    }
                    int i38 = configuration3.densityDpi;
                    int i39 = configuration4.densityDpi;
                    if (i38 != i39) {
                        configuration.densityDpi = i39;
                    }
                }
            }
            Configuration createOverrideAppConfiguration = AppCompatDelegateImpl.createOverrideAppConfiguration(context, mapNightMode, calculateApplicationLocales, configuration, true);
            androidx.appcompat.view.ContextThemeWrapper contextThemeWrapper = new androidx.appcompat.view.ContextThemeWrapper(context, org.wikipedia.R.style.Theme_AppCompat_Empty);
            contextThemeWrapper.applyOverrideConfiguration(createOverrideAppConfiguration);
            try {
                if (context.getTheme() != null) {
                    CamUtils.rebase(contextThemeWrapper.getTheme());
                }
            } catch (NullPointerException unused3) {
            }
            context = contextThemeWrapper;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ContextsKt supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.closeOptionsMenu()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ContextsKt supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.onMenuKeyEvent(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
    
        if (r1.equals("--list-dumpables") == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
    
        if (r1.equals("--dump-dumpable") == false) goto L37;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dump(java.lang.String r7, java.io.FileDescriptor r8, java.io.PrintWriter r9, java.lang.String[] r10) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatActivity.dump(java.lang.String, java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    @Override // android.app.Activity
    public final View findViewById(int i) {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.ensureSubDecor();
        return appCompatDelegateImpl.mWindow.findViewById(i);
    }

    public final AppCompatDelegate getDelegate() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.mDelegate;
        if (appCompatDelegateImpl != null) {
            return appCompatDelegateImpl;
        }
        TransactionExecutor transactionExecutor = AppCompatDelegate.sSerialExecutorForLocalesStorage;
        AppCompatDelegateImpl appCompatDelegateImpl2 = new AppCompatDelegateImpl(this, null, this, this);
        this.mDelegate = appCompatDelegateImpl2;
        return appCompatDelegateImpl2;
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        SupportMenuInflater supportMenuInflater = appCompatDelegateImpl.mMenuInflater;
        if (supportMenuInflater == null) {
            appCompatDelegateImpl.initWindowDecorActionBar();
            ContextsKt contextsKt = appCompatDelegateImpl.mActionBar;
            supportMenuInflater = new SupportMenuInflater(contextsKt != null ? contextsKt.getThemedContext() : appCompatDelegateImpl.mContext);
            appCompatDelegateImpl.mMenuInflater = supportMenuInflater;
        }
        return supportMenuInflater;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i = VectorEnabledTintResources.$r8$clinit;
        return super.getResources();
    }

    public final ContextsKt getSupportActionBar() {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.initWindowDecorActionBar();
        return appCompatDelegateImpl.mActionBar;
    }

    public final FragmentManagerImpl getSupportFragmentManager() {
        return ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager;
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        getDelegate().invalidateOptionsMenu();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.noteStateNotSaved();
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        if (appCompatDelegateImpl.mHasActionBar && appCompatDelegateImpl.mSubDecorInstalled) {
            appCompatDelegateImpl.initWindowDecorActionBar();
            ContextsKt contextsKt = appCompatDelegateImpl.mActionBar;
            if (contextsKt != null) {
                contextsKt.onConfigurationChanged();
            }
        }
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        Context context = appCompatDelegateImpl.mContext;
        synchronized (appCompatDrawableManager) {
            appCompatDrawableManager.mResourceManager.onConfigurationChanged(context);
        }
        appCompatDelegateImpl.mEffectiveConfiguration = new Configuration(appCompatDelegateImpl.mContext.getResources().getConfiguration());
        appCompatDelegateImpl.applyApplicationSpecificConfig(false, false);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_CREATE);
        FragmentManagerImpl fragmentManagerImpl = ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager.mLayoutInflaterFactory.onCreateView(null, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        onDestroy$androidx$fragment$app$FragmentActivity();
        getDelegate().onDestroy();
    }

    public final void onDestroy$androidx$fragment$app$FragmentActivity() {
        super.onDestroy();
        ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager.dispatchDestroy();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_DESTROY);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        Intent parentActivityIntent;
        if (!onMenuItemSelected$androidx$fragment$app$FragmentActivity(i, menuItem)) {
            ContextsKt supportActionBar = getSupportActionBar();
            if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0 || (parentActivityIntent = NavUtils.getParentActivityIntent(this)) == null) {
                return false;
            }
            if (!shouldUpRecreateTask(parentActivityIntent)) {
                navigateUpTo(parentActivityIntent);
                return true;
            }
            TaskStackBuilder taskStackBuilder = new TaskStackBuilder(this);
            Intent parentActivityIntent2 = NavUtils.getParentActivityIntent(this);
            if (parentActivityIntent2 == null) {
                parentActivityIntent2 = NavUtils.getParentActivityIntent(this);
            }
            if (parentActivityIntent2 != null) {
                ComponentName component = parentActivityIntent2.getComponent();
                if (component == null) {
                    component = parentActivityIntent2.resolveActivity(taskStackBuilder.mSourceContext.getPackageManager());
                }
                taskStackBuilder.addParentStack(component);
                taskStackBuilder.mIntents.add(parentActivityIntent2);
            }
            taskStackBuilder.startActivities();
            try {
                finishAffinity();
            } catch (IllegalStateException unused) {
                finish();
            }
        }
        return true;
    }

    public final boolean onMenuItemSelected$androidx$fragment$app$FragmentActivity(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 6) {
            return ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager.dispatchContextItemSelected();
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager.dispatchStateChange(5);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((AppCompatDelegateImpl) getDelegate()).ensureSubDecor();
    }

    @Override // android.app.Activity
    public final void onPostResume() {
        onPostResume$androidx$fragment$app$FragmentActivity();
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.initWindowDecorActionBar();
        ContextsKt contextsKt = appCompatDelegateImpl.mActionBar;
        if (contextsKt != null) {
            contextsKt.setShowHideAnimationEnabled(true);
        }
    }

    public final void onPostResume$androidx$fragment$app$FragmentActivity() {
        super.onPostResume();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_RESUME);
        FragmentManagerImpl fragmentManagerImpl = ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(7);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.noteStateNotSaved();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        HintHandler hintHandler = this.mFragments;
        hintHandler.noteStateNotSaved();
        super.onResume();
        this.mResumed = true;
        ((FragmentActivity$HostCallbacks) hintHandler.state).fragmentManager.execPendingActions(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        onStart$androidx$fragment$app$FragmentActivity();
        ((AppCompatDelegateImpl) getDelegate()).applyApplicationSpecificConfig(true, false);
    }

    public final void onStart$androidx$fragment$app$FragmentActivity() {
        HintHandler hintHandler = this.mFragments;
        hintHandler.noteStateNotSaved();
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = (FragmentActivity$HostCallbacks) hintHandler.state;
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            FragmentManagerImpl fragmentManagerImpl = fragmentActivity$HostCallbacks.fragmentManager;
            fragmentManagerImpl.mStateSaved = false;
            fragmentManagerImpl.mStopped = false;
            fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
            fragmentManagerImpl.dispatchStateChange(4);
        }
        fragmentActivity$HostCallbacks.fragmentManager.execPendingActions(true);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_START);
        FragmentManagerImpl fragmentManagerImpl2 = fragmentActivity$HostCallbacks.fragmentManager;
        fragmentManagerImpl2.mStateSaved = false;
        fragmentManagerImpl2.mStopped = false;
        fragmentManagerImpl2.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl2.dispatchStateChange(5);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.mFragments.noteStateNotSaved();
    }

    @Override // android.app.Activity
    public void onStop() {
        onStop$androidx$fragment$app$FragmentActivity();
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.initWindowDecorActionBar();
        ContextsKt contextsKt = appCompatDelegateImpl.mActionBar;
        if (contextsKt != null) {
            contextsKt.setShowHideAnimationEnabled(false);
        }
    }

    public final void onStop$androidx$fragment$app$FragmentActivity() {
        super.onStop();
        this.mStopped = true;
        while (markState(getSupportFragmentManager(), Lifecycle$State.CREATED)) {
        }
        FragmentManagerImpl fragmentManagerImpl = ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager;
        fragmentManagerImpl.mStopped = true;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = true;
        fragmentManagerImpl.dispatchStateChange(4);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_STOP);
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().setTitle(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ContextsKt supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.openOptionsMenu()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        initializeViewTreeOwners();
        getDelegate().setContentView(i);
    }

    public final void setSupportActionBar(Toolbar toolbar) {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        Object obj = appCompatDelegateImpl.mHost;
        if (obj instanceof Activity) {
            appCompatDelegateImpl.initWindowDecorActionBar();
            ContextsKt contextsKt = appCompatDelegateImpl.mActionBar;
            if (contextsKt instanceof WindowDecorActionBar) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
                return;
            }
            appCompatDelegateImpl.mMenuInflater = null;
            if (contextsKt != null) {
                contextsKt.onDestroy();
            }
            appCompatDelegateImpl.mActionBar = null;
            if (toolbar != null) {
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : appCompatDelegateImpl.mTitle, appCompatDelegateImpl.mAppCompatWindowCallback);
                appCompatDelegateImpl.mActionBar = toolbarActionBar;
                appCompatDelegateImpl.mAppCompatWindowCallback.mActionBarCallback = toolbarActionBar.mMenuCallback;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                appCompatDelegateImpl.mAppCompatWindowCallback.mActionBarCallback = null;
            }
            appCompatDelegateImpl.invalidateOptionsMenu();
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(i);
        ((AppCompatDelegateImpl) getDelegate()).mThemeResId = i;
    }

    public final ActionMode startSupportActionMode(ActionMode.Callback callback) {
        return getDelegate().startSupportActionMode(callback);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        getDelegate().setContentView(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        getDelegate().setContentView(view, layoutParams);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.appcompat.app.AppCompatActivity$1, reason: invalid class name */
    public final class AnonymousClass1 implements SavedStateRegistry$SavedStateProvider {
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;

        public AnonymousClass1(AndroidSvg androidSvg) {
            this.$r8$classId = 1;
            this.this$0 = new LinkedHashSet();
            androidSvg.registerSavedStateProvider("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.SavedStateRegistry$SavedStateProvider
        public final Bundle saveState() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    Bundle bundle = new Bundle();
                    ((BaseActivity) obj).getDelegate();
                    return bundle;
                default:
                    Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    OperationKt.m770putStringListimpl(bundleOf, "classes_to_restore", CollectionsKt.toList((LinkedHashSet) obj));
                    return bundleOf;
            }
        }

        public AnonymousClass1(BaseActivity baseActivity) {
            this.$r8$classId = 0;
            this.this$0 = baseActivity;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((FragmentActivity$HostCallbacks) this.mFragments.state).fragmentManager.mLayoutInflaterFactory.onCreateView(view, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(view, str, context, attributeSet) : onCreateView;
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeFinished(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeStarted(ActionMode actionMode) {
    }
}
