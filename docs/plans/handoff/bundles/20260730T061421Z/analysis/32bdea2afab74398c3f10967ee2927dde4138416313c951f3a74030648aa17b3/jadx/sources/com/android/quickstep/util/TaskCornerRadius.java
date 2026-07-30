package com.android.quickstep.util;

import android.content.Context;
import b.l.W;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;

/* loaded from: classes.dex */
public class TaskCornerRadius {
    public static float get(Context context) {
        return QuickStepContract.supportsRoundedCornersOnWindows(context.getResources()) ? W.getDialogCornerRadius(context) : context.getResources().getDimension(R.dimen.task_corner_radius_small);
    }
}
