package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f2347a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2348b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public s f2349c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public List f2350d;
    public boolean e;

    @Nullable
    public String f;

    public t(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f2347a = bundle.getString("id");
        }
        if (bundle.containsKey("displayName")) {
            this.f2348b = bundle.getString("displayName");
        }
        if (bundle.containsKey("mainAction")) {
            Bundle bundle2 = bundle.getBundle("mainAction");
            if (bundle2 == null) {
                this.f2349c = null;
            } else {
                this.f2349c = new s(bundle2);
            }
        }
        if (bundle.containsKey("alternateActions")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("alternateActions");
            if (parcelableArrayList == null) {
                this.f2350d = null;
            } else {
                this.f2350d = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle3 = (Bundle) it.next();
                    if (bundle3 == null) {
                        this.f2350d.add(null);
                    } else {
                        this.f2350d.add(new s(bundle3));
                    }
                }
            }
        }
        if (bundle.containsKey("isHiddenAction")) {
            this.e = bundle.getBoolean("isHiddenAction");
        }
        if (bundle.containsKey("opaquePayload")) {
            this.f = bundle.getString("opaquePayload");
        }
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("id", this.f2347a);
        bundle.putString("displayName", this.f2348b);
        s sVar = this.f2349c;
        if (sVar == null) {
            bundle.putBundle("mainAction", null);
        } else {
            bundle.putBundle("mainAction", sVar.a());
        }
        if (this.f2350d == null) {
            bundle.putParcelableArrayList("alternateActions", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f2350d.size());
            for (s sVar2 : this.f2350d) {
                if (sVar2 == null) {
                    arrayList.add(null);
                } else {
                    arrayList.add(sVar2.a());
                }
            }
            bundle.putParcelableArrayList("alternateActions", arrayList);
        }
        bundle.putBoolean("isHiddenAction", this.e);
        bundle.putString("opaquePayload", this.f);
        return bundle;
    }

    public t() {
    }
}
