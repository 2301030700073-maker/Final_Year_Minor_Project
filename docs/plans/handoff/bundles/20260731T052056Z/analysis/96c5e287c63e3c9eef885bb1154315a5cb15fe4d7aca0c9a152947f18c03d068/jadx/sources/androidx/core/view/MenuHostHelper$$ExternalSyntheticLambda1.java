package androidx.core.view;

import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.caverock.androidsvg.SVG;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MenuHostHelper$$ExternalSyntheticLambda1 implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ MenuHostHelper$$ExternalSyntheticLambda1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                SVG svg = (SVG) obj2;
                MenuProvider menuProvider = (MenuProvider) obj;
                svg.getClass();
                if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                    svg.removeMenuProvider(menuProvider);
                    break;
                }
                break;
            default:
                ComponentActivity.addObserverForBackInvoker$lambda$0((OnBackPressedDispatcher) obj2, (ComponentActivity) obj, lifecycleOwner, lifecycle$Event);
                break;
        }
    }
}
