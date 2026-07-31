package androidx.activity.compose;

import androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import com.fsck.k9.activity.MessageCompose;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 {
    public final /* synthetic */ Object $handler$inlined;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1(LifecycleStartStopEffectScope lifecycleStartStopEffectScope, Object obj, int i) {
        this.$r8$classId = i;
        this.$handler$inlined = obj;
    }

    public final void runStopOrDisposeEffect() {
        int i = this.$r8$classId;
        Object obj = this.$handler$inlined;
        switch (i) {
            case 0:
                ComposeBackHandler composeBackHandler = (ComposeBackHandler) obj;
                ((MessageCompose.AnonymousClass3) composeBackHandler.key).setEnabled(false);
                ((BackHandlerCompat$navigationEventHandler$1) composeBackHandler.defaultValue).setBackEnabled(false);
                break;
            case 1:
                ((ComposePredictiveBackHandler) obj).setBackEnabled(false);
                break;
            default:
                ((StandaloneCoroutine) obj).cancel(null);
                break;
        }
    }
}
