package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.List;

/* renamed from: c.b.a.b.a.a.a.a.a.a.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0358c {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public List f2303a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2304b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2305c;

    /* renamed from: d, reason: collision with root package name */
    public int f2306d;

    @Nullable
    public String e;
    public SuggestParcelables$InteractionType f;
    public int g;

    public C0358c(Bundle bundle) {
        if (bundle.containsKey("rectIndices")) {
            this.f2303a = bundle.getIntegerArrayList("rectIndices");
        }
        if (bundle.containsKey("id")) {
            this.f2304b = bundle.getString("id");
        }
        if (bundle.containsKey("isSmartSelection")) {
            this.f2305c = bundle.getBoolean("isSmartSelection");
        }
        if (bundle.containsKey("suggestedPresentationMode")) {
            this.f2306d = bundle.getInt("suggestedPresentationMode");
        }
        if (bundle.containsKey("opaquePayload")) {
            this.e = bundle.getString("opaquePayload");
        }
        if (bundle.containsKey("interactionType")) {
            Bundle bundle2 = bundle.getBundle("interactionType");
            if (bundle2 == null) {
                this.f = null;
            } else {
                this.f = SuggestParcelables$InteractionType.e(bundle2);
            }
        }
        if (bundle.containsKey("contentGroupIndex")) {
            this.g = bundle.getInt("contentGroupIndex");
        }
    }

    public C0358c() {
    }
}
