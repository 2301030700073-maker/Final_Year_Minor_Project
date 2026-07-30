package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: c.b.a.b.a.a.a.a.a.a.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0357b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f2299a;

    /* renamed from: b, reason: collision with root package name */
    public long f2300b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public List f2301c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public F f2302d;

    @Nullable
    public v e;

    @Nullable
    public String f;

    @Nullable
    public E g;

    public C0357b(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f2299a = bundle.getString("id");
        }
        if (bundle.containsKey("screenSessionId")) {
            this.f2300b = bundle.getLong("screenSessionId");
        }
        if (bundle.containsKey("contentGroups")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("contentGroups");
            if (parcelableArrayList == null) {
                this.f2301c = null;
            } else {
                this.f2301c = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        this.f2301c.add(null);
                    } else {
                        this.f2301c.add(new C0356a(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("stats")) {
            Bundle bundle3 = bundle.getBundle("stats");
            if (bundle3 == null) {
                this.f2302d = null;
            } else {
                this.f2302d = new F(bundle3);
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
        if (bundle.containsKey("opaquePayload")) {
            this.f = bundle.getString("opaquePayload");
        }
        if (bundle.containsKey("setupInfo")) {
            Bundle bundle5 = bundle.getBundle("setupInfo");
            if (bundle5 == null) {
                this.g = null;
            } else {
                this.g = new E(bundle5);
            }
        }
    }

    public Bundle a() {
        Iterator it;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        bundle2.putString("id", this.f2299a);
        bundle2.putLong("screenSessionId", this.f2300b);
        ArrayList<Integer> arrayList = null;
        if (this.f2301c == null) {
            bundle2.putParcelableArrayList("contentGroups", null);
        } else {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(this.f2301c.size());
            Iterator it2 = this.f2301c.iterator();
            while (it2.hasNext()) {
                C0356a c0356a = (C0356a) it2.next();
                if (c0356a == null) {
                    arrayList2.add(arrayList);
                    it = it2;
                } else {
                    Bundle bundle3 = new Bundle();
                    if (c0356a.f2295a == null) {
                        bundle3.putParcelableArrayList("contentRects", arrayList);
                    } else {
                        ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>(c0356a.f2295a.size());
                        for (u uVar : c0356a.f2295a) {
                            if (uVar == null) {
                                arrayList3.add(arrayList);
                            } else {
                                arrayList3.add(uVar.a());
                            }
                        }
                        bundle3.putParcelableArrayList("contentRects", arrayList3);
                    }
                    if (c0356a.f2296b == null) {
                        bundle3.putParcelableArrayList("selections", arrayList);
                        it = it2;
                    } else {
                        ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>(c0356a.f2296b.size());
                        for (C0358c c0358c : c0356a.f2296b) {
                            if (c0358c == null) {
                                arrayList4.add(arrayList);
                            } else {
                                Bundle bundle4 = new Bundle();
                                Iterator it3 = it2;
                                if (c0358c.f2303a == null) {
                                    bundle4.putIntegerArrayList("rectIndices", arrayList);
                                } else {
                                    bundle4.putIntegerArrayList("rectIndices", new ArrayList<>(c0358c.f2303a));
                                }
                                bundle4.putString("id", c0358c.f2304b);
                                bundle4.putBoolean("isSmartSelection", c0358c.f2305c);
                                bundle4.putInt("suggestedPresentationMode", c0358c.f2306d);
                                bundle4.putString("opaquePayload", c0358c.e);
                                SuggestParcelables$InteractionType suggestParcelables$InteractionType = c0358c.f;
                                if (suggestParcelables$InteractionType == null) {
                                    bundle4.putBundle("interactionType", null);
                                } else {
                                    bundle4.putBundle("interactionType", suggestParcelables$InteractionType.g());
                                }
                                bundle4.putInt("contentGroupIndex", c0358c.g);
                                arrayList4.add(bundle4);
                                it2 = it3;
                                arrayList = null;
                            }
                        }
                        it = it2;
                        bundle3.putParcelableArrayList("selections", arrayList4);
                    }
                    bundle3.putString("text", c0356a.f2297c);
                    bundle3.putInt("numLines", c0356a.f2298d);
                    arrayList2.add(bundle3);
                }
                it2 = it;
                arrayList = null;
            }
            bundle2.putParcelableArrayList("contentGroups", arrayList2);
        }
        F f = this.f2302d;
        if (f == null) {
            bundle = null;
            bundle2.putBundle("stats", null);
        } else {
            bundle = null;
            bundle2.putBundle("stats", f.a());
        }
        if (this.e == null) {
            bundle2.putBundle("debugInfo", bundle);
        } else {
            bundle2.putBundle("debugInfo", new Bundle());
        }
        bundle2.putString("opaquePayload", this.f);
        E e = this.g;
        if (e == null) {
            bundle2.putBundle("setupInfo", bundle);
        } else {
            bundle2.putBundle("setupInfo", e.a());
        }
        return bundle2;
    }

    public C0357b() {
    }
}
