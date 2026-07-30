package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode;
import java.util.Objects;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f2311a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public String f2312b;

    /* renamed from: c, reason: collision with root package name */
    public int f2313c;

    /* renamed from: d, reason: collision with root package name */
    public FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode f2314d;

    @Nullable
    public B e;

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("id", this.f2311a);
        bundle.putString("displayName", this.f2312b);
        bundle.putInt("invokeRankIndex", this.f2313c);
        FeedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode feedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode = this.f2314d;
        if (feedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode == null) {
            bundle.putBundle("displayMode", null);
        } else {
            Objects.requireNonNull(feedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode);
            Bundle bundle2 = new Bundle();
            bundle2.putInt("value", feedbackParcelables$ActionMenuItem$ActionMenuItemDisplayMode.value);
            bundle.putBundle("displayMode", bundle2);
        }
        B b2 = this.e;
        if (b2 == null) {
            bundle.putBundle("actionIntent", null);
        } else {
            bundle.putBundle("actionIntent", b2.b());
        }
        return bundle;
    }
}
