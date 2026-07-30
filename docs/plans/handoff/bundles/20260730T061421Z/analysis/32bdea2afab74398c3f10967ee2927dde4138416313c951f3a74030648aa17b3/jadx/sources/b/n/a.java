package b.n;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    public final Set f1230a = new HashSet();

    public a(d dVar) {
        if (((c) dVar.f1231a.j("androidx.savedstate.Restarter", this)) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    @Override // b.n.c
    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f1230a));
        return bundle;
    }
}
