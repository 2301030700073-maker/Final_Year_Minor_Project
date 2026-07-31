package androidx.navigation3.ui;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.navigation3.scene.OverlayScene;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavDisplayKt__NavDisplayKt$NavDisplay$10$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ SnapshotStateList $currentOverlayScenes;
    final /* synthetic */ List<OverlayScene> $overlayScenes;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$10$1(List list, SnapshotStateList snapshotStateList, Continuation continuation) {
        super(2, continuation);
        this.$overlayScenes = list;
        this.$currentOverlayScenes = snapshotStateList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavDisplayKt__NavDisplayKt$NavDisplay$10$1(this.$overlayScenes, this.$currentOverlayScenes, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        NavDisplayKt__NavDisplayKt$NavDisplay$10$1 navDisplayKt__NavDisplayKt$NavDisplay$10$1 = (NavDisplayKt__NavDisplayKt$NavDisplay$10$1) create((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.INSTANCE;
        navDisplayKt__NavDisplayKt$NavDisplay$10$1.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        List<OverlayScene> list = this.$overlayScenes;
        SnapshotStateList snapshotStateList = this.$currentOverlayScenes;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                return null;
            }
            if (!snapshotStateList.contains(null)) {
                snapshotStateList.add(null);
            }
        }
        return Unit.INSTANCE;
    }
}
