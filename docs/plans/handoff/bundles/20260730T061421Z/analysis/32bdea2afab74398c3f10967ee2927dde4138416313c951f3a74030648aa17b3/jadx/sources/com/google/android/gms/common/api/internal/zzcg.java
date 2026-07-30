package com.google.android.gms.common.api.internal;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import b.d.g;
import c.b.a.c.d.g.u.r;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zzcg extends Fragment implements r {

    /* renamed from: a, reason: collision with root package name */
    public Map f3382a = new g();

    /* renamed from: b, reason: collision with root package name */
    public Bundle f3383b;

    static {
        new WeakHashMap();
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.f3382a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).d();
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Iterator it = this.f3382a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).c();
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3383b = bundle;
        for (Map.Entry entry : this.f3382a.entrySet()) {
            LifecycleCallback lifecycleCallback = (LifecycleCallback) entry.getValue();
            if (bundle != null) {
                bundle.getBundle((String) entry.getKey());
            }
            lifecycleCallback.b();
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        Iterator it = this.f3382a.values().iterator();
        while (it.hasNext()) {
            Objects.requireNonNull((LifecycleCallback) it.next());
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        Iterator it = this.f3382a.values().iterator();
        while (it.hasNext()) {
            Objects.requireNonNull((LifecycleCallback) it.next());
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f3382a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).e();
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        Iterator it = this.f3382a.values().iterator();
        while (it.hasNext()) {
            Objects.requireNonNull((LifecycleCallback) it.next());
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        Iterator it = this.f3382a.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).a();
        }
    }
}
