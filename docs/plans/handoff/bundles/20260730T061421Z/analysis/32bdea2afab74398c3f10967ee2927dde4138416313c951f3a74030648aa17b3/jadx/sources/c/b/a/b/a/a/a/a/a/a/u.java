package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ContentType;
import java.util.Objects;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public D f2351a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2352b;

    /* renamed from: c, reason: collision with root package name */
    public SuggestParcelables$ContentType f2353c;

    /* renamed from: d, reason: collision with root package name */
    public int f2354d;

    @Nullable
    public String e;
    public int f;
    public int g;
    public int h;

    public u(Bundle bundle) {
        SuggestParcelables$ContentType suggestParcelables$ContentType = null;
        if (bundle.containsKey("rect")) {
            Bundle bundle2 = bundle.getBundle("rect");
            if (bundle2 == null) {
                this.f2351a = null;
            } else {
                this.f2351a = new D(bundle2);
            }
        }
        if (bundle.containsKey("text")) {
            this.f2352b = bundle.getString("text");
        }
        if (bundle.containsKey("contentType")) {
            Bundle bundle3 = bundle.getBundle("contentType");
            if (bundle3 == null) {
                this.f2353c = null;
            } else {
                int i = bundle3.getInt("value");
                if (i == 0) {
                    suggestParcelables$ContentType = SuggestParcelables$ContentType.CONTENT_TYPE_UNKNOWN;
                } else if (i == 1) {
                    suggestParcelables$ContentType = SuggestParcelables$ContentType.CONTENT_TYPE_TEXT;
                } else if (i == 2) {
                    suggestParcelables$ContentType = SuggestParcelables$ContentType.CONTENT_TYPE_IMAGE;
                }
                this.f2353c = suggestParcelables$ContentType;
            }
        }
        if (bundle.containsKey("lineId")) {
            this.f2354d = bundle.getInt("lineId");
        }
        if (bundle.containsKey("contentUri")) {
            this.e = bundle.getString("contentUri");
        }
        if (bundle.containsKey("contentGroupIndex")) {
            this.f = bundle.getInt("contentGroupIndex");
        }
        if (bundle.containsKey("beginChar")) {
            this.g = bundle.getInt("beginChar");
        }
        if (bundle.containsKey("endChar")) {
            this.h = bundle.getInt("endChar");
        }
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        D d2 = this.f2351a;
        if (d2 == null) {
            bundle.putBundle("rect", null);
        } else {
            bundle.putBundle("rect", d2.a());
        }
        bundle.putString("text", this.f2352b);
        SuggestParcelables$ContentType suggestParcelables$ContentType = this.f2353c;
        if (suggestParcelables$ContentType == null) {
            bundle.putBundle("contentType", null);
        } else {
            Objects.requireNonNull(suggestParcelables$ContentType);
            Bundle bundle2 = new Bundle();
            bundle2.putInt("value", suggestParcelables$ContentType.value);
            bundle.putBundle("contentType", bundle2);
        }
        bundle.putInt("lineId", this.f2354d);
        bundle.putString("contentUri", this.e);
        bundle.putInt("contentGroupIndex", this.f);
        bundle.putInt("beginChar", this.g);
        bundle.putInt("endChar", this.h);
        return bundle;
    }

    public u() {
    }
}
