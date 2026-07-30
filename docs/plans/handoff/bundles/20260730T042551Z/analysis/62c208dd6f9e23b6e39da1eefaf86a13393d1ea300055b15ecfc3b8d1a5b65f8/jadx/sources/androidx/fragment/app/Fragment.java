package androidx.fragment.app;

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
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.ComponentActivity;
import androidx.activity.result.IntentSenderRequest;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Cimport;
import androidx.lifecycle.Csuper;
import androidx.lifecycle.Ctry;
import androidx.lifecycle.LiveData;
import com.facebook.internal.security.CertificateUtil;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0146Cj;
import defpackage.AbstractC0190Ej;
import defpackage.AbstractC0665a0;
import defpackage.AbstractC3398nc;
import defpackage.AbstractC4001xq;
import defpackage.C0173Do;
import defpackage.C0212Fj;
import defpackage.C0419Ot;
import defpackage.C0431Pj;
import defpackage.C0466Ra;
import defpackage.C2687eL;
import defpackage.C3493pB;
import defpackage.C4060yq;
import defpackage.Cpublic;
import defpackage.Creturn;
import defpackage.InterfaceC0103Ak;
import defpackage.InterfaceC0234Gj;
import defpackage.InterfaceC2608d0;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC2746fL;
import defpackage.InterfaceC3552qB;
import defpackage.K;
import defpackage.ME;
import defpackage.ND;
import defpackage.PF;
import defpackage.V;
import defpackage.W;
import j$.util.Objects;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC2714eq, InterfaceC2746fL, androidx.lifecycle.Cfor, InterfaceC3552qB {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    Cthis mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    private boolean mCalled;
    FragmentManager mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    Cimport.Cif mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    FragmentManager mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    AbstractC0190Ej<?> mHost;
    boolean mInLayout;
    boolean mIsCreated;
    boolean mIsNewlyAdded;
    private Boolean mIsPrimaryNavigationFragment;
    LayoutInflater mLayoutInflater;
    androidx.lifecycle.Cgoto mLifecycleRegistry;
    Ctry.Cif mMaxState;
    boolean mMenuVisible;
    private final AtomicInteger mNextLocalRequestCode;
    private final ArrayList<Ccatch> mOnPreAttachedListeners;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    float mPostponedAlpha;
    Runnable mPostponedDurationRunnable;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    C3493pB mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    int mState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    String mTargetWho;
    boolean mUserVisibleHint;
    View mView;
    C0431Pj mViewLifecycleOwner;
    C0419Ot<InterfaceC2714eq> mViewLifecycleOwnerLiveData;
    String mWho;

    /* renamed from: androidx.fragment.app.Fragment$break, reason: invalid class name */
    public static class Cbreak extends RuntimeException {
        public Cbreak(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$case, reason: invalid class name */
    public class Ccase implements InterfaceC0103Ak<Void, androidx.activity.result.Cdo> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ androidx.activity.result.Cdo f6812do;

        public Ccase(androidx.activity.result.Cdo cdo) {
            this.f6812do = cdo;
        }

        @Override // defpackage.InterfaceC0103Ak
        /* renamed from: do */
        public final Object mo95do() {
            return this.f6812do;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$catch, reason: invalid class name */
    public static abstract class Ccatch {
        /* renamed from: do, reason: not valid java name */
        public abstract void mo4111do();
    }

    /* renamed from: androidx.fragment.app.Fragment$class, reason: invalid class name */
    public interface Cclass {
    }

    /* renamed from: androidx.fragment.app.Fragment$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$else, reason: invalid class name */
    public class Celse extends Ccatch {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InterfaceC0103Ak f6814do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ V f6815do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ W f6816do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ AtomicReference f6818do;

        public Celse(InterfaceC0103Ak interfaceC0103Ak, AtomicReference atomicReference, W w, V v) {
            this.f6814do = interfaceC0103Ak;
            this.f6818do = atomicReference;
            this.f6816do = w;
            this.f6815do = v;
        }

        @Override // androidx.fragment.app.Fragment.Ccatch
        /* renamed from: do */
        public final void mo4111do() {
            Fragment fragment = Fragment.this;
            this.f6818do.set(((androidx.activity.result.Cdo) this.f6814do.mo95do()).m3206for(fragment.generateActivityResultKey(), fragment, this.f6816do, this.f6815do));
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cstatic f6819do;

        public Cfor(Cstatic cstatic) {
            this.f6819do = cstatic;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f6819do.m4191for();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* renamed from: androidx.fragment.app.Fragment$goto, reason: invalid class name */
    public class Cgoto<I> extends AbstractC0665a0<I> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f6820do;

        public Cgoto(AtomicReference atomicReference) {
            this.f6820do = atomicReference;
        }

        @Override // defpackage.AbstractC0665a0
        /* renamed from: do */
        public final void mo3104do(Object obj) {
            AbstractC0665a0 abstractC0665a0 = (AbstractC0665a0) this.f6820do.get();
            if (abstractC0665a0 == null) {
                throw new IllegalStateException("Operation cannot be started before fragment is in created state");
            }
            abstractC0665a0.mo3104do(obj);
        }

        @Override // defpackage.AbstractC0665a0
        /* renamed from: if */
        public final void mo3105if() {
            AbstractC0665a0 abstractC0665a0 = (AbstractC0665a0) this.f6820do.getAndSet(null);
            if (abstractC0665a0 != null) {
                abstractC0665a0.mo3105if();
            }
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Fragment.this.callStartTransitionListener(false);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$new, reason: invalid class name */
    public class Cnew extends AbstractC0146Cj {
        public Cnew() {
        }

        @Override // defpackage.AbstractC0146Cj
        /* renamed from: new */
        public final View mo286new(int i) {
            Fragment fragment = Fragment.this;
            View view = fragment.mView;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + fragment + " does not have a view");
        }

        @Override // defpackage.AbstractC0146Cj
        /* renamed from: try */
        public final boolean mo287try() {
            return Fragment.this.mView != null;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$this, reason: invalid class name */
    public static class Cthis {

        /* renamed from: case, reason: not valid java name */
        public Object f6823case;

        /* renamed from: do, reason: not valid java name */
        public float f6824do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f6825do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Animator f6826do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public View f6827do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Boolean f6828do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f6829do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ArrayList<String> f6830do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6831do;

        /* renamed from: for, reason: not valid java name */
        public int f6832for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public Object f6833for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f6834for;

        /* renamed from: if, reason: not valid java name */
        public int f6835if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public View f6836if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Boolean f6837if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Object f6838if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public ArrayList<String> f6839if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f6840if;

        /* renamed from: new, reason: not valid java name */
        public int f6841new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public Object f6842new;

        /* renamed from: try, reason: not valid java name */
        public int f6843try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public Object f6844try;

        public Cthis() {
            Object obj = Fragment.USE_DEFAULT_TRANSITION;
            this.f6838if = obj;
            this.f6833for = null;
            this.f6842new = obj;
            this.f6844try = null;
            this.f6823case = obj;
            this.f6824do = 1.0f;
            this.f6836if = null;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$try, reason: invalid class name */
    public class Ctry implements InterfaceC0103Ak<Void, androidx.activity.result.Cdo> {
        public Ctry() {
        }

        @Override // defpackage.InterfaceC0103Ak
        /* renamed from: do */
        public final Object mo95do() {
            Fragment fragment = Fragment.this;
            Object obj = fragment.mHost;
            return obj instanceof InterfaceC2608d0 ? ((InterfaceC2608d0) obj).mo3191goto() : ((ComponentActivity) fragment.requireActivity()).f5091do;
        }
    }

    public Fragment() {
        this.mState = -1;
        this.mWho = UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new C0212Fj();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new Cdo();
        this.mMaxState = Ctry.Cif.RESUMED;
        this.mViewLifecycleOwnerLiveData = new C0419Ot<>();
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mOnPreAttachedListeners = new ArrayList<>();
        initLifecycle();
    }

    private Cthis ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new Cthis();
        }
        return this.mAnimationInfo;
    }

    private int getMinimumMaxLifecycleState() {
        Ctry.Cif cif = this.mMaxState;
        return (cif == Ctry.Cif.INITIALIZED || this.mParentFragment == null) ? cif.ordinal() : Math.min(cif.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new androidx.lifecycle.Cgoto(this);
        this.mSavedStateRegistryController = new C3493pB(this);
        this.mDefaultFactory = null;
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    private <I, O> AbstractC0665a0<I> prepareCallInternal(W<I, O> w, InterfaceC0103Ak<Void, androidx.activity.result.Cdo> interfaceC0103Ak, V<O> v) {
        if (this.mState > 1) {
            throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
        }
        AtomicReference atomicReference = new AtomicReference();
        registerOnPreAttachListener(new Celse(interfaceC0103Ak, atomicReference, w, v));
        return new Cgoto(atomicReference);
    }

    private void registerOnPreAttachListener(Ccatch ccatch) {
        if (this.mState >= 0) {
            ccatch.mo4111do();
        } else {
            this.mOnPreAttachedListeners.add(ccatch);
        }
    }

    public void callStartTransitionListener(boolean z) {
        ViewGroup viewGroup;
        FragmentManager fragmentManager;
        Cthis cthis = this.mAnimationInfo;
        if (cthis != null) {
            cthis.f6840if = false;
            cthis.getClass();
            cthis.getClass();
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (fragmentManager = this.mFragmentManager) == null) {
            return;
        }
        Cstatic m4188case = Cstatic.m4188case(viewGroup, fragmentManager.m4152volatile());
        m4188case.m4192goto();
        if (z) {
            this.mHost.f882do.post(new Cfor(m4188case));
        } else {
            m4188case.m4191for();
        }
    }

    public AbstractC0146Cj createFragmentContainer() {
        return new Cnew();
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
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
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
            AbstractC4001xq.m8671do(this).m8776if(str, printWriter);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + CertificateUtil.DELIMITER);
        this.mChildFragmentManager.m4141public(Cpublic.m7816case(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f6868do.m4180for(str);
    }

    public String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final FragmentActivity getActivity() {
        AbstractC0190Ej<?> abstractC0190Ej = this.mHost;
        if (abstractC0190Ej == null) {
            return null;
        }
        return (FragmentActivity) abstractC0190Ej.f880do;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null || (bool = cthis.f6837if) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null || (bool = cthis.f6828do) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        return cthis.f6827do;
    }

    public Animator getAnimator() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        return cthis.f6826do;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final FragmentManager getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        AbstractC0190Ej<?> abstractC0190Ej = this.mHost;
        if (abstractC0190Ej == null) {
            return null;
        }
        return abstractC0190Ej.f881do;
    }

    @Override // androidx.lifecycle.Cfor
    public AbstractC3398nc getDefaultViewModelCreationExtras() {
        return AbstractC3398nc.Cdo.f14538do;
    }

    public Cimport.Cif getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mDefaultFactory == null) {
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
            if (application == null && FragmentManager.m4115interface(3)) {
                Objects.toString(requireContext().getApplicationContext());
            }
            this.mDefaultFactory = new Csuper(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    public int getEnterAnim() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return 0;
        }
        return cthis.f6825do;
    }

    public Object getEnterTransition() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        return cthis.f6829do;
    }

    public ND getEnterTransitionCallback() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        cthis.getClass();
        return null;
    }

    public int getExitAnim() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return 0;
        }
        return cthis.f6835if;
    }

    public Object getExitTransition() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        return cthis.f6833for;
    }

    public ND getExitTransitionCallback() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        cthis.getClass();
        return null;
    }

    public View getFocusedView() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        return cthis.f6836if;
    }

    @Deprecated
    public final FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        AbstractC0190Ej<?> abstractC0190Ej = this.mHost;
        if (abstractC0190Ej == null) {
            return null;
        }
        return abstractC0190Ej.mo500else();
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // defpackage.InterfaceC2714eq
    public androidx.lifecycle.Ctry getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public AbstractC4001xq getLoaderManager() {
        return AbstractC4001xq.m8671do(this);
    }

    public int getNextTransition() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return 0;
        }
        return cthis.f6843try;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final FragmentManager getParentFragmentManager() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " not associated with a fragment manager."));
    }

    public boolean getPopDirection() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return false;
        }
        return cthis.f6831do;
    }

    public int getPopEnterAnim() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return 0;
        }
        return cthis.f6832for;
    }

    public int getPopExitAnim() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return 0;
        }
        return cthis.f6841new;
    }

    public float getPostOnViewCreatedAlpha() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return 1.0f;
        }
        return cthis.f6824do;
    }

    public Object getReenterTransition() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        Object obj = cthis.f6842new;
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
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        Object obj = cthis.f6838if;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // defpackage.InterfaceC3552qB
    public final androidx.savedstate.Cdo getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f14891do;
    }

    public Object getSharedElementEnterTransition() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        return cthis.f6844try;
    }

    public Object getSharedElementReturnTransition() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return null;
        }
        Object obj = cthis.f6823case;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        Cthis cthis = this.mAnimationInfo;
        return (cthis == null || (arrayList = cthis.f6830do) == null) ? new ArrayList<>() : arrayList;
    }

    public ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        Cthis cthis = this.mAnimationInfo;
        return (cthis == null || (arrayList = cthis.f6839if) == null) ? new ArrayList<>() : arrayList;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final Fragment getTargetFragment() {
        String str;
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return fragmentManager.m4130finally(str);
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

    public InterfaceC2714eq getViewLifecycleOwner() {
        C0431Pj c0431Pj = this.mViewLifecycleOwner;
        if (c0431Pj != null) {
            return c0431Pj;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public LiveData<InterfaceC2714eq> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // defpackage.InterfaceC2746fL
    public C2687eL getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (getMinimumMaxLifecycleState() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap<String, C2687eL> hashMap = this.mFragmentManager.f6870do.f7046new;
        C2687eL c2687eL = hashMap.get(this.mWho);
        if (c2687eL != null) {
            return c2687eL;
        }
        C2687eL c2687eL2 = new C2687eL();
        hashMap.put(this.mWho, c2687eL2);
        return c2687eL2;
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
        this.mChildFragmentManager = new C0212Fj();
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
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return false;
        }
        return cthis.f6834for;
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
            Fragment fragment = this.mParentFragment;
            if (fragment == null ? true : fragment.isMenuVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean isPostponed() {
        Cthis cthis = this.mAnimationInfo;
        if (cthis == null) {
            return false;
        }
        return cthis.f6840if;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isRemovingParent() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null && (parentFragment.isRemoving() || parentFragment.isRemovingParent());
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            return false;
        }
        return fragmentManager.f6880for || fragmentManager.f6886new;
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.m4136instanceof();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (FragmentManager.m4115interface(2)) {
            toString();
            Objects.toString(intent);
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        AbstractC0190Ej<?> abstractC0190Ej = this.mHost;
        Activity activity = abstractC0190Ej == null ? null : abstractC0190Ej.f880do;
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
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
        FragmentManager fragmentManager = this.mChildFragmentManager;
        if (fragmentManager.f6858do >= 1) {
            return;
        }
        fragmentManager.f6880for = false;
        fragmentManager.f6886new = false;
        fragmentManager.f6870do.f7047new = false;
        fragmentManager.m4137native(1);
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
        AbstractC0190Ej<?> abstractC0190Ej = this.mHost;
        Activity activity = abstractC0190Ej == null ? null : abstractC0190Ej.f880do;
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
        this.mChildFragmentManager.m4136instanceof();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        restoreViewState();
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.f6880for = false;
        fragmentManager.f6886new = false;
        fragmentManager.f6870do.f7047new = false;
        fragmentManager.m4137native(4);
    }

    public void performAttach() {
        Iterator<Ccatch> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().mo4111do();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.m4133if(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.f881do);
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onAttach()"));
        }
        Iterator<InterfaceC0234Gj> it2 = this.mFragmentManager.f6875do.iterator();
        while (it2.hasNext()) {
            it2.next().mo744do(this);
        }
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.f6880for = false;
        fragmentManager.f6886new = false;
        fragmentManager.f6870do.f7047new = false;
        fragmentManager.m4137native(0);
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.m4132goto(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.m4148this(menuItem);
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.m4136instanceof();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.mo4259do(new androidx.lifecycle.Celse() { // from class: androidx.fragment.app.Fragment.5
            @Override // androidx.lifecycle.Celse
            /* renamed from: case */
            public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
                View view;
                if (cdo != Ctry.Cdo.ON_STOP || (view = Fragment.this.mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        this.mSavedStateRegistryController.m7789if(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.m4258case(Ctry.Cdo.ON_CREATE);
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z = true;
        }
        return z | this.mChildFragmentManager.m4119break(menu, menuInflater);
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.m4136instanceof();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new C0431Pj(getViewModelStore());
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView == null) {
            if (this.mViewLifecycleOwner.f2818do != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
            return;
        }
        this.mViewLifecycleOwner.m1796new();
        View view = this.mView;
        C0431Pj c0431Pj = this.mViewLifecycleOwner;
        C0173Do.m401try(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, c0431Pj);
        View view2 = this.mView;
        C0431Pj c0431Pj2 = this.mViewLifecycleOwner;
        C0173Do.m401try(view2, "<this>");
        view2.setTag(R.id.view_tree_view_model_store_owner, c0431Pj2);
        View view3 = this.mView;
        C0431Pj c0431Pj3 = this.mViewLifecycleOwner;
        C0173Do.m401try(view3, "<this>");
        view3.setTag(R.id.view_tree_saved_state_registry_owner, c0431Pj3);
        this.mViewLifecycleOwnerLiveData.mo1685goto(this.mViewLifecycleOwner);
    }

    public void performDestroy() {
        this.mChildFragmentManager.m4121catch();
        this.mLifecycleRegistry.m4258case(Ctry.Cdo.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.m4137native(1);
        if (this.mView != null) {
            C0431Pj c0431Pj = this.mViewLifecycleOwner;
            c0431Pj.m1796new();
            if (c0431Pj.f2818do.f7121do.compareTo(Ctry.Cif.CREATED) >= 0) {
                this.mViewLifecycleOwner.m1795do(Ctry.Cdo.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        ME<C4060yq.Cdo> me = AbstractC4001xq.m8671do(this).f16834do.f16836do;
        int i = me.f2143for;
        for (int i2 = 0; i2 < i; i2++) {
            ((C4060yq.Cdo) me.f2142do[i2]).getClass();
        }
        this.mPerformedCreateView = false;
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onDetach()"));
        }
        FragmentManager fragmentManager = this.mChildFragmentManager;
        if (fragmentManager.f6888try) {
            return;
        }
        fragmentManager.m4121catch();
        this.mChildFragmentManager = new C0212Fj();
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.m4122class();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.m4123const(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.m4129final(menuItem);
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.m4145super(menu);
    }

    public void performPause() {
        this.mChildFragmentManager.m4137native(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m1795do(Ctry.Cdo.ON_PAUSE);
        }
        this.mLifecycleRegistry.m4258case(Ctry.Cdo.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.m4153while(z);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z = true;
        }
        return z | this.mChildFragmentManager.m4135import(menu);
    }

    public void performPrimaryNavigationFragmentChanged() {
        this.mFragmentManager.getClass();
        boolean m4117transient = FragmentManager.m4117transient(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != m4117transient) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(m4117transient);
            onPrimaryNavigationFragmentChanged(m4117transient);
            FragmentManager fragmentManager = this.mChildFragmentManager;
            fragmentManager.m();
            fragmentManager.m4149throw(fragmentManager.f6881if);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.m4136instanceof();
        this.mChildFragmentManager.m4146switch(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onResume()"));
        }
        androidx.lifecycle.Cgoto cgoto = this.mLifecycleRegistry;
        Ctry.Cdo cdo = Ctry.Cdo.ON_RESUME;
        cgoto.m4258case(cdo);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f2818do.m4258case(cdo);
        }
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.f6880for = false;
        fragmentManager.f6886new = false;
        fragmentManager.f6870do.f7047new = false;
        fragmentManager.m4137native(7);
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.m7788for(bundle);
        Parcelable e = this.mChildFragmentManager.e();
        if (e != null) {
            bundle.putParcelable("android:support:fragments", e);
        }
    }

    public void performStart() {
        this.mChildFragmentManager.m4136instanceof();
        this.mChildFragmentManager.m4146switch(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onStart()"));
        }
        androidx.lifecycle.Cgoto cgoto = this.mLifecycleRegistry;
        Ctry.Cdo cdo = Ctry.Cdo.ON_START;
        cgoto.m4258case(cdo);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f2818do.m4258case(cdo);
        }
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.f6880for = false;
        fragmentManager.f6886new = false;
        fragmentManager.f6870do.f7047new = false;
        fragmentManager.m4137native(5);
    }

    public void performStop() {
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.f6886new = true;
        fragmentManager.f6870do.f7047new = true;
        fragmentManager.m4137native(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.m1795do(Ctry.Cdo.ON_STOP);
        }
        this.mLifecycleRegistry.m4258case(Ctry.Cdo.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.m4137native(2);
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().f6840if = true;
    }

    public final <I, O> AbstractC0665a0<I> registerForActivityResult(W<I, O> w, V<O> v) {
        return prepareCallInternal(w, new Ctry(), v);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i) {
        if (this.mHost == null) {
            throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " not attached to Activity"));
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f6878for == null) {
            parentFragmentManager.f6860do.getClass();
            return;
        }
        parentFragmentManager.f6872do.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
        parentFragmentManager.f6878for.mo3104do(strArr);
    }

    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " not attached to a context."));
    }

    @Deprecated
    public final FragmentManager requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " not attached to a host."));
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.d(parcelable);
        FragmentManager fragmentManager = this.mChildFragmentManager;
        fragmentManager.f6880for = false;
        fragmentManager.f6886new = false;
        fragmentManager.f6870do.f7047new = false;
        fragmentManager.m4137native(1);
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            C0431Pj c0431Pj = this.mViewLifecycleOwner;
            c0431Pj.f2820do.m7789if(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new PF(Creturn.m7979for("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.m1795do(Ctry.Cdo.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().f6837if = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().f6828do = Boolean.valueOf(z);
    }

    public void setAnimatingAway(View view) {
        ensureAnimationInfo().f6827do = view;
    }

    public void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        ensureAnimationInfo().f6825do = i;
        ensureAnimationInfo().f6835if = i2;
        ensureAnimationInfo().f6832for = i3;
        ensureAnimationInfo().f6841new = i4;
    }

    public void setAnimator(Animator animator) {
        ensureAnimationInfo().f6826do = animator;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(ND nd) {
        ensureAnimationInfo().getClass();
    }

    public void setEnterTransition(Object obj) {
        ensureAnimationInfo().f6829do = obj;
    }

    public void setExitSharedElementCallback(ND nd) {
        ensureAnimationInfo().getClass();
    }

    public void setExitTransition(Object obj) {
        ensureAnimationInfo().f6833for = obj;
    }

    public void setFocusedView(View view) {
        ensureAnimationInfo().f6836if = view;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.mHost.mo499catch();
        }
    }

    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().f6834for = z;
    }

    public void setInitialSavedState(SavedState savedState) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (savedState == null || (bundle = savedState.f6811do) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                this.mHost.mo499catch();
            }
        }
    }

    public void setNextTransition(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        ensureAnimationInfo();
        this.mAnimationInfo.f6843try = i;
    }

    public void setOnStartEnterTransitionListener(Cclass cclass) {
        ensureAnimationInfo();
        Cthis cthis = this.mAnimationInfo;
        cthis.getClass();
        if (cclass == null) {
            return;
        }
        if (cthis.f6840if) {
            cthis.getClass();
        }
        if (cclass != null) {
            ((FragmentManager.Cfinal) cclass).f6896do++;
        }
    }

    public void setPopDirection(boolean z) {
        if (this.mAnimationInfo == null) {
            return;
        }
        ensureAnimationInfo().f6831do = z;
    }

    public void setPostOnViewCreatedAlpha(float f) {
        ensureAnimationInfo().f6824do = f;
    }

    public void setReenterTransition(Object obj) {
        ensureAnimationInfo().f6842new = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            fragmentManager.f6870do.m4217for(this);
        } else {
            fragmentManager.f6870do.m4219new(this);
        }
    }

    public void setReturnTransition(Object obj) {
        ensureAnimationInfo().f6838if = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        ensureAnimationInfo().f6844try = obj;
    }

    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        ensureAnimationInfo();
        Cthis cthis = this.mAnimationInfo;
        cthis.f6830do = arrayList;
        cthis.f6839if = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        ensureAnimationInfo().f6823case = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i) {
        FragmentManager fragmentManager = this.mFragmentManager;
        FragmentManager fragmentManager2 = fragment != null ? fragment.mFragmentManager : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException(Creturn.m7979for("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.getTargetFragment()) {
            if (fragment2.equals(this)) {
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

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            FragmentManager fragmentManager = this.mFragmentManager;
            Cwhile m4120case = fragmentManager.m4120case(this);
            Fragment fragment = m4120case.f7052do;
            if (fragment.mDeferStart) {
                if (fragmentManager.f6877do) {
                    fragmentManager.f6857case = true;
                } else {
                    fragment.mDeferStart = false;
                    m4120case.m4220break();
                }
            }
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 5 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        AbstractC0190Ej<?> abstractC0190Ej = this.mHost;
        if (abstractC0190Ej != null) {
            return abstractC0190Ej.mo497break(str);
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
        Intent intent2;
        if (this.mHost == null) {
            throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " not attached to Activity"));
        }
        if (FragmentManager.m4115interface(2)) {
            toString();
            Objects.toString(intentSender);
            Objects.toString(intent);
            Objects.toString(bundle);
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f6882if == null) {
            AbstractC0190Ej<?> abstractC0190Ej = parentFragmentManager.f6860do;
            if (i != -1) {
                abstractC0190Ej.getClass();
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
            Activity activity = abstractC0190Ej.f880do;
            int i5 = K.f1736do;
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (FragmentManager.m4115interface(2)) {
                bundle.toString();
                intent2.toString();
                Objects.toString(this);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        C0173Do.m401try(intentSender, "intentSender");
        IntentSenderRequest intentSenderRequest = new IntentSenderRequest(intentSender, intent2, i2, i3);
        parentFragmentManager.f6872do.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
        if (FragmentManager.m4115interface(2)) {
            toString();
        }
        parentFragmentManager.f6882if.mo3104do(intentSenderRequest);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !ensureAnimationInfo().f6840if) {
            return;
        }
        if (this.mHost == null) {
            ensureAnimationInfo().f6840if = false;
        } else if (Looper.myLooper() != this.mHost.f882do.getLooper()) {
            this.mHost.f882do.postAtFrontOfQueue(new Cif());
        } else {
            callStartTransitionListener(true);
        }
    }

    public String toString() {
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

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final Bundle f6811do;

        /* renamed from: androidx.fragment.app.Fragment$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Bundle bundle) {
            this.f6811do = bundle;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.f6811do);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.f6811do = readBundle;
            if (classLoader == null || readBundle == null) {
                return;
            }
            readBundle.setClassLoader(classLoader);
        }
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment newInstance = Cconst.m4166if(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.setArguments(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new Cbreak(defpackage.Cif.m6908case("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new Cbreak(defpackage.Cif.m6908case("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new Cbreak(defpackage.Cif.m6908case("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new Cbreak(defpackage.Cif.m6908case("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        ensureAnimationInfo().f6840if = true;
        FragmentManager fragmentManager = this.mFragmentManager;
        Handler handler = fragmentManager != null ? fragmentManager.f6860do.f882do : new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public final <I, O> AbstractC0665a0<I> registerForActivityResult(W<I, O> w, androidx.activity.result.Cdo cdo, V<O> v) {
        return prepareCallInternal(w, new Ccase(cdo), v);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        AbstractC0190Ej<?> abstractC0190Ej = this.mHost;
        if (abstractC0190Ej == null) {
            throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " not attached to Activity"));
        }
        C0466Ra.startActivity(abstractC0190Ej.f881do, intent, bundle);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException(Creturn.m7979for("Fragment ", this, " not attached to Activity"));
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f6871do == null) {
            AbstractC0190Ej<?> abstractC0190Ej = parentFragmentManager.f6860do;
            if (i == -1) {
                C0466Ra.startActivity(abstractC0190Ej.f881do, intent, bundle);
                return;
            } else {
                abstractC0190Ej.getClass();
                throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
            }
        }
        parentFragmentManager.f6872do.addLast(new FragmentManager.LaunchedFragmentInfo(this.mWho, i));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        parentFragmentManager.f6871do.mo3104do(intent);
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        AbstractC0190Ej<?> abstractC0190Ej = this.mHost;
        if (abstractC0190Ej != null) {
            LayoutInflater mo501this = abstractC0190Ej.mo501this();
            mo501this.setFactory2(this.mChildFragmentManager.f6867do);
            return mo501this;
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

    public Fragment(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private void restoreViewState() {
        if (FragmentManager.m4115interface(3)) {
            toString();
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
    }
}
