package androidx.fragment.app;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* renamed from: androidx.fragment.app.native, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnative {

    /* renamed from: do, reason: not valid java name */
    public Cthrow f6977do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Fragment> f6978do = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap<String, Cwhile> f6979do = new HashMap<>();

    /* renamed from: case, reason: not valid java name */
    public final List<Fragment> m4177case() {
        ArrayList arrayList;
        if (this.f6978do.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f6978do) {
            arrayList = new ArrayList(this.f6978do);
        }
        return arrayList;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4178do(Fragment fragment) {
        if (this.f6978do.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f6978do) {
            this.f6978do.add(fragment);
        }
        fragment.mAdded = true;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4179else(Cwhile cwhile) {
        Fragment fragment = cwhile.f7052do;
        String str = fragment.mWho;
        HashMap<String, Cwhile> hashMap = this.f6979do;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(fragment.mWho, cwhile);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.f6977do.m4217for(fragment);
            } else {
                this.f6977do.m4219new(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.m4115interface(2)) {
            fragment.toString();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final Fragment m4180for(String str) {
        Fragment findFragmentByWho;
        for (Cwhile cwhile : this.f6979do.values()) {
            if (cwhile != null && (findFragmentByWho = cwhile.f7052do.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4181goto(Cwhile cwhile) {
        Fragment fragment = cwhile.f7052do;
        if (fragment.mRetainInstance) {
            this.f6977do.m4219new(fragment);
        }
        if (this.f6979do.put(fragment.mWho, null) != null && FragmentManager.m4115interface(2)) {
            fragment.toString();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Fragment m4182if(String str) {
        Cwhile cwhile = this.f6979do.get(str);
        if (cwhile != null) {
            return cwhile.f7052do;
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public final ArrayList m4183new() {
        ArrayList arrayList = new ArrayList();
        for (Cwhile cwhile : this.f6979do.values()) {
            if (cwhile != null) {
                arrayList.add(cwhile);
            }
        }
        return arrayList;
    }

    /* renamed from: try, reason: not valid java name */
    public final ArrayList m4184try() {
        ArrayList arrayList = new ArrayList();
        for (Cwhile cwhile : this.f6979do.values()) {
            if (cwhile != null) {
                arrayList.add(cwhile.f7052do);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }
}
