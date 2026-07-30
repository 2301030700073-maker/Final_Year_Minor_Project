package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f2343a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2344b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public String f2345c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2346d;

    @Nullable
    public String e;

    @Nullable
    public B f;

    @Nullable
    public B g;

    @Nullable
    public String h;

    public s(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f2343a = bundle.getString("id");
        }
        if (bundle.containsKey("displayName")) {
            this.f2344b = bundle.getString("displayName");
        }
        if (bundle.containsKey("dEPRECATEDIconBitmapId")) {
            this.f2345c = bundle.getString("dEPRECATEDIconBitmapId");
        }
        if (bundle.containsKey("fullDisplayName")) {
            this.f2346d = true;
            this.e = bundle.getString("fullDisplayName");
        } else {
            this.f2346d = false;
        }
        if (bundle.containsKey("dEPRECATEDIntentInfo")) {
            Bundle bundle2 = bundle.getBundle("dEPRECATEDIntentInfo");
            if (bundle2 == null) {
                this.f = null;
            } else {
                this.f = new B(bundle2);
            }
        }
        if (bundle.containsKey("proxiedIntentInfo")) {
            Bundle bundle3 = bundle.getBundle("proxiedIntentInfo");
            if (bundle3 == null) {
                this.g = null;
            } else {
                this.g = new B(bundle3);
            }
        }
        if (bundle.containsKey("opaquePayload")) {
            this.h = bundle.getString("opaquePayload");
        }
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("id", this.f2343a);
        bundle.putString("displayName", this.f2344b);
        bundle.putString("dEPRECATEDIconBitmapId", this.f2345c);
        bundle.putString("fullDisplayName", this.e);
        B b2 = this.f;
        if (b2 == null) {
            bundle.putBundle("dEPRECATEDIntentInfo", null);
        } else {
            bundle.putBundle("dEPRECATEDIntentInfo", b2.b());
        }
        B b3 = this.g;
        if (b3 == null) {
            bundle.putBundle("proxiedIntentInfo", null);
        } else {
            bundle.putBundle("proxiedIntentInfo", b3.b());
        }
        bundle.putString("opaquePayload", this.h);
        return bundle;
    }

    public s() {
    }
}
