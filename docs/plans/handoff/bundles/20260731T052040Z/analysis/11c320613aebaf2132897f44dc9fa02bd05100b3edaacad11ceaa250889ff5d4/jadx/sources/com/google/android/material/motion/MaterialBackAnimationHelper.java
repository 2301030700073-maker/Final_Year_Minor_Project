package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import android.view.animation.PathInterpolator;
import androidx.activity.BackEventCompat;
import okhttp3.Cookie;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MaterialBackAnimationHelper {
    public BackEventCompat backEvent;
    public final int cancelDuration;
    public final int hideDurationMax;
    public final int hideDurationMin;
    public final TimeInterpolator progressInterpolator;
    public final View view;

    public MaterialBackAnimationHelper(View view) {
        this.view = view;
        Context context = view.getContext();
        this.progressInterpolator = Cookie.Companion.resolveThemeInterpolator(context, R.attr.motionEasingStandardDecelerateInterpolator, new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f));
        this.hideDurationMax = Cookie.Companion.resolveThemeDuration(context, R.attr.motionDurationMedium2, 300);
        this.hideDurationMin = Cookie.Companion.resolveThemeDuration(context, R.attr.motionDurationShort3, 150);
        this.cancelDuration = Cookie.Companion.resolveThemeDuration(context, R.attr.motionDurationShort2, 100);
    }
}
