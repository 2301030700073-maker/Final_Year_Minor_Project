package androidx.activity.compose;

import androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import androidx.fragment.app.FragmentManager$1;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 {
    public final /* synthetic */ BaseMenuWrapper $handler$inlined;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1(LifecycleStartStopEffectScope lifecycleStartStopEffectScope, BaseMenuWrapper baseMenuWrapper, int i) {
        this.$r8$classId = i;
        this.$handler$inlined = baseMenuWrapper;
    }

    public final void runStopOrDisposeEffect() {
        int i = this.$r8$classId;
        BaseMenuWrapper baseMenuWrapper = this.$handler$inlined;
        switch (i) {
            case 0:
                ComposeBackHandler composeBackHandler = (ComposeBackHandler) baseMenuWrapper;
                ((FragmentManager$1) composeBackHandler.mContext).setEnabled(false);
                ((BackHandlerCompat$navigationEventHandler$1) composeBackHandler.mMenuItems).setBackEnabled(false);
                break;
            default:
                ((ComposePredictiveBackHandler) baseMenuWrapper).setBackEnabled(false);
                break;
        }
    }
}
