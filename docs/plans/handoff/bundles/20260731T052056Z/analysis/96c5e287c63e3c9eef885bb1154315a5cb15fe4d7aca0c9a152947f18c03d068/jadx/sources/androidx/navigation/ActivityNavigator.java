package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import androidx.compose.ui.Modifier;
import androidx.navigation.Navigator;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Navigator.Name("activity")
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/ActivityNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/ActivityNavigator$Destination;", "Destination", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public class ActivityNavigator extends Navigator {
    public final Activity hostActivity;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Destination extends NavDestination {
        @Override // androidx.navigation.NavDestination
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Destination) || !super.equals(obj)) {
                return false;
            }
            return true;
        }

        @Override // androidx.navigation.NavDestination
        public final int hashCode() {
            return super.hashCode() * 961;
        }
    }

    public ActivityNavigator(Context context) {
        Object obj;
        context.getClass();
        Iterator it = SequencesKt.generateSequence(context, new PagingSource$$ExternalSyntheticLambda0(16)).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it.next();
                if (((Context) obj) instanceof Activity) {
                    break;
                }
            }
        }
        this.hostActivity = (Activity) obj;
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination createDestination() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination navigate(NavDestination navDestination) {
        throw new IllegalStateException(Modifier.CC.m(new StringBuilder("Destination "), ((Destination) navDestination).impl.size, " does not have an Intent set.").toString());
    }

    @Override // androidx.navigation.Navigator
    public final boolean popBackStack() {
        Activity activity = this.hostActivity;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return true;
    }
}
