package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$IntentParamType;

/* loaded from: classes.dex */
public final class C {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f2280a;

    /* renamed from: b, reason: collision with root package name */
    public SuggestParcelables$IntentParamType f2281b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public String f2282c;

    /* renamed from: d, reason: collision with root package name */
    public int f2283d;
    public float e;
    public long f;
    public boolean g;

    @Nullable
    public B h;

    @Nullable
    public String i;

    public C(Bundle bundle) {
        if (bundle.containsKey("name")) {
            this.f2280a = bundle.getString("name");
        }
        if (bundle.containsKey("type")) {
            Bundle bundle2 = bundle.getBundle("type");
            if (bundle2 == null) {
                this.f2281b = null;
            } else {
                int i = bundle2.getInt("value");
                this.f2281b = i == 0 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_UNKNOWN : i == 1 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_STRING : i == 2 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_INT : i == 3 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_FLOAT : i == 4 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_LONG : i == 5 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_INTENT : i == 6 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_CONTENT_URI : i == 7 ? SuggestParcelables$IntentParamType.INTENT_PARAM_TYPE_BOOL : null;
            }
        }
        if (bundle.containsKey("strValue")) {
            this.f2282c = bundle.getString("strValue");
        }
        if (bundle.containsKey("intValue")) {
            this.f2283d = bundle.getInt("intValue");
        }
        if (bundle.containsKey("floatValue")) {
            this.e = bundle.getFloat("floatValue");
        }
        if (bundle.containsKey("longValue")) {
            this.f = bundle.getLong("longValue");
        }
        if (bundle.containsKey("boolValue")) {
            this.g = bundle.getBoolean("boolValue");
        }
        if (bundle.containsKey("intentValue")) {
            Bundle bundle3 = bundle.getBundle("intentValue");
            if (bundle3 == null) {
                this.h = null;
            } else {
                this.h = B.a(bundle3);
            }
        }
        if (bundle.containsKey("contentUri")) {
            this.i = bundle.getString("contentUri");
        }
    }

    public C() {
    }
}
