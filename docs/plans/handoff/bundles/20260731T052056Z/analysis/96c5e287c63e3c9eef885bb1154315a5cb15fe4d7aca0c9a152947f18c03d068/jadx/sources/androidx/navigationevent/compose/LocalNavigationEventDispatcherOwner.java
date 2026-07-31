package androidx.navigationevent.compose;

import android.view.View;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.room.Room;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LocalNavigationEventDispatcherOwner {
    public static final StaticProvidableCompositionLocal LocalNavigationEventDispatcherOwner = new StaticProvidableCompositionLocal(1, new Worker$$ExternalSyntheticLambda1(20));

    public static NavigationEventDispatcherOwner getCurrent(GapComposer gapComposer) {
        NavigationEventDispatcherOwner navigationEventDispatcherOwner;
        NavigationEventDispatcherOwner navigationEventDispatcherOwner2 = (NavigationEventDispatcherOwner) gapComposer.consume(LocalNavigationEventDispatcherOwner);
        if (navigationEventDispatcherOwner2 != null) {
            gapComposer.startReplaceGroup(950834231);
            gapComposer.end(false);
            return navigationEventDispatcherOwner2;
        }
        gapComposer.startReplaceGroup(950836184);
        View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
        view.getClass();
        while (true) {
            navigationEventDispatcherOwner = null;
            if (view == null) {
                break;
            }
            Object tag = view.getTag(R.id.view_tree_navigation_event_dispatcher_owner);
            NavigationEventDispatcherOwner navigationEventDispatcherOwner3 = tag instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) tag : null;
            if (navigationEventDispatcherOwner3 != null) {
                navigationEventDispatcherOwner = navigationEventDispatcherOwner3;
                break;
            }
            Object parentOrViewTreeDisjointParent = Room.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        gapComposer.end(false);
        return navigationEventDispatcherOwner;
    }
}
