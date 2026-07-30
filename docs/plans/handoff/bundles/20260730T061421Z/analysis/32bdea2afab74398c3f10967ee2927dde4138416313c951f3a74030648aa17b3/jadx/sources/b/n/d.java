package b.n;

import android.annotation.SuppressLint;
import android.os.Bundle;
import b.c.a.b.h;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public Bundle f1232b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1233c;

    /* renamed from: d, reason: collision with root package name */
    public a f1234d;

    /* renamed from: a, reason: collision with root package name */
    public h f1231a = new h();
    public boolean e = true;

    public Bundle a(String str) {
        if (!this.f1233c) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f1232b;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        this.f1232b.remove(str);
        if (this.f1232b.isEmpty()) {
            this.f1232b = null;
        }
        return bundle2;
    }

    public void b(Class cls) {
        if (!this.e) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f1234d == null) {
            this.f1234d = new a(this);
        }
        try {
            cls.getDeclaredConstructor(new Class[0]);
            a aVar = this.f1234d;
            aVar.f1230a.add(cls.getName());
        } catch (NoSuchMethodException e) {
            StringBuilder f = c.a.c.a.a.f("Class");
            f.append(cls.getSimpleName());
            f.append(" must have default constructor in order to be automatically recreated");
            throw new IllegalArgumentException(f.toString(), e);
        }
    }
}
