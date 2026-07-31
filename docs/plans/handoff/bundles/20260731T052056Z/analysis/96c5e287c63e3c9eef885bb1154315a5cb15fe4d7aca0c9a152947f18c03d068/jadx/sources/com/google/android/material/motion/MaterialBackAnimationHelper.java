package com.google.android.material.motion;

import android.content.Context;
import android.view.View;
import android.view.animation.PathInterpolator;
import androidx.activity.BackEventCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MaterialBackAnimationHelper {
    public BackEventCompat backEvent;
    public final int cancelDuration;
    public final int hideDurationMax;
    public final int hideDurationMin;
    public final PathInterpolator progressInterpolator = new PathInterpolator(0.1f, 0.1f, RecyclerView.DECELERATION_RATE, 1.0f);
    public final View view;

    public MaterialBackAnimationHelper(View view) {
        this.view = view;
        Context context = view.getContext();
        this.hideDurationMax = Operation$State.resolveInteger(context, R.attr.motionDurationMedium2, 300);
        this.hideDurationMin = Operation$State.resolveInteger(context, R.attr.motionDurationShort3, 150);
        this.cancelDuration = Operation$State.resolveInteger(context, R.attr.motionDurationShort2, 100);
    }
}
