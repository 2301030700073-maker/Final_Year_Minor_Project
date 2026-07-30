package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.android.systemui.shared.plugins.PluginPrefs;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f2359a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public List f2360b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2361c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public List f2362d;

    @Nullable
    public String e;

    @Nullable
    public String f;

    @Nullable
    public String g;

    @Nullable
    public String h;
    public float i;
    public int j;
    public int k;
    public boolean l;
    public int m;
    public int n;
    public int o;
    public int p;

    @Nullable
    public String q;
    public SuggestParcelables$InteractionType r;

    public x(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f2359a = bundle.getString("id");
        }
        if (bundle.containsKey(PluginPrefs.PLUGIN_ACTIONS)) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(PluginPrefs.PLUGIN_ACTIONS);
            if (parcelableArrayList == null) {
                this.f2360b = null;
            } else {
                this.f2360b = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        this.f2360b.add(null);
                    } else {
                        this.f2360b.add(new t(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("entitySpans")) {
            this.f2361c = true;
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("entitySpans");
            if (parcelableArrayList2 == null) {
                this.f2362d = null;
            } else {
                this.f2362d = new ArrayList(parcelableArrayList2.size());
                Iterator it2 = parcelableArrayList2.iterator();
                while (it2.hasNext()) {
                    Bundle bundle3 = (Bundle) it2.next();
                    if (bundle3 == null) {
                        this.f2362d.add(null);
                    } else {
                        this.f2362d.add(new y(bundle3));
                    }
                }
            }
        } else {
            this.f2361c = false;
        }
        if (bundle.containsKey("searchQueryHint")) {
            this.e = bundle.getString("searchQueryHint");
        }
        if (bundle.containsKey("annotationTypeName")) {
            this.f = bundle.getString("annotationTypeName");
        }
        if (bundle.containsKey("annotationSourceName")) {
            this.g = bundle.getString("annotationSourceName");
        }
        if (bundle.containsKey("verticalTypeName")) {
            this.h = bundle.getString("verticalTypeName");
        }
        if (bundle.containsKey("annotationScore")) {
            this.i = bundle.getFloat("annotationScore");
        }
        if (bundle.containsKey("contentGroupIndex")) {
            this.j = bundle.getInt("contentGroupIndex");
        }
        if (bundle.containsKey("selectionIndex")) {
            this.k = bundle.getInt("selectionIndex");
        }
        if (bundle.containsKey("isSmartSelection")) {
            this.l = bundle.getBoolean("isSmartSelection");
        }
        if (bundle.containsKey("suggestedPresentationMode")) {
            this.m = bundle.getInt("suggestedPresentationMode");
        }
        if (bundle.containsKey("numWords")) {
            this.n = bundle.getInt("numWords");
        }
        if (bundle.containsKey("startIndex")) {
            this.o = bundle.getInt("startIndex");
        }
        if (bundle.containsKey("endIndex")) {
            this.p = bundle.getInt("endIndex");
        }
        if (bundle.containsKey("opaquePayload")) {
            this.q = bundle.getString("opaquePayload");
        }
        if (bundle.containsKey("interactionType")) {
            Bundle bundle4 = bundle.getBundle("interactionType");
            if (bundle4 == null) {
                this.r = null;
            } else {
                this.r = SuggestParcelables$InteractionType.e(bundle4);
            }
        }
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("id", this.f2359a);
        if (this.f2360b == null) {
            bundle.putParcelableArrayList(PluginPrefs.PLUGIN_ACTIONS, null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f2360b.size());
            for (t tVar : this.f2360b) {
                if (tVar == null) {
                    arrayList.add(null);
                } else {
                    arrayList.add(tVar.a());
                }
            }
            bundle.putParcelableArrayList(PluginPrefs.PLUGIN_ACTIONS, arrayList);
        }
        if (this.f2362d == null) {
            bundle.putParcelableArrayList("entitySpans", null);
        } else {
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(this.f2362d.size());
            for (y yVar : this.f2362d) {
                if (yVar == null) {
                    arrayList2.add(null);
                } else {
                    Bundle bundle2 = new Bundle();
                    if (yVar.f2363a == null) {
                        bundle2.putParcelableArrayList("rects", null);
                    } else {
                        ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>(yVar.f2363a.size());
                        for (u uVar : yVar.f2363a) {
                            if (uVar == null) {
                                arrayList3.add(null);
                            } else {
                                arrayList3.add(uVar.a());
                            }
                        }
                        bundle2.putParcelableArrayList("rects", arrayList3);
                    }
                    bundle2.putString("selectionId", yVar.f2364b);
                    if (yVar.f2365c == null) {
                        bundle2.putIntegerArrayList("rectIndices", null);
                    } else {
                        bundle2.putIntegerArrayList("rectIndices", new ArrayList<>(yVar.f2365c));
                    }
                    arrayList2.add(bundle2);
                }
            }
            bundle.putParcelableArrayList("entitySpans", arrayList2);
        }
        bundle.putString("searchQueryHint", this.e);
        bundle.putString("annotationTypeName", this.f);
        bundle.putString("annotationSourceName", this.g);
        bundle.putString("verticalTypeName", this.h);
        bundle.putFloat("annotationScore", this.i);
        bundle.putInt("contentGroupIndex", this.j);
        bundle.putInt("selectionIndex", this.k);
        bundle.putBoolean("isSmartSelection", this.l);
        bundle.putInt("suggestedPresentationMode", this.m);
        bundle.putInt("numWords", this.n);
        bundle.putInt("startIndex", this.o);
        bundle.putInt("endIndex", this.p);
        bundle.putString("opaquePayload", this.q);
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = this.r;
        if (suggestParcelables$InteractionType == null) {
            bundle.putBundle("interactionType", null);
        } else {
            bundle.putBundle("interactionType", suggestParcelables$InteractionType.g());
        }
        return bundle;
    }

    public x() {
    }
}
