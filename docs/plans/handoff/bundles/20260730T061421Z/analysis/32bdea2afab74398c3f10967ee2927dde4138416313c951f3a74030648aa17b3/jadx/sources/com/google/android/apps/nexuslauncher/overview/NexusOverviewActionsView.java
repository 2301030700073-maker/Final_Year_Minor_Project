package com.google.android.apps.nexuslauncher.overview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import c.b.a.b.b.k.h;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.views.OverviewActionsView;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class NexusOverviewActionsView extends OverviewActionsView {
    public static final Interpolator e = new PathInterpolator(0.45f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 1.0f);

    /* renamed from: a, reason: collision with root package name */
    public View f3301a;

    /* renamed from: b, reason: collision with root package name */
    public View f3302b;

    /* renamed from: c, reason: collision with root package name */
    public View f3303c;

    /* renamed from: d, reason: collision with root package name */
    public View f3304d;

    public NexusOverviewActionsView(Context context) {
        this(context, null);
    }

    public /* synthetic */ void a() {
        this.f3301a.setVisibility(8);
    }

    @Override // com.android.quickstep.views.OverviewActionsView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (this.mCallbacks == null) {
            return;
        }
        int id = view.getId();
        if (id == R.id.action_select) {
            ((h) this.mCallbacks).b();
        } else if (id == R.id.feedback) {
            ((h) this.mCallbacks).a();
        } else if (id == R.id.close) {
            ((h) this.mCallbacks).c();
        }
    }

    @Override // com.android.quickstep.views.OverviewActionsView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f3301a = findViewById(R.id.action_buttons);
        this.f3302b = findViewById(R.id.select_mode_buttons);
        View findViewById = findViewById(R.id.action_select);
        this.f3303c = findViewById;
        findViewById.setOnClickListener(this);
        View findViewById2 = findViewById(R.id.feedback);
        this.f3304d = findViewById2;
        findViewById2.setOnClickListener(this);
        findViewById(R.id.close).setOnClickListener(this);
    }

    @Override // com.android.quickstep.views.OverviewActionsView
    public void updateDisabledFlags(int i, boolean z) {
        super.updateDisabledFlags(i, z);
        View view = this.f3303c;
        int i2 = this.mDisabledFlags;
        LayoutUtils.setViewEnabled(view, (i2 & (-3)) == 0 && (i2 & 2) == 0);
    }

    public NexusOverviewActionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NexusOverviewActionsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
