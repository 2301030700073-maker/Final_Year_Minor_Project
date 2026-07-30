package c.b.a.b.a.a.a.a.c;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.android.systemui.shared.R;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;

/* loaded from: classes.dex */
public final class E extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f2378a;

    /* renamed from: b, reason: collision with root package name */
    public final c.b.a.b.b.h.a f2379b;

    /* renamed from: c, reason: collision with root package name */
    public final C0371j f2380c;

    /* renamed from: d, reason: collision with root package name */
    public final C0368g f2381d;

    public E(Context context, c.b.a.b.b.h.a aVar, C0368g c0368g) {
        super(context);
        FrameLayout.inflate(getContext(), R.layout.proactive_suggestion_view, this);
        this.f2378a = (LinearLayout) findViewById(R.id.proactive_suggestion_container);
        this.f2379b = aVar;
        this.f2381d = c0368g;
        this.f2380c = c0368g.f2460b;
    }

    public void a() {
        if (this.f2378a.getVisibility() == 0 && this.f2378a.getChildCount() > 0) {
            this.f2380c.i(SuggestParcelables$InteractionType.CHIP);
        }
        this.f2378a.removeAllViews();
        this.f2378a.setVisibility(8);
    }
}
