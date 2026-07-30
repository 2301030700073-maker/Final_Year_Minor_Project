package androidx.fragment.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Cstatic;
import androidx.lifecycle.Ctry;
import com.joeykrim.rootcheck.R;
import defpackage.C3385nL;
import defpackage.Creturn;
import defpackage.QK;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* renamed from: androidx.fragment.app.while, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cwhile {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Fragment f7052do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnative f7053do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Csuper f7054do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7055do = false;

    /* renamed from: do, reason: not valid java name */
    public int f7051do = -1;

    /* renamed from: androidx.fragment.app.while$do, reason: invalid class name */
    public class Cdo implements View.OnAttachStateChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f7056do;

        public Cdo(View view) {
            this.f7056do = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            View view2 = this.f7056do;
            view2.removeOnAttachStateChangeListener(this);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cfor.m1903for(view2);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    public Cwhile(Csuper csuper, Cnative cnative, Fragment fragment) {
        this.f7054do = csuper;
        this.f7053do = cnative;
        this.f7052do = fragment;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m4220break() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z = this.f7055do;
        Fragment fragment = this.f7052do;
        if (z) {
            if (FragmentManager.m4115interface(2)) {
                Objects.toString(fragment);
                return;
            }
            return;
        }
        try {
            this.f7055do = true;
            while (true) {
                int m4228for = m4228for();
                int i = fragment.mState;
                if (m4228for == i) {
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            Cstatic m4189else = Cstatic.m4189else(viewGroup, fragment.getParentFragmentManager());
                            boolean z2 = fragment.mHidden;
                            Cstatic.Cnew.Cif cif = Cstatic.Cnew.Cif.NONE;
                            if (z2) {
                                if (FragmentManager.m4115interface(2)) {
                                    m4189else.getClass();
                                    Objects.toString(fragment);
                                }
                                m4189else.m4190do(Cstatic.Cnew.Cfor.GONE, cif, this);
                            } else {
                                if (FragmentManager.m4115interface(2)) {
                                    m4189else.getClass();
                                    Objects.toString(fragment);
                                }
                                m4189else.m4190do(Cstatic.Cnew.Cfor.VISIBLE, cif, this);
                            }
                        }
                        FragmentManager fragmentManager = fragment.mFragmentManager;
                        if (fragmentManager != null && fragment.mAdded && FragmentManager.m4116protected(fragment)) {
                            fragmentManager.f6884if = true;
                        }
                        fragment.mHiddenChanged = false;
                        fragment.onHiddenChanged(fragment.mHidden);
                    }
                    return;
                }
                Csuper csuper = this.f7054do;
                if (m4228for <= i) {
                    switch (i - 1) {
                        case -1:
                            m4229goto();
                            break;
                        case 0:
                            m4221case();
                            break;
                        case 1:
                            m4226else();
                            fragment.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.m4115interface(3)) {
                                Objects.toString(fragment);
                            }
                            if (fragment.mView != null && fragment.mSavedViewState == null) {
                                m4227final();
                            }
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                Cstatic m4189else2 = Cstatic.m4189else(viewGroup3, fragment.getParentFragmentManager());
                                if (FragmentManager.m4115interface(2)) {
                                    m4189else2.getClass();
                                    Objects.toString(fragment);
                                }
                                m4189else2.m4190do(Cstatic.Cnew.Cfor.REMOVED, Cstatic.Cnew.Cif.REMOVING, this);
                            }
                            fragment.mState = 3;
                            break;
                        case 4:
                            if (FragmentManager.m4115interface(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performStop();
                            csuper.m4206class(false);
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            if (FragmentManager.m4115interface(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performPause();
                            csuper.m4204case(fragment, false);
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            m4230if();
                            break;
                        case 1:
                            m4231new();
                            break;
                        case 2:
                            m4232this();
                            m4233try();
                            break;
                        case 3:
                            if (FragmentManager.m4115interface(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performActivityCreated(fragment.mSavedFragmentState);
                            csuper.m4208do(false);
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                Cstatic m4189else3 = Cstatic.m4189else(viewGroup2, fragment.getParentFragmentManager());
                                Cstatic.Cnew.Cfor m4200case = Cstatic.Cnew.Cfor.m4200case(fragment.mView.getVisibility());
                                if (FragmentManager.m4115interface(2)) {
                                    m4189else3.getClass();
                                    Objects.toString(fragment);
                                }
                                m4189else3.m4190do(m4200case, Cstatic.Cnew.Cif.ADDING, this);
                            }
                            fragment.mState = 4;
                            break;
                        case 5:
                            if (FragmentManager.m4115interface(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performStart();
                            csuper.m4205catch(false);
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            m4223class();
                            break;
                    }
                }
            }
        } finally {
            this.f7055do = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cb  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4221case() {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Cwhile.m4221case():void");
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m4222catch(ClassLoader classLoader) {
        Fragment fragment = this.f7052do;
        Bundle bundle = fragment.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        fragment.mSavedViewRegistryState = fragment.mSavedFragmentState.getBundle("android:view_registry_state");
        fragment.mTargetWho = fragment.mSavedFragmentState.getString("android:target_state");
        if (fragment.mTargetWho != null) {
            fragment.mTargetRequestCode = fragment.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Boolean bool = fragment.mSavedUserVisibleHint;
        if (bool != null) {
            fragment.mUserVisibleHint = bool.booleanValue();
            fragment.mSavedUserVisibleHint = null;
        } else {
            fragment.mUserVisibleHint = fragment.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        if (fragment.mUserVisibleHint) {
            return;
        }
        fragment.mDeferStart = true;
    }

    /* renamed from: class, reason: not valid java name */
    public final void m4223class() {
        boolean m4115interface = FragmentManager.m4115interface(3);
        Fragment fragment = this.f7052do;
        if (m4115interface) {
            Objects.toString(fragment);
        }
        View focusedView = fragment.getFocusedView();
        if (focusedView != null) {
            boolean z = true;
            if (focusedView != fragment.mView) {
                ViewParent parent = focusedView.getParent();
                while (true) {
                    if (parent == null) {
                        z = false;
                        break;
                    } else if (parent == fragment.mView) {
                        break;
                    } else {
                        parent = parent.getParent();
                    }
                }
            }
            if (z) {
                focusedView.requestFocus();
                if (FragmentManager.m4115interface(2)) {
                    focusedView.toString();
                    Objects.toString(fragment);
                    Objects.toString(fragment.mView.findFocus());
                }
            }
        }
        fragment.setFocusedView(null);
        fragment.performResume();
        this.f7054do.m4215this(fragment, false);
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    /* renamed from: const, reason: not valid java name */
    public final Bundle m4224const() {
        Bundle bundle = new Bundle();
        Fragment fragment = this.f7052do;
        fragment.performSaveInstanceState(bundle);
        this.f7054do.m4203break(false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (fragment.mView != null) {
            m4227final();
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        if (fragment.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", fragment.mSavedViewRegistryState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4225do() {
        View view;
        View view2;
        Cnative cnative = this.f7053do;
        cnative.getClass();
        Fragment fragment = this.f7052do;
        ViewGroup viewGroup = fragment.mContainer;
        int i = -1;
        if (viewGroup != null) {
            ArrayList<Fragment> arrayList = cnative.f6978do;
            int indexOf = arrayList.indexOf(fragment);
            int i2 = indexOf - 1;
            while (true) {
                if (i2 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        Fragment fragment2 = arrayList.get(indexOf);
                        if (fragment2.mContainer == viewGroup && (view = fragment2.mView) != null) {
                            i = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    Fragment fragment3 = arrayList.get(i2);
                    if (fragment3.mContainer == viewGroup && (view2 = fragment3.mView) != null) {
                        i = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i2--;
                }
            }
        }
        fragment.mContainer.addView(fragment.mView, i);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4226else() {
        View view;
        boolean m4115interface = FragmentManager.m4115interface(3);
        Fragment fragment = this.f7052do;
        if (m4115interface) {
            Objects.toString(fragment);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        fragment.performDestroyView();
        this.f7054do.m4210final(false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.mo1685goto(null);
        fragment.mInLayout = false;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m4227final() {
        Fragment fragment = this.f7052do;
        if (fragment.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        fragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            fragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        fragment.mViewLifecycleOwner.f2820do.m7788for(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        fragment.mSavedViewRegistryState = bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [androidx.fragment.app.static$new$if] */
    /* JADX WARN: Type inference failed for: r2v17, types: [androidx.fragment.app.static$new$if] */
    /* renamed from: for, reason: not valid java name */
    public final int m4228for() {
        Fragment fragment = this.f7052do;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int i = this.f7051do;
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
            if (fragment.mInLayout) {
                i = Math.max(this.f7051do, 2);
                View view = fragment.mView;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = this.f7051do < 4 ? Math.min(i, fragment.mState) : Math.min(i, 1);
            }
        }
        if (!fragment.mAdded) {
            i = Math.min(i, 1);
        }
        ViewGroup viewGroup = fragment.mContainer;
        Cstatic.Cnew cnew = null;
        if (viewGroup != null) {
            Cstatic m4189else = Cstatic.m4189else(viewGroup, fragment.getParentFragmentManager());
            m4189else.getClass();
            Cstatic.Cnew m4193new = m4189else.m4193new(fragment);
            Cstatic.Cnew cnew2 = m4193new != null ? m4193new.f7021do : null;
            Iterator<Cstatic.Cnew> it = m4189else.f7012if.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Cstatic.Cnew next = it.next();
                if (next.f7019do.equals(fragment) && !next.f7024do) {
                    cnew = next;
                    break;
                }
            }
            cnew = (cnew == null || !(cnew2 == null || cnew2 == Cstatic.Cnew.Cif.NONE)) ? cnew2 : cnew.f7021do;
        }
        if (cnew == Cstatic.Cnew.Cif.ADDING) {
            i = Math.min(i, 6);
        } else if (cnew == Cstatic.Cnew.Cif.REMOVING) {
            i = Math.max(i, 3);
        } else if (fragment.mRemoving) {
            i = fragment.isInBackStack() ? Math.min(i, 1) : Math.min(i, -1);
        }
        if (fragment.mDeferStart && fragment.mState < 5) {
            i = Math.min(i, 4);
        }
        if (FragmentManager.m4115interface(2)) {
            Objects.toString(fragment);
        }
        return i;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4229goto() {
        boolean m4115interface = FragmentManager.m4115interface(3);
        Fragment fragment = this.f7052do;
        if (m4115interface) {
            Objects.toString(fragment);
        }
        fragment.performDetach();
        boolean z = false;
        this.f7054do.m4216try(false);
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        boolean z2 = true;
        if (fragment.mRemoving && !fragment.isInBackStack()) {
            z = true;
        }
        if (!z) {
            Cthrow cthrow = this.f7053do.f6977do;
            if (cthrow.f7044if.containsKey(fragment.mWho) && cthrow.f7045if) {
                z2 = cthrow.f7043for;
            }
            if (!z2) {
                return;
            }
        }
        if (FragmentManager.m4115interface(3)) {
            Objects.toString(fragment);
        }
        fragment.initState();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4230if() {
        boolean m4115interface = FragmentManager.m4115interface(3);
        Fragment fragment = this.f7052do;
        if (m4115interface) {
            Objects.toString(fragment);
        }
        Fragment fragment2 = fragment.mTarget;
        Cwhile cwhile = null;
        Cnative cnative = this.f7053do;
        if (fragment2 != null) {
            Cwhile cwhile2 = cnative.f6979do.get(fragment2.mWho);
            if (cwhile2 == null) {
                throw new IllegalStateException("Fragment " + fragment + " declared target fragment " + fragment.mTarget + " that does not belong to this FragmentManager!");
            }
            fragment.mTargetWho = fragment.mTarget.mWho;
            fragment.mTarget = null;
            cwhile = cwhile2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (cwhile = cnative.f6979do.get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(fragment);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(Creturn.m7984try(sb, fragment.mTargetWho, " that does not belong to this FragmentManager!"));
            }
        }
        if (cwhile != null) {
            cwhile.m4220break();
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        fragment.mHost = fragmentManager.f6860do;
        fragment.mParentFragment = fragmentManager.f6862do;
        Csuper csuper = this.f7054do;
        csuper.m4209else(false);
        fragment.performAttach();
        csuper.m4213if(false);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4231new() {
        boolean m4115interface = FragmentManager.m4115interface(3);
        Fragment fragment = this.f7052do;
        if (m4115interface) {
            Objects.toString(fragment);
        }
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            fragment.mState = 1;
        } else {
            Csuper csuper = this.f7054do;
            csuper.m4212goto(false);
            fragment.performCreate(fragment.mSavedFragmentState);
            csuper.m4211for(false);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4232this() {
        Fragment fragment = this.f7052do;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.m4115interface(3)) {
                Objects.toString(fragment);
            }
            fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
            View view = fragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
                if (fragment.mHidden) {
                    fragment.mView.setVisibility(8);
                }
                fragment.performViewCreated();
                this.f7054do.m4207const(false);
                fragment.mState = 2;
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4233try() {
        String str;
        Fragment fragment = this.f7052do;
        if (fragment.mFromLayout) {
            return;
        }
        if (FragmentManager.m4115interface(3)) {
            Objects.toString(fragment);
        }
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            int i = fragment.mContainerId;
            if (i == 0) {
                viewGroup = null;
            } else {
                if (i == -1) {
                    throw new IllegalArgumentException(Creturn.m7979for("Cannot create fragment ", fragment, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) fragment.mFragmentManager.f6859do.mo286new(i);
                if (viewGroup == null && !fragment.mRestored) {
                    try {
                        str = fragment.getResources().getResourceName(fragment.mContainerId);
                    } catch (Resources.NotFoundException unused) {
                        str = "unknown";
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + str + ") for fragment " + fragment);
                }
            }
        }
        fragment.mContainer = viewGroup;
        fragment.performCreateView(performGetLayoutInflater, viewGroup, fragment.mSavedFragmentState);
        View view = fragment.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
            if (viewGroup != null) {
                m4225do();
            }
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            View view2 = fragment.mView;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (view2.isAttachedToWindow()) {
                QK.Cfor.m1903for(fragment.mView);
            } else {
                View view3 = fragment.mView;
                view3.addOnAttachStateChangeListener(new Cdo(view3));
            }
            fragment.performViewCreated();
            this.f7054do.m4207const(false);
            int visibility = fragment.mView.getVisibility();
            fragment.setPostOnViewCreatedAlpha(fragment.mView.getAlpha());
            if (fragment.mContainer != null && visibility == 0) {
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.m4115interface(2)) {
                        findFocus.toString();
                        Objects.toString(fragment);
                    }
                }
                fragment.mView.setAlpha(0.0f);
            }
        }
        fragment.mState = 2;
    }

    public Cwhile(Csuper csuper, Cnative cnative, ClassLoader classLoader, Cconst cconst, FragmentState fragmentState) {
        this.f7054do = csuper;
        this.f7053do = cnative;
        Fragment instantiate = Fragment.instantiate(FragmentManager.this.f6860do.f881do, fragmentState.f6910break, null);
        this.f7052do = instantiate;
        Bundle bundle = fragmentState.f6913do;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        instantiate.setArguments(bundle);
        instantiate.mWho = fragmentState.f6911catch;
        instantiate.mFromLayout = fragmentState.f6914do;
        instantiate.mRestored = true;
        instantiate.mFragmentId = fragmentState.f6915for;
        instantiate.mContainerId = fragmentState.f6919new;
        instantiate.mTag = fragmentState.f6912class;
        instantiate.mRetainInstance = fragmentState.f6918if;
        instantiate.mRemoving = fragmentState.f6916for;
        instantiate.mDetached = fragmentState.f6920new;
        instantiate.mHidden = fragmentState.f6922try;
        instantiate.mMaxState = Ctry.Cif.values()[fragmentState.f6921try];
        Bundle bundle2 = fragmentState.f6917if;
        if (bundle2 != null) {
            instantiate.mSavedFragmentState = bundle2;
        } else {
            instantiate.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.m4115interface(2)) {
            Objects.toString(instantiate);
        }
    }

    public Cwhile(Csuper csuper, Cnative cnative, Fragment fragment, FragmentState fragmentState) {
        this.f7054do = csuper;
        this.f7053do = cnative;
        this.f7052do = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = fragmentState.f6917if;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }
}
