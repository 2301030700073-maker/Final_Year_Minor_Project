package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class F {

    /* renamed from: a, reason: collision with root package name */
    public long f2291a;

    /* renamed from: b, reason: collision with root package name */
    public long f2292b;

    /* renamed from: c, reason: collision with root package name */
    public long f2293c;

    /* renamed from: d, reason: collision with root package name */
    public long f2294d;
    public long e;

    public F(Bundle bundle) {
        if (bundle.containsKey("startTimestampMs")) {
            this.f2291a = bundle.getLong("startTimestampMs");
        }
        if (bundle.containsKey("endTimestampMs")) {
            this.f2292b = bundle.getLong("endTimestampMs");
        }
        if (bundle.containsKey("ocrMs")) {
            this.f2293c = bundle.getLong("ocrMs");
        }
        if (bundle.containsKey("ocrDetectionMs")) {
            this.f2294d = bundle.getLong("ocrDetectionMs");
        }
        if (bundle.containsKey("entityExtractionMs")) {
            this.e = bundle.getLong("entityExtractionMs");
        }
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putLong("startTimestampMs", this.f2291a);
        bundle.putLong("endTimestampMs", this.f2292b);
        bundle.putLong("ocrMs", this.f2293c);
        bundle.putLong("ocrDetectionMs", this.f2294d);
        bundle.putLong("entityExtractionMs", this.e);
        return bundle;
    }
}
