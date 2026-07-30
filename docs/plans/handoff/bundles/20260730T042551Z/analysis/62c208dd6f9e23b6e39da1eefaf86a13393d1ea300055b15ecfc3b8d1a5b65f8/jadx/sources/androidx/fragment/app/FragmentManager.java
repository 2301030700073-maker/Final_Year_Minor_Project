package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.fragment.app.Cpublic;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Cimport;
import androidx.lifecycle.Ctry;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0146Cj;
import defpackage.AbstractC0158Cv;
import defpackage.AbstractC0190Ej;
import defpackage.C0173Do;
import defpackage.C0592Wq;
import defpackage.C0784c0;
import defpackage.C3206kJ;
import defpackage.C4122zt;
import defpackage.Creturn;
import defpackage.InterfaceC0234Gj;
import defpackage.InterfaceC0355Lv;
import defpackage.InterfaceC0768bk;
import defpackage.InterfaceC2608d0;
import defpackage.InterfaceC2714eq;
import defpackage.InterfaceC2746fL;
import defpackage.NE;
import defpackage.S6;
import defpackage.V;
import defpackage.W;
import defpackage.X;
import defpackage.Y;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class FragmentManager {

    /* renamed from: case, reason: not valid java name */
    public ArrayList<Fragment> f6856case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f6857case;

    /* renamed from: do, reason: not valid java name */
    public int f6858do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC0146Cj f6859do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC0190Ej<?> f6860do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnBackPressedDispatcher f6861do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Fragment f6862do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f6863do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Celse f6864do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f6866do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Csuper f6869do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cthrow f6870do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0784c0 f6871do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayDeque<LaunchedFragmentInfo> f6872do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArrayList<InterfaceC0234Gj> f6875do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6877do;

    /* renamed from: for, reason: not valid java name */
    public C0784c0 f6878for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ArrayList<Fragment> f6879for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f6880for;

    /* renamed from: if, reason: not valid java name */
    public Fragment f6881if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C0784c0 f6882if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ArrayList<androidx.fragment.app.Cdo> f6883if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6884if;

    /* renamed from: new, reason: not valid java name */
    public ArrayList<androidx.fragment.app.Cdo> f6885new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f6886new;

    /* renamed from: try, reason: not valid java name */
    public ArrayList<Boolean> f6887try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f6888try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cclass> f6873do = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnative f6868do = new Cnative();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.fragment.app.Cfinal f6867do = new androidx.fragment.app.Cfinal(this);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f6865do = new Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f6876do = new AtomicInteger();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, Bundle> f6874do = DesugarCollections.synchronizedMap(new HashMap());

    /* renamed from: androidx.fragment.app.FragmentManager$6, reason: invalid class name */
    class AnonymousClass6 implements androidx.lifecycle.Celse {
        @Override // androidx.lifecycle.Celse
        /* renamed from: case */
        public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
            if (cdo == Ctry.Cdo.ON_START) {
                throw null;
            }
            if (cdo == Ctry.Cdo.ON_DESTROY) {
                throw null;
            }
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$break, reason: invalid class name */
    public static class Cbreak extends W<IntentSenderRequest, ActivityResult> {
        @Override // defpackage.W
        public final Intent createIntent(Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            IntentSenderRequest intentSenderRequest2 = intentSenderRequest;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intent2 = intentSenderRequest2.f5153do;
            if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    IntentSender intentSender = intentSenderRequest2.f5154do;
                    C0173Do.m401try(intentSender, "intentSender");
                    intentSenderRequest2 = new IntentSenderRequest(intentSender, null, intentSenderRequest2.f5155for, intentSenderRequest2.f5156new);
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest2);
            if (FragmentManager.m4115interface(2)) {
                intent.toString();
            }
            return intent;
        }

        @Override // defpackage.W
        public final ActivityResult parseResult(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$case, reason: invalid class name */
    public class Ccase implements NE {
    }

    /* renamed from: androidx.fragment.app.FragmentManager$catch, reason: invalid class name */
    public static abstract class Ccatch {
        /* renamed from: do */
        public void mo962do(Fragment fragment) {
        }

        /* renamed from: if */
        public void mo963if(Fragment fragment) {
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$class, reason: invalid class name */
    public interface Cclass {
        /* renamed from: do, reason: not valid java name */
        boolean mo4154do(ArrayList<androidx.fragment.app.Cdo> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: androidx.fragment.app.FragmentManager$const, reason: invalid class name */
    public class Cconst implements Cclass {

        /* renamed from: do, reason: not valid java name */
        public final int f6891do;

        /* renamed from: if, reason: not valid java name */
        public final int f6893if = 1;

        public Cconst(int i) {
            this.f6891do = i;
        }

        @Override // androidx.fragment.app.FragmentManager.Cclass
        /* renamed from: do */
        public final boolean mo4154do(ArrayList<androidx.fragment.app.Cdo> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.f6881if;
            if (fragment == null || this.f6891do >= 0 || !fragment.getChildFragmentManager().m4147synchronized()) {
                return FragmentManager.this.a(arrayList, arrayList2, null, this.f6891do, this.f6893if);
            }
            return false;
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$do, reason: invalid class name */
    public class Cdo implements V<ActivityResult> {
        public Cdo() {
        }

        @Override // defpackage.V
        /* renamed from: do */
        public final void mo2492do(ActivityResult activityResult) {
            Fragment m4180for;
            ActivityResult activityResult2 = activityResult;
            FragmentManager fragmentManager = FragmentManager.this;
            LaunchedFragmentInfo pollFirst = fragmentManager.f6872do.pollFirst();
            if (pollFirst == null || (m4180for = fragmentManager.f6868do.m4180for(pollFirst.f6889break)) == null) {
                return;
            }
            m4180for.onActivityResult(pollFirst.f6890for, activityResult2.f5148for, activityResult2.f5147do);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$else, reason: invalid class name */
    public class Celse implements Runnable {
        public Celse() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            FragmentManager.this.m4146switch(true);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$final, reason: invalid class name */
    public static class Cfinal implements Fragment.Cclass {

        /* renamed from: do, reason: not valid java name */
        public int f6896do;
    }

    /* renamed from: androidx.fragment.app.FragmentManager$for, reason: invalid class name */
    public class Cfor extends AbstractC0158Cv {
        public Cfor() {
        }

        @Override // defpackage.AbstractC0158Cv
        /* renamed from: do */
        public final void mo316do() {
            FragmentManager fragmentManager = FragmentManager.this;
            fragmentManager.m4146switch(true);
            if (((AbstractC0158Cv) fragmentManager.f6865do).f450do) {
                fragmentManager.m4147synchronized();
            } else {
                fragmentManager.f6861do.m3198if();
            }
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$goto, reason: invalid class name */
    public class Cgoto implements InterfaceC0234Gj {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Fragment f6898do;

        public Cgoto(Fragment fragment) {
            this.f6898do = fragment;
        }

        @Override // defpackage.InterfaceC0234Gj
        /* renamed from: do */
        public final void mo744do(Fragment fragment) {
            this.f6898do.onAttachFragment(fragment);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$if, reason: invalid class name */
    public class Cif implements V<Map<String, Boolean>> {
        public Cif() {
        }

        @Override // defpackage.V
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: do */
        public final void mo2492do(Map<String, Boolean> map) {
            Fragment m4180for;
            Map<String, Boolean> map2 = map;
            String[] strArr = (String[]) map2.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map2.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            FragmentManager fragmentManager = FragmentManager.this;
            LaunchedFragmentInfo pollFirst = fragmentManager.f6872do.pollFirst();
            if (pollFirst == null || (m4180for = fragmentManager.f6868do.m4180for(pollFirst.f6889break)) == null) {
                return;
            }
            m4180for.onRequestPermissionsResult(pollFirst.f6890for, strArr, iArr);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$new, reason: invalid class name */
    public class Cnew {
        public Cnew(FragmentManager fragmentManager) {
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$this, reason: invalid class name */
    public class Cthis implements V<ActivityResult> {
        public Cthis() {
        }

        @Override // defpackage.V
        /* renamed from: do */
        public final void mo2492do(ActivityResult activityResult) {
            Fragment m4180for;
            ActivityResult activityResult2 = activityResult;
            FragmentManager fragmentManager = FragmentManager.this;
            LaunchedFragmentInfo pollFirst = fragmentManager.f6872do.pollFirst();
            if (pollFirst == null || (m4180for = fragmentManager.f6868do.m4180for(pollFirst.f6889break)) == null) {
                return;
            }
            m4180for.onActivityResult(pollFirst.f6890for, activityResult2.f5148for, activityResult2.f5147do);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$try, reason: invalid class name */
    public class Ctry extends androidx.fragment.app.Cconst {
        public Ctry() {
        }
    }

    public FragmentManager() {
        DesugarCollections.synchronizedMap(new HashMap());
        DesugarCollections.synchronizedMap(new HashMap());
        new Cnew(this);
        this.f6869do = new Csuper(this);
        this.f6875do = new CopyOnWriteArrayList<>();
        this.f6858do = -1;
        this.f6866do = new Ctry();
        this.f6863do = new Ccase();
        this.f6872do = new ArrayDeque<>();
        this.f6864do = new Celse();
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m4115interface(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m4116protected(Fragment fragment) {
        boolean z;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            return true;
        }
        Iterator it = fragment.mChildFragmentManager.f6868do.m4184try().iterator();
        boolean z2 = false;
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Fragment fragment2 = (Fragment) it.next();
            if (fragment2 != null) {
                z2 = m4116protected(fragment2);
            }
            if (z2) {
                z = true;
                break;
            }
        }
        return z;
    }

    /* renamed from: transient, reason: not valid java name */
    public static boolean m4117transient(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.f6881if) && m4117transient(fragmentManager.f6862do);
    }

    public final boolean a(ArrayList<androidx.fragment.app.Cdo> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<androidx.fragment.app.Cdo> arrayList3 = this.f6883if;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f6883if.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str != null || i >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    androidx.fragment.app.Cdo cdo = this.f6883if.get(size2);
                    if ((str != null && str.equals(((Cpublic) cdo).f6987do)) || (i >= 0 && i == cdo.f6954goto)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        androidx.fragment.app.Cdo cdo2 = this.f6883if.get(size2);
                        if (str == null || !str.equals(((Cpublic) cdo2).f6987do)) {
                            if (i < 0 || i != cdo2.f6954goto) {
                                break;
                            }
                        }
                    }
                }
                i3 = size2;
            } else {
                i3 = -1;
            }
            if (i3 == this.f6883if.size() - 1) {
                return false;
            }
            for (int size3 = this.f6883if.size() - 1; size3 > i3; size3--) {
                arrayList.add(this.f6883if.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m4118abstract() {
        Iterator it = m4151try().iterator();
        while (it.hasNext()) {
            Cstatic cstatic = (Cstatic) it.next();
            if (cstatic.f7013if) {
                cstatic.f7013if = false;
                cstatic.m4191for();
            }
        }
    }

    public final void b(Fragment fragment) {
        if (m4115interface(2)) {
            Objects.toString(fragment);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            Cnative cnative = this.f6868do;
            synchronized (cnative.f6978do) {
                cnative.f6978do.remove(fragment);
            }
            fragment.mAdded = false;
            if (m4116protected(fragment)) {
                this.f6884if = true;
            }
            fragment.mRemoving = true;
            j(fragment);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m4119break(Menu menu, MenuInflater menuInflater) {
        if (this.f6858do < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.f6879for != null) {
            for (int i = 0; i < this.f6879for.size(); i++) {
                Fragment fragment2 = this.f6879for.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f6879for = arrayList;
        return z;
    }

    public final void c(ArrayList<androidx.fragment.app.Cdo> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m4128extends(arrayList, arrayList2);
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((Cpublic) arrayList.get(i)).f6996if) {
                if (i2 != i) {
                    m4125default(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (arrayList2.get(i).booleanValue()) {
                    while (i2 < size && arrayList2.get(i2).booleanValue() && !((Cpublic) arrayList.get(i2)).f6996if) {
                        i2++;
                    }
                }
                m4125default(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            m4125default(arrayList, arrayList2, i2, size);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final Cwhile m4120case(Fragment fragment) {
        String str = fragment.mWho;
        Cnative cnative = this.f6868do;
        Cwhile cwhile = cnative.f6979do.get(str);
        if (cwhile != null) {
            return cwhile;
        }
        Cwhile cwhile2 = new Cwhile(this.f6869do, cnative, fragment);
        cwhile2.m4222catch(this.f6860do.f881do.getClassLoader());
        cwhile2.f7051do = this.f6858do;
        return cwhile2;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m4121catch() {
        this.f6888try = true;
        m4146switch(true);
        Iterator it = m4151try().iterator();
        while (it.hasNext()) {
            ((Cstatic) it.next()).m4195try();
        }
        m4137native(-1);
        this.f6860do = null;
        this.f6859do = null;
        this.f6862do = null;
        if (this.f6861do != null) {
            Iterator<S6> it2 = ((AbstractC0158Cv) this.f6865do).f449do.iterator();
            while (it2.hasNext()) {
                it2.next().cancel();
            }
            this.f6861do = null;
        }
        C0784c0 c0784c0 = this.f6871do;
        if (c0784c0 != null) {
            c0784c0.mo3105if();
            this.f6882if.mo3105if();
            this.f6878for.mo3105if();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final void m4122class() {
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m4123const(boolean z) {
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public final ViewGroup m4124continue(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.f6859do.mo287try()) {
            View mo286new = this.f6859do.mo286new(fragment.mContainerId);
            if (mo286new instanceof ViewGroup) {
                return (ViewGroup) mo286new;
            }
        }
        return null;
    }

    public final void d(Parcelable parcelable) {
        Csuper csuper;
        int i;
        Cwhile cwhile;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f6903do == null) {
            return;
        }
        Cnative cnative = this.f6868do;
        cnative.f6979do.clear();
        Iterator<FragmentState> it = fragmentManagerState.f6903do.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            csuper = this.f6869do;
            if (!hasNext) {
                break;
            }
            FragmentState next = it.next();
            if (next != null) {
                Fragment fragment = this.f6870do.f7044if.get(next.f6911catch);
                if (fragment != null) {
                    if (m4115interface(2)) {
                        fragment.toString();
                    }
                    cwhile = new Cwhile(csuper, cnative, fragment, next);
                } else {
                    cwhile = new Cwhile(this.f6869do, this.f6868do, this.f6860do.f881do.getClassLoader(), m4144strictfp(), next);
                }
                Fragment fragment2 = cwhile.f7052do;
                fragment2.mFragmentManager = this;
                if (m4115interface(2)) {
                    fragment2.toString();
                }
                cwhile.m4222catch(this.f6860do.f881do.getClassLoader());
                cnative.m4179else(cwhile);
                cwhile.f7051do = this.f6858do;
            }
        }
        Cthrow cthrow = this.f6870do;
        cthrow.getClass();
        Iterator it2 = new ArrayList(cthrow.f7044if.values()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Fragment fragment3 = (Fragment) it2.next();
            if ((cnative.f6979do.get(fragment3.mWho) != null ? 1 : 0) == 0) {
                if (m4115interface(2)) {
                    fragment3.toString();
                    Objects.toString(fragmentManagerState.f6903do);
                }
                this.f6870do.m4219new(fragment3);
                fragment3.mFragmentManager = this;
                Cwhile cwhile2 = new Cwhile(csuper, cnative, fragment3);
                cwhile2.f7051do = 1;
                cwhile2.m4220break();
                fragment3.mRemoving = true;
                cwhile2.m4220break();
            }
        }
        ArrayList<String> arrayList = fragmentManagerState.f6907if;
        cnative.f6978do.clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                Fragment m4182if = cnative.m4182if(str);
                if (m4182if == null) {
                    throw new IllegalStateException(defpackage.Cif.m6908case("No instantiated fragment for (", str, ")"));
                }
                if (m4115interface(2)) {
                    m4182if.toString();
                }
                cnative.m4178do(m4182if);
            }
        }
        if (fragmentManagerState.f6904do != null) {
            this.f6883if = new ArrayList<>(fragmentManagerState.f6904do.length);
            int i2 = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.f6904do;
                if (i2 >= backStackStateArr.length) {
                    break;
                }
                BackStackState backStackState = backStackStateArr[i2];
                backStackState.getClass();
                androidx.fragment.app.Cdo cdo = new androidx.fragment.app.Cdo(this);
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    int[] iArr = backStackState.f6801do;
                    if (i3 >= iArr.length) {
                        break;
                    }
                    Cpublic.Cdo cdo2 = new Cpublic.Cdo();
                    int i5 = i3 + 1;
                    cdo2.f6999do = iArr[i3];
                    if (m4115interface(2)) {
                        cdo.toString();
                        int i6 = iArr[i5];
                    }
                    String str2 = backStackState.f6799do.get(i4);
                    if (str2 != null) {
                        cdo2.f7000do = m4130finally(str2);
                    } else {
                        cdo2.f7000do = null;
                    }
                    cdo2.f7001do = Ctry.Cif.values()[backStackState.f6807if[i4]];
                    cdo2.f7004if = Ctry.Cif.values()[backStackState.f6804for[i4]];
                    int i7 = i5 + 1;
                    int i8 = iArr[i5];
                    cdo2.f7003if = i8;
                    int i9 = i7 + 1;
                    int i10 = iArr[i7];
                    cdo2.f7002for = i10;
                    int i11 = i9 + 1;
                    int i12 = iArr[i9];
                    cdo2.f7005new = i12;
                    int i13 = iArr[i11];
                    cdo2.f7006try = i13;
                    ((Cpublic) cdo).f6985do = i8;
                    ((Cpublic) cdo).f6993if = i10;
                    ((Cpublic) cdo).f6991for = i12;
                    cdo.f6997new = i13;
                    cdo.m4185if(cdo2);
                    i4++;
                    i3 = i11 + 1;
                }
                cdo.f6998try = backStackState.f6802for;
                ((Cpublic) cdo).f6987do = backStackState.f6796break;
                cdo.f6954goto = backStackState.f6808new;
                ((Cpublic) cdo).f6989do = true;
                cdo.f6984case = backStackState.f6809try;
                ((Cpublic) cdo).f6986do = backStackState.f6798do;
                cdo.f6990else = backStackState.f6797case;
                ((Cpublic) cdo).f6994if = backStackState.f6805if;
                ((Cpublic) cdo).f6995if = backStackState.f6806if;
                ((Cpublic) cdo).f6992for = backStackState.f6803for;
                ((Cpublic) cdo).f6996if = backStackState.f6800do;
                cdo.m4174new(1);
                if (m4115interface(2)) {
                    cdo.toString();
                    PrintWriter printWriter = new PrintWriter(new C0592Wq());
                    cdo.m4173goto("  ", printWriter, false);
                    printWriter.close();
                }
                this.f6883if.add(cdo);
                i2++;
            }
        } else {
            this.f6883if = null;
        }
        this.f6876do.set(fragmentManagerState.f6905for);
        String str3 = fragmentManagerState.f6902break;
        if (str3 != null) {
            Fragment m4130finally = m4130finally(str3);
            this.f6881if = m4130finally;
            m4149throw(m4130finally);
        }
        ArrayList<String> arrayList2 = fragmentManagerState.f6906for;
        if (arrayList2 != null) {
            while (i < arrayList2.size()) {
                Bundle bundle = fragmentManagerState.f6908new.get(i);
                bundle.setClassLoader(this.f6860do.f881do.getClassLoader());
                this.f6874do.put(arrayList2.get(i), bundle);
                i++;
            }
        }
        this.f6872do = new ArrayDeque<>(fragmentManagerState.f6909try);
    }

    /* renamed from: default, reason: not valid java name */
    public final void m4125default(ArrayList<androidx.fragment.app.Cdo> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        Cnative cnative;
        Cnative cnative2;
        Cnative cnative3;
        int i3;
        ArrayList<androidx.fragment.app.Cdo> arrayList3 = arrayList;
        ArrayList<Boolean> arrayList4 = arrayList2;
        boolean z = ((Cpublic) arrayList3.get(i)).f6996if;
        ArrayList<Fragment> arrayList5 = this.f6856case;
        if (arrayList5 == null) {
            this.f6856case = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        ArrayList<Fragment> arrayList6 = this.f6856case;
        Cnative cnative4 = this.f6868do;
        arrayList6.addAll(cnative4.m4177case());
        Fragment fragment = this.f6881if;
        int i4 = i;
        boolean z2 = false;
        while (true) {
            int i5 = 1;
            if (i4 >= i2) {
                Cnative cnative5 = cnative4;
                this.f6856case.clear();
                if (!z && this.f6858do >= 1) {
                    for (int i6 = i; i6 < i2; i6++) {
                        Iterator<Cpublic.Cdo> it = ((Cpublic) arrayList.get(i6)).f6988do.iterator();
                        while (it.hasNext()) {
                            Fragment fragment2 = it.next().f7000do;
                            if (fragment2 == null || fragment2.mFragmentManager == null) {
                                cnative = cnative5;
                            } else {
                                cnative = cnative5;
                                cnative.m4179else(m4120case(fragment2));
                            }
                            cnative5 = cnative;
                        }
                    }
                }
                for (int i7 = i; i7 < i2; i7++) {
                    androidx.fragment.app.Cdo cdo = arrayList.get(i7);
                    if (arrayList2.get(i7).booleanValue()) {
                        cdo.m4174new(-1);
                        cdo.m4167break();
                    } else {
                        cdo.m4174new(1);
                        cdo.m4175this();
                    }
                }
                boolean booleanValue = arrayList2.get(i2 - 1).booleanValue();
                for (int i8 = i; i8 < i2; i8++) {
                    androidx.fragment.app.Cdo cdo2 = arrayList.get(i8);
                    if (booleanValue) {
                        for (int size = ((Cpublic) cdo2).f6988do.size() - 1; size >= 0; size--) {
                            Fragment fragment3 = ((Cpublic) cdo2).f6988do.get(size).f7000do;
                            if (fragment3 != null) {
                                m4120case(fragment3).m4220break();
                            }
                        }
                    } else {
                        Iterator<Cpublic.Cdo> it2 = ((Cpublic) cdo2).f6988do.iterator();
                        while (it2.hasNext()) {
                            Fragment fragment4 = it2.next().f7000do;
                            if (fragment4 != null) {
                                m4120case(fragment4).m4220break();
                            }
                        }
                    }
                }
                m4134implements(this.f6858do, true);
                HashSet hashSet = new HashSet();
                for (int i9 = i; i9 < i2; i9++) {
                    Iterator<Cpublic.Cdo> it3 = ((Cpublic) arrayList.get(i9)).f6988do.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment5 = it3.next().f7000do;
                        if (fragment5 != null && (viewGroup = fragment5.mContainer) != null) {
                            hashSet.add(Cstatic.m4188case(viewGroup, m4152volatile()));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    Cstatic cstatic = (Cstatic) it4.next();
                    cstatic.f7011do = booleanValue;
                    cstatic.m4192goto();
                    cstatic.m4191for();
                }
                for (int i10 = i; i10 < i2; i10++) {
                    androidx.fragment.app.Cdo cdo3 = arrayList.get(i10);
                    if (arrayList2.get(i10).booleanValue() && cdo3.f6954goto >= 0) {
                        cdo3.f6954goto = -1;
                    }
                    cdo3.getClass();
                }
                return;
            }
            androidx.fragment.app.Cdo cdo4 = arrayList3.get(i4);
            if (arrayList4.get(i4).booleanValue()) {
                cnative2 = cnative4;
                int i11 = 1;
                ArrayList<Fragment> arrayList7 = this.f6856case;
                ArrayList<Cpublic.Cdo> arrayList8 = ((Cpublic) cdo4).f6988do;
                int size2 = arrayList8.size() - 1;
                while (size2 >= 0) {
                    Cpublic.Cdo cdo5 = arrayList8.get(size2);
                    int i12 = cdo5.f6999do;
                    if (i12 != i11) {
                        if (i12 != 3) {
                            switch (i12) {
                                case 8:
                                    fragment = null;
                                    break;
                                case 9:
                                    fragment = cdo5.f7000do;
                                    break;
                                case 10:
                                    cdo5.f7004if = cdo5.f7001do;
                                    break;
                            }
                            size2--;
                            i11 = 1;
                        }
                        arrayList7.add(cdo5.f7000do);
                        size2--;
                        i11 = 1;
                    }
                    arrayList7.remove(cdo5.f7000do);
                    size2--;
                    i11 = 1;
                }
            } else {
                ArrayList<Fragment> arrayList9 = this.f6856case;
                int i13 = 0;
                while (true) {
                    ArrayList<Cpublic.Cdo> arrayList10 = ((Cpublic) cdo4).f6988do;
                    if (i13 < arrayList10.size()) {
                        Cpublic.Cdo cdo6 = arrayList10.get(i13);
                        int i14 = cdo6.f6999do;
                        if (i14 != i5) {
                            if (i14 != 2) {
                                if (i14 == 3 || i14 == 6) {
                                    arrayList9.remove(cdo6.f7000do);
                                    Fragment fragment6 = cdo6.f7000do;
                                    if (fragment6 == fragment) {
                                        arrayList10.add(i13, new Cpublic.Cdo(fragment6, 9));
                                        i13++;
                                        cnative3 = cnative4;
                                        i3 = 1;
                                        fragment = null;
                                    }
                                } else if (i14 != 7) {
                                    if (i14 == 8) {
                                        arrayList10.add(i13, new Cpublic.Cdo(fragment, 9));
                                        i13++;
                                        fragment = cdo6.f7000do;
                                    }
                                }
                                cnative3 = cnative4;
                                i3 = 1;
                            } else {
                                Fragment fragment7 = cdo6.f7000do;
                                int i15 = fragment7.mContainerId;
                                int size3 = arrayList9.size() - 1;
                                boolean z3 = false;
                                while (size3 >= 0) {
                                    Cnative cnative6 = cnative4;
                                    Fragment fragment8 = arrayList9.get(size3);
                                    if (fragment8.mContainerId == i15) {
                                        if (fragment8 == fragment7) {
                                            z3 = true;
                                        } else {
                                            if (fragment8 == fragment) {
                                                arrayList10.add(i13, new Cpublic.Cdo(fragment8, 9));
                                                i13++;
                                                fragment = null;
                                            }
                                            Cpublic.Cdo cdo7 = new Cpublic.Cdo(fragment8, 3);
                                            cdo7.f7003if = cdo6.f7003if;
                                            cdo7.f7005new = cdo6.f7005new;
                                            cdo7.f7002for = cdo6.f7002for;
                                            cdo7.f7006try = cdo6.f7006try;
                                            arrayList10.add(i13, cdo7);
                                            arrayList9.remove(fragment8);
                                            i13++;
                                            fragment = fragment;
                                        }
                                    }
                                    size3--;
                                    cnative4 = cnative6;
                                }
                                cnative3 = cnative4;
                                i3 = 1;
                                if (z3) {
                                    arrayList10.remove(i13);
                                    i13--;
                                } else {
                                    cdo6.f6999do = 1;
                                    arrayList9.add(fragment7);
                                }
                            }
                            i13 += i3;
                            cnative4 = cnative3;
                            i5 = 1;
                        }
                        cnative3 = cnative4;
                        i3 = 1;
                        arrayList9.add(cdo6.f7000do);
                        i13 += i3;
                        cnative4 = cnative3;
                        i5 = 1;
                    } else {
                        cnative2 = cnative4;
                    }
                }
            }
            z2 = z2 || ((Cpublic) cdo4).f6989do;
            i4++;
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
            cnative4 = cnative2;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final Cwhile m4126do(Fragment fragment) {
        if (m4115interface(2)) {
            Objects.toString(fragment);
        }
        Cwhile m4120case = m4120case(fragment);
        fragment.mFragmentManager = this;
        Cnative cnative = this.f6868do;
        cnative.m4179else(m4120case);
        if (!fragment.mDetached) {
            cnative.m4178do(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (m4116protected(fragment)) {
                this.f6884if = true;
            }
        }
        return m4120case;
    }

    public final Parcelable e() {
        ArrayList<String> arrayList;
        int size;
        m4118abstract();
        Iterator it = m4151try().iterator();
        while (it.hasNext()) {
            ((Cstatic) it.next()).m4195try();
        }
        m4146switch(true);
        this.f6880for = true;
        this.f6870do.f7047new = true;
        Cnative cnative = this.f6868do;
        cnative.getClass();
        HashMap<String, Cwhile> hashMap = cnative.f6979do;
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(hashMap.size());
        for (Cwhile cwhile : hashMap.values()) {
            if (cwhile != null) {
                Fragment fragment = cwhile.f7052do;
                FragmentState fragmentState = new FragmentState(fragment);
                if (fragment.mState <= -1 || fragmentState.f6917if != null) {
                    fragmentState.f6917if = fragment.mSavedFragmentState;
                } else {
                    Bundle m4224const = cwhile.m4224const();
                    fragmentState.f6917if = m4224const;
                    if (fragment.mTargetWho != null) {
                        if (m4224const == null) {
                            fragmentState.f6917if = new Bundle();
                        }
                        fragmentState.f6917if.putString("android:target_state", fragment.mTargetWho);
                        int i = fragment.mTargetRequestCode;
                        if (i != 0) {
                            fragmentState.f6917if.putInt("android:target_req_state", i);
                        }
                    }
                }
                arrayList2.add(fragmentState);
                if (m4115interface(2)) {
                    Objects.toString(fragment);
                    Objects.toString(fragmentState.f6917if);
                }
            }
        }
        BackStackState[] backStackStateArr = null;
        if (arrayList2.isEmpty()) {
            return null;
        }
        Cnative cnative2 = this.f6868do;
        synchronized (cnative2.f6978do) {
            if (cnative2.f6978do.isEmpty()) {
                arrayList = null;
            } else {
                arrayList = new ArrayList<>(cnative2.f6978do.size());
                Iterator<Fragment> it2 = cnative2.f6978do.iterator();
                while (it2.hasNext()) {
                    Fragment next = it2.next();
                    arrayList.add(next.mWho);
                    if (m4115interface(2)) {
                        next.toString();
                    }
                }
            }
        }
        ArrayList<androidx.fragment.app.Cdo> arrayList3 = this.f6883if;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i2 = 0; i2 < size; i2++) {
                backStackStateArr[i2] = new BackStackState(this.f6883if.get(i2));
                if (m4115interface(2)) {
                    Objects.toString(this.f6883if.get(i2));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f6903do = arrayList2;
        fragmentManagerState.f6907if = arrayList;
        fragmentManagerState.f6904do = backStackStateArr;
        fragmentManagerState.f6905for = this.f6876do.get();
        Fragment fragment2 = this.f6881if;
        if (fragment2 != null) {
            fragmentManagerState.f6902break = fragment2.mWho;
        }
        fragmentManagerState.f6906for.addAll(this.f6874do.keySet());
        fragmentManagerState.f6908new.addAll(this.f6874do.values());
        fragmentManagerState.f6909try = new ArrayList<>(this.f6872do);
        return fragmentManagerState;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4127else(Fragment fragment) {
        if (m4115interface(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (m4115interface(2)) {
                fragment.toString();
            }
            Cnative cnative = this.f6868do;
            synchronized (cnative.f6978do) {
                cnative.f6978do.remove(fragment);
            }
            fragment.mAdded = false;
            if (m4116protected(fragment)) {
                this.f6884if = true;
            }
            j(fragment);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m4128extends(ArrayList<androidx.fragment.app.Cdo> arrayList, ArrayList<Boolean> arrayList2) {
    }

    public final void f() {
        synchronized (this.f6873do) {
            boolean z = true;
            if (this.f6873do.size() != 1) {
                z = false;
            }
            if (z) {
                this.f6860do.f882do.removeCallbacks(this.f6864do);
                this.f6860do.f882do.post(this.f6864do);
                m();
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final boolean m4129final(MenuItem menuItem) {
        if (this.f6858do < 1) {
            return false;
        }
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: finally, reason: not valid java name */
    public final Fragment m4130finally(String str) {
        return this.f6868do.m4182if(str);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4131for(Fragment fragment) {
        if (m4115interface(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f6868do.m4178do(fragment);
            if (m4115interface(2)) {
                fragment.toString();
            }
            if (m4116protected(fragment)) {
                this.f6884if = true;
            }
        }
    }

    public final void g(Fragment fragment, boolean z) {
        ViewGroup m4124continue = m4124continue(fragment);
        if (m4124continue == null || !(m4124continue instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) m4124continue).f6854do = !z;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4132goto(Configuration configuration) {
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public final void h(Fragment fragment, Ctry.Cif cif) {
        if (fragment.equals(m4130finally(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = cif;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void i(Fragment fragment) {
        if (fragment == null || (fragment.equals(m4130finally(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.f6881if;
            this.f6881if = fragment;
            m4149throw(fragment2);
            m4149throw(this.f6881if);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SyntheticAccessor"})
    /* renamed from: if, reason: not valid java name */
    public final void m4133if(AbstractC0190Ej<?> abstractC0190Ej, AbstractC0146Cj abstractC0146Cj, Fragment fragment) {
        if (this.f6860do != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f6860do = abstractC0190Ej;
        this.f6859do = abstractC0146Cj;
        this.f6862do = fragment;
        CopyOnWriteArrayList<InterfaceC0234Gj> copyOnWriteArrayList = this.f6875do;
        if (fragment != null) {
            copyOnWriteArrayList.add(new Cgoto(fragment));
        } else if (abstractC0190Ej instanceof InterfaceC0234Gj) {
            copyOnWriteArrayList.add((InterfaceC0234Gj) abstractC0190Ej);
        }
        if (this.f6862do != null) {
            m();
        }
        if (abstractC0190Ej instanceof InterfaceC0355Lv) {
            InterfaceC0355Lv interfaceC0355Lv = (InterfaceC0355Lv) abstractC0190Ej;
            OnBackPressedDispatcher mo1358for = interfaceC0355Lv.mo1358for();
            this.f6861do = mo1358for;
            InterfaceC2714eq interfaceC2714eq = interfaceC0355Lv;
            if (fragment != null) {
                interfaceC2714eq = fragment;
            }
            mo1358for.m3196do(interfaceC2714eq, this.f6865do);
        }
        if (fragment != null) {
            Cthrow cthrow = fragment.mFragmentManager.f6870do;
            HashMap<String, Cthrow> hashMap = cthrow.f7042for;
            Cthrow cthrow2 = hashMap.get(fragment.mWho);
            if (cthrow2 == null) {
                cthrow2 = new Cthrow(cthrow.f7045if);
                hashMap.put(fragment.mWho, cthrow2);
            }
            this.f6870do = cthrow2;
        } else if (abstractC0190Ej instanceof InterfaceC2746fL) {
            this.f6870do = (Cthrow) new Cimport(((InterfaceC2746fL) abstractC0190Ej).getViewModelStore(), Cthrow.f7041do).m4269do(Cthrow.class);
        } else {
            this.f6870do = new Cthrow(false);
        }
        Cthrow cthrow3 = this.f6870do;
        cthrow3.f7047new = this.f6880for || this.f6886new;
        this.f6868do.f6977do = cthrow3;
        Object obj = this.f6860do;
        if (obj instanceof InterfaceC2608d0) {
            androidx.activity.result.Cdo mo3191goto = ((InterfaceC2608d0) obj).mo3191goto();
            String m8824for = C4122zt.m8824for("FragmentManager:", fragment != null ? Creturn.m7984try(new StringBuilder(), fragment.mWho, CertificateUtil.DELIMITER) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            this.f6871do = mo3191goto.m3207new(defpackage.Cpublic.m7816case(m8824for, "StartActivityForResult"), new Y(), new Cthis());
            this.f6882if = mo3191goto.m3207new(defpackage.Cpublic.m7816case(m8824for, "StartIntentSenderForResult"), new Cbreak(), new Cdo());
            this.f6878for = mo3191goto.m3207new(defpackage.Cpublic.m7816case(m8824for, "RequestPermissions"), new X(), new Cif());
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m4134implements(int i, boolean z) {
        HashMap<String, Cwhile> hashMap;
        AbstractC0190Ej<?> abstractC0190Ej;
        if (this.f6860do == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.f6858do) {
            this.f6858do = i;
            Cnative cnative = this.f6868do;
            Iterator<Fragment> it = cnative.f6978do.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                hashMap = cnative.f6979do;
                if (!hasNext) {
                    break;
                }
                Cwhile cwhile = hashMap.get(it.next().mWho);
                if (cwhile != null) {
                    cwhile.m4220break();
                }
            }
            Iterator<Cwhile> it2 = hashMap.values().iterator();
            while (true) {
                boolean z2 = false;
                if (!it2.hasNext()) {
                    break;
                }
                Cwhile next = it2.next();
                if (next != null) {
                    next.m4220break();
                    Fragment fragment = next.f7052do;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        z2 = true;
                    }
                    if (z2) {
                        cnative.m4181goto(next);
                    }
                }
            }
            k();
            if (this.f6884if && (abstractC0190Ej = this.f6860do) != null && this.f6858do == 7) {
                abstractC0190Ej.mo499catch();
                this.f6884if = false;
            }
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final boolean m4135import(Menu menu) {
        boolean z = false;
        if (this.f6858do < 1) {
            return false;
        }
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m4136instanceof() {
        if (this.f6860do == null) {
            return;
        }
        this.f6880for = false;
        this.f6886new = false;
        this.f6870do.f7047new = false;
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public final void j(Fragment fragment) {
        ViewGroup m4124continue = m4124continue(fragment);
        if (m4124continue != null) {
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + fragment.getExitAnim() + fragment.getEnterAnim() > 0) {
                if (m4124continue.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    m4124continue.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                ((Fragment) m4124continue.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
            }
        }
    }

    public final void k() {
        Iterator it = this.f6868do.m4183new().iterator();
        while (it.hasNext()) {
            Cwhile cwhile = (Cwhile) it.next();
            Fragment fragment = cwhile.f7052do;
            if (fragment.mDeferStart) {
                if (this.f6877do) {
                    this.f6857case = true;
                } else {
                    fragment.mDeferStart = false;
                    cwhile.m4220break();
                }
            }
        }
    }

    public final void l(IllegalStateException illegalStateException) {
        illegalStateException.getMessage();
        PrintWriter printWriter = new PrintWriter(new C0592Wq());
        AbstractC0190Ej<?> abstractC0190Ej = this.f6860do;
        try {
            if (abstractC0190Ej != null) {
                abstractC0190Ej.mo498case(printWriter, new String[0]);
            } else {
                m4141public("  ", null, printWriter, new String[0]);
            }
            throw illegalStateException;
        } catch (Exception unused) {
            throw illegalStateException;
        }
    }

    public final void m() {
        synchronized (this.f6873do) {
            try {
                if (!this.f6873do.isEmpty()) {
                    Cfor cfor = this.f6865do;
                    ((AbstractC0158Cv) cfor).f450do = true;
                    InterfaceC0768bk<C3206kJ> interfaceC0768bk = ((AbstractC0158Cv) cfor).f448do;
                    if (interfaceC0768bk != null) {
                        interfaceC0768bk.mo585new();
                    }
                    return;
                }
                Cfor cfor2 = this.f6865do;
                ArrayList<androidx.fragment.app.Cdo> arrayList = this.f6883if;
                ((AbstractC0158Cv) cfor2).f450do = (arrayList != null ? arrayList.size() : 0) > 0 && m4117transient(this.f6862do);
                InterfaceC0768bk<C3206kJ> interfaceC0768bk2 = ((AbstractC0158Cv) cfor2).f448do;
                if (interfaceC0768bk2 != null) {
                    interfaceC0768bk2.mo585new();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final void m4137native(int i) {
        try {
            this.f6877do = true;
            for (Cwhile cwhile : this.f6868do.f6979do.values()) {
                if (cwhile != null) {
                    cwhile.f7051do = i;
                }
            }
            m4134implements(i, false);
            Iterator it = m4151try().iterator();
            while (it.hasNext()) {
                ((Cstatic) it.next()).m4195try();
            }
            this.f6877do = false;
            m4146switch(true);
        } catch (Throwable th) {
            this.f6877do = false;
            throw th;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4138new() {
        this.f6877do = false;
        this.f6887try.clear();
        this.f6885new.clear();
    }

    /* renamed from: package, reason: not valid java name */
    public final Fragment m4139package(int i) {
        Cnative cnative = this.f6868do;
        ArrayList<Fragment> arrayList = cnative.f6978do;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                for (Cwhile cwhile : cnative.f6979do.values()) {
                    if (cwhile != null) {
                        Fragment fragment = cwhile.f7052do;
                        if (fragment.mFragmentId == i) {
                            return fragment;
                        }
                    }
                }
                return null;
            }
            Fragment fragment2 = arrayList.get(size);
            if (fragment2 != null && fragment2.mFragmentId == i) {
                return fragment2;
            }
        }
    }

    /* renamed from: private, reason: not valid java name */
    public final Fragment m4140private(String str) {
        Cnative cnative = this.f6868do;
        if (str != null) {
            ArrayList<Fragment> arrayList = cnative.f6978do;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                Fragment fragment = arrayList.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (Cwhile cwhile : cnative.f6979do.values()) {
                if (cwhile != null) {
                    Fragment fragment2 = cwhile.f7052do;
                    if (str.equals(fragment2.mTag)) {
                        return fragment2;
                    }
                }
            }
        } else {
            cnative.getClass();
        }
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m4141public(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String m7816case = defpackage.Cpublic.m7816case(str, "    ");
        Cnative cnative = this.f6868do;
        cnative.getClass();
        String str2 = str + "    ";
        HashMap<String, Cwhile> hashMap = cnative.f6979do;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (Cwhile cwhile : hashMap.values()) {
                printWriter.print(str);
                if (cwhile != null) {
                    Fragment fragment = cwhile.f7052do;
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList<Fragment> arrayList = cnative.f6978do;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                Fragment fragment2 = arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList<Fragment> arrayList2 = this.f6879for;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                Fragment fragment3 = this.f6879for.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList<androidx.fragment.app.Cdo> arrayList3 = this.f6883if;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                androidx.fragment.app.Cdo cdo = this.f6883if.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(cdo.toString());
                cdo.m4173goto(m7816case, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f6876do.get());
        synchronized (this.f6873do) {
            int size4 = this.f6873do.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size4; i4++) {
                    Object obj = (Cclass) this.f6873do.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f6860do);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f6859do);
        if (this.f6862do != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f6862do);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f6858do);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f6880for);
        printWriter.print(" mStopped=");
        printWriter.print(this.f6886new);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f6888try);
        if (this.f6884if) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f6884if);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final void m4142return(Cclass cclass, boolean z) {
        if (!z) {
            if (this.f6860do == null) {
                if (!this.f6888try) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.f6880for || this.f6886new) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f6873do) {
            if (this.f6860do == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.f6873do.add(cclass);
                f();
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final void m4143static(boolean z) {
        if (this.f6877do) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f6860do == null) {
            if (!this.f6888try) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f6860do.f882do.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            if (this.f6880for || this.f6886new) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        if (this.f6885new == null) {
            this.f6885new = new ArrayList<>();
            this.f6887try = new ArrayList<>();
        }
        this.f6877do = false;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final androidx.fragment.app.Cconst m4144strictfp() {
        Fragment fragment = this.f6862do;
        return fragment != null ? fragment.mFragmentManager.m4144strictfp() : this.f6866do;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m4145super(Menu menu) {
        if (this.f6858do < 1) {
            return;
        }
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final boolean m4146switch(boolean z) {
        boolean z2;
        m4143static(z);
        boolean z3 = false;
        while (true) {
            ArrayList<androidx.fragment.app.Cdo> arrayList = this.f6885new;
            ArrayList<Boolean> arrayList2 = this.f6887try;
            synchronized (this.f6873do) {
                if (this.f6873do.isEmpty()) {
                    z2 = false;
                } else {
                    int size = this.f6873do.size();
                    z2 = false;
                    for (int i = 0; i < size; i++) {
                        z2 |= this.f6873do.get(i).mo4154do(arrayList, arrayList2);
                    }
                    this.f6873do.clear();
                    this.f6860do.f882do.removeCallbacks(this.f6864do);
                }
            }
            if (!z2) {
                break;
            }
            z3 = true;
            this.f6877do = true;
            try {
                c(this.f6885new, this.f6887try);
            } finally {
                m4138new();
            }
        }
        m();
        if (this.f6857case) {
            this.f6857case = false;
            k();
        }
        this.f6868do.f6979do.values().removeAll(Collections.singleton(null));
        return z3;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final boolean m4147synchronized() {
        m4146switch(false);
        m4143static(true);
        Fragment fragment = this.f6881if;
        if (fragment != null && fragment.getChildFragmentManager().m4147synchronized()) {
            return true;
        }
        boolean a = a(this.f6885new, this.f6887try, null, -1, 0);
        if (a) {
            this.f6877do = true;
            try {
                c(this.f6885new, this.f6887try);
            } finally {
                m4138new();
            }
        }
        m();
        if (this.f6857case) {
            this.f6857case = false;
            k();
        }
        this.f6868do.f6979do.values().removeAll(Collections.singleton(null));
        return a;
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m4148this(MenuItem menuItem) {
        if (this.f6858do < 1) {
            return false;
        }
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m4149throw(Fragment fragment) {
        if (fragment == null || !fragment.equals(m4130finally(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m4150throws(Cclass cclass, boolean z) {
        if (z && (this.f6860do == null || this.f6888try)) {
            return;
        }
        m4143static(z);
        if (cclass.mo4154do(this.f6885new, this.f6887try)) {
            this.f6877do = true;
            try {
                c(this.f6885new, this.f6887try);
            } finally {
                m4138new();
            }
        }
        m();
        if (this.f6857case) {
            this.f6857case = false;
            k();
        }
        this.f6868do.f6979do.values().removeAll(Collections.singleton(null));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f6862do;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f6862do)));
            sb.append("}");
        } else {
            AbstractC0190Ej<?> abstractC0190Ej = this.f6860do;
            if (abstractC0190Ej != null) {
                sb.append(abstractC0190Ej.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f6860do)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final HashSet m4151try() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f6868do.m4183new().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((Cwhile) it.next()).f7052do.mContainer;
            if (viewGroup != null) {
                hashSet.add(Cstatic.m4188case(viewGroup, m4152volatile()));
            }
        }
        return hashSet;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final NE m4152volatile() {
        Fragment fragment = this.f6862do;
        return fragment != null ? fragment.mFragmentManager.m4152volatile() : this.f6863do;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m4153while(boolean z) {
        for (Fragment fragment : this.f6868do.m4177case()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public final String f6889break;

        /* renamed from: for, reason: not valid java name */
        public final int f6890for;

        /* renamed from: androidx.fragment.app.FragmentManager$LaunchedFragmentInfo$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<LaunchedFragmentInfo> {
            @Override // android.os.Parcelable.Creator
            public final LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final LaunchedFragmentInfo[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        }

        public LaunchedFragmentInfo(String str, int i) {
            this.f6889break = str;
            this.f6890for = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f6889break);
            parcel.writeInt(this.f6890for);
        }

        public LaunchedFragmentInfo(Parcel parcel) {
            this.f6889break = parcel.readString();
            this.f6890for = parcel.readInt();
        }
    }
}
