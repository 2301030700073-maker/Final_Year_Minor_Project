package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.ActivityTransition;
import java.util.Comparator;

/* loaded from: classes3.dex */
public final class HU implements Comparator<ActivityTransition> {
    @Override // java.util.Comparator
    public final int compare(ActivityTransition activityTransition, ActivityTransition activityTransition2) {
        ActivityTransition activityTransition3 = activityTransition;
        ActivityTransition activityTransition4 = activityTransition2;
        Preconditions.checkNotNull(activityTransition3);
        Preconditions.checkNotNull(activityTransition4);
        int i = activityTransition3.f10199for;
        int i2 = activityTransition4.f10199for;
        if (i != i2) {
            return i >= i2 ? 1 : -1;
        }
        int i3 = activityTransition3.f10200new;
        int i4 = activityTransition4.f10200new;
        if (i3 == i4) {
            return 0;
        }
        return i3 < i4 ? -1 : 1;
    }
}
