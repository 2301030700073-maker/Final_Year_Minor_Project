package androidx.compose.animation;

import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda3;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.DialogNavigator;
import java.util.Map;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1 implements DisposableEffectResult {
    public final /* synthetic */ Object $currentlyVisible$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $rootScope$inlined;
    public final /* synthetic */ Object $stateForContent$inlined;

    public AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(DialogNavigator dialogNavigator, NavBackStackEntry navBackStackEntry, SnapshotStateList snapshotStateList) {
        this.$r8$classId = 3;
        this.$stateForContent$inlined = dialogNavigator;
        this.$rootScope$inlined = navBackStackEntry;
        this.$currentlyVisible$inlined = snapshotStateList;
    }

    @Override // androidx.compose.runtime.DisposableEffectResult
    public final void dispose() {
        int i = this.$r8$classId;
        Object obj = this.$currentlyVisible$inlined;
        Object obj2 = this.$rootScope$inlined;
        Object obj3 = this.$stateForContent$inlined;
        switch (i) {
            case 0:
                ((SnapshotStateList) obj).remove(obj3);
                ((AnimatedContentTransitionScopeImpl) obj2).targetSizeMap.remove(obj3);
                break;
            case 1:
                SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj;
                SaveableStateRegistryWrapper saveableStateRegistryWrapper = (SaveableStateRegistryWrapper) obj2;
                if (saveableStateHolderImpl.registries.remove(obj3) == saveableStateRegistryWrapper) {
                    Map map = saveableStateHolderImpl.savedStates;
                    Map performSave = saveableStateRegistryWrapper.performSave();
                    if (!performSave.isEmpty()) {
                        map.put(obj3, performSave);
                        break;
                    } else {
                        map.remove(obj3);
                        break;
                    }
                }
                break;
            case 2:
                ((LifecycleOwner) obj).getLifecycle().removeObserver((LifecycleEffectKt$$ExternalSyntheticLambda3) obj3);
                BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 = (BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1) ((Ref$ObjectRef) obj2).element;
                if (backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 != null) {
                    backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1.runStopOrDisposeEffect();
                    break;
                }
                break;
            default:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                ((DialogNavigator) obj3).getState().markTransitionComplete(navBackStackEntry);
                ((SnapshotStateList) obj).remove(navBackStackEntry);
                break;
        }
    }

    public /* synthetic */ AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.$currentlyVisible$inlined = obj;
        this.$stateForContent$inlined = obj2;
        this.$rootScope$inlined = obj3;
    }
}
