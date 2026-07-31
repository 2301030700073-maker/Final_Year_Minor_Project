package androidx.compose.animation;

import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda1;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.maplibre.android.maps.MapView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1 implements DisposableEffectResult {
    public final /* synthetic */ Object $currentlyVisible$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $rootScope$inlined;
    public final /* synthetic */ Object $stateForContent$inlined;

    public AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(DialogNavigator dialogNavigator, NavBackStackEntry navBackStackEntry, SnapshotStateList snapshotStateList) {
        this.$r8$classId = 4;
        this.$stateForContent$inlined = dialogNavigator;
        this.$rootScope$inlined = navBackStackEntry;
        this.$currentlyVisible$inlined = snapshotStateList;
    }

    @Override // androidx.compose.runtime.DisposableEffectResult
    public final void dispose() {
        int i = this.$r8$classId;
        Object obj = this.$rootScope$inlined;
        Object obj2 = this.$stateForContent$inlined;
        Object obj3 = this.$currentlyVisible$inlined;
        switch (i) {
            case 0:
                ((SnapshotStateList) obj3).remove(obj2);
                ((AnimatedContentTransitionScopeImpl) obj).targetSizeMap.remove(obj2);
                break;
            case 1:
                ((Function0) obj3).invoke();
                ((LifecycleOwner) obj2).getLifecycle().removeObserver((NavControllerImpl$$ExternalSyntheticLambda1) obj);
                break;
            case 2:
                SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj3;
                SaveableStateRegistryWrapper saveableStateRegistryWrapper = (SaveableStateRegistryWrapper) obj;
                if (saveableStateHolderImpl.registries.remove(obj2) == saveableStateRegistryWrapper) {
                    Map map = saveableStateHolderImpl.savedStates;
                    Map performSave = saveableStateRegistryWrapper.performSave();
                    if (!performSave.isEmpty()) {
                        map.put(obj2, performSave);
                        break;
                    } else {
                        map.remove(obj2);
                        break;
                    }
                }
                break;
            case 3:
                ((LifecycleOwner) obj3).getLifecycle().removeObserver((MenuHostHelper$$ExternalSyntheticLambda0) obj2);
                BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 = (BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1) ((Ref$ObjectRef) obj).element;
                if (backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 != null) {
                    backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1.runStopOrDisposeEffect();
                    break;
                }
                break;
            case 4:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                ((DialogNavigator) obj2).getState().markTransitionComplete(navBackStackEntry);
                ((SnapshotStateList) obj3).remove(navBackStackEntry);
                break;
            default:
                ((LifecycleOwner) obj3).getLifecycle().removeObserver((NavControllerImpl$$ExternalSyntheticLambda1) obj2);
                ((MapView) obj).onDestroy();
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
