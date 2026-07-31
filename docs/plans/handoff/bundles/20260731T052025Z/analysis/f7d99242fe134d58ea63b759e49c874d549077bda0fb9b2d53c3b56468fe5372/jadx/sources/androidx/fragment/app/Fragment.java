package androidx.fragment.app;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry$LifecycleContainer;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.arch.core.util.Function;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.platform.ImmutableBool;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.widget.NestedScrollView;
import androidx.customview.view.AbsSavedState;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.emoji2.text.EmojiCompat;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.GetTargetFragmentUsageViolation;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.preference.PreferenceGroup;
import androidx.profileinstaller.ProfileInstallReceiver;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.SynchronizedLazyImpl;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    public static final Object USE_DEFAULT_TRANSITION = new Object();
    public boolean mAdded;
    public AnimationInfo mAnimationInfo;
    public Bundle mArguments;
    public int mBackStackNesting;
    public boolean mBeingSaved;
    public boolean mCalled;
    public ViewGroup mContainer;
    public int mContainerId;
    public SavedStateViewModelFactory mDefaultFactory;
    public boolean mDeferStart;
    public boolean mDetached;
    public int mFragmentId;
    public FragmentManager mFragmentManager;
    public boolean mFromLayout;
    public boolean mHidden;
    public boolean mHiddenChanged;
    public FragmentActivity$HostCallbacks mHost;
    public boolean mInDynamicContainer;
    public boolean mInLayout;
    public boolean mIsCreated;
    public LayoutInflater mLayoutInflater;
    public LifecycleRegistry mLifecycleRegistry;
    public Lifecycle.State mMaxState;
    public final AtomicInteger mNextLocalRequestCode;
    public final ArrayList mOnPreAttachedListeners;
    public Fragment mParentFragment;
    public boolean mPerformedCreateView;
    public String mPreviousWho;
    public boolean mRemoving;
    public boolean mRestored;
    public boolean mRetainInstance;
    public boolean mRetainInstanceChangedWhileDetached;
    public Bundle mSavedFragmentState;
    public final AnonymousClass2 mSavedStateAttachListener;
    public Base64Util mSavedStateRegistryController;
    public Bundle mSavedViewRegistryState;
    public SparseArray mSavedViewState;
    public String mTag;
    public Fragment mTarget;
    public int mTargetRequestCode;
    public boolean mTransitioning;
    public View mView;
    public FragmentViewLifecycleOwner mViewLifecycleOwner;
    public final MutableLiveData mViewLifecycleOwnerLiveData;
    public int mState = -1;
    public String mWho = UUID.randomUUID().toString();
    public String mTargetWho = null;
    public Boolean mIsPrimaryNavigationFragment = null;
    public FragmentManagerImpl mChildFragmentManager = new FragmentManagerImpl();
    public boolean mMenuVisible = true;
    public boolean mUserVisibleHint = true;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.Fragment$1, reason: invalid class name */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        private final void run$androidx$preference$PreferenceGroup$1() {
            synchronized (this) {
                ((PreferenceGroup) this.this$0).mIdRecycleCache.clear();
            }
        }

        /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0258  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0270  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0296  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x02a1  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x0287  */
        /* JADX WARN: Removed duplicated region for block: B:269:0x0523  */
        /* JADX WARN: Removed duplicated region for block: B:271:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x012c  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0160  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x016b  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0151  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0216  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 1404
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Fragment.AnonymousClass1.run():void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
        
            r4.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
        
            androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.e("SequentialExecutor", "Exception while executing runnable " + r4, r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
        
            if (r1 == false) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void workOnQueue() {
            /*
                r10 = this;
                r0 = 0
                r1 = r0
            L2:
                java.lang.Object r2 = r10.this$0     // Catch: java.lang.Throwable -> L4f
                androidx.camera.core.impl.utils.executor.SequentialExecutor r2 = (androidx.camera.core.impl.utils.executor.SequentialExecutor) r2     // Catch: java.lang.Throwable -> L4f
                java.util.ArrayDeque r2 = r2.mQueue     // Catch: java.lang.Throwable -> L4f
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L4f
                r3 = 1
                if (r0 != 0) goto L2c
                java.lang.Object r0 = r10.this$0     // Catch: java.lang.Throwable -> L20
                androidx.camera.core.impl.utils.executor.SequentialExecutor r0 = (androidx.camera.core.impl.utils.executor.SequentialExecutor) r0     // Catch: java.lang.Throwable -> L20
                int r4 = r0.mWorkerRunningState     // Catch: java.lang.Throwable -> L20
                r5 = 4
                if (r4 != r5) goto L22
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
                if (r1 == 0) goto L44
            L18:
                java.lang.Thread r10 = java.lang.Thread.currentThread()
                r10.interrupt()
                goto L44
            L20:
                r10 = move-exception
                goto L69
            L22:
                long r6 = r0.mWorkerRunCount     // Catch: java.lang.Throwable -> L20
                r8 = 1
                long r6 = r6 + r8
                r0.mWorkerRunCount = r6     // Catch: java.lang.Throwable -> L20
                r0.mWorkerRunningState = r5     // Catch: java.lang.Throwable -> L20
                r0 = r3
            L2c:
                java.lang.Object r4 = r10.this$0     // Catch: java.lang.Throwable -> L20
                androidx.camera.core.impl.utils.executor.SequentialExecutor r4 = (androidx.camera.core.impl.utils.executor.SequentialExecutor) r4     // Catch: java.lang.Throwable -> L20
                java.util.ArrayDeque r4 = r4.mQueue     // Catch: java.lang.Throwable -> L20
                java.lang.Object r4 = r4.poll()     // Catch: java.lang.Throwable -> L20
                java.lang.Runnable r4 = (java.lang.Runnable) r4     // Catch: java.lang.Throwable -> L20
                if (r4 != 0) goto L45
                java.lang.Object r10 = r10.this$0     // Catch: java.lang.Throwable -> L20
                androidx.camera.core.impl.utils.executor.SequentialExecutor r10 = (androidx.camera.core.impl.utils.executor.SequentialExecutor) r10     // Catch: java.lang.Throwable -> L20
                r10.mWorkerRunningState = r3     // Catch: java.lang.Throwable -> L20
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
                if (r1 == 0) goto L44
                goto L18
            L44:
                return
            L45:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L4f
                r1 = r1 | r2
                r4.run()     // Catch: java.lang.Throwable -> L4f java.lang.RuntimeException -> L51
                goto L2
            L4f:
                r10 = move-exception
                goto L6b
            L51:
                r2 = move-exception
                java.lang.String r3 = "SequentialExecutor"
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f
                r5.<init>()     // Catch: java.lang.Throwable -> L4f
                java.lang.String r6 = "Exception while executing runnable "
                r5.append(r6)     // Catch: java.lang.Throwable -> L4f
                r5.append(r4)     // Catch: java.lang.Throwable -> L4f
                java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L4f
                androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.e(r3, r4, r2)     // Catch: java.lang.Throwable -> L4f
                goto L2
            L69:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L20
                throw r10     // Catch: java.lang.Throwable -> L4f
            L6b:
                if (r1 == 0) goto L74
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L74:
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Fragment.AnonymousClass1.workOnQueue():void");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.Fragment$10, reason: invalid class name */
    public final class AnonymousClass10 extends ActivityResultLauncher {
        public final /* synthetic */ AtomicReference val$ref;

        public AnonymousClass10(AtomicReference atomicReference) {
            this.val$ref = atomicReference;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public final void launch(Object obj) {
            ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.val$ref.get();
            if (activityResultLauncher != null) {
                activityResultLauncher.launch(obj);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Operation cannot be started before fragment is in created state");
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.Fragment$2, reason: invalid class name */
    public final class AnonymousClass2 extends OnPreAttachedListener {
        public AnonymousClass2() {
        }

        @Override // androidx.fragment.app.Fragment.OnPreAttachedListener
        public final void onPreAttached() {
            Fragment fragment = Fragment.this;
            fragment.mSavedStateRegistryController.performAttach();
            ViewModelKt.enableSavedStateHandles(fragment);
            Bundle bundle = fragment.mSavedFragmentState;
            fragment.mSavedStateRegistryController.performRestore(bundle != null ? bundle.getBundle("registryState") : null);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.Fragment$5, reason: invalid class name */
    public final class AnonymousClass5 extends FragmentContainer {
        public AnonymousClass5() {
        }

        @Override // androidx.fragment.app.FragmentContainer
        public final View onFindViewById(int i) {
            Fragment fragment = Fragment.this;
            View view = fragment.mView;
            if (view != null) {
                return view.findViewById(i);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", fragment, " does not have a view"));
            return null;
        }

        @Override // androidx.fragment.app.FragmentContainer
        public final boolean onHasView() {
            return Fragment.this.mView != null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimationInfo {
        public int mEnterAnim;
        public int mExitAnim;
        public View mFocusedView;
        public boolean mIsPop;
        public int mNextTransition;
        public int mPopEnterAnim;
        public int mPopExitAnim;
        public float mPostOnViewCreatedAlpha;
        public Object mReenterTransition;
        public Object mReturnTransition;
        public Object mSharedElementReturnTransition;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class OnPreAttachedListener {
        public abstract void onPreAttached();
    }

    public Fragment() {
        new AnonymousClass1(0, this);
        this.mMaxState = Lifecycle.State.RESUMED;
        this.mViewLifecycleOwnerLiveData = new MutableLiveData();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList();
        this.mSavedStateAttachListener = new AnonymousClass2();
        initLifecycle();
    }

    public FragmentContainer createFragmentContainer() {
        return new AnonymousClass5();
    }

    public final AnimationInfo ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            AnimationInfo animationInfo = new AnimationInfo();
            Object obj = USE_DEFAULT_TRANSITION;
            animationInfo.mReturnTransition = obj;
            animationInfo.mReenterTransition = obj;
            animationInfo.mSharedElementReturnTransition = obj;
            animationInfo.mPostOnViewCreatedAlpha = 1.0f;
            animationInfo.mFocusedView = null;
            this.mAnimationInfo = animationInfo;
        }
        return this.mAnimationInfo;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final AppCompatActivity getActivity() {
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if (fragmentActivity$HostCallbacks == null) {
            return null;
        }
        return fragmentActivity$HostCallbacks.activity;
    }

    public final FragmentManager getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " has not been attached yet."));
        return null;
    }

    public final Context getContext() {
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if (fragmentActivity$HostCallbacks == null) {
            return null;
        }
        return fragmentActivity$HostCallbacks.context;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final MutableCreationExtras getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(0);
        LinkedHashMap linkedHashMap = mutableCreationExtras.extras;
        if (application != null) {
            linkedHashMap.put(ViewModelProvider$AndroidViewModelFactory.APPLICATION_KEY, application);
        }
        linkedHashMap.put(ViewModelKt.SAVED_STATE_REGISTRY_OWNER_KEY, this);
        linkedHashMap.put(ViewModelKt.VIEW_MODEL_STORE_OWNER_KEY, this);
        Bundle bundle = this.mArguments;
        if (bundle != null) {
            linkedHashMap.put(ViewModelKt.DEFAULT_ARGS_KEY, bundle);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider$Factory getDefaultViewModelProviderFactory() {
        Application application = null;
        if (this.mFragmentManager == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Can't access ViewModels from detached fragment");
            return null;
        }
        if (this.mDefaultFactory == null) {
            Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.mDefaultFactory = new SavedStateViewModelFactory(application, this, this.mArguments);
        }
        return this.mDefaultFactory;
    }

    public AppCompatActivity getFragmentActivity() {
        return getActivity();
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        if (layoutInflater != null) {
            return layoutInflater;
        }
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(null);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        return this.mLifecycleRegistry;
    }

    public final int getMinimumMaxLifecycleState() {
        Lifecycle.State state = this.mMaxState;
        return (state == Lifecycle.State.INITIALIZED || this.mParentFragment == null) ? state.ordinal() : Math.min(state.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    public final FragmentManager getParentFragmentManager() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " not associated with a fragment manager."));
        return null;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final Base64Util getSavedStateRegistry() {
        return (Base64Util) this.mSavedStateRegistryController.inverseAlphabet;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final Fragment getTargetFragment(boolean z) {
        String str;
        if (z) {
            FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
            FragmentStrictMode.logIfDebuggingEnabled(new GetTargetFragmentUsageViolation(this, "Attempting to get target fragment from fragment " + this));
            FragmentStrictMode.getNearestPolicy(this).getClass();
        }
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return fragmentManager.mFragmentStore.findActiveFragment(str);
    }

    public final FragmentViewLifecycleOwner getViewLifecycleOwner() {
        FragmentViewLifecycleOwner fragmentViewLifecycleOwner = this.mViewLifecycleOwner;
        if (fragmentViewLifecycleOwner != null) {
            return fragmentViewLifecycleOwner;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Can't access the Fragment View's LifecycleOwner for ", this, " when getView() is null i.e., before onCreateView() or after onDestroyView()"));
        return null;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        if (this.mFragmentManager == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Can't access ViewModels from detached fragment");
            return null;
        }
        if (getMinimumMaxLifecycleState() == 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
            return null;
        }
        HashMap hashMap = this.mFragmentManager.mNonConfig.mViewModelStores;
        ViewModelStore viewModelStore = (ViewModelStore) hashMap.get(this.mWho);
        if (viewModelStore != null) {
            return viewModelStore;
        }
        ViewModelStore viewModelStore2 = new ViewModelStore();
        hashMap.put(this.mWho, viewModelStore2);
        return viewModelStore2;
    }

    public final void initLifecycle() {
        this.mLifecycleRegistry = new LifecycleRegistry(this, true);
        this.mSavedStateRegistryController = new Base64Util(new SavedStateRegistryImpl(this, new ImageLoader$Builder$$ExternalSyntheticLambda1(20, this)), 4);
        this.mDefaultFactory = null;
        ArrayList arrayList = this.mOnPreAttachedListeners;
        AnonymousClass2 anonymousClass2 = this.mSavedStateAttachListener;
        if (arrayList.contains(anonymousClass2)) {
            return;
        }
        if (this.mState >= 0) {
            anonymousClass2.onPreAttached();
        } else {
            arrayList.add(anonymousClass2);
        }
    }

    public final void initState() {
        initLifecycle();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new FragmentManagerImpl();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isHidden() {
        if (this.mHidden) {
            return true;
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            Fragment fragment = this.mParentFragment;
            fragmentManager.getClass();
            if (fragment == null ? false : fragment.isHidden()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void onActivityCreated() {
        this.mCalled = true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks == null ? null : fragmentActivity$HostCallbacks.activity;
        if (appCompatActivity != null) {
            this.mCalled = false;
            onAttach((Activity) appCompatActivity);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState();
        FragmentManagerImpl fragmentManagerImpl = this.mChildFragmentManager;
        if (fragmentManagerImpl.mCurState >= 1) {
            return;
        }
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(1);
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if (fragmentActivity$HostCallbacks == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
            return null;
        }
        AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks.this$0;
        LayoutInflater cloneInContext = appCompatActivity.getLayoutInflater().cloneInContext(appCompatActivity);
        cloneInContext.setFactory2(this.mChildFragmentManager.mLayoutInflaterFactory);
        return cloneInContext;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if ((fragmentActivity$HostCallbacks == null ? null : fragmentActivity$HostCallbacks.activity) != null) {
            this.mCalled = true;
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.mCalled = true;
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.noteStateNotSaved();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new FragmentViewLifecycleOwner(this, getViewModelStore(), new Fragment$$ExternalSyntheticLambda0(0, this));
        View onCreateView = onCreateView(layoutInflater, viewGroup);
        this.mView = onCreateView;
        FragmentViewLifecycleOwner fragmentViewLifecycleOwner = this.mViewLifecycleOwner;
        if (onCreateView == null) {
            if (fragmentViewLifecycleOwner.mLifecycleRegistry == null) {
                this.mViewLifecycleOwner = null;
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Called getViewLifecycleOwner() but onCreateView() returned null");
                return;
            }
        }
        fragmentViewLifecycleOwner.initialize();
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Setting ViewLifecycleOwner on View " + this.mView + " for Fragment " + this);
        }
        View view = this.mView;
        FragmentViewLifecycleOwner fragmentViewLifecycleOwner2 = this.mViewLifecycleOwner;
        view.getClass();
        view.setTag(R.id.view_tree_lifecycle_owner, fragmentViewLifecycleOwner2);
        View view2 = this.mView;
        FragmentViewLifecycleOwner fragmentViewLifecycleOwner3 = this.mViewLifecycleOwner;
        view2.getClass();
        view2.setTag(R.id.view_tree_view_model_store_owner, fragmentViewLifecycleOwner3);
        View view3 = this.mView;
        FragmentViewLifecycleOwner fragmentViewLifecycleOwner4 = this.mViewLifecycleOwner;
        view3.getClass();
        view3.setTag(R.id.view_tree_saved_state_registry_owner, fragmentViewLifecycleOwner4);
        this.mViewLifecycleOwnerLiveData.setValue(this.mViewLifecycleOwner);
    }

    public final AnonymousClass10 registerForActivityResult(final ActivityResultCallback activityResultCallback, final OAuthBearer oAuthBearer) {
        final AnonymousClass7 anonymousClass7 = new AnonymousClass7(this);
        if (this.mState > 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
            return null;
        }
        final AtomicReference atomicReference = new AtomicReference();
        OnPreAttachedListener onPreAttachedListener = new OnPreAttachedListener() { // from class: androidx.fragment.app.Fragment.9
            @Override // androidx.fragment.app.Fragment.OnPreAttachedListener
            public final void onPreAttached() {
                StringBuilder sb = new StringBuilder("fragment_");
                Fragment fragment = Fragment.this;
                sb.append(fragment.mWho);
                sb.append("_rq#");
                sb.append(fragment.mNextLocalRequestCode.getAndIncrement());
                final String sb2 = sb.toString();
                final ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = (ComponentActivity$activityResultRegistry$1) anonymousClass7.apply(null);
                LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.keyToLifecycleContainers;
                LifecycleRegistry lifecycleRegistry = fragment.mLifecycleRegistry;
                if (lifecycleRegistry.state.compareTo(Lifecycle.State.STARTED) >= 0) {
                    StringBuilder sb3 = new StringBuilder("LifecycleOwner ");
                    sb3.append(fragment);
                    Lifecycle.State state = lifecycleRegistry.state;
                    sb3.append(" is attempting to register while current state is ");
                    sb3.append(state);
                    sb3.append(". LifecycleOwners must call register before they are STARTED.");
                    throw new IllegalStateException(sb3.toString().toString());
                }
                componentActivity$activityResultRegistry$1.registerKey(sb2);
                ActivityResultRegistry$LifecycleContainer activityResultRegistry$LifecycleContainer = (ActivityResultRegistry$LifecycleContainer) linkedHashMap.get(sb2);
                if (activityResultRegistry$LifecycleContainer == null) {
                    activityResultRegistry$LifecycleContainer = new ActivityResultRegistry$LifecycleContainer(lifecycleRegistry);
                }
                final ActivityResultCallback activityResultCallback2 = activityResultCallback;
                final OAuthBearer oAuthBearer2 = oAuthBearer;
                LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticLambda1
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$12 = ComponentActivity$activityResultRegistry$1.this;
                        LinkedHashMap linkedHashMap2 = componentActivity$activityResultRegistry$12.keyToCallback;
                        Lifecycle.Event event2 = Lifecycle.Event.ON_START;
                        String str = sb2;
                        if (event2 != event) {
                            if (Lifecycle.Event.ON_STOP == event) {
                                linkedHashMap2.remove(str);
                                return;
                            } else {
                                if (Lifecycle.Event.ON_DESTROY == event) {
                                    componentActivity$activityResultRegistry$12.unregister$activity(str);
                                    return;
                                }
                                return;
                            }
                        }
                        Bundle bundle = componentActivity$activityResultRegistry$12.pendingResults;
                        LinkedHashMap linkedHashMap3 = componentActivity$activityResultRegistry$12.parsedPendingResults;
                        ActivityResultCallback activityResultCallback3 = activityResultCallback2;
                        OAuthBearer oAuthBearer3 = oAuthBearer2;
                        linkedHashMap2.put(str, new ActivityResultRegistry$CallbackAndContract(activityResultCallback3, oAuthBearer3));
                        if (linkedHashMap3.containsKey(str)) {
                            Object obj = linkedHashMap3.get(str);
                            linkedHashMap3.remove(str);
                            activityResultCallback3.onActivityResult(obj);
                        }
                        ActivityResult activityResult = (ActivityResult) SQLite.getParcelable(bundle, str, ActivityResult.class);
                        if (activityResult != null) {
                            bundle.remove(str);
                            activityResultCallback3.onActivityResult(oAuthBearer3.parseResult(activityResult.data, activityResult.resultCode));
                        }
                    }
                };
                activityResultRegistry$LifecycleContainer.lifecycle.addObserver(lifecycleEventObserver);
                activityResultRegistry$LifecycleContainer.observers.add(lifecycleEventObserver);
                linkedHashMap.put(sb2, activityResultRegistry$LifecycleContainer);
                atomicReference.set(new ActivityResultRegistry$register$2(componentActivity$activityResultRegistry$1, sb2, oAuthBearer2, 0));
            }
        };
        if (this.mState >= 0) {
            onPreAttachedListener.onPreAttached();
        } else {
            this.mOnPreAttachedListeners.add(onPreAttachedListener);
        }
        return new AnonymousClass10(atomicReference);
    }

    public final AppCompatActivity requireActivity() {
        AppCompatActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " not attached to an activity."));
        return null;
    }

    public final Bundle requireArguments() {
        Bundle bundle = this.mArguments;
        if (bundle != null) {
            return bundle;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " does not have any arguments."));
        return null;
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " not attached to a context."));
        return null;
    }

    public final View requireView() {
        View view = this.mView;
        if (view != null) {
            return view;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
        return null;
    }

    public final void restoreChildFragmentState() {
        Bundle bundle;
        Bundle bundle2 = this.mSavedFragmentState;
        if (bundle2 == null || (bundle = bundle2.getBundle("childFragmentManager")) == null) {
            return;
        }
        this.mChildFragmentManager.restoreSaveStateInternal(bundle);
        FragmentManagerImpl fragmentManagerImpl = this.mChildFragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(1);
    }

    public final void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        ensureAnimationInfo().mEnterAnim = i;
        ensureAnimationInfo().mExitAnim = i2;
        ensureAnimationInfo().mPopEnterAnim = i3;
        ensureAnimationInfo().mPopExitAnim = i4;
    }

    public final void setArguments(Bundle bundle) {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            if (fragmentManager == null ? false : fragmentManager.isStateSaved()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Fragment already added and state has been saved");
                return;
            }
        }
        this.mArguments = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
        }
    }

    public final void setTargetFragment(int i, Fragment fragment) {
        if (fragment != null) {
            FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
            FragmentStrictMode.logIfDebuggingEnabled(new GetTargetFragmentUsageViolation(this, "Attempting to set target fragment " + fragment + " with request code " + i + " for fragment " + this));
            FragmentStrictMode.getNearestPolicy(this).getClass();
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        FragmentManager fragmentManager2 = fragment != null ? fragment.mFragmentManager : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
            return;
        }
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getTargetFragment(false)) {
            if (fragment2 == this) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = fragment;
        } else {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i;
    }

    public final void startActivity(Intent intent) {
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if (fragmentActivity$HostCallbacks == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " not attached to Activity"));
        } else {
            intent.getClass();
            fragmentActivity$HostCallbacks.context.startActivity(intent, null);
        }
    }

    public final void startActivityForResult(Intent intent, int i) {
        if (this.mHost == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Modifier.CC.m("Fragment ", this, " not attached to Activity"));
            return;
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.mStartActivityForResult != null) {
            parentFragmentManager.mLaunchedFragments.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
            parentFragmentManager.mStartActivityForResult.launch(intent);
        } else {
            FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = parentFragmentManager.mHost;
            fragmentActivity$HostCallbacks.getClass();
            if (i == -1) {
                fragmentActivity$HostCallbacks.context.startActivity(intent, null);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Starting activity with a requestCode requires a FragmentActivity host");
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(6);
        public final Bundle mState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.mState = readBundle;
            if (classLoader == null || readBundle == null) {
                return;
            }
            readBundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.mState);
        }

        public SavedState(Bundle bundle) {
            this.mState = bundle;
        }
    }

    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.Fragment$7, reason: invalid class name */
    public class AnonymousClass7 implements OnApplyWindowInsetsListener, DifferentialMotionFlingTarget, AccessibilityViewCommand, Function, ProfileInstaller$DiagnosticsCallback, SQLiteDriver {
        public Object this$0;

        public AnonymousClass7(int i) {
            switch (i) {
                case 9:
                    if (Build.VERSION.SDK_INT < 26) {
                        this.this$0 = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19(this);
                        break;
                    } else {
                        this.this$0 = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26(this);
                        break;
                    }
                case BasicTextKt.ShiftMeta /* 12 */:
                    this.this$0 = new AtomicInteger(0);
                    break;
                case 26:
                    this.this$0 = null;
                    break;
                default:
                    this.this$0 = new SynchronizedLazyImpl(new TextKt$$ExternalSyntheticLambda4(21, this));
                    break;
            }
        }

        public static void dispatchPostEvents(List list) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                throw Config.CC.m(it);
            }
        }

        @Override // androidx.arch.core.util.Function
        public Object apply(Object obj) {
            Fragment fragment = (Fragment) this.this$0;
            FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = fragment.mHost;
            return fragmentActivity$HostCallbacks != null ? fragmentActivity$HostCallbacks.this$0.activityResultRegistry : fragment.requireActivity().activityResultRegistry;
        }

        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
            return null;
        }

        public AccessibilityNodeInfoCompat findFocus(int i) {
            return null;
        }

        public State getFontLoadState() {
            EmojiCompat emojiCompat = EmojiCompat.get();
            if (emojiCompat.getLoadState() == 1) {
                return new ImmutableBool(true);
            }
            final ParcelableSnapshotMutableState mutableStateOf$default = Updater.mutableStateOf$default(Boolean.FALSE);
            emojiCompat.registerInitCallback(new EmojiCompat.InitCallback() { // from class: androidx.compose.ui.text.platform.DefaultImpl$getFontLoadState$initCallback$1
                @Override // androidx.emoji2.text.EmojiCompat.InitCallback
                public final void onFailed() {
                    this.this$0 = AndroidTextPaint_androidKt.Falsey;
                }

                @Override // androidx.emoji2.text.EmojiCompat.InitCallback
                public final void onInitialized() {
                    ParcelableSnapshotMutableState.this.setValue(Boolean.TRUE);
                    this.this$0 = new ImmutableBool(true);
                }
            });
            return mutableStateOf$default;
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public float getScaledScrollFactor() {
            return -((NestedScrollView) this.this$0).getVerticalScrollFactorCompat();
        }

        public void hide() {
            View view = (View) this.this$0;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        }

        public void noteStateNotSaved() {
            ((FragmentActivity$HostCallbacks) this.this$0).fragmentManager.noteStateNotSaved();
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.this$0;
            if (!Objects.equals(coordinatorLayout.mLastInsets, windowInsetsCompat)) {
                coordinatorLayout.mLastInsets = windowInsetsCompat;
                boolean z = windowInsetsCompat.getSystemWindowInsetTop() > 0;
                coordinatorLayout.mDrawStatusBarBackground = z;
                coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
                if (!impl.isConsumed()) {
                    int childCount = coordinatorLayout.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = coordinatorLayout.getChildAt(i);
                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                        if (childAt.getFitsSystemWindows() && ((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).mBehavior != null && impl.isConsumed()) {
                            break;
                        }
                    }
                }
                coordinatorLayout.requestLayout();
            }
            return windowInsetsCompat;
        }

        @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
        public void onDiagnosticReceived() {
            Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
        }

        @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
        public void onResultReceived(int i, Object obj) {
            String str;
            switch (i) {
                case 1:
                    str = "RESULT_INSTALL_SUCCESS";
                    break;
                case 2:
                    str = "RESULT_ALREADY_INSTALLED";
                    break;
                case 3:
                    str = "RESULT_UNSUPPORTED_ART_VERSION";
                    break;
                case 4:
                    str = "RESULT_NOT_WRITABLE";
                    break;
                case 5:
                    str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                    break;
                case 6:
                    str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    str = "RESULT_IO_EXCEPTION";
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    str = "RESULT_PARSE_EXCEPTION";
                    break;
                case 9:
                default:
                    str = "";
                    break;
                case 10:
                    str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                    break;
                case 11:
                    str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                    break;
            }
            if (i == 6 || i == 7 || i == 8) {
                Log.e("ProfileInstaller", str, (Throwable) obj);
            } else {
                Log.d("ProfileInstaller", str);
            }
            ((ProfileInstallReceiver) this.this$0).setResultCode(i);
        }

        @Override // androidx.sqlite.SQLiteDriver
        public SQLiteConnection open(String str) {
            str.getClass();
            return new SupportSQLiteConnection(((SupportSQLiteOpenHelper) this.this$0).getWritableDatabase());
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(View view) {
            DrawerLayout drawerLayout = (DrawerLayout) this.this$0;
            if (!DrawerLayout.isDrawerOpen(view) || drawerLayout.getDrawerLockMode(view) == 2) {
                return false;
            }
            drawerLayout.closeDrawer(view);
            return true;
        }

        public boolean performAction(int i, int i2, Bundle bundle) {
            return false;
        }

        public void setAlgorithmicDarkeningAllowed(boolean z) {
            ((WebSettingsBoundaryInterface) this.this$0).setAlgorithmicDarkeningAllowed(z);
        }

        public void setAppearanceLightStatusBars(boolean z) {
            ((MathKt) this.this$0).setAppearanceLightStatusBars(z);
        }

        public void show() {
            View findFocus;
            View view = (View) this.this$0;
            if (view == null) {
                return;
            }
            view.isInEditMode();
            if (view.onCheckIsTextEditor()) {
                view.requestFocus();
                findFocus = view;
            } else {
                findFocus = view.getRootView().findFocus();
            }
            if (findFocus == null) {
                findFocus = view.getRootView().findViewById(android.R.id.content);
            }
            if (findFocus == null || !findFocus.hasWindowFocus()) {
                return;
            }
            findFocus.post(new Preview$$ExternalSyntheticLambda0(26, findFocus));
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public boolean startDifferentialMotionFling(float f) {
            if (f == 0.0f) {
                return false;
            }
            stopDifferentialMotionFling();
            ((NestedScrollView) this.this$0).fling((int) f);
            return true;
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public void stopDifferentialMotionFling() {
            ((NestedScrollView) this.this$0).mScroller.abortAnimation();
        }

        public /* synthetic */ AnonymousClass7(Object obj) {
            this.this$0 = obj;
        }

        public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
        }
    }
}
