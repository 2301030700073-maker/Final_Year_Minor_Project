package b.n;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import androidx.savedstate.Recreator;
import b.j.AbstractC0137g;
import b.j.InterfaceC0138h;
import b.j.j;
import b.j.l;
import b.n.d;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final f f1235a;

    /* renamed from: b, reason: collision with root package name */
    public final d f1236b = new d();

    public e(f fVar) {
        this.f1235a = fVar;
    }

    public void a(Bundle bundle) {
        AbstractC0137g lifecycle = this.f1235a.getLifecycle();
        if (((l) lifecycle).f996b != Lifecycle$State.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new Recreator(this.f1235a));
        final d dVar = this.f1236b;
        if (dVar.f1233c) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            dVar.f1232b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        lifecycle.a(new InterfaceC0138h() { // from class: androidx.savedstate.SavedStateRegistry$1
            @Override // b.j.InterfaceC0138h
            public void d(j jVar, Lifecycle$Event lifecycle$Event) {
                if (lifecycle$Event == Lifecycle$Event.ON_START) {
                    d.this.e = true;
                } else if (lifecycle$Event == Lifecycle$Event.ON_STOP) {
                    d.this.e = false;
                }
            }
        });
        dVar.f1233c = true;
    }

    public void b(Bundle bundle) {
        d dVar = this.f1236b;
        Objects.requireNonNull(dVar);
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = dVar.f1232b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        b.c.a.b.e h = dVar.f1231a.h();
        while (h.hasNext()) {
            Map.Entry entry = (Map.Entry) h.next();
            bundle2.putBundle((String) entry.getKey(), ((c) entry.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
