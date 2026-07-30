package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f2355a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2356b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public List f2357c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public F f2358d;

    @Nullable
    public v e;

    @Nullable
    public z f;

    @Nullable
    public String g;

    @Nullable
    public E h;

    public w(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f2355a = bundle.getString("id");
        }
        if (bundle.containsKey("success")) {
            this.f2356b = bundle.getBoolean("success");
        }
        if (bundle.containsKey("entities")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("entities");
            if (parcelableArrayList == null) {
                this.f2357c = null;
            } else {
                this.f2357c = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        this.f2357c.add(null);
                    } else {
                        this.f2357c.add(new x(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("stats")) {
            Bundle bundle3 = bundle.getBundle("stats");
            if (bundle3 == null) {
                this.f2358d = null;
            } else {
                this.f2358d = new F(bundle3);
            }
        }
        if (bundle.containsKey("debugInfo")) {
            Bundle bundle4 = bundle.getBundle("debugInfo");
            if (bundle4 == null) {
                this.e = null;
            } else {
                this.e = new v(bundle4);
            }
        }
        if (bundle.containsKey("extrasInfo")) {
            Bundle bundle5 = bundle.getBundle("extrasInfo");
            if (bundle5 == null) {
                this.f = null;
            } else {
                this.f = new z(bundle5);
            }
        }
        if (bundle.containsKey("opaquePayload")) {
            this.g = bundle.getString("opaquePayload");
        }
        if (bundle.containsKey("setupInfo")) {
            Bundle bundle6 = bundle.getBundle("setupInfo");
            if (bundle6 == null) {
                this.h = null;
            } else {
                this.h = new E(bundle6);
            }
        }
    }

    public w() {
    }
}
