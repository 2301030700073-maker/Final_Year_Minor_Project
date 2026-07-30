package b.a.l;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.ActivityResult;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import b.a.l.b;
import b.a.l.g;
import b.j.AbstractC0137g;
import b.j.InterfaceC0138h;
import b.j.j;
import b.j.l;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f235a = new AtomicInteger(65535);

    /* renamed from: b, reason: collision with root package name */
    public final Map f236b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final Map f237c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final transient Map f238d = new HashMap();
    public final Bundle e = new Bundle();

    public final boolean a(int i, int i2, Intent intent) {
        b bVar;
        String str = (String) this.f236b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        f fVar = (f) this.f238d.get(str);
        if (fVar == null || (bVar = fVar.f233a) == null) {
            this.e.putParcelable(str, new ActivityResult(i2, intent));
            return true;
        }
        bVar.a(fVar.f234b.c(i2, intent));
        return true;
    }

    public abstract void b(int i, b.a.l.j.b bVar, @SuppressLint({"UnknownNullness"}) Object obj, b.e.b.c cVar);

    public final c c(String str, b.a.l.j.b bVar, b bVar2) {
        int e = e(str);
        this.f238d.put(str, new f(bVar2, bVar));
        ActivityResult activityResult = (ActivityResult) this.e.getParcelable(str);
        if (activityResult != null) {
            this.e.remove(str);
            bVar2.a(bVar.c(activityResult.f14a, activityResult.f15b));
        }
        return new e(this, e, bVar, str);
    }

    public final c d(final String str, j jVar, final b.a.l.j.b bVar, final b bVar2) {
        int e = e(str);
        this.f238d.put(str, new f(bVar2, bVar));
        AbstractC0137g lifecycle = jVar.getLifecycle();
        final ActivityResult activityResult = (ActivityResult) this.e.getParcelable(str);
        if (activityResult != null) {
            this.e.remove(str);
            if (((l) lifecycle).f996b.compareTo(Lifecycle$State.STARTED) >= 0) {
                bVar2.a(bVar.c(activityResult.f14a, activityResult.f15b));
            } else {
                lifecycle.a(new InterfaceC0138h(this) { // from class: androidx.activity.result.ActivityResultRegistry$1
                    @Override // b.j.InterfaceC0138h
                    public void d(j jVar2, Lifecycle$Event lifecycle$Event) {
                        if (Lifecycle$Event.ON_START.equals(lifecycle$Event)) {
                            b bVar3 = bVar2;
                            b.a.l.j.b bVar4 = bVar;
                            ActivityResult activityResult2 = activityResult;
                            bVar3.a(bVar4.c(activityResult2.f14a, activityResult2.f15b));
                        }
                    }
                });
            }
        }
        lifecycle.a(new InterfaceC0138h() { // from class: androidx.activity.result.ActivityResultRegistry$2
            @Override // b.j.InterfaceC0138h
            public void d(j jVar2, Lifecycle$Event lifecycle$Event) {
                if (Lifecycle$Event.ON_DESTROY.equals(lifecycle$Event)) {
                    g.this.f(str);
                }
            }
        });
        return new d(this, e, bVar, str);
    }

    public final int e(String str) {
        Integer num = (Integer) this.f237c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int andIncrement = this.f235a.getAndIncrement();
        this.f236b.put(Integer.valueOf(andIncrement), str);
        this.f237c.put(str, Integer.valueOf(andIncrement));
        return andIncrement;
    }

    public final void f(String str) {
        Integer num = (Integer) this.f237c.remove(str);
        if (num != null) {
            this.f236b.remove(num);
        }
        this.f238d.remove(str);
        if (this.e.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.e.getParcelable(str));
            this.e.remove(str);
        }
    }
}
