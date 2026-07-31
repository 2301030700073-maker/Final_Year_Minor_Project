package androidx.navigation.internal;

import androidx.navigation.NavDeepLink;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavDestinationImpl$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavDeepLink f$0;

    public /* synthetic */ NavDestinationImpl$$ExternalSyntheticLambda0(NavDeepLink navDeepLink, int i) {
        this.$r8$classId = i;
        this.f$0 = navDeepLink;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean contains;
        int i = this.$r8$classId;
        NavDeepLink navDeepLink = this.f$0;
        String str = (String) obj;
        switch (i) {
            case 0:
                str.getClass();
                contains = navDeepLink.getArgumentsNames$navigation_common_release().contains(str);
                break;
            default:
                str.getClass();
                contains = navDeepLink.getArgumentsNames$navigation_common_release().contains(str);
                break;
        }
        return Boolean.valueOf(!contains);
    }
}
