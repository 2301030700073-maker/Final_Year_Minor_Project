package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$IntentParamType;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$IntentType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class B {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public List f2276a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2277b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public String f2278c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public String f2279d;

    @Nullable
    public String e;

    @Nullable
    public String f;
    public int g;
    public SuggestParcelables$IntentType h;

    public B(Bundle bundle) {
        SuggestParcelables$IntentType suggestParcelables$IntentType = null;
        if (bundle.containsKey("intentParams")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("intentParams");
            if (parcelableArrayList == null) {
                this.f2276a = null;
            } else {
                this.f2276a = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        this.f2276a.add(null);
                    } else {
                        this.f2276a.add(new C(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("packageName")) {
            this.f2277b = bundle.getString("packageName");
        }
        if (bundle.containsKey("className")) {
            this.f2278c = bundle.getString("className");
        }
        if (bundle.containsKey("action")) {
            this.f2279d = bundle.getString("action");
        }
        if (bundle.containsKey("uri")) {
            this.e = bundle.getString("uri");
        }
        if (bundle.containsKey("mimeType")) {
            this.f = bundle.getString("mimeType");
        }
        if (bundle.containsKey("flags")) {
            this.g = bundle.getInt("flags");
        }
        if (bundle.containsKey("intentType")) {
            Bundle bundle3 = bundle.getBundle("intentType");
            if (bundle3 == null) {
                this.h = null;
                return;
            }
            int i = bundle3.getInt("value");
            if (i == 0) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.DEFAULT;
            } else if (i == 1) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.COPY_TEXT;
            } else if (i == 2) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.SHARE_IMAGE;
            } else if (i == 3) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.LENS;
            } else if (i == 4) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.SAVE;
            } else if (i == 5) {
                suggestParcelables$IntentType = SuggestParcelables$IntentType.COPY_IMAGE;
            }
            this.h = suggestParcelables$IntentType;
        }
    }

    public static B a(Bundle bundle) {
        return new B(bundle);
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        if (this.f2276a == null) {
            bundle.putParcelableArrayList("intentParams", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f2276a.size());
            for (C c2 : this.f2276a) {
                if (c2 == null) {
                    arrayList.add(null);
                } else {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("name", c2.f2280a);
                    SuggestParcelables$IntentParamType suggestParcelables$IntentParamType = c2.f2281b;
                    if (suggestParcelables$IntentParamType == null) {
                        bundle2.putBundle("type", null);
                    } else {
                        Bundle bundle3 = new Bundle();
                        bundle3.putInt("value", suggestParcelables$IntentParamType.value);
                        bundle2.putBundle("type", bundle3);
                    }
                    bundle2.putString("strValue", c2.f2282c);
                    bundle2.putInt("intValue", c2.f2283d);
                    bundle2.putFloat("floatValue", c2.e);
                    bundle2.putLong("longValue", c2.f);
                    bundle2.putBoolean("boolValue", c2.g);
                    B b2 = c2.h;
                    if (b2 == null) {
                        bundle2.putBundle("intentValue", null);
                    } else {
                        bundle2.putBundle("intentValue", b2.b());
                    }
                    bundle2.putString("contentUri", c2.i);
                    arrayList.add(bundle2);
                }
            }
            bundle.putParcelableArrayList("intentParams", arrayList);
        }
        bundle.putString("packageName", this.f2277b);
        bundle.putString("className", this.f2278c);
        bundle.putString("action", this.f2279d);
        bundle.putString("uri", this.e);
        bundle.putString("mimeType", this.f);
        bundle.putInt("flags", this.g);
        SuggestParcelables$IntentType suggestParcelables$IntentType = this.h;
        if (suggestParcelables$IntentType == null) {
            bundle.putBundle("intentType", null);
        } else {
            Objects.requireNonNull(suggestParcelables$IntentType);
            Bundle bundle4 = new Bundle();
            bundle4.putInt("value", suggestParcelables$IntentType.value);
            bundle.putBundle("intentType", bundle4);
        }
        return bundle;
    }

    public B() {
    }
}
