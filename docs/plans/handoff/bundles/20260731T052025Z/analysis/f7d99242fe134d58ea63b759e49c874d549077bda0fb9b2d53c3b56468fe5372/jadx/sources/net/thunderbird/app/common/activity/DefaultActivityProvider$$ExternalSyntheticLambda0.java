package net.thunderbird.app.common.activity;

import android.app.Activity;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultActivityProvider$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Activity f$0;

    public /* synthetic */ DefaultActivityProvider$$ExternalSyntheticLambda0(Activity activity, int i) {
        this.$r8$classId = i;
        this.f$0 = activity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Activity activity = this.f$0;
        switch (i) {
            case 0:
                return "onActivityPaused: clearing current activity ".concat(activity.getClass().getSimpleName());
            case 1:
                return "onActivityResumed: setting activity to ".concat(activity.getClass().getSimpleName());
            default:
                return "onActivityDestroyed: clearing current activity ".concat(activity.getClass().getSimpleName());
        }
    }
}
