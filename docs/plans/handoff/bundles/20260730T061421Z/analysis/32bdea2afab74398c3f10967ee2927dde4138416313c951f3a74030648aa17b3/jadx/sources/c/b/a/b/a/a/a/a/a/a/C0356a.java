package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: c.b.a.b.a.a.a.a.a.a.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0356a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public List f2295a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public List f2296b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public String f2297c;

    /* renamed from: d, reason: collision with root package name */
    public int f2298d;

    public C0356a(Bundle bundle) {
        if (bundle.containsKey("contentRects")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("contentRects");
            if (parcelableArrayList == null) {
                this.f2295a = null;
            } else {
                this.f2295a = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        this.f2295a.add(null);
                    } else {
                        this.f2295a.add(new u(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("selections")) {
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("selections");
            if (parcelableArrayList2 == null) {
                this.f2296b = null;
            } else {
                this.f2296b = new ArrayList(parcelableArrayList2.size());
                Iterator it2 = parcelableArrayList2.iterator();
                while (it2.hasNext()) {
                    Bundle bundle3 = (Bundle) it2.next();
                    if (bundle3 == null) {
                        this.f2296b.add(null);
                    } else {
                        this.f2296b.add(new C0358c(bundle3));
                    }
                }
            }
        }
        if (bundle.containsKey("text")) {
            this.f2297c = bundle.getString("text");
        }
        if (bundle.containsKey("numLines")) {
            this.f2298d = bundle.getInt("numLines");
        }
    }

    public C0356a() {
    }
}
