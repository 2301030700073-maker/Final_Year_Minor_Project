package androidx.navigation;

import android.os.Bundle;
import androidx.compose.ui.unit.IntOffsetKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavAction {
    public final int destinationId;
    public NavOptions navOptions = null;
    public Bundle defaultArguments = null;

    public NavAction(int i) {
        this.destinationId = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NavAction)) {
            return false;
        }
        NavAction navAction = (NavAction) obj;
        if (this.destinationId != navAction.destinationId || !Intrinsics.areEqual(this.navOptions, navAction.navOptions)) {
            return false;
        }
        Bundle bundle = this.defaultArguments;
        Bundle bundle2 = navAction.defaultArguments;
        if (Intrinsics.areEqual(bundle, bundle2)) {
            return true;
        }
        return (bundle == null || bundle2 == null || !IntOffsetKt.contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(bundle, bundle2)) ? false : true;
    }

    public final int hashCode() {
        int i = this.destinationId * 31;
        NavOptions navOptions = this.navOptions;
        int hashCode = i + (navOptions != null ? navOptions.hashCode() : 0);
        Bundle bundle = this.defaultArguments;
        if (bundle != null) {
            return IntOffsetKt.contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(bundle) + (hashCode * 31);
        }
        return hashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NavAction(0x");
        sb.append(Integer.toHexString(this.destinationId));
        sb.append(")");
        if (this.navOptions != null) {
            sb.append(" navOptions=");
            sb.append(this.navOptions);
        }
        return sb.toString();
    }
}
