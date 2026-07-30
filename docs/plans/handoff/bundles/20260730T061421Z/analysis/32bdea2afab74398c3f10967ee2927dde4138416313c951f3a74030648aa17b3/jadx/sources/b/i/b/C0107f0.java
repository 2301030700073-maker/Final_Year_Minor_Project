package b.i.b;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentState;
import androidx.fragment.app.SpecialEffectsController$Operation$Type;
import androidx.lifecycle.Lifecycle$State;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* renamed from: b.i.b.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0107f0 {

    /* renamed from: a, reason: collision with root package name */
    public final G f893a;

    /* renamed from: b, reason: collision with root package name */
    public final C0109g0 f894b;

    /* renamed from: c, reason: collision with root package name */
    public final r f895c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f896d = false;
    public int e = -1;
    public b.e.f.b f;
    public b.e.f.b g;
    public b.e.f.b h;

    public C0107f0(G g, C0109g0 c0109g0, r rVar) {
        this.f893a = g;
        this.f894b = c0109g0;
        this.f895c = rVar;
    }

    public void a() {
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("moveto ACTIVITY_CREATED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        r rVar = this.f895c;
        rVar.performActivityCreated(rVar.mSavedFragmentState);
        G g = this.f893a;
        r rVar2 = this.f895c;
        g.a(rVar2, rVar2.mSavedFragmentState, false);
    }

    public void b() {
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("moveto ATTACHED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        r rVar = this.f895c;
        r rVar2 = rVar.mTarget;
        C0107f0 c0107f0 = null;
        if (rVar2 != null) {
            C0107f0 h = this.f894b.h(rVar2.mWho);
            if (h == null) {
                StringBuilder f2 = c.a.c.a.a.f("Fragment ");
                f2.append(this.f895c);
                f2.append(" declared target fragment ");
                f2.append(this.f895c.mTarget);
                f2.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(f2.toString());
            }
            r rVar3 = this.f895c;
            rVar3.mTargetWho = rVar3.mTarget.mWho;
            rVar3.mTarget = null;
            c0107f0 = h;
        } else {
            String str = rVar.mTargetWho;
            if (str != null && (c0107f0 = this.f894b.h(str)) == null) {
                StringBuilder f3 = c.a.c.a.a.f("Fragment ");
                f3.append(this.f895c);
                f3.append(" declared target fragment ");
                f3.append(this.f895c.mTargetWho);
                f3.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(f3.toString());
            }
        }
        if (c0107f0 != null && c0107f0.f895c.mState < 1) {
            c0107f0.j();
        }
        r rVar4 = this.f895c;
        X x = rVar4.mFragmentManager;
        rVar4.mHost = x.q;
        rVar4.mParentFragment = x.s;
        this.f893a.g(rVar4, false);
        this.f895c.performAttach();
        this.f893a.b(this.f895c, false);
    }

    public int c() {
        r rVar = this.f895c;
        if (rVar.mFragmentManager == null) {
            return rVar.mState;
        }
        int i = this.e;
        if (rVar.mFromLayout) {
            i = rVar.mInLayout ? Math.max(i, 2) : i < 4 ? Math.min(i, rVar.mState) : Math.min(i, 1);
        }
        if (!this.f895c.mAdded) {
            i = Math.min(i, 1);
        }
        r rVar2 = this.f895c;
        if (rVar2.mRemoving) {
            i = rVar2.isInBackStack() ? Math.min(i, 1) : Math.min(i, -1);
        }
        r rVar3 = this.f895c;
        if (rVar3.mDeferStart && rVar3.mState < 5) {
            i = Math.min(i, 4);
        }
        int ordinal = this.f895c.mMaxState.ordinal();
        return ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? Math.min(i, -1) : i : Math.min(i, 5) : Math.min(i, 1);
    }

    public void d() {
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("moveto CREATED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        r rVar = this.f895c;
        if (rVar.mIsCreated) {
            rVar.restoreChildFragmentState(rVar.mSavedFragmentState);
            this.f895c.mState = 1;
            return;
        }
        this.f893a.h(rVar, rVar.mSavedFragmentState, false);
        r rVar2 = this.f895c;
        rVar2.performCreate(rVar2.mSavedFragmentState);
        G g = this.f893a;
        r rVar3 = this.f895c;
        g.c(rVar3, rVar3.mSavedFragmentState, false);
    }

    public void e() {
        String str;
        View view;
        View view2;
        if (this.f895c.mFromLayout) {
            return;
        }
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("moveto CREATE_VIEW: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        r rVar = this.f895c;
        LayoutInflater performGetLayoutInflater = rVar.performGetLayoutInflater(rVar.mSavedFragmentState);
        ViewGroup viewGroup = null;
        r rVar2 = this.f895c;
        ViewGroup viewGroup2 = rVar2.mContainer;
        int i = -1;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i2 = rVar2.mContainerId;
            if (i2 != 0) {
                if (i2 == -1) {
                    StringBuilder f2 = c.a.c.a.a.f("Cannot create fragment ");
                    f2.append(this.f895c);
                    f2.append(" for a container view with no id");
                    throw new IllegalArgumentException(f2.toString());
                }
                viewGroup = (ViewGroup) rVar2.mFragmentManager.r.b(i2);
                if (viewGroup == null) {
                    r rVar3 = this.f895c;
                    if (!rVar3.mRestored) {
                        try {
                            str = rVar3.getResources().getResourceName(this.f895c.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            str = "unknown";
                        }
                        StringBuilder f3 = c.a.c.a.a.f("No view found for id 0x");
                        f3.append(Integer.toHexString(this.f895c.mContainerId));
                        f3.append(" (");
                        f3.append(str);
                        f3.append(") for fragment ");
                        f3.append(this.f895c);
                        throw new IllegalArgumentException(f3.toString());
                    }
                }
            }
        }
        r rVar4 = this.f895c;
        rVar4.mContainer = viewGroup;
        rVar4.performCreateView(performGetLayoutInflater, viewGroup, rVar4.mSavedFragmentState);
        View view3 = this.f895c.mView;
        if (view3 != null) {
            boolean z = false;
            view3.setSaveFromParentEnabled(false);
            r rVar5 = this.f895c;
            rVar5.mView.setTag(R.id.fragment_container_view_tag, rVar5);
            if (viewGroup != null) {
                C0109g0 c0109g0 = this.f894b;
                r rVar6 = this.f895c;
                Objects.requireNonNull(c0109g0);
                ViewGroup viewGroup3 = rVar6.mContainer;
                if (viewGroup3 != null) {
                    int indexOf = c0109g0.f898a.indexOf(rVar6);
                    int i3 = indexOf - 1;
                    while (true) {
                        if (i3 < 0) {
                            while (true) {
                                indexOf++;
                                if (indexOf >= c0109g0.f898a.size()) {
                                    break;
                                }
                                r rVar7 = (r) c0109g0.f898a.get(indexOf);
                                if (rVar7.mContainer == viewGroup3 && (view = rVar7.mView) != null) {
                                    i = viewGroup3.indexOfChild(view);
                                    break;
                                }
                            }
                        } else {
                            r rVar8 = (r) c0109g0.f898a.get(i3);
                            if (rVar8.mContainer == viewGroup3 && (view2 = rVar8.mView) != null) {
                                i = viewGroup3.indexOfChild(view2) + 1;
                                break;
                            }
                            i3--;
                        }
                    }
                }
                viewGroup.addView(this.f895c.mView, i);
            }
            r rVar9 = this.f895c;
            if (rVar9.mHidden) {
                rVar9.mView.setVisibility(8);
            }
            if (b.e.i.q.s(this.f895c.mView)) {
                this.f895c.mView.requestApplyInsets();
            } else {
                View view4 = this.f895c.mView;
                view4.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0105e0(this, view4));
            }
            this.f895c.performViewCreated();
            G g = this.f893a;
            r rVar10 = this.f895c;
            g.m(rVar10, rVar10.mView, rVar10.mSavedFragmentState, false);
            r rVar11 = this.f895c;
            if (rVar11.mView.getVisibility() == 0 && this.f895c.mContainer != null) {
                z = true;
            }
            rVar11.mIsNewlyAdded = z;
        }
        this.f895c.mState = 2;
    }

    public void f() {
        r d2;
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("movefrom CREATED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        r rVar = this.f895c;
        boolean z = true;
        boolean z2 = rVar.mRemoving && !rVar.isInBackStack();
        if (!(z2 || this.f894b.f900c.e(this.f895c))) {
            String str = this.f895c.mTargetWho;
            if (str != null && (d2 = this.f894b.d(str)) != null && d2.mRetainInstance) {
                this.f895c.mTarget = d2;
            }
            this.f895c.mState = 0;
            return;
        }
        D d3 = this.f895c.mHost;
        if (d3 instanceof b.j.I) {
            z = this.f894b.f900c.g;
        } else {
            Context context = d3.f837b;
            if (context instanceof Activity) {
                z = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z2 || z) {
            C0099b0 c0099b0 = this.f894b.f900c;
            r rVar2 = this.f895c;
            Objects.requireNonNull(c0099b0);
            if (X.M(3)) {
                Log.d("FragmentManager", "Clearing non-config state for " + rVar2);
            }
            C0099b0 c0099b02 = (C0099b0) c0099b0.f888d.get(rVar2.mWho);
            if (c0099b02 != null) {
                c0099b02.a();
                c0099b0.f888d.remove(rVar2.mWho);
            }
            b.j.H h = (b.j.H) c0099b0.e.get(rVar2.mWho);
            if (h != null) {
                h.a();
                c0099b0.e.remove(rVar2.mWho);
            }
        }
        this.f895c.performDestroy();
        this.f893a.d(this.f895c, false);
        Iterator it = ((ArrayList) this.f894b.f()).iterator();
        while (it.hasNext()) {
            C0107f0 c0107f0 = (C0107f0) it.next();
            if (c0107f0 != null) {
                r rVar3 = c0107f0.f895c;
                if (this.f895c.mWho.equals(rVar3.mTargetWho)) {
                    rVar3.mTarget = this.f895c;
                    rVar3.mTargetWho = null;
                }
            }
        }
        r rVar4 = this.f895c;
        String str2 = rVar4.mTargetWho;
        if (str2 != null) {
            rVar4.mTarget = this.f894b.d(str2);
        }
        this.f894b.k(this);
    }

    public void g() {
        this.f895c.performDestroyView();
        this.f893a.n(this.f895c, false);
        r rVar = this.f895c;
        rVar.mContainer = null;
        rVar.mView = null;
        rVar.mViewLifecycleOwner = null;
        rVar.mViewLifecycleOwnerLiveData.g(null);
        this.f895c.mInLayout = false;
    }

    public void h() {
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("movefrom ATTACHED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        this.f895c.performDetach();
        boolean z = false;
        this.f893a.e(this.f895c, false);
        r rVar = this.f895c;
        rVar.mState = -1;
        rVar.mHost = null;
        rVar.mParentFragment = null;
        rVar.mFragmentManager = null;
        if (rVar.mRemoving && !rVar.isInBackStack()) {
            z = true;
        }
        if (z || this.f894b.f900c.e(this.f895c)) {
            if (X.M(3)) {
                StringBuilder f2 = c.a.c.a.a.f("initState called for fragment: ");
                f2.append(this.f895c);
                Log.d("FragmentManager", f2.toString());
            }
            this.f895c.initState();
        }
    }

    public void i() {
        r rVar = this.f895c;
        if (rVar.mFromLayout && rVar.mInLayout && !rVar.mPerformedCreateView) {
            if (X.M(3)) {
                StringBuilder f = c.a.c.a.a.f("moveto CREATE_VIEW: ");
                f.append(this.f895c);
                Log.d("FragmentManager", f.toString());
            }
            r rVar2 = this.f895c;
            rVar2.performCreateView(rVar2.performGetLayoutInflater(rVar2.mSavedFragmentState), null, this.f895c.mSavedFragmentState);
            View view = this.f895c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                r rVar3 = this.f895c;
                rVar3.mView.setTag(R.id.fragment_container_view_tag, rVar3);
                r rVar4 = this.f895c;
                if (rVar4.mHidden) {
                    rVar4.mView.setVisibility(8);
                }
                this.f895c.performViewCreated();
                G g = this.f893a;
                r rVar5 = this.f895c;
                g.m(rVar5, rVar5.mView, rVar5.mSavedFragmentState, false);
                this.f895c.mState = 2;
            }
        }
    }

    public void j() {
        if (this.f896d) {
            if (X.M(2)) {
                StringBuilder f = c.a.c.a.a.f("Ignoring re-entrant call to moveToExpectedState() for ");
                f.append(this.f895c);
                Log.v("FragmentManager", f.toString());
                return;
            }
            return;
        }
        try {
            this.f896d = true;
            while (true) {
                int c2 = c();
                if (c2 != this.f895c.mState) {
                    if (c2 <= this.f895c.mState) {
                        int i = this.f895c.mState - 1;
                        if (this.f != null) {
                            this.f.a();
                        }
                        switch (i) {
                            case -1:
                                h();
                                break;
                            case 0:
                                f();
                                break;
                            case 1:
                                this.f895c.mState = 1;
                                break;
                            case 2:
                                g();
                                this.f895c.mState = 2;
                                break;
                            case 3:
                                if (X.M(3)) {
                                    Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f895c);
                                }
                                if (this.f895c.mView != null && this.f895c.mSavedViewState == null) {
                                    n();
                                }
                                if (this.f895c.mView != null && this.f895c.mContainer != null && this.e > -1) {
                                    J0 c3 = J0.c(this.f895c.mContainer, this.f895c.getParentFragmentManager());
                                    if (this.g != null) {
                                        this.g.a();
                                    }
                                    b.e.f.b bVar = new b.e.f.b();
                                    this.h = bVar;
                                    c3.a(SpecialEffectsController$Operation$Type.REMOVE, this, bVar);
                                }
                                this.f895c.mState = 3;
                                break;
                            case 4:
                                p();
                                break;
                            case 5:
                                this.f895c.mState = 5;
                                break;
                            case 6:
                                k();
                                break;
                        }
                    } else {
                        int i2 = this.f895c.mState + 1;
                        if (this.h != null) {
                            this.h.a();
                        }
                        switch (i2) {
                            case 0:
                                b();
                                break;
                            case 1:
                                d();
                                break;
                            case 2:
                                i();
                                e();
                                break;
                            case 3:
                                a();
                                break;
                            case 4:
                                if (this.f895c.mView != null && this.f895c.mContainer != null) {
                                    J0 c4 = J0.c(this.f895c.mContainer, this.f895c.getParentFragmentManager());
                                    if (this.g != null) {
                                        this.g.a();
                                    }
                                    b.e.f.b bVar2 = new b.e.f.b();
                                    this.f = bVar2;
                                    c4.a(SpecialEffectsController$Operation$Type.ADD, this, bVar2);
                                }
                                this.f895c.mState = 4;
                                break;
                            case 5:
                                o();
                                break;
                            case 6:
                                this.f895c.mState = 6;
                                break;
                            case 7:
                                m();
                                break;
                        }
                    }
                } else {
                    return;
                }
            }
        } finally {
            this.f896d = false;
        }
    }

    public void k() {
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("movefrom RESUMED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        this.f895c.performPause();
        this.f893a.f(this.f895c, false);
    }

    public void l(ClassLoader classLoader) {
        Bundle bundle = this.f895c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        r rVar = this.f895c;
        rVar.mSavedViewState = rVar.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        r rVar2 = this.f895c;
        rVar2.mSavedViewRegistryState = rVar2.mSavedFragmentState.getBundle("android:view_registry_state");
        r rVar3 = this.f895c;
        rVar3.mTargetWho = rVar3.mSavedFragmentState.getString("android:target_state");
        r rVar4 = this.f895c;
        if (rVar4.mTargetWho != null) {
            rVar4.mTargetRequestCode = rVar4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        r rVar5 = this.f895c;
        Boolean bool = rVar5.mSavedUserVisibleHint;
        if (bool != null) {
            rVar5.mUserVisibleHint = bool.booleanValue();
            this.f895c.mSavedUserVisibleHint = null;
        } else {
            rVar5.mUserVisibleHint = rVar5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        r rVar6 = this.f895c;
        if (rVar6.mUserVisibleHint) {
            return;
        }
        rVar6.mDeferStart = true;
    }

    public void m() {
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("moveto RESUMED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        this.f895c.performResume();
        this.f893a.i(this.f895c, false);
        r rVar = this.f895c;
        rVar.mSavedFragmentState = null;
        rVar.mSavedViewState = null;
        rVar.mSavedViewRegistryState = null;
    }

    public void n() {
        if (this.f895c.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f895c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f895c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f895c.mViewLifecycleOwner.f833b.b(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f895c.mSavedViewRegistryState = bundle;
    }

    public void o() {
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("moveto STARTED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        this.f895c.performStart();
        this.f893a.k(this.f895c, false);
    }

    public void p() {
        if (X.M(3)) {
            StringBuilder f = c.a.c.a.a.f("movefrom STARTED: ");
            f.append(this.f895c);
            Log.d("FragmentManager", f.toString());
        }
        this.f895c.performStop();
        this.f893a.l(this.f895c, false);
    }

    public C0107f0(G g, C0109g0 c0109g0, ClassLoader classLoader, L l, FragmentState fragmentState) {
        this.f893a = g;
        this.f894b = c0109g0;
        this.f895c = l.a(fragmentState.f113a);
        Bundle bundle = fragmentState.j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        this.f895c.setArguments(fragmentState.j);
        r rVar = this.f895c;
        rVar.mWho = fragmentState.f114b;
        rVar.mFromLayout = fragmentState.f115c;
        rVar.mRestored = true;
        rVar.mFragmentId = fragmentState.f116d;
        rVar.mContainerId = fragmentState.e;
        rVar.mTag = fragmentState.f;
        rVar.mRetainInstance = fragmentState.g;
        rVar.mRemoving = fragmentState.h;
        rVar.mDetached = fragmentState.i;
        rVar.mHidden = fragmentState.k;
        rVar.mMaxState = Lifecycle$State.values()[fragmentState.l];
        Bundle bundle2 = fragmentState.m;
        if (bundle2 != null) {
            this.f895c.mSavedFragmentState = bundle2;
        } else {
            this.f895c.mSavedFragmentState = new Bundle();
        }
        if (X.M(2)) {
            StringBuilder f = c.a.c.a.a.f("Instantiated fragment ");
            f.append(this.f895c);
            Log.v("FragmentManager", f.toString());
        }
    }

    public C0107f0(G g, C0109g0 c0109g0, r rVar, FragmentState fragmentState) {
        this.f893a = g;
        this.f894b = c0109g0;
        this.f895c = rVar;
        rVar.mSavedViewState = null;
        rVar.mSavedViewRegistryState = null;
        rVar.mBackStackNesting = 0;
        rVar.mInLayout = false;
        rVar.mAdded = false;
        r rVar2 = rVar.mTarget;
        rVar.mTargetWho = rVar2 != null ? rVar2.mWho : null;
        r rVar3 = this.f895c;
        rVar3.mTarget = null;
        Bundle bundle = fragmentState.m;
        if (bundle != null) {
            rVar3.mSavedFragmentState = bundle;
        } else {
            rVar3.mSavedFragmentState = new Bundle();
        }
    }
}
