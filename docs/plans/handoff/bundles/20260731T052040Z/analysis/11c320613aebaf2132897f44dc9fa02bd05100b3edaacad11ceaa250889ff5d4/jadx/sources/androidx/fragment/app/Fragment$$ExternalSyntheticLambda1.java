package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.DefaultSpecialEffectsController;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda21;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Fragment$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Fragment$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Fragment fragment = (Fragment) obj;
                FragmentViewLifecycleOwner fragmentViewLifecycleOwner = fragment.mViewLifecycleOwner;
                fragmentViewLifecycleOwner.mSavedStateRegistryController.performRestore(fragment.mSavedViewRegistryState);
                fragment.mSavedViewRegistryState = null;
                break;
            case 1:
                Function0 function0 = (Function0) ((Ref$ObjectRef) obj).element;
                if (function0 != null) {
                    function0.invoke();
                    break;
                }
                break;
            case 2:
                FragmentTransition.setViewVisibility(4, (ArrayList) obj);
                break;
            case 3:
                DefaultSpecialEffectsController.TransitionEffect transitionEffect = (DefaultSpecialEffectsController.TransitionEffect) obj;
                transitionEffect.getClass();
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Transition for all operations has completed");
                }
                Iterator it = transitionEffect.transitionInfos.iterator();
                while (it.hasNext()) {
                    ((DefaultSpecialEffectsController.TransitionInfo) it.next()).operation.completeEffect(transitionEffect);
                }
                break;
            default:
                Iterator it2 = ((FragmentManager) obj).mBackStackChangeListeners.iterator();
                while (it2.hasNext()) {
                    ((VideoDetailFragment$$ExternalSyntheticLambda21) it2.next()).getClass();
                }
                break;
        }
    }
}
