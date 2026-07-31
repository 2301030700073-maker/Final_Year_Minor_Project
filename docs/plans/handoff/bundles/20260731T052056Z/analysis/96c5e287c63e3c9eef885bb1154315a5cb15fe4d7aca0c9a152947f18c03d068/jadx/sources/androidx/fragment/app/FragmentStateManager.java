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
import androidx.appcompat.view.menu.CascadingMenuPopup;
import androidx.appcompat.view.menu.StandardMenuPopup;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableScatterMap;
import androidx.collection.SparseArrayCompat;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidGraphicsContext;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewKt$ancestors$1;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.SpecialEffectsController$Operation$State;
import androidx.fragment.app.strictmode.FragmentReuseViolation;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.loader.app.LoaderManagerImpl$LoaderViewModel;
import androidx.recyclerview.widget.RecyclerView;
import androidx.savedstate.Recreator;
import coil3.ImageLoader$Builder;
import coil3.size.ViewSizeResolver$CC;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior$$ExternalSyntheticLambda0;
import com.google.android.material.textfield.EndCompoundLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentStateManager {
    public final AndroidSvg mDispatcher;
    public final Fragment mFragment;
    public final ImageLoader$Builder mFragmentStore;
    public boolean mMovingToState = false;
    public int mFragmentManagerState = -1;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.fragment.app.FragmentStateManager$2, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$State;

        static {
            int[] iArr = new int[Lifecycle$State.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$State = iArr;
            try {
                iArr[Lifecycle$State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle$State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle$State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle$State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public FragmentStateManager(AndroidSvg androidSvg, ImageLoader$Builder imageLoader$Builder, ClassLoader classLoader, FragmentManager$3 fragmentManager$3, Bundle bundle) {
        this.mDispatcher = androidSvg;
        this.mFragmentStore = imageLoader$Builder;
        FragmentState fragmentState = (FragmentState) bundle.getParcelable("state");
        Fragment instantiate = fragmentManager$3.instantiate(fragmentState.mClassName);
        instantiate.mWho = fragmentState.mWho;
        instantiate.mFromLayout = fragmentState.mFromLayout;
        instantiate.mInDynamicContainer = fragmentState.mInDynamicContainer;
        instantiate.mRestored = true;
        instantiate.mFragmentId = fragmentState.mFragmentId;
        instantiate.mContainerId = fragmentState.mContainerId;
        instantiate.mTag = fragmentState.mTag;
        instantiate.mRetainInstance = fragmentState.mRetainInstance;
        instantiate.mRemoving = fragmentState.mRemoving;
        instantiate.mDetached = fragmentState.mDetached;
        instantiate.mHidden = fragmentState.mHidden;
        instantiate.mMaxState = Lifecycle$State.values()[fragmentState.mMaxLifecycleState];
        instantiate.mTargetWho = fragmentState.mTargetWho;
        instantiate.mTargetRequestCode = fragmentState.mTargetRequestCode;
        instantiate.mUserVisibleHint = fragmentState.mUserVisibleHint;
        this.mFragment = instantiate;
        instantiate.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        instantiate.setArguments(bundle2);
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + instantiate);
        }
    }

    public final void activityCreated() {
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
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
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onActivityCreated()"));
        }
        if (FragmentManagerImpl.isLoggingEnabled(3)) {
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
                throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onViewStateRestored()"));
            }
            if (fragment.mView != null) {
                fragment.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle$Event.ON_CREATE);
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
            FragmentStrictMode.logIfDebuggingEnabled(new FragmentReuseViolation(fragment2, Modifier.CC.m(sb, i, " without using parent's childFragmentManager")));
            FragmentStrictMode.getNearestPolicy(fragment2).getClass();
        }
        ArrayList arrayList = (ArrayList) this.mFragmentStore.application;
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
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto ATTACHED: " + fragment);
        }
        Fragment fragment2 = fragment.mTarget;
        FragmentStateManager fragmentStateManager = null;
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        if (fragment2 != null) {
            FragmentStateManager fragmentStateManager2 = (FragmentStateManager) ((HashMap) imageLoader$Builder.defaults).get(fragment2.mWho);
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
            if (str != null && (fragmentStateManager = (FragmentStateManager) ((HashMap) imageLoader$Builder.defaults).get(str)) == null) {
                StringBuilder sb2 = new StringBuilder("Fragment ");
                sb2.append(fragment);
                sb2.append(" declared target fragment ");
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Animation.CC.m(sb2, fragment.mTargetWho, " that does not belong to this FragmentManager!"));
                return;
            }
        }
        if (fragmentStateManager != null) {
            fragmentStateManager.moveToExpectedState();
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mFragmentManager;
        fragment.mHost = fragmentManagerImpl.mHost;
        fragment.mParentFragment = fragmentManagerImpl.mParent;
        AndroidSvg androidSvg = this.mDispatcher;
        androidSvg.dispatchOnFragmentPreAttached(fragment, false);
        ArrayList arrayList = fragment.mOnPreAttachedListeners;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Fragment.OnPreAttachedListener) it.next()).onPreAttached();
        }
        arrayList.clear();
        fragment.mChildFragmentManager.attachController(fragment.mHost, fragment.createFragmentContainer(), fragment);
        fragment.mState = 0;
        fragment.mCalled = false;
        fragment.onAttach(fragment.mHost.context);
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onAttach()"));
        }
        Iterator it2 = fragment.mFragmentManager.mOnAttachListeners.iterator();
        while (it2.hasNext()) {
            ((FragmentOnAttachListener) it2.next()).onAttachFragment();
        }
        FragmentManagerImpl fragmentManagerImpl2 = fragment.mChildFragmentManager;
        fragmentManagerImpl2.mStateSaved = false;
        fragmentManagerImpl2.mStopped = false;
        fragmentManagerImpl2.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl2.dispatchStateChange(0);
        androidSvg.dispatchOnFragmentAttached(fragment, false);
    }

    public final int computeExpectedState() {
        Fragment fragment = this.mFragment;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int i = this.mFragmentManagerState;
        int i2 = AnonymousClass2.$SwitchMap$androidx$lifecycle$Lifecycle$State[fragment.mMaxState.ordinal()];
        if (i2 != 1) {
            i = i2 != 2 ? i2 != 3 ? i2 != 4 ? Math.min(i, -1) : Math.min(i, 0) : Math.min(i, 1) : Math.min(i, 5);
        }
        if (fragment.mFromLayout) {
            boolean z = fragment.mInLayout;
            int i3 = this.mFragmentManagerState;
            if (z) {
                i = Math.max(i3, 2);
                View view = fragment.mView;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = i3 < 4 ? Math.min(i, fragment.mState) : Math.min(i, 1);
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
            SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact = findPendingOperation != null ? findPendingOperation.lifecycleImpact : null;
            SpecialEffectsController$FragmentStateManagerOperation findRunningOperation = orCreateController.findRunningOperation(fragment);
            r2 = findRunningOperation != null ? findRunningOperation.lifecycleImpact : null;
            int i4 = specialEffectsController$Operation$LifecycleImpact == null ? -1 : SpecialEffectsController$WhenMappings.$EnumSwitchMapping$0[specialEffectsController$Operation$LifecycleImpact.ordinal()];
            if (i4 != -1 && i4 != 1) {
                r2 = specialEffectsController$Operation$LifecycleImpact;
            }
        }
        if (r2 == SpecialEffectsController$Operation$LifecycleImpact.ADDING) {
            i = Math.min(i, 6);
        } else if (r2 == SpecialEffectsController$Operation$LifecycleImpact.REMOVING) {
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
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i + " for " + fragment);
        }
        return i;
    }

    public final void create() {
        Bundle bundle;
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "moveto CREATED: " + fragment);
        }
        Bundle bundle2 = fragment.mSavedFragmentState;
        Bundle bundle3 = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
        if (fragment.mIsCreated) {
            fragment.mState = 1;
            Bundle bundle4 = fragment.mSavedFragmentState;
            if (bundle4 == null || (bundle = bundle4.getBundle("childFragmentManager")) == null) {
                return;
            }
            fragment.mChildFragmentManager.restoreSaveStateInternal(bundle);
            FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
            fragmentManagerImpl.mStateSaved = false;
            fragmentManagerImpl.mStopped = false;
            fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
            fragmentManagerImpl.dispatchStateChange(1);
            return;
        }
        AndroidSvg androidSvg = this.mDispatcher;
        androidSvg.dispatchOnFragmentPreCreated(fragment, false);
        fragment.mChildFragmentManager.noteStateNotSaved();
        fragment.mState = 1;
        fragment.mCalled = false;
        fragment.mLifecycleRegistry.addObserver(new Recreator(2, fragment));
        fragment.onCreate(bundle3);
        fragment.mIsCreated = true;
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onCreate()"));
        }
        fragment.mLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_CREATE);
        androidSvg.dispatchOnFragmentCreated(fragment, false);
    }

    public final void createView() {
        String str;
        Fragment fragment = this.mFragment;
        if (fragment.mFromLayout) {
            return;
        }
        if (FragmentManagerImpl.isLoggingEnabled(3)) {
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
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(ViewSizeResolver$CC.m("Cannot create fragment ", fragment, " for a container view with no id"));
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
                        TimeSource$Companion$$ExternalSyntheticLambda0.m("No view found for id 0x", Integer.toHexString(fragment.mContainerId), " (", str, ") for fragment ", fragment);
                        return;
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
            if (FragmentManagerImpl.isLoggingEnabled(3)) {
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
            this.mDispatcher.dispatchOnFragmentViewCreated(fragment, fragment.mView, bundle2, false);
            int visibility = fragment.mView.getVisibility();
            fragment.ensureAnimationInfo().mPostOnViewCreatedAlpha = fragment.mView.getAlpha();
            if (fragment.mContainer != null && visibility == 0) {
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.ensureAnimationInfo().mFocusedView = findFocus;
                    if (FragmentManagerImpl.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment);
                    }
                }
                fragment.mView.setAlpha(RecyclerView.DECELERATION_RATE);
            }
        }
        fragment.mState = 2;
    }

    public final void destroy() {
        Fragment findActiveFragment;
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom CREATED: " + fragment);
        }
        boolean z = fragment.mRemoving && !fragment.isInBackStack();
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        if (z) {
            imageLoader$Builder.setSavedState(null, fragment.mWho);
        }
        if (!z) {
            FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) imageLoader$Builder.extras;
            if (!((fragmentManagerViewModel.mRetainedFragments.containsKey(fragment.mWho) && fragmentManagerViewModel.mStateAutomaticallySaved) ? fragmentManagerViewModel.mHasBeenCleared : true)) {
                String str = fragment.mTargetWho;
                if (str != null && (findActiveFragment = imageLoader$Builder.findActiveFragment(str)) != null && findActiveFragment.mRetainInstance) {
                    fragment.mTarget = findActiveFragment;
                }
                fragment.mState = 0;
                return;
            }
        }
        FragmentActivity$HostCallbacks fragmentActivity$HostCallbacks = fragment.mHost;
        boolean isChangingConfigurations = fragmentActivity$HostCallbacks != null ? ((FragmentManagerViewModel) imageLoader$Builder.extras).mHasBeenCleared : true ^ fragmentActivity$HostCallbacks.context.isChangingConfigurations();
        if (z || isChangingConfigurations) {
            ((FragmentManagerViewModel) imageLoader$Builder.extras).clearNonConfigState(fragment, false);
        }
        fragment.mChildFragmentManager.dispatchDestroy();
        fragment.mLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_DESTROY);
        fragment.mState = 0;
        fragment.mCalled = false;
        fragment.mIsCreated = false;
        fragment.onDestroy();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onDestroy()"));
        }
        this.mDispatcher.dispatchOnFragmentDestroyed(fragment, false);
        Iterator it = imageLoader$Builder.getActiveFragmentStateManagers().iterator();
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
            fragment.mTarget = imageLoader$Builder.findActiveFragment(str2);
        }
        imageLoader$Builder.makeInactive(this);
    }

    public final void destroyFragmentView() {
        View view;
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
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
            fragmentViewLifecycleOwner.initialize$1();
            if (fragmentViewLifecycleOwner.mLifecycleRegistry.state.isAtLeast(Lifecycle$State.CREATED)) {
                fragment.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle$Event.ON_DESTROY);
            }
        }
        fragment.mState = 1;
        fragment.mCalled = false;
        fragment.onDestroyView();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onDestroyView()"));
        }
        ViewModelStore viewModelStore = fragment.getViewModelStore();
        viewModelStore.getClass();
        CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
        empty.getClass();
        ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(viewModelStore, LoaderManagerImpl$LoaderViewModel.FACTORY, empty);
        KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(LoaderManagerImpl$LoaderViewModel.class);
        String qualifiedName = orCreateKotlinClass.getQualifiedName();
        if (qualifiedName == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
            return;
        }
        SparseArrayCompat sparseArrayCompat = ((LoaderManagerImpl$LoaderViewModel) imageLoader$Builder.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass)).mLoaders;
        if (sparseArrayCompat.size() > 0) {
            sparseArrayCompat.valueAt(0).getClass();
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return;
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
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + fragment);
        }
        fragment.mState = -1;
        fragment.mCalled = false;
        fragment.onDetach();
        fragment.mLayoutInflater = null;
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onDetach()"));
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
            FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) this.mFragmentStore.extras;
            if (!((fragmentManagerViewModel.mRetainedFragments.containsKey(fragment.mWho) && fragmentManagerViewModel.mStateAutomaticallySaved) ? fragmentManagerViewModel.mHasBeenCleared : true)) {
                return;
            }
        }
        if (FragmentManagerImpl.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + fragment);
        }
        fragment.initState();
    }

    public final void ensureInflatedView() {
        Fragment fragment = this.mFragment;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManagerImpl.isLoggingEnabled(3)) {
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
                this.mDispatcher.dispatchOnFragmentViewCreated(fragment, fragment.mView, bundle2, false);
                fragment.mState = 2;
            }
        }
    }

    public final void moveToExpectedState() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        ImageLoader$Builder imageLoader$Builder = this.mFragmentStore;
        boolean z = this.mMovingToState;
        Fragment fragment = this.mFragment;
        if (z) {
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + fragment);
                return;
            }
            return;
        }
        try {
            this.mMovingToState = true;
            boolean z2 = false;
            while (true) {
                int computeExpectedState = computeExpectedState();
                int i = fragment.mState;
                if (computeExpectedState == i) {
                    if (!z2 && i == -1 && fragment.mRemoving && !fragment.isInBackStack()) {
                        if (FragmentManagerImpl.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + fragment);
                        }
                        ((FragmentManagerViewModel) imageLoader$Builder.extras).clearNonConfigState(fragment, true);
                        imageLoader$Builder.makeInactive(this);
                        if (FragmentManagerImpl.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + fragment);
                        }
                        fragment.initState();
                    }
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            DefaultSpecialEffectsController orCreateController = DefaultSpecialEffectsController.getOrCreateController(viewGroup, fragment.getParentFragmentManager());
                            if (fragment.mHidden) {
                                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + fragment);
                                }
                                orCreateController.enqueue(SpecialEffectsController$Operation$State.GONE, SpecialEffectsController$Operation$LifecycleImpact.NONE, this);
                            } else {
                                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + fragment);
                                }
                                orCreateController.enqueue(SpecialEffectsController$Operation$State.VISIBLE, SpecialEffectsController$Operation$LifecycleImpact.NONE, this);
                            }
                        }
                        FragmentManagerImpl fragmentManagerImpl = fragment.mFragmentManager;
                        if (fragmentManagerImpl != null && fragment.mAdded && FragmentManagerImpl.isMenuAvailable(fragment)) {
                            fragmentManagerImpl.mNeedMenuInvalidate = true;
                        }
                        fragment.mHiddenChanged = false;
                        fragment.mChildFragmentManager.dispatchOnHiddenChanged();
                    }
                    this.mMovingToState = false;
                    return;
                }
                if (computeExpectedState <= i) {
                    switch (i - 1) {
                        case -1:
                            detach();
                            break;
                        case 0:
                            destroy();
                            break;
                        case 1:
                            destroyFragmentView();
                            fragment.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManagerImpl.isLoggingEnabled(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                            }
                            if (fragment.mView != null && fragment.mSavedViewState == null) {
                                saveViewState();
                            }
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                DefaultSpecialEffectsController orCreateController2 = DefaultSpecialEffectsController.getOrCreateController(viewGroup2, fragment.getParentFragmentManager());
                                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + fragment);
                                }
                                orCreateController2.enqueue(SpecialEffectsController$Operation$State.REMOVED, SpecialEffectsController$Operation$LifecycleImpact.REMOVING, this);
                            }
                            fragment.mState = 3;
                            break;
                        case 4:
                            stop();
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            pause();
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            attach();
                            break;
                        case 1:
                            create();
                            break;
                        case 2:
                            ensureInflatedView();
                            createView();
                            break;
                        case 3:
                            activityCreated();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                DefaultSpecialEffectsController orCreateController3 = DefaultSpecialEffectsController.getOrCreateController(viewGroup3, fragment.getParentFragmentManager());
                                int visibility = fragment.mView.getVisibility();
                                SpecialEffectsController$Operation$State.Companion.getClass();
                                SpecialEffectsController$Operation$State from = SpecialEffectsController$Operation$State.Companion.from(visibility);
                                from.getClass();
                                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + fragment);
                                }
                                orCreateController3.enqueue(from, SpecialEffectsController$Operation$LifecycleImpact.ADDING, this);
                            }
                            fragment.mState = 4;
                            break;
                        case 5:
                            start();
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            resume();
                            break;
                    }
                }
                z2 = true;
            }
        } catch (Throwable th) {
            this.mMovingToState = false;
            throw th;
        }
    }

    public final void pause() {
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom RESUMED: " + fragment);
        }
        fragment.mChildFragmentManager.dispatchStateChange(5);
        if (fragment.mView != null) {
            fragment.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle$Event.ON_PAUSE);
        }
        fragment.mLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_PAUSE);
        fragment.mState = 6;
        fragment.mCalled = false;
        fragment.onPause();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onPause()"));
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
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
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
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
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
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onResume()"));
        }
        LifecycleRegistry lifecycleRegistry = fragment.mLifecycleRegistry;
        Lifecycle$Event lifecycle$Event = Lifecycle$Event.ON_RESUME;
        lifecycleRegistry.handleLifecycleEvent(lifecycle$Event);
        if (fragment.mView != null) {
            fragment.mViewLifecycleOwner.mLifecycleRegistry.handleLifecycleEvent(lifecycle$Event);
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(7);
        this.mDispatcher.dispatchOnFragmentResumed(fragment, false);
        this.mFragmentStore.setSavedState(null, fragment.mWho);
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
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
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
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
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
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onStart()"));
        }
        LifecycleRegistry lifecycleRegistry = fragment.mLifecycleRegistry;
        Lifecycle$Event lifecycle$Event = Lifecycle$Event.ON_START;
        lifecycleRegistry.handleLifecycleEvent(lifecycle$Event);
        if (fragment.mView != null) {
            fragment.mViewLifecycleOwner.mLifecycleRegistry.handleLifecycleEvent(lifecycle$Event);
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        fragmentManagerImpl.mStateSaved = false;
        fragmentManagerImpl.mStopped = false;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = false;
        fragmentManagerImpl.dispatchStateChange(5);
        this.mDispatcher.dispatchOnFragmentStarted(fragment, false);
    }

    public final void stop() {
        boolean isLoggingEnabled = FragmentManagerImpl.isLoggingEnabled(3);
        Fragment fragment = this.mFragment;
        if (isLoggingEnabled) {
            Log.d("FragmentManager", "movefrom STARTED: " + fragment);
        }
        FragmentManagerImpl fragmentManagerImpl = fragment.mChildFragmentManager;
        fragmentManagerImpl.mStopped = true;
        fragmentManagerImpl.mNonConfig.mIsStateSaved = true;
        fragmentManagerImpl.dispatchStateChange(4);
        if (fragment.mView != null) {
            fragment.mViewLifecycleOwner.handleLifecycleEvent(Lifecycle$Event.ON_STOP);
        }
        fragment.mLifecycleRegistry.handleLifecycleEvent(Lifecycle$Event.ON_STOP);
        fragment.mState = 4;
        fragment.mCalled = false;
        fragment.onStop();
        if (!fragment.mCalled) {
            throw new SuperNotCalledException(ViewSizeResolver$CC.m("Fragment ", fragment, " did not call through to super.onStop()"));
        }
        this.mDispatcher.dispatchOnFragmentStopped(fragment, false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                case 7:
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
            switch (this.$r8$classId) {
                case 0:
                    return;
                case 1:
                    CascadingMenuPopup cascadingMenuPopup = (CascadingMenuPopup) this.val$fragmentView;
                    ViewTreeObserver viewTreeObserver = cascadingMenuPopup.mTreeObserver;
                    if (viewTreeObserver != null) {
                        if (!viewTreeObserver.isAlive()) {
                            cascadingMenuPopup.mTreeObserver = view.getViewTreeObserver();
                        }
                        cascadingMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(cascadingMenuPopup.mGlobalLayoutListener);
                    }
                    view.removeOnAttachStateChangeListener(this);
                    return;
                case 2:
                    StandardMenuPopup standardMenuPopup = (StandardMenuPopup) this.val$fragmentView;
                    ViewTreeObserver viewTreeObserver2 = standardMenuPopup.mTreeObserver;
                    if (viewTreeObserver2 != null) {
                        if (!viewTreeObserver2.isAlive()) {
                            standardMenuPopup.mTreeObserver = view.getViewTreeObserver();
                        }
                        standardMenuPopup.mTreeObserver.removeGlobalOnLayoutListener(standardMenuPopup.mGlobalLayoutListener);
                    }
                    view.removeOnAttachStateChangeListener(this);
                    return;
                case 3:
                    AndroidGraphicsContext androidGraphicsContext = (AndroidGraphicsContext) this.val$fragmentView;
                    Context context = view.getContext();
                    if (androidGraphicsContext.componentCallbackRegistered) {
                        context.getApplicationContext().unregisterComponentCallbacks(androidGraphicsContext.componentCallback);
                        androidGraphicsContext.componentCallbackRegistered = false;
                    }
                    CardView.AnonymousClass1 anonymousClass1 = androidGraphicsContext.shadowCache;
                    if (anonymousClass1 != null) {
                        synchronized (anonymousClass1) {
                            try {
                                MutableScatterMap mutableScatterMap = (MutableScatterMap) anonymousClass1.mCardBackground;
                                if (mutableScatterMap != null) {
                                    mutableScatterMap.clear();
                                }
                                anonymousClass1.this$0 = null;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    androidGraphicsContext.shadowCache = null;
                    return;
                case 4:
                    AbstractComposeView abstractComposeView = (AbstractComposeView) this.val$fragmentView;
                    for (Object obj : SequencesKt.generateSequence(abstractComposeView.getParent(), ViewKt$ancestors$1.INSTANCE)) {
                        if (obj instanceof View) {
                            View view2 = (View) obj;
                            view2.getClass();
                            Object tag = view2.getTag(R.id.is_pooling_container_tag);
                            Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
                            if (bool != null ? bool.booleanValue() : false) {
                                return;
                            }
                        }
                    }
                    abstractComposeView.disposeComposition();
                    return;
                case 5:
                    view.removeOnAttachStateChangeListener(this);
                    ((StandaloneCoroutine) this.val$fragmentView).cancel(null);
                    return;
                case 6:
                    HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.val$fragmentView;
                    HideViewOnScrollBehavior$$ExternalSyntheticLambda0 hideViewOnScrollBehavior$$ExternalSyntheticLambda0 = hideBottomViewOnScrollBehavior.touchExplorationListener;
                    if (hideViewOnScrollBehavior$$ExternalSyntheticLambda0 == null || (accessibilityManager = hideBottomViewOnScrollBehavior.accessibilityManager) == null) {
                        return;
                    }
                    accessibilityManager.removeTouchExplorationStateChangeListener(hideViewOnScrollBehavior$$ExternalSyntheticLambda0);
                    hideBottomViewOnScrollBehavior.touchExplorationListener = null;
                    return;
                case 7:
                    HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.val$fragmentView;
                    HideViewOnScrollBehavior$$ExternalSyntheticLambda0 hideViewOnScrollBehavior$$ExternalSyntheticLambda02 = hideViewOnScrollBehavior.touchExplorationListener;
                    if (hideViewOnScrollBehavior$$ExternalSyntheticLambda02 == null || (accessibilityManager2 = hideViewOnScrollBehavior.accessibilityManager) == null) {
                        return;
                    }
                    accessibilityManager2.removeTouchExplorationStateChangeListener(hideViewOnScrollBehavior$$ExternalSyntheticLambda02);
                    hideViewOnScrollBehavior.touchExplorationListener = null;
                    return;
                default:
                    EndCompoundLayout endCompoundLayout = (EndCompoundLayout) this.val$fragmentView;
                    AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = endCompoundLayout.touchExplorationStateChangeListener;
                    if (touchExplorationStateChangeListener == null || (accessibilityManager3 = endCompoundLayout.accessibilityManager) == null) {
                        return;
                    }
                    accessibilityManager3.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
                    return;
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

    public FragmentStateManager(AndroidSvg androidSvg, ImageLoader$Builder imageLoader$Builder, Fragment fragment) {
        this.mDispatcher = androidSvg;
        this.mFragmentStore = imageLoader$Builder;
        this.mFragment = fragment;
    }

    public FragmentStateManager(AndroidSvg androidSvg, ImageLoader$Builder imageLoader$Builder, Fragment fragment, Bundle bundle) {
        this.mDispatcher = androidSvg;
        this.mFragmentStore = imageLoader$Builder;
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
