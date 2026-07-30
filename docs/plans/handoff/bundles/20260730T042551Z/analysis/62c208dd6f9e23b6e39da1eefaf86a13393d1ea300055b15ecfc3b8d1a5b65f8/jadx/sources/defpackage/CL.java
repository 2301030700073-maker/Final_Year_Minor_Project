package defpackage;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.view.View;

/* loaded from: classes3.dex */
public final class CL {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f361do = {R.attr.stateListAnimator};

    /* renamed from: do, reason: not valid java name */
    public static void m262do(View view, float f) {
        int integer = view.getResources().getInteger(com.joeykrim.rootcheck.R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{R.attr.state_enabled, com.joeykrim.rootcheck.R.attr.state_liftable, -2130904028}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j));
        stateListAnimator.addState(new int[]{R.attr.state_enabled}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
