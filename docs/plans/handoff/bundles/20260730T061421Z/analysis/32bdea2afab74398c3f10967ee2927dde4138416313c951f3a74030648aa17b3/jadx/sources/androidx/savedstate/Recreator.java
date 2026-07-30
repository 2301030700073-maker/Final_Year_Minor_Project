package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle$Event;
import b.j.InterfaceC0138h;
import b.j.j;
import b.j.l;
import b.n.b;
import b.n.f;
import c.a.c.a.a;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class Recreator implements InterfaceC0138h {

    /* renamed from: a, reason: collision with root package name */
    public final f f205a;

    public Recreator(f fVar) {
        this.f205a = fVar;
    }

    @Override // b.j.InterfaceC0138h
    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event != Lifecycle$Event.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        ((l) jVar.getLifecycle()).f995a.k(this);
        Bundle a2 = this.f205a.getSavedStateRegistry().a("androidx.savedstate.Restarter");
        if (a2 == null) {
            return;
        }
        ArrayList<String> stringArrayList = a2.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            try {
                Class<? extends U> asSubclass = Class.forName(next, false, Recreator.class.getClassLoader()).asSubclass(b.class);
                try {
                    Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        ((b) declaredConstructor.newInstance(new Object[0])).a(this.f205a);
                    } catch (Exception e) {
                        throw new RuntimeException(a.e("Failed to instantiate ", next), e);
                    }
                } catch (NoSuchMethodException e2) {
                    StringBuilder f = a.f("Class");
                    f.append(asSubclass.getSimpleName());
                    f.append(" must have default constructor in order to be automatically recreated");
                    throw new IllegalStateException(f.toString(), e2);
                }
            } catch (ClassNotFoundException e3) {
                throw new RuntimeException("Class " + next + " wasn't found", e3);
            }
        }
    }
}
