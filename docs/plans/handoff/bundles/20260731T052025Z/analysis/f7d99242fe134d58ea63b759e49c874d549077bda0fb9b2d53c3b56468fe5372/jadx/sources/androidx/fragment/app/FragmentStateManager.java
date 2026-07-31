package androidx.fragment.app;

import android.content.Context;
import android.content.res.Resources;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.menu.CascadingMenuPopup;
import androidx.appcompat.view.menu.StandardMenuPopup;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidGraphicsContext;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewKt$ancestors$1;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentReuseViolation;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.loader.app.LoaderManager;
import androidx.loader.app.LoaderManagerImpl;
import androidx.savedstate.Recreator;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior$$ExternalSyntheticLambda0;
import com.google.android.material.textfield.EndCompoundLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FragmentStateManager {
    public final WeakCache mDispatcher;
    public final Fragment mFragment;
    public final Dispatcher mFragmentStore;
    public boolean mMovingToState = false;
    public int mFragmentManagerState = -1;

    public FragmentStateManager(WeakCache weakCache, Dispatcher dispatcher, ClassLoader classLoader, FragmentManager.AnonymousClass3 anonymousClass3, Bundle bundle) {
        this.mDispatcher = weakCache;
        this.mFragmentStore = dispatcher;
        Fragment instantiate = ((FragmentState) bundle.getParcelable("state")).instantiate(anonymousClass3);
        this.mFragment = instantiate;
        instantiate.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        instantiate.setArguments(bundle2);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + instantiate);
        }
    }

    public final void activityCreated() {
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
        }
        Bundle bundle = fragment.mSavedFragmentState;
        if (bundle != null) {
            bundle.getBundle("savedInstanceState");
        }
        fragment.mChildFragmentManager.noteStateNotSaved();
        fragment.mState = 3;
        fragment.mCalled = false;
        fragment.onActivityCreated();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onActivityCreated()"));
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + fragment);
        }
        if (fragment.mView != null) {
            Bundle bundle2 = fragment.mSavedFragmentState;
            Bundle bundle3 = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
            SparseArray<Parcelable> sparseArray = fragment.mSavedViewState;
            if (sparseArray != null) {
                fragment.mView.restoreHierarchyState(sparseArray);
                fragment.mSavedViewState = null;
            }
            fragment.mCalled = false;
            fragment.onViewStateRestored(bundle3);
            if (!fragment.mCalled) {
                throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onViewStateRestored()"));
            }
            if (fragment.mView != null) {
                fragment.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
            }
        }
        fragment.mSavedFragmentState = null;
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(4);
        this.mDispatcher.dispatchOnFragmentActivityCreated(fragment, false);
    }

    public final void addViewToContainer() {
        Fragment fragment;
        View view;
        View view2;
        Fragment fragment2 = this.mFragment;
        View view3 = fragment2.mContainer;
        while (true) {
            fragment = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.fragment_container_view_tag);
            Fragment fragment3 = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment3 != null) {
                fragment = fragment3;
                break;
            } else {
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
        Fragment fragment4 = fragment2.mParentFragment;
        if (fragment != null && fragment != fragment4) {
            int i = fragment2.mContainerId;
            FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
            StringBuilder sb = new StringBuilder("Attempting to nest fragment ");
            sb.append(fragment2);
            sb.append(" within the view of parent fragment ");
            sb.append(fragment);
            sb.append(" via container with ID ");
            FragmentStrictMode.logIfDebuggingEnabled(new FragmentReuseViolation(fragment2, CameraDevices$CC.m(sb, i, " without using parent's childFragmentManager")));
            FragmentStrictMode.getNearestPolicy(fragment2).getClass();
        }
        ArrayList arrayList = (ArrayList) this.mFragmentStore.executorServiceOrNull;
        ViewGroup viewGroup = fragment2.mContainer;
        int i2 = -1;
        if (viewGroup != null) {
            int indexOf = arrayList.indexOf(fragment2);
            int i3 = indexOf - 1;
            while (true) {
                if (i3 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        Fragment fragment5 = (Fragment) arrayList.get(indexOf);
                        if (fragment5.mContainer == viewGroup && (view = fragment5.mView) != null) {
                            i2 = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    Fragment fragment6 = (Fragment) arrayList.get(i3);
                    if (fragment6.mContainer == viewGroup && (view2 = fragment6.mView) != null) {
                        i2 = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i3--;
                }
            }
        }
        fragment2.mContainer.addView(fragment2.mView, i2);
    }

    public final void attach() {
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto ATTACHED: " + fragment);
        }
        Fragment fragment2 = fragment.mTarget;
        FragmentStateManager fragmentStateManager = null;
        Dispatcher dispatcher = this.mFragmentStore;
        if (fragment2 != null) {
            FragmentStateManager fragmentStateManager2 = (FragmentStateManager) ((HashMap) dispatcher.readyAsyncCalls).get(fragment2.mWho);
            if (fragmentStateManager2 == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(fragment);
                Fragment fragment3 = fragment.mTarget;
                sb.append(" declared target fragment ");
                sb.append(fragment3);
                sb.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(sb.toString());
            }
            fragment.mTargetWho = fragment.mTarget.mWho;
            fragment.mTarget = null;
            fragmentStateManager = fragmentStateManager2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (fragmentStateManager = (FragmentStateManager) ((HashMap) dispatcher.readyAsyncCalls).get(str)) == null) {
                StringBuilder sb2 = new StringBuilder("Fragment ");
                sb2.append(fragment);
                sb2.append(" declared target fragment ");
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m(sb2, fragment.mTargetWho, " that does not belong to this FragmentManager!"));
                return;
            }
        }
        if (fragmentStateManager != null) {
            fragmentStateManager.moveToExpectedState();
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        fragment.mHost = fragmentManager.mHost;
        fragment.mParentFragment = fragmentManager.mParent;
        WeakCache weakCache = this.mDispatcher;
        weakCache.dispatchOnFragmentPreAttached(fragment, false);
        ArrayList arrayList = fragment.mOnPreAttachedListeners;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Fragment.OnPreAttachedListener) it.next()).onPreAttached();
        }
        arrayList.clear();
        fragment.mChildFragmentManager.attachController(fragment.mHost, fragment.createFragmentContainer(), fragment);
        fragment.mState = 0;
        fragment.mCalled = false;
        fragment.onAttach((Context) fragment.mHost.context);
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onAttach()"));
        }
        FragmentManager fragmentManager2 = fragment.mFragmentManager;
        Iterator it2 = fragmentManager2.mOnAttachListeners.iterator();
        while (it2.hasNext()) {
            ((FragmentOnAttachListener) it2.next()).onAttachFragment(fragmentManager2, fragment);
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(0);
        weakCache.dispatchOnFragmentAttached(fragment, false);
    }

    public final int computeExpectedState() {
        Fragment fragment = this.mFragment;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int i = this.mFragmentManagerState;
        int ordinal = fragment.mMaxState.ordinal();
        if (ordinal == 1) {
            i = Math.min(i, 0);
        } else if (ordinal == 2) {
            i = Math.min(i, 1);
        } else if (ordinal == 3) {
            i = Math.min(i, 5);
        } else if (ordinal != 4) {
            i = Math.min(i, -1);
        }
        if (fragment.mFromLayout) {
            boolean z = fragment.mInLayout;
            int i2 = this.mFragmentManagerState;
            if (z) {
                i = Math.max(i2, 2);
                View view = fragment.mView;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = i2 < 4 ? Math.min(i, fragment.mState) : Math.min(i, 1);
            }
        }
        if (fragment.mInDynamicContainer && fragment.mContainer == null) {
            i = Math.min(i, 4);
        }
        if (!fragment.mAdded) {
            i = Math.min(i, 1);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            DefaultSpecialEffectsController orCreateController = DefaultSpecialEffectsController.getOrCreateController(viewGroup, fragment.getParentFragmentManager());
            SpecialEffectsController$FragmentStateManagerOperation findPendingOperation = orCreateController.findPendingOperation(fragment);
            int i3 = findPendingOperation != null ? findPendingOperation.lifecycleImpact : 0;
            SpecialEffectsController$FragmentStateManagerOperation findRunningOperation = orCreateController.findRunningOperation(fragment);
            r3 = findRunningOperation != null ? findRunningOperation.lifecycleImpact : 0;
            int i4 = i3 == 0 ? -1 : SpecialEffectsController$WhenMappings.$EnumSwitchMapping$0[ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i3)];
            if (i4 != -1 && i4 != 1) {
                r3 = i3;
            }
        }
        if (r3 == 2) {
            i = Math.min(i, 6);
        } else if (r3 == 3) {
            i = Math.max(i, 3);
        } else if (fragment.mRemoving) {
            i = fragment.isInBackStack() ? Math.min(i, 1) : Math.min(i, -1);
        }
        if (fragment.mDeferStart && fragment.mState < 5) {
            i = Math.min(i, 4);
        }
        if (fragment.mTransitioning) {
            i = Math.max(i, 3);
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i + " for " + fragment);
        }
        return i;
    }

    public final void create() {
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto CREATED: " + fragment);
        }
        Bundle bundle = fragment.mSavedFragmentState;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        if (fragment.mIsCreated) {
            fragment.mState = 1;
            fragment.restoreChildFragmentState();
            return;
        }
        WeakCache weakCache = this.mDispatcher;
        weakCache.dispatchOnFragmentPreCreated(fragment, false);
        fragment.mChildFragmentManager.noteStateNotSaved();
        fragment.mState = 1;
        fragment.mCalled = false;
        fragment.mLifecycleRegistry.addObserver(new Recreator(2, fragment));
        fragment.onCreate(bundle2);
        fragment.mIsCreated = true;
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onCreate()"));
        }
        fragment.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        weakCache.dispatchOnFragmentCreated(fragment, false);
    }

    public final void createView() {
        String str;
        Fragment fragment = this.mFragment;
        if (fragment.mFromLayout) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + fragment);
        }
        Bundle bundle = fragment.mSavedFragmentState;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater onGetLayoutInflater = fragment.onGetLayoutInflater(bundle2);
        fragment.mLayoutInflater = onGetLayoutInflater;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            int i = fragment.mContainerId;
            if (i == 0) {
                viewGroup = null;
            } else {
                if (i == -1) {
                    UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m("Cannot create fragment ", fragment, " for a container view with no id"));
                    return;
                }
                viewGroup = (ViewGroup) fragment.mFragmentManager.mContainer.onFindViewById(i);
                if (viewGroup == null) {
                    if (!fragment.mRestored && !fragment.mInDynamicContainer) {
                        try {
                            str = fragment.getResources().getResourceName(fragment.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + str + ") for fragment " + fragment);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
                    FragmentStrictMode.logIfDebuggingEnabled(new FragmentReuseViolation(fragment, "Attempting to add fragment " + fragment + " to container " + viewGroup + " which is not a FragmentContainerView"));
                    FragmentStrictMode.getNearestPolicy(fragment).getClass();
                }
            }
        }
        fragment.mContainer = viewGroup;
        fragment.performCreateView(onGetLayoutInflater, viewGroup, bundle2);
        if (fragment.mView != null) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + fragment);
            }
            int i2 = 0;
            fragment.mView.setSaveFromParentEnabled(false);
            fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
            if (viewGroup != null) {
                addViewToContainer();
            }
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            boolean isAttachedToWindow = fragment.mView.isAttachedToWindow();
            View view = fragment.mView;
            if (isAttachedToWindow) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                view.requestApplyInsets();
            } else {
                view.addOnAttachStateChangeListener(new AnonymousClass1(i2, view));
            }
            Bundle bundle3 = fragment.mSavedFragmentState;
            fragment.onViewCreated(fragment.mView, bundle3 != null ? bundle3.getBundle("savedInstanceState") : null);
            fragment.mChildFragmentManager.dispatchStateChange(2);
            this.mDispatcher.dispatchOnFragmentViewCreated(fragment, fragment.mView, false);
            int visibility = fragment.mView.getVisibility();
            fragment.ensureAnimationInfo().mPostOnViewCreatedAlpha = fragment.mView.getAlpha();
            if (fragment.mContainer != null && visibility == 0) {
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.ensureAnimationInfo().mFocusedView = findFocus;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment);
                    }
                }
                fragment.mView.setAlpha(0.0f);
            }
        }
        fragment.mState = 2;
    }

    public final void destroy() {
        Fragment findActiveFragment;
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom CREATED: " + fragment);
        }
        boolean z = true;
        boolean z2 = fragment.mRemoving && !fragment.isInBackStack();
        Dispatcher dispatcher = this.mFragmentStore;
        if (z2 && !fragment.mBeingSaved) {
            dispatcher.setSavedState(fragment.mWho, null);
        }
        if (!z2) {
            FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) dispatcher.runningSyncCalls;
            if (!((fragmentManagerViewModel.mRetainedFragments.containsKey(fragment.mWho) && fragmentManagerViewModel.mStateAutomaticallySaved) ? fragmentManagerViewModel.mHasBeenCleared : true)) {
                String str = fragment.mTargetWho;
                if (str != null && (findActiveFragment = dispatcher.findActiveFragment(str)) != null && findActiveFragment.mRetainInstance) {
                    fragment.mTarget = findActiveFragment;
                }
                fragment.mState = 0;
                return;
            }
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = fragment.mHost;
        if (fragmentActivity$HostCallbacks != null) {
            z = ((FragmentManagerViewModel) dispatcher.runningSyncCalls).mHasBeenCleared;
        } else {
            AppCompatActivity appCompatActivity = fragmentActivity$HostCallbacks.context;
            if (ImageAnalysis$$ExternalSyntheticLambda3.m(appCompatActivity)) {
                z = true ^ appCompatActivity.isChangingConfigurations();
            }
        }
        if ((z2 && !fragment.mBeingSaved) || z) {
            ((FragmentManagerViewModel) dispatcher.runningSyncCalls).clearNonConfigState(fragment, false);
        }
        fragment.mChildFragmentManager.dispatchDestroy();
        fragment.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        fragment.mState = 0;
        fragment.mCalled = false;
        fragment.mIsCreated = false;
        fragment.onDestroy();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onDestroy()"));
        }
        this.mDispatcher.dispatchOnFragmentDestroyed(fragment, false);
        Iterator it = dispatcher.getActiveFragmentStateManagers().iterator();
        while (it.hasNext()) {
            FragmentStateManager fragmentStateManager = (FragmentStateManager) it.next();
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.mFragment;
                if (fragment.mWho.equals(fragment2.mTargetWho)) {
                    fragment2.mTarget = fragment;
                    fragment2.mTargetWho = null;
                }
            }
        }
        String str2 = fragment.mTargetWho;
        if (str2 != null) {
            fragment.mTarget = dispatcher.findActiveFragment(str2);
        }
        dispatcher.makeInactive(this);
    }

    public final void destroyFragmentView() {
        View view;
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + fragment);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        fragment.mChildFragmentManager.dispatchStateChange(1);
        if (fragment.mView != null) {
            FragmentViewLifecycleOwner fragmentViewLifecycleOwner = fragment.mViewLifecycleOwner;
            fragmentViewLifecycleOwner.initialize();
            if (fragmentViewLifecycleOwner.mLifecycleRegistry.state.compareTo(Lifecycle.State.CREATED) >= 0) {
                fragment.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
            }
        }
        fragment.mState = 1;
        fragment.mCalled = false;
        fragment.onDestroyView();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onDestroyView()"));
        }
        SparseArrayCompat sparseArrayCompat = LoaderManager.getInstance(fragment).mLoaderViewModel.mLoaders;
        int size = sparseArrayCompat.size();
        for (int i = 0; i < size; i++) {
            ((LoaderManagerImpl.LoaderInfo) sparseArrayCompat.valueAt(i)).markForRedelivery();
        }
        fragment.mPerformedCreateView = false;
        this.mDispatcher.dispatchOnFragmentViewDestroyed(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.setValue(null);
        fragment.mInLayout = false;
    }

    public final void detach() {
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + fragment);
        }
        fragment.mState = -1;
        fragment.mCalled = false;
        fragment.onDetach();
        fragment.mLayoutInflater = null;
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onDetach()"));
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        if (!fragmentManagerImpl.mDestroyed) {
            fragmentManagerImpl.dispatchDestroy();
            fragment.mChildFragmentManager = new FragmentManagerImpl();
        }
        this.mDispatcher.dispatchOnFragmentDetached(fragment, false);
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (!fragment.mRemoving || fragment.isInBackStack()) {
            FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) this.mFragmentStore.runningSyncCalls;
            if (!((fragmentManagerViewModel.mRetainedFragments.containsKey(fragment.mWho) && fragmentManagerViewModel.mStateAutomaticallySaved) ? fragmentManagerViewModel.mHasBeenCleared : true)) {
                return;
            }
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + fragment);
        }
        fragment.initState();
    }

    public final void ensureInflatedView() {
        Fragment fragment = this.mFragment;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + fragment);
            }
            Bundle bundle = fragment.mSavedFragmentState;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            LayoutInflater onGetLayoutInflater = fragment.onGetLayoutInflater(bundle2);
            fragment.mLayoutInflater = onGetLayoutInflater;
            fragment.performCreateView(onGetLayoutInflater, null, bundle2);
            View view = fragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
                if (fragment.mHidden) {
                    fragment.mView.setVisibility(8);
                }
                Bundle bundle3 = fragment.mSavedFragmentState;
                fragment.onViewCreated(fragment.mView, bundle3 != null ? bundle3.getBundle("savedInstanceState") : null);
                fragment.mChildFragmentManager.dispatchStateChange(2);
                this.mDispatcher.dispatchOnFragmentViewCreated(fragment, fragment.mView, false);
                fragment.mState = 2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x015b, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void moveToExpectedState() {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentStateManager.moveToExpectedState():void");
    }

    public final void pause() {
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom RESUMED: " + fragment);
        }
        fragment.mChildFragmentManager.dispatchStateChange(5);
        if (fragment.mView != null) {
            fragment.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }
        fragment.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        fragment.mState = 6;
        fragment.mCalled = false;
        fragment.onPause();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onPause()"));
        }
        this.mDispatcher.dispatchOnFragmentPaused(fragment, false);
    }

    public final void restoreState(ClassLoader classLoader) {
        Fragment fragment = this.mFragment;
        Bundle bundle = fragment.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (fragment.mSavedFragmentState.getBundle("savedInstanceState") == null) {
            fragment.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
        }
        try {
            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("viewState");
            fragment.mSavedViewRegistryState = fragment.mSavedFragmentState.getBundle("viewRegistryState");
            FragmentState fragmentState = (FragmentState) fragment.mSavedFragmentState.getParcelable("state");
            if (fragmentState != null) {
                fragment.mTargetWho = fragmentState.mTargetWho;
                fragment.mTargetRequestCode = fragmentState.mTargetRequestCode;
                fragment.mUserVisibleHint = fragmentState.mUserVisibleHint;
            }
            if (fragment.mUserVisibleHint) {
                return;
            }
            fragment.mDeferStart = true;
        } catch (BadParcelableException e) {
            throw new IllegalStateException("Failed to restore view hierarchy state for fragment " + fragment, e);
        }
    }

    public final void resume() {
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto RESUMED: " + fragment);
        }
        Fragment.AnimationInfo animationInfo = fragment.mAnimationInfo;
        View view = animationInfo == null ? null : animationInfo.mFocusedView;
        if (view != null) {
            if (view != fragment.mView) {
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent != fragment.mView) {
                    }
                }
            }
            boolean requestFocus = view.requestFocus();
            if (FragmentManager.isLoggingEnabled(2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(view);
                sb.append(" ");
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(fragment);
                sb.append(" resulting in focused view ");
                sb.append(fragment.mView.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        fragment.ensureAnimationInfo().mFocusedView = null;
        fragment.mChildFragmentManager.noteStateNotSaved();
        fragment.mChildFragmentManager.execPendingActions(true);
        fragment.mState = 7;
        fragment.mCalled = false;
        fragment.onResume();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onResume()"));
        }
        LifecycleRegistry lifecycleRegistry = fragment.mLifecycleRegistry;
        Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
        lifecycleRegistry.handleLifecycleEvent(event);
        if (fragment.mView != null) {
            fragment.mViewLifecycleOwner.mLifecycleRegistry.handleLifecycleEvent(event);
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(7);
        this.mDispatcher.dispatchOnFragmentResumed(fragment, false);
        this.mFragmentStore.setSavedState(fragment.mWho, null);
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    public final Bundle saveState() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        Fragment fragment = this.mFragment;
        if (fragment.mState == -1 && (bundle = fragment.mSavedFragmentState) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new FragmentState(fragment));
        if (fragment.mState > 0) {
            Bundle bundle3 = new Bundle();
            fragment.onSaveInstanceState(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.mDispatcher.dispatchOnFragmentSaveInstanceState(fragment, bundle3, false);
            Bundle bundle4 = new Bundle();
            fragment.mSavedStateRegistryController.performSave(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle saveAllStateInternal = fragment.mChildFragmentManager.saveAllStateInternal();
            if (!saveAllStateInternal.isEmpty()) {
                bundle2.putBundle("childFragmentManager", saveAllStateInternal);
            }
            if (fragment.mView != null) {
                saveViewState();
            }
            SparseArray<? extends Parcelable> sparseArray = fragment.mSavedViewState;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = fragment.mSavedViewRegistryState;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = fragment.mArguments;
        if (bundle6 != null) {
            bundle2.putBundle("arguments", bundle6);
        }
        return bundle2;
    }

    public final void saveViewState() {
        Fragment fragment = this.mFragment;
        if (fragment.mView == null) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + fragment + " with view " + fragment.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        fragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            fragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        fragment.mViewLifecycleOwner.mSavedStateRegistryController.performSave(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        fragment.mSavedViewRegistryState = bundle;
    }

    public final void start() {
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto STARTED: " + fragment);
        }
        fragment.mChildFragmentManager.noteStateNotSaved();
        fragment.mChildFragmentManager.execPendingActions(true);
        fragment.mState = 5;
        fragment.mCalled = false;
        fragment.onStart();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onStart()"));
        }
        LifecycleRegistry lifecycleRegistry = fragment.mLifecycleRegistry;
        Lifecycle.Event event = Lifecycle.Event.ON_START;
        lifecycleRegistry.handleLifecycleEvent(event);
        if (fragment.mView != null) {
            fragment.mViewLifecycleOwner.mLifecycleRegistry.handleLifecycleEvent(event);
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(5);
        this.mDispatcher.dispatchOnFragmentStarted(fragment, false);
    }

    public final void stop() {
        boolean isLoggingEnabled = FragmentManager.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom STARTED: " + fragment);
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        fragmentManagerImpl.mStopped = true;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = true;
        fragmentManagerImpl.dispatchStateChange(4);
        if (fragment.mView != null) {
            fragment.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        }
        fragment.mLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        fragment.mState = 4;
        fragment.mCalled = false;
        fragment.onStop();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(Modifier.CC.m("Fragment ", fragment, " did not call through to super.onStop()"));
        }
        this.mDispatcher.dispatchOnFragmentStopped(fragment, false);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.fragment.app.FragmentStateManager$1, reason: invalid class name */
    public final class AnonymousClass1 implements View.OnAttachStateChangeListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object val$fragmentView;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.val$fragmentView = obj;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            int i = this.$r8$classId;
            Object obj = this.val$fragmentView;
            switch (i) {
                case 0:
                    View view2 = (View) obj;
                    view2.removeOnAttachStateChangeListener(this);
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    view2.requestApplyInsets();
                    break;
                case 1:
                case 2:
                    break;
                case 3:
                    AndroidGraphicsContext androidGraphicsContext = (AndroidGraphicsContext) obj;
                    Context context = view.getContext();
                    if (!androidGraphicsContext.componentCallbackRegistered) {
                        context.getApplicationContext().registerComponentCallbacks(androidGraphicsContext.componentCallback);
                        androidGraphicsContext.componentCallbackRegistered = true;
                        break;
                    }
                    break;
                case 4:
                case 5:
                case 6:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    break;
                default:
                    EndCompoundLayout endCompoundLayout = (EndCompoundLayout) obj;
                    AccessibilityManager accessibilityManager = endCompoundLayout.accessibilityManager;
                    if (endCompoundLayout.touchExplorationStateChangeListener != null && accessibilityManager != null && endCompoundLayout.isAttachedToWindow()) {
                        accessibilityManager.addTouchExplorationStateChangeListener(endCompoundLayout.touchExplorationStateChangeListener);
                        break;
                    }
                    break;
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            AccessibilityManager accessibilityManager;
            AccessibilityManager accessibilityManager2;
            AccessibilityManager accessibilityManager3;
            int i = this.$r8$classId;
            Object obj = this.val$fragmentView;
            switch (i) {
                case 0:
                    break;
                case 1:
                    CascadingMenuPopup cascadingMenuPopup = (CascadingMenuPopup) obj;
                    ViewTreeObserver viewTreeObserver = cascadingMenuPopup.mTreeObserver;
                    if (viewTreeObserver != null) {
                        if (!viewTreeObserver.isAlive()) {
                            cascadingMenuPopup.mTreeObserver = view.getViewTreeObserver();
                        }
                        cascadingMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(cascadingMenuPopup.mGlobalLayoutListener);
                    }
                    view.removeOnAttachStateChangeListener(this);
                    break;
                case 2:
                    StandardMenuPopup standardMenuPopup = (StandardMenuPopup) obj;
                    ViewTreeObserver viewTreeObserver2 = standardMenuPopup.mTreeObserver;
                    if (viewTreeObserver2 != null) {
                        if (!viewTreeObserver2.isAlive()) {
                            standardMenuPopup.mTreeObserver = view.getViewTreeObserver();
                        }
                        standardMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(standardMenuPopup.mGlobalLayoutListener);
                    }
                    view.removeOnAttachStateChangeListener(this);
                    break;
                case 3:
                    AndroidGraphicsContext androidGraphicsContext = (AndroidGraphicsContext) obj;
                    Context context = view.getContext();
                    if (androidGraphicsContext.componentCallbackRegistered) {
                        context.getApplicationContext().unregisterComponentCallbacks(androidGraphicsContext.componentCallback);
                        androidGraphicsContext.componentCallbackRegistered = false;
                        break;
                    }
                    break;
                case 4:
                    AbstractComposeView abstractComposeView = (AbstractComposeView) obj;
                    for (Object obj2 : SequencesKt.generateSequence(abstractComposeView.getParent(), ViewKt$ancestors$1.INSTANCE)) {
                        if (obj2 instanceof View) {
                            View view2 = (View) obj2;
                            view2.getClass();
                            Object tag = view2.getTag(R.id.is_pooling_container_tag);
                            Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
                            if (bool != null ? bool.booleanValue() : false) {
                                break;
                            }
                        }
                    }
                    abstractComposeView.disposeComposition();
                    break;
                case 5:
                    view.removeOnAttachStateChangeListener(this);
                    ((StandaloneCoroutine) obj).cancel(null);
                    break;
                case 6:
                    HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) obj;
                    HideViewOnScrollBehavior$$ExternalSyntheticLambda0 hideViewOnScrollBehavior$$ExternalSyntheticLambda0 = hideBottomViewOnScrollBehavior.touchExplorationListener;
                    if (hideViewOnScrollBehavior$$ExternalSyntheticLambda0 != null && (accessibilityManager = hideBottomViewOnScrollBehavior.accessibilityManager) != null) {
                        accessibilityManager.removeTouchExplorationStateChangeListener(hideViewOnScrollBehavior$$ExternalSyntheticLambda0);
                        hideBottomViewOnScrollBehavior.touchExplorationListener = null;
                        break;
                    }
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) obj;
                    HideViewOnScrollBehavior$$ExternalSyntheticLambda0 hideViewOnScrollBehavior$$ExternalSyntheticLambda02 = hideViewOnScrollBehavior.touchExplorationListener;
                    if (hideViewOnScrollBehavior$$ExternalSyntheticLambda02 != null && (accessibilityManager2 = hideViewOnScrollBehavior.accessibilityManager) != null) {
                        accessibilityManager2.removeTouchExplorationStateChangeListener(hideViewOnScrollBehavior$$ExternalSyntheticLambda02);
                        hideViewOnScrollBehavior.touchExplorationListener = null;
                        break;
                    }
                    break;
                default:
                    EndCompoundLayout endCompoundLayout = (EndCompoundLayout) obj;
                    AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = endCompoundLayout.touchExplorationStateChangeListener;
                    if (touchExplorationStateChangeListener != null && (accessibilityManager3 = endCompoundLayout.accessibilityManager) != null) {
                        accessibilityManager3.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
                        break;
                    }
                    break;
            }
        }

        private final void onViewAttachedToWindow$androidx$appcompat$view$menu$CascadingMenuPopup$2(View view) {
        }

        private final void onViewAttachedToWindow$androidx$appcompat$view$menu$StandardMenuPopup$2(View view) {
        }

        private final void onViewAttachedToWindow$androidx$compose$ui$platform$ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1(View view) {
        }

        private final void onViewAttachedToWindow$androidx$compose$ui$platform$WindowRecomposerPolicy$createAndInstallWindowRecomposer$1(View view) {
        }

        private final void onViewAttachedToWindow$com$google$android$material$behavior$HideBottomViewOnScrollBehavior$1(View view) {
        }

        private final void onViewAttachedToWindow$com$google$android$material$behavior$HideViewOnScrollBehavior$1(View view) {
        }

        private final void onViewDetachedFromWindow$androidx$fragment$app$FragmentStateManager$1(View view) {
        }
    }

    public FragmentStateManager(WeakCache weakCache, Dispatcher dispatcher, Fragment fragment) {
        this.mDispatcher = weakCache;
        this.mFragmentStore = dispatcher;
        this.mFragment = fragment;
    }

    public FragmentStateManager(WeakCache weakCache, Dispatcher dispatcher, Fragment fragment, Bundle bundle) {
        this.mDispatcher = weakCache;
        this.mFragmentStore = dispatcher;
        this.mFragment = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        fragment.mSavedFragmentState = bundle;
        fragment.mArguments = bundle.getBundle("arguments");
    }
}
