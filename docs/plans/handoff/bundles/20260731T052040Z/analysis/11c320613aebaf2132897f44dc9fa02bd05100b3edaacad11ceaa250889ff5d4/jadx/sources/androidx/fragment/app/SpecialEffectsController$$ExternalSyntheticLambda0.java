package androidx.fragment.app;

import android.view.View;
import androidx.compose.ui.node.Owner;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SpecialEffectsController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DefaultSpecialEffectsController f$0;
    public final /* synthetic */ SpecialEffectsController$FragmentStateManagerOperation f$1;

    public /* synthetic */ SpecialEffectsController$$ExternalSyntheticLambda0(DefaultSpecialEffectsController defaultSpecialEffectsController, SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation, int i) {
        this.$r8$classId = i;
        this.f$0 = defaultSpecialEffectsController;
        this.f$1 = specialEffectsController$FragmentStateManagerOperation;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        SpecialEffectsController$FragmentStateManagerOperation specialEffectsController$FragmentStateManagerOperation = this.f$1;
        DefaultSpecialEffectsController defaultSpecialEffectsController = this.f$0;
        switch (i) {
            case 0:
                if (defaultSpecialEffectsController.pendingOperations.contains(specialEffectsController$FragmentStateManagerOperation)) {
                    int i2 = specialEffectsController$FragmentStateManagerOperation.finalState;
                    View view = specialEffectsController$FragmentStateManagerOperation.fragment.mView;
                    view.getClass();
                    Owner.CC._applyState(i2, view, defaultSpecialEffectsController.container);
                    break;
                }
                break;
            case 1:
                defaultSpecialEffectsController.applyContainerChangesToOperation$fragment_release(specialEffectsController$FragmentStateManagerOperation);
                break;
            default:
                defaultSpecialEffectsController.pendingOperations.remove(specialEffectsController$FragmentStateManagerOperation);
                defaultSpecialEffectsController.runningOperations.remove(specialEffectsController$FragmentStateManagerOperation);
                break;
        }
    }
}
