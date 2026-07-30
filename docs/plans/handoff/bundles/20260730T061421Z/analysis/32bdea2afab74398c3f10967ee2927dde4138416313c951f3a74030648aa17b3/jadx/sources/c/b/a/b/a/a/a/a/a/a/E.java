package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ErrorCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class E {

    /* renamed from: a, reason: collision with root package name */
    public SuggestParcelables$ErrorCode f2288a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2289b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public List f2290c;

    public E(Bundle bundle) {
        if (bundle.containsKey("errorCode")) {
            Bundle bundle2 = bundle.getBundle("errorCode");
            if (bundle2 == null) {
                this.f2288a = null;
            } else {
                int i = bundle2.getInt("value");
                this.f2288a = i == 0 ? SuggestParcelables$ErrorCode.ERROR_CODE_SUCCESS : i == 1 ? SuggestParcelables$ErrorCode.ERROR_CODE_UNKNOWN_ERROR : i == 2 ? SuggestParcelables$ErrorCode.ERROR_CODE_TIMEOUT : i == 3 ? SuggestParcelables$ErrorCode.ERROR_CODE_NO_SCREEN_CONTENT : i == 4 ? SuggestParcelables$ErrorCode.ERROR_CODE_NO_SUPPORTED_LOCALES : null;
            }
        }
        if (bundle.containsKey("errorMesssage")) {
            this.f2289b = bundle.getString("errorMesssage");
        }
        if (bundle.containsKey("setupFlags")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("setupFlags");
            if (parcelableArrayList == null) {
                this.f2290c = null;
                return;
            }
            this.f2290c = new ArrayList(parcelableArrayList.size());
            Iterator it = parcelableArrayList.iterator();
            while (it.hasNext()) {
                Bundle bundle3 = (Bundle) it.next();
                if (bundle3 == null) {
                    this.f2290c.add(null);
                } else {
                    this.f2290c.add(new A(bundle3));
                }
            }
        }
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        SuggestParcelables$ErrorCode suggestParcelables$ErrorCode = this.f2288a;
        if (suggestParcelables$ErrorCode == null) {
            bundle.putBundle("errorCode", null);
        } else {
            Objects.requireNonNull(suggestParcelables$ErrorCode);
            Bundle bundle2 = new Bundle();
            bundle2.putInt("value", suggestParcelables$ErrorCode.value);
            bundle.putBundle("errorCode", bundle2);
        }
        bundle.putString("errorMesssage", this.f2289b);
        if (this.f2290c == null) {
            bundle.putParcelableArrayList("setupFlags", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f2290c.size());
            for (A a2 : this.f2290c) {
                if (a2 == null) {
                    arrayList.add(null);
                } else {
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("name", a2.f2274a);
                    bundle3.putString("value", a2.f2275b);
                    arrayList.add(bundle3);
                }
            }
            bundle.putParcelableArrayList("setupFlags", arrayList);
        }
        return bundle;
    }
}
