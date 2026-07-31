package androidx.navigation.compose;

import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;
import androidx.compose.runtime.State;
import androidx.compose.ui.layout.Placeable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DialogHostKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ DialogHostKt$$ExternalSyntheticLambda0(int i, Object obj, Object obj2, boolean z) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
        this.f$2 = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$2;
        final boolean z = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                final NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                final List list = (List) obj2;
                LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.navigation.compose.DialogHostKt$$ExternalSyntheticLambda2
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        boolean z2 = z;
                        List list2 = list;
                        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                        if (z2 && !list2.contains(navBackStackEntry2)) {
                            list2.add(navBackStackEntry2);
                        }
                        if (event == Lifecycle.Event.ON_START && !list2.contains(navBackStackEntry2)) {
                            list2.add(navBackStackEntry2);
                        }
                        if (event == Lifecycle.Event.ON_STOP) {
                            list2.remove(navBackStackEntry2);
                        }
                    }
                };
                navBackStackEntry.impl.lifecycle.addObserver(lifecycleEventObserver);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(11, navBackStackEntry, lifecycleEventObserver);
            default:
                ((Placeable.PlacementScope) obj).place((Placeable) obj2, 0, 0, ((Number) ((State) obj3).getValue()).floatValue() + (z ? 5.0f : 0.0f));
                return Unit.INSTANCE;
        }
    }
}
