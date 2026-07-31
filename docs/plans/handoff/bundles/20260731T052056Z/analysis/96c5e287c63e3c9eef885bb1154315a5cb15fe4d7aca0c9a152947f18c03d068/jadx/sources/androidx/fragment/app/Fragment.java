package androidx.fragment.app;

import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import androidx.customview.view.AbsSavedState;
import androidx.fragment.app.strictmode.FragmentReuseViolation;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.GetTargetFragmentUsageViolation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData$1;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.paging.HintHandler;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.work.Operation$State;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver$CC;
import coil3.svg.internal.AndroidSvg;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    public static final Object USE_DEFAULT_TRANSITION = new Object();
    public boolean mAdded;
    public AnimationInfo mAnimationInfo;
    public Bundle mArguments;
    public int mBackStackNesting;
    public boolean mCalled;
    public ViewGroup mContainer;
    public int mContainerId;
    public SavedStateViewModelFactory mDefaultFactory;
    public boolean mDeferStart;
    public boolean mDetached;
    public int mFragmentId;
    public FragmentManagerImpl mFragmentManager;
    public boolean mFromLayout;
    public boolean mHidden;
    public boolean mHiddenChanged;
    public FragmentActivity$HostCallbacks mHost;
    public boolean mInDynamicContainer;
    public boolean mInLayout;
    public boolean mIsCreated;
    public LayoutInflater mLayoutInflater;
    public LifecycleRegistry mLifecycleRegistry;
    public Lifecycle$State mMaxState;
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
    public AndroidSvg mSavedStateRegistryController;
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.fragment.app.Fragment$10, reason: invalid class name */
    public final class AnonymousClass10 extends ActivityResultLauncher {
        public final /* synthetic */ AtomicReference val$ref;

        public AnonymousClass10(AtomicReference atomicReference) {
            this.val$ref = atomicReference;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public final void launch(Object obj, ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl) {
            ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.val$ref.get();
            if (activityResultLauncher != null) {
                activityResultLauncher.launch(obj, activityOptionsCompat$ActivityOptionsCompatImpl);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Operation cannot be started before fragment is in created state");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.fragment.app.Fragment$2, reason: invalid class name */
    public final class AnonymousClass2 extends OnPreAttachedListener {
        public AnonymousClass2() {
        }

        @Override // androidx.fragment.app.Fragment.OnPreAttachedListener
        public final void onPreAttached() {
            Fragment fragment = Fragment.this;
            ((SavedStateRegistryImpl) fragment.mSavedStateRegistryController.svg).performAttach();
            ViewModelKt.enableSavedStateHandles(fragment);
            Bundle bundle = fragment.mSavedFragmentState;
            fragment.mSavedStateRegistryController.performRestore(bundle != null ? bundle.getBundle("registryState") : null);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.fragment.app.Fragment$5, reason: invalid class name */
    public final class AnonymousClass5 extends Operation$State {
        public final /* synthetic */ Fragment this$0;

        public AnonymousClass5(Fragment fragment) {
            super(13);
            this.this$0 = fragment;
        }

        @Override // androidx.work.Operation$State
        public final View onFindViewById(int i) {
            Fragment fragment = this.this$0;
            View view = fragment.mView;
            if (view != null) {
                return view.findViewById(i);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", fragment, " does not have a view"));
            return null;
        }

        @Override // androidx.work.Operation$State
        public final boolean onHasView() {
            return this.this$0.mView != null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class OnPreAttachedListener {
        public abstract void onPreAttached();
    }

    public Fragment() {
        new LiveData$1(10, this);
        this.mMaxState = Lifecycle$State.RESUMED;
        this.mViewLifecycleOwnerLiveData = new MutableLiveData();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList();
        this.mSavedStateAttachListener = new AnonymousClass2();
        initLifecycle();
    }

    public Operation$State createFragmentContainer() {
        return new AnonymousClass5(this);
    }

    public final AnimationInfo ensureAnimationInfo() {
        AnimationInfo animationInfo = this.mAnimationInfo;
        if (animationInfo != null) {
            return animationInfo;
        }
        AnimationInfo animationInfo2 = new AnimationInfo();
        Object obj = USE_DEFAULT_TRANSITION;
        animationInfo2.mReturnTransition = obj;
        animationInfo2.mReenterTransition = obj;
        animationInfo2.mSharedElementReturnTransition = obj;
        animationInfo2.mPostOnViewCreatedAlpha = 1.0f;
        animationInfo2.mFocusedView = null;
        this.mAnimationInfo = animationInfo2;
        return animationInfo2;
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

    public final FragmentManagerImpl getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " has not been attached yet."));
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
        if (application == null && FragmentManagerImpl.isLoggingEnabled(3)) {
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Can't access ViewModels from detached fragment");
            return null;
        }
        SavedStateViewModelFactory savedStateViewModelFactory = this.mDefaultFactory;
        if (savedStateViewModelFactory != null) {
            return savedStateViewModelFactory;
        }
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
        if (application == null && FragmentManagerImpl.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        SavedStateViewModelFactory savedStateViewModelFactory2 = new SavedStateViewModelFactory(application, this, this.mArguments);
        this.mDefaultFactory = savedStateViewModelFactory2;
        return savedStateViewModelFactory2;
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
    public final LifecycleRegistry getLifecycle() {
        return this.mLifecycleRegistry;
    }

    public final int getMinimumMaxLifecycleState() {
        Lifecycle$State lifecycle$State = this.mMaxState;
        return (lifecycle$State == Lifecycle$State.INITIALIZED || this.mParentFragment == null) ? lifecycle$State.ordinal() : Math.min(lifecycle$State.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    public final FragmentManagerImpl getParentFragmentManager() {
        FragmentManagerImpl fragmentManagerImpl = this.mFragmentManager;
        if (fragmentManagerImpl != null) {
            return fragmentManagerImpl;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " not associated with a fragment manager."));
        return null;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final AndroidSvg getSavedStateRegistry() {
        return (AndroidSvg) this.mSavedStateRegistryController.renderOptions;
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
        FragmentManagerImpl fragmentManagerImpl = this.mFragmentManager;
        if (fragmentManagerImpl == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return fragmentManagerImpl.mFragmentStore.findActiveFragment(str);
    }

    public final FragmentViewLifecycleOwner getViewLifecycleOwner() {
        FragmentViewLifecycleOwner fragmentViewLifecycleOwner = this.mViewLifecycleOwner;
        if (fragmentViewLifecycleOwner != null) {
            return fragmentViewLifecycleOwner;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Can't access the Fragment View's LifecycleOwner for ", this, " when getView() is null i.e., before onCreateView() or after onDestroyView()"));
        return null;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        if (this.mFragmentManager == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Can't access ViewModels from detached fragment");
            return null;
        }
        if (getMinimumMaxLifecycleState() == Lifecycle$State.INITIALIZED.ordinal()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
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
        this.mSavedStateRegistryController = new AndroidSvg(new SavedStateRegistryImpl(this, new Worker$$ExternalSyntheticLambda0(9, this)));
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
        FragmentManagerImpl fragmentManagerImpl = this.mFragmentManager;
        if (fragmentManagerImpl != null) {
            Fragment fragment = this.mParentFragment;
            fragmentManagerImpl.getClass();
            if (fragment == null ? false : fragment.isHidden()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public void onActivityCreated() {
        this.mCalled = true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    public void onAttach(AppCompatActivity appCompatActivity) {
        this.mCalled = true;
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if ((fragmentActivity$HostCallbacks == null ? null : fragmentActivity$HostCallbacks.activity) != null) {
            this.mCalled = true;
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public void onCreate(Bundle bundle) {
        Bundle bundle2;
        this.mCalled = true;
        Bundle bundle3 = this.mSavedFragmentState;
        if (bundle3 != null && (bundle2 = bundle3.getBundle("childFragmentManager")) != null) {
            this.mChildFragmentManager.restoreSaveStateInternal(bundle2);
            FragmentManagerImpl fragmentManagerImpl = this.mChildFragmentManager;
            fragmentManagerImpl.mStateSaved = false;
            fragmentManagerImpl.mStopped = false;
            fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
            fragmentManagerImpl.dispatchStateChange(1);
        }
        FragmentManagerImpl fragmentManagerImpl2 = this.mChildFragmentManager;
        if (fragmentManagerImpl2.mCurState >= 1) {
            return;
        }
        fragmentManagerImpl2.mStateSaved = false;
        fragmentManagerImpl2.mStopped = false;
        fragmentManagerImpl2.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl2.dispatchStateChange(1);
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
            return null;
        }
        AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks.this$0;
        LayoutInflater cloneInContext = appCompatActivity.getLayoutInflater().cloneInContext(appCompatActivity);
        cloneInContext.setFactory2(this.mChildFragmentManager.mLayoutInflaterFactory);
        return cloneInContext;
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
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
        this.mViewLifecycleOwner = new FragmentViewLifecycleOwner(this, getViewModelStore(), new Task$$ExternalSyntheticLambda0(15, this));
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        FragmentViewLifecycleOwner fragmentViewLifecycleOwner = this.mViewLifecycleOwner;
        if (onCreateView == null) {
            if (fragmentViewLifecycleOwner.mLifecycleRegistry == null) {
                this.mViewLifecycleOwner = null;
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Called getViewLifecycleOwner() but onCreateView() returned null");
                return;
            }
        }
        fragmentViewLifecycleOwner.initialize$1();
        if (FragmentManagerImpl.isLoggingEnabled(3)) {
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

    public final ActivityResultLauncher registerForActivityResult(final ActivityResultCallback activityResultCallback, final ExceptionsKt exceptionsKt) {
        final HintHandler hintHandler = new HintHandler(23, this);
        if (this.mState > 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
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
                String sb2 = sb.toString();
                Fragment fragment2 = (Fragment) hintHandler.state;
                FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = fragment2.mHost;
                atomicReference.set((fragmentActivity$HostCallbacks != null ? fragmentActivity$HostCallbacks.this$0 : fragment2.requireActivity()).activityResultRegistry.register(sb2, fragment, exceptionsKt, activityResultCallback));
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " not attached to an activity."));
        return null;
    }

    public final Bundle requireArguments() {
        Bundle bundle = this.mArguments;
        if (bundle != null) {
            return bundle;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " does not have any arguments."));
        return null;
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " not attached to a context."));
        return null;
    }

    public final Fragment requireParentFragment() {
        Fragment fragment = this.mParentFragment;
        if (fragment != null) {
            return fragment;
        }
        if (getContext() == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " is not attached to any Fragment or host"));
            return null;
        }
        StringBuilder sb = new StringBuilder("Fragment ");
        sb.append(this);
        Context context = getContext();
        sb.append(" is not a child Fragment, it is directly attached to ");
        sb.append(context);
        throw new IllegalStateException(sb.toString());
    }

    public final View requireView() {
        View view = this.mView;
        if (view != null) {
            return view;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
        return null;
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
        FragmentManagerImpl fragmentManagerImpl = this.mFragmentManager;
        if (fragmentManagerImpl != null) {
            if (fragmentManagerImpl == null ? false : fragmentManagerImpl.isStateSaved()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Fragment already added and state has been saved");
                return;
            }
        }
        this.mArguments = bundle;
    }

    public final void setRetainInstance() {
        FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
        FragmentStrictMode.logIfDebuggingEnabled(new FragmentReuseViolation(this, "Attempting to set retain instance for fragment " + this));
        FragmentStrictMode.getNearestPolicy(this).getClass();
        this.mRetainInstance = true;
        FragmentManagerImpl fragmentManagerImpl = this.mFragmentManager;
        if (fragmentManagerImpl != null) {
            fragmentManagerImpl.mNonConfig.addRetainedFragment(this);
        } else {
            this.mRetainInstanceChangedWhileDetached = true;
        }
    }

    public final void setTargetFragment(Fragment fragment) {
        if (fragment != null) {
            FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
            FragmentStrictMode.logIfDebuggingEnabled(new GetTargetFragmentUsageViolation(this, "Attempting to set target fragment " + fragment + " with request code 0 for fragment " + this));
            FragmentStrictMode.getNearestPolicy(this).getClass();
        }
        FragmentManagerImpl fragmentManagerImpl = this.mFragmentManager;
        FragmentManagerImpl fragmentManagerImpl2 = fragment != null ? fragment.mFragmentManager : null;
        if (fragmentManagerImpl != null && fragmentManagerImpl2 != null && fragmentManagerImpl != fragmentManagerImpl2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(ViewSizeResolver$CC.m("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
            return;
        }
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getTargetFragment(false)) {
            if (fragment2 == this) {
                TimeSource$Companion$$ExternalSyntheticLambda0.m("Setting ", fragment, " as the target of ", this, " would create a target cycle");
                return;
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
        this.mTargetRequestCode = 0;
    }

    public final void startActivity(Intent intent, Bundle bundle) {
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = this.mHost;
        if (fragmentActivity$HostCallbacks == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " not attached to Activity"));
        } else {
            intent.getClass();
            fragmentActivity$HostCallbacks.context.startActivity(intent, bundle);
        }
    }

    public final void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (this.mHost == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m("Fragment ", this, " not attached to Activity"));
            return;
        }
        FragmentManagerImpl parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.mStartActivityForResult == null) {
            FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = parentFragmentManager.mHost;
            fragmentActivity$HostCallbacks.getClass();
            if (i == -1) {
                fragmentActivity$HostCallbacks.context.startActivity(intent, bundle);
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Starting activity with a requestCode requires a FragmentActivity host");
                return;
            }
        }
        String str = this.mWho;
        FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = new FragmentManager$LaunchedFragmentInfo();
        fragmentManager$LaunchedFragmentInfo.mWho = str;
        fragmentManager$LaunchedFragmentInfo.mRequestCode = i;
        parentFragmentManager.mLaunchedFragments.addLast(fragmentManager$LaunchedFragmentInfo);
        if (bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        parentFragmentManager.mStartActivityForResult.launch(intent, null);
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onViewCreated(View view, Bundle bundle) {
    }
}
