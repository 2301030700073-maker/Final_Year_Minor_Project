package b.i.b;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.result.IntentSenderRequest;
import androidx.fragment.app.Fragment$InstantiationException;
import androidx.fragment.app.Fragment$SavedState;
import androidx.fragment.app.FragmentManager$LaunchedFragmentInfo;
import androidx.fragment.app.SuperNotCalledException;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import b.a.l.g;
import b.i.b.r;
import b.j.AbstractC0137g;
import b.j.InterfaceC0138h;
import b.j.j;
import com.android.systemui.shared.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class r implements ComponentCallbacks, View.OnCreateContextMenuListener, b.j.j, b.j.I, b.n.f {
    public static final int ACTIVITY_CREATED = 4;
    public static final int ATTACHED = 0;
    public static final int AWAITING_ENTER_EFFECTS = 6;
    public static final int AWAITING_EXIT_EFFECTS = 3;
    public static final int CREATED = 1;
    public static final int INITIALIZING = -1;
    public static final int RESUMED = 7;
    public static final int STARTED = 5;
    public static final Object USE_DEFAULT_TRANSITION = new Object();
    public static final int VIEW_CREATED = 2;
    public boolean mAdded;
    public C0120o mAnimationInfo;
    public Bundle mArguments;
    public int mBackStackNesting;
    public boolean mCalled;
    public X mChildFragmentManager;
    public ViewGroup mContainer;
    public int mContainerId;
    public int mContentLayoutId;
    public b.j.D mDefaultFactory;
    public boolean mDeferStart;
    public boolean mDetached;
    public int mFragmentId;
    public X mFragmentManager;
    public boolean mFromLayout;
    public boolean mHasMenu;
    public boolean mHidden;
    public boolean mHiddenChanged;
    public D mHost;
    public boolean mInLayout;
    public boolean mIsCreated;
    public boolean mIsNewlyAdded;
    public Boolean mIsPrimaryNavigationFragment;
    public LayoutInflater mLayoutInflater;
    public b.j.l mLifecycleRegistry;
    public Lifecycle$State mMaxState;
    public boolean mMenuVisible;
    public final AtomicInteger mNextLocalRequestCode;
    public r mParentFragment;
    public boolean mPerformedCreateView;
    public float mPostponedAlpha;
    public Runnable mPostponedDurationRunnable;
    public boolean mRemoving;
    public boolean mRestored;
    public boolean mRetainInstance;
    public boolean mRetainInstanceChangedWhileDetached;
    public Bundle mSavedFragmentState;
    public b.n.e mSavedStateRegistryController;
    public Boolean mSavedUserVisibleHint;
    public Bundle mSavedViewRegistryState;
    public SparseArray mSavedViewState;
    public int mState;
    public String mTag;
    public r mTarget;
    public int mTargetRequestCode;
    public String mTargetWho;
    public boolean mUserVisibleHint;
    public View mView;
    public B0 mViewLifecycleOwner;
    public b.j.s mViewLifecycleOwnerLiveData;
    public String mWho;

    public r() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new Y();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new RunnableC0112i(this);
        this.mMaxState = Lifecycle$State.RESUMED;
        this.mViewLifecycleOwnerLiveData = new b.j.s();
        this.mNextLocalRequestCode = new AtomicInteger();
        initLifecycle();
    }

    private C0120o ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new C0120o();
        }
        return this.mAnimationInfo;
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new b.j.l(this);
        this.mSavedStateRegistryController = new b.n.e(this);
        this.mLifecycleRegistry.a(new InterfaceC0138h() { // from class: androidx.fragment.app.Fragment$2
            @Override // b.j.InterfaceC0138h
            public void d(j jVar, Lifecycle$Event lifecycle$Event) {
                View view;
                if (lifecycle$Event != Lifecycle$Event.ON_STOP || (view = r.this.mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
    }

    @Deprecated
    public static r instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    private b.a.l.c prepareCallInternal(final b.a.l.j.b bVar, final b.c.a.c.a aVar, final b.a.l.b bVar2) {
        final AtomicReference atomicReference = new AtomicReference();
        getLifecycle().a(new InterfaceC0138h() { // from class: androidx.fragment.app.Fragment$7
            @Override // b.j.InterfaceC0138h
            public void d(j jVar, Lifecycle$Event lifecycle$Event) {
                if (Lifecycle$Event.ON_CREATE.equals(lifecycle$Event)) {
                    String generateActivityResultKey = r.this.generateActivityResultKey();
                    atomicReference.set(((g) aVar.apply(null)).d(generateActivityResultKey, r.this, bVar, bVar2));
                }
            }
        });
        return new C0119n(this, atomicReference, bVar);
    }

    public void callStartTransitionListener() {
        C0120o c0120o = this.mAnimationInfo;
        Object obj = null;
        if (c0120o != null) {
            c0120o.q = false;
            Object obj2 = c0120o.r;
            c0120o.r = null;
            obj = obj2;
        }
        if (obj != null) {
            W w = (W) obj;
            int i = w.f878c - 1;
            w.f878c = i;
            if (i != 0) {
                return;
            }
            w.f877b.r.b0();
        }
    }

    public A createFragmentContainer() {
        return new C0116k(this);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        r targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            b.k.a.a.b(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.y(c.a.c.a.a.e(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public r findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f881c.e(str);
    }

    public String generateActivityResultKey() {
        StringBuilder f = c.a.c.a.a.f("fragment_");
        f.append(this.mWho);
        f.append("_rq#");
        f.append(this.mNextLocalRequestCode.getAndIncrement());
        return f.toString();
    }

    public final ActivityC0124t getActivity() {
        D d2 = this.mHost;
        if (d2 == null) {
            return null;
        }
        return (ActivityC0124t) d2.f836a;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null || (bool = c0120o.n) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null || (bool = c0120o.m) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return null;
        }
        return c0120o.f928a;
    }

    public Animator getAnimator() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return null;
        }
        return c0120o.f929b;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final X getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        D d2 = this.mHost;
        if (d2 == null) {
            return null;
        }
        return d2.f837b;
    }

    public b.j.D getDefaultViewModelProviderFactory() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mDefaultFactory == null) {
            Application application = null;
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
            if (application == null && X.M(3)) {
                StringBuilder f = c.a.c.a.a.f("Could not find Application instance from Context ");
                f.append(requireContext().getApplicationContext());
                f.append(", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
                Log.d("FragmentManager", f.toString());
            }
            this.mDefaultFactory = new b.j.A(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    public Object getEnterTransition() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return null;
        }
        return c0120o.g;
    }

    public b.e.b.n getEnterTransitionCallback() {
        if (this.mAnimationInfo == null) {
        }
        return null;
    }

    public Object getExitTransition() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return null;
        }
        return c0120o.i;
    }

    public b.e.b.n getExitTransitionCallback() {
        if (this.mAnimationInfo == null) {
        }
        return null;
    }

    @Deprecated
    public final X getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        D d2 = this.mHost;
        if (d2 == null) {
            return null;
        }
        return ((C0123s) d2).e;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // b.j.j
    public AbstractC0137g getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public b.k.a.a getLoaderManager() {
        return b.k.a.a.b(this);
    }

    public int getNextAnim() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return 0;
        }
        return c0120o.f930c;
    }

    public int getNextTransition() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return 0;
        }
        return c0120o.f931d;
    }

    public final r getParentFragment() {
        return this.mParentFragment;
    }

    public final X getParentFragmentManager() {
        X x = this.mFragmentManager;
        if (x != null) {
            return x;
        }
        throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " not associated with a fragment manager."));
    }

    public Object getReenterTransition() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return null;
        }
        Object obj = c0120o.j;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return null;
        }
        Object obj = c0120o.h;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // b.n.f
    public final b.n.d getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f1236b;
    }

    public Object getSharedElementEnterTransition() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return null;
        }
        return c0120o.k;
    }

    public Object getSharedElementReturnTransition() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return null;
        }
        Object obj = c0120o.l;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public ArrayList getSharedElementSourceNames() {
        ArrayList arrayList;
        C0120o c0120o = this.mAnimationInfo;
        return (c0120o == null || (arrayList = c0120o.e) == null) ? new ArrayList() : arrayList;
    }

    public ArrayList getSharedElementTargetNames() {
        ArrayList arrayList;
        C0120o c0120o = this.mAnimationInfo;
        return (c0120o == null || (arrayList = c0120o.f) == null) ? new ArrayList() : arrayList;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final r getTargetFragment() {
        String str;
        r rVar = this.mTarget;
        if (rVar != null) {
            return rVar;
        }
        X x = this.mFragmentManager;
        if (x == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return x.F(str);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public b.j.j getViewLifecycleOwner() {
        B0 b0 = this.mViewLifecycleOwner;
        if (b0 != null) {
            return b0;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public b.j.q getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // b.j.I
    public b.j.H getViewModelStore() {
        X x = this.mFragmentManager;
        if (x == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        C0099b0 c0099b0 = x.L;
        b.j.H h = (b.j.H) c0099b0.e.get(this.mWho);
        if (h != null) {
            return h;
        }
        b.j.H h2 = new b.j.H();
        c0099b0.e.put(this.mWho, h2);
        return h2;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        initLifecycle();
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new Y();
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

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    public boolean isHideReplaced() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return false;
        }
        return c0120o.s;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        if (this.mMenuVisible) {
            if (this.mFragmentManager == null) {
                return true;
            }
            r rVar = this.mParentFragment;
            if (rVar == null ? true : rVar.isMenuVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean isPostponed() {
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o == null) {
            return false;
        }
        return c0120o.q;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isRemovingParent() {
        r parentFragment = getParentFragment();
        return parentFragment != null && (parentFragment.isRemoving() || parentFragment.isRemovingParent());
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        X x = this.mFragmentManager;
        if (x == null) {
            return false;
        }
        return x.P();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.T();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        D d2 = this.mHost;
        Activity activity = d2 == null ? null : d2.f836a;
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    @Deprecated
    public void onAttachFragment(r rVar) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager.p >= 1) {
            return;
        }
        this.mChildFragmentManager.m();
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.mContentLayoutId;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        D d2 = this.mHost;
        Activity activity = d2 == null ? null : d2.f836a;
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.T();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        restoreViewState();
        X x = this.mChildFragmentManager;
        x.D = false;
        x.E = false;
        x.L.i = false;
        x.w(4);
    }

    public void performAttach() {
        this.mChildFragmentManager.c(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f837b);
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onAttach()"));
        }
        X x = this.mFragmentManager;
        Iterator it = x.o.iterator();
        while (it.hasNext()) {
            ((InterfaceC0101c0) it.next()).a(x, this);
        }
        X x2 = this.mChildFragmentManager;
        x2.D = false;
        x2.E = false;
        x2.L.i = false;
        x2.w(0);
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.k(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.l(menuItem);
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.T();
        this.mState = 1;
        this.mCalled = false;
        this.mSavedStateRegistryController.a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.c(Lifecycle$Event.ON_CREATE);
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        return z | this.mChildFragmentManager.n(menu, menuInflater);
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.T();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new B0();
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView == null) {
            if (this.mViewLifecycleOwner.f832a != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
            return;
        }
        B0 b0 = this.mViewLifecycleOwner;
        if (b0.f832a == null) {
            b0.f832a = new b.j.l(b0);
            b0.f833b = new b.n.e(b0);
        }
        this.mView.setTag(R.id.view_tree_lifecycle_owner, this.mViewLifecycleOwner);
        this.mView.setTag(R.id.view_tree_view_model_store_owner, this);
        this.mView.setTag(R.id.view_tree_saved_state_registry_owner, this.mViewLifecycleOwner);
        this.mViewLifecycleOwnerLiveData.g(this.mViewLifecycleOwner);
    }

    public void performDestroy() {
        this.mChildFragmentManager.o();
        this.mLifecycleRegistry.c(Lifecycle$Event.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.w(1);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f832a.c(Lifecycle$Event.ON_DESTROY);
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        b.k.a.e eVar = ((b.k.a.f) b.k.a.a.b(this)).f1017b;
        int h = eVar.f1015c.h();
        for (int i = 0; i < h; i++) {
            Objects.requireNonNull((b.k.a.b) eVar.f1015c.i(i));
        }
        this.mPerformedCreateView = false;
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onDetach()"));
        }
        X x = this.mChildFragmentManager;
        if (x.F) {
            return;
        }
        x.o();
        this.mChildFragmentManager = new Y();
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.p();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.q(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.r(menuItem);
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.s(menu);
    }

    public void performPause() {
        this.mChildFragmentManager.w(5);
        if (this.mView != null) {
            B0 b0 = this.mViewLifecycleOwner;
            b0.f832a.c(Lifecycle$Event.ON_PAUSE);
        }
        this.mLifecycleRegistry.c(Lifecycle$Event.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.u(z);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        return z | this.mChildFragmentManager.v(menu);
    }

    public void performPrimaryNavigationFragmentChanged() {
        boolean O = this.mFragmentManager.O(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != O) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(O);
            onPrimaryNavigationFragmentChanged(O);
            X x = this.mChildFragmentManager;
            x.i0();
            x.t(x.t);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.T();
        this.mChildFragmentManager.C(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onResume()"));
        }
        this.mLifecycleRegistry.c(Lifecycle$Event.ON_RESUME);
        if (this.mView != null) {
            B0 b0 = this.mViewLifecycleOwner;
            b0.f832a.c(Lifecycle$Event.ON_RESUME);
        }
        X x = this.mChildFragmentManager;
        x.D = false;
        x.E = false;
        x.L.i = false;
        x.w(7);
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        Parcelable a0 = this.mChildFragmentManager.a0();
        if (a0 != null) {
            bundle.putParcelable(ActivityC0124t.FRAGMENTS_TAG, a0);
        }
    }

    public void performStart() {
        this.mChildFragmentManager.T();
        this.mChildFragmentManager.C(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onStart()"));
        }
        this.mLifecycleRegistry.c(Lifecycle$Event.ON_START);
        if (this.mView != null) {
            B0 b0 = this.mViewLifecycleOwner;
            b0.f832a.c(Lifecycle$Event.ON_START);
        }
        X x = this.mChildFragmentManager;
        x.D = false;
        x.E = false;
        x.L.i = false;
        x.w(5);
    }

    public void performStop() {
        X x = this.mChildFragmentManager;
        x.E = true;
        x.L.i = true;
        x.w(4);
        if (this.mView != null) {
            B0 b0 = this.mViewLifecycleOwner;
            b0.f832a.c(Lifecycle$Event.ON_STOP);
        }
        this.mLifecycleRegistry.c(Lifecycle$Event.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.w(2);
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().q = true;
    }

    public final b.a.l.c registerForActivityResult(b.a.l.j.b bVar, b.a.l.b bVar2) {
        return prepareCallInternal(bVar, new C0117l(this), bVar2);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i) {
        if (this.mHost == null) {
            throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " not attached to Activity"));
        }
        X parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.A == null) {
            Objects.requireNonNull(parentFragmentManager.q);
            return;
        }
        parentFragmentManager.B.addLast(new FragmentManager$LaunchedFragmentInfo(this.mWho, i));
        parentFragmentManager.A.a(strArr, null);
    }

    public final ActivityC0124t requireActivity() {
        ActivityC0124t activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " not attached to a context."));
    }

    @Deprecated
    public final X requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " not attached to a host."));
    }

    public final r requireParentFragment() {
        r parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable(ActivityC0124t.FRAGMENTS_TAG)) == null) {
            return;
        }
        this.mChildFragmentManager.Z(parcelable);
        this.mChildFragmentManager.m();
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            B0 b0 = this.mViewLifecycleOwner;
            b0.f833b.a(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new SuperNotCalledException(c.a.c.a.a.d("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
        if (this.mView != null) {
            B0 b02 = this.mViewLifecycleOwner;
            b02.f832a.c(Lifecycle$Event.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().n = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().m = Boolean.valueOf(z);
    }

    public void setAnimatingAway(View view) {
        ensureAnimationInfo().f928a = view;
    }

    public void setAnimator(Animator animator) {
        ensureAnimationInfo().f929b = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(b.e.b.n nVar) {
        ensureAnimationInfo();
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().g = obj;
    }

    public void setExitSharedElementCallback(b.e.b.n nVar) {
        ensureAnimationInfo();
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().i = obj;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            ((C0123s) this.mHost).e.supportInvalidateOptionsMenu();
        }
    }

    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().s = z;
    }

    public void setInitialSavedState(Fragment$SavedState fragment$SavedState) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (fragment$SavedState == null || (bundle = fragment$SavedState.f106a) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                ((C0123s) this.mHost).e.supportInvalidateOptionsMenu();
            }
        }
    }

    public void setNextAnim(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo().f930c = i;
    }

    public void setNextTransition(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo();
        this.mAnimationInfo.f931d = i;
    }

    public void setOnStartEnterTransitionListener(InterfaceC0121p interfaceC0121p) {
        ensureAnimationInfo();
        InterfaceC0121p interfaceC0121p2 = this.mAnimationInfo.r;
        if (interfaceC0121p == interfaceC0121p2) {
            return;
        }
        if (interfaceC0121p != null && interfaceC0121p2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        C0120o c0120o = this.mAnimationInfo;
        if (c0120o.q) {
            c0120o.r = interfaceC0121p;
        }
        if (interfaceC0121p != null) {
            ((W) interfaceC0121p).f878c++;
        }
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().j = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        X x = this.mFragmentManager;
        if (x == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            x.L.c(this);
        } else {
            x.L.d(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().h = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().k = obj;
    }

    public void setSharedElementNames(ArrayList arrayList, ArrayList arrayList2) {
        ensureAnimationInfo();
        C0120o c0120o = this.mAnimationInfo;
        c0120o.e = arrayList;
        c0120o.f = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().l = obj;
    }

    @Deprecated
    public void setTargetFragment(r rVar, int i) {
        X x = this.mFragmentManager;
        X x2 = rVar != null ? rVar.mFragmentManager : null;
        if (x != null && x2 != null && x != x2) {
            throw new IllegalArgumentException(c.a.c.a.a.d("Fragment ", rVar, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (r rVar2 = rVar; rVar2 != null; rVar2 = rVar2.getTargetFragment()) {
            if (rVar2.equals(this)) {
                throw new IllegalArgumentException("Setting " + rVar + " as the target of " + this + " would create a target cycle");
            }
        }
        if (rVar == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || rVar.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = rVar;
        } else {
            this.mTargetWho = rVar.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            X x = this.mFragmentManager;
            x.U(x.h(this));
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 5 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        D d2 = this.mHost;
        if (d2 != null) {
            return b.e.b.b.m(((C0123s) d2).e, str);
        }
        return false;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        Intent intent2 = intent;
        if (this.mHost == null) {
            throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " not attached to Activity"));
        }
        X parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.z == null) {
            D d2 = parentFragmentManager.q;
            Objects.requireNonNull(d2);
            if (i != -1) {
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
            b.e.b.b.q(d2.f836a, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        IntentSenderRequest intentSenderRequest = new IntentSenderRequest(intentSender, intent, i2, i3);
        if (bundle != null) {
            if (intent2 == null) {
                intent2 = new Intent();
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        parentFragmentManager.B.addLast(new FragmentManager$LaunchedFragmentInfo(this.mWho, i));
        parentFragmentManager.z.a(intentSenderRequest, null);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !ensureAnimationInfo().q) {
            return;
        }
        if (this.mHost == null) {
            ensureAnimationInfo().q = false;
        } else if (Looper.myLooper() != this.mHost.f838c.getLooper()) {
            this.mHost.f838c.postAtFrontOfQueue(new RunnableC0114j(this));
        } else {
            callStartTransitionListener();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.mWho);
        sb.append(")");
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" ");
            sb.append(this.mTag);
        }
        sb.append('}');
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @Deprecated
    public static r instantiate(Context context, String str, Bundle bundle) {
        try {
            r rVar = (r) L.d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(rVar.getClass().getClassLoader());
                rVar.setArguments(bundle);
            }
            return rVar;
        } catch (IllegalAccessException e) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        ensureAnimationInfo().q = true;
        X x = this.mFragmentManager;
        Handler handler = x != null ? x.q.f838c : new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public final b.a.l.c registerForActivityResult(b.a.l.j.b bVar, b.a.l.g gVar, b.a.l.b bVar2) {
        return prepareCallInternal(bVar, new C0118m(this, gVar), bVar2);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        D d2 = this.mHost;
        if (d2 == null) {
            throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " not attached to Activity"));
        }
        b.e.b.b.o(d2.f837b, intent, bundle);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException(c.a.c.a.a.d("Fragment ", this, " not attached to Activity"));
        }
        X parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.y != null) {
            parentFragmentManager.B.addLast(new FragmentManager$LaunchedFragmentInfo(this.mWho, i));
            if (bundle != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            parentFragmentManager.y.a(intent, null);
            return;
        }
        D d2 = parentFragmentManager.q;
        Objects.requireNonNull(d2);
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        b.e.b.b.o(d2.f837b, intent, bundle);
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        D d2 = this.mHost;
        if (d2 != null) {
            C0123s c0123s = (C0123s) d2;
            LayoutInflater cloneInContext = c0123s.e.getLayoutInflater().cloneInContext(c0123s.e);
            cloneInContext.setFactory2(this.mChildFragmentManager.f);
            return cloneInContext;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public r(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private void restoreViewState() {
        if (X.M(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
    }
}
