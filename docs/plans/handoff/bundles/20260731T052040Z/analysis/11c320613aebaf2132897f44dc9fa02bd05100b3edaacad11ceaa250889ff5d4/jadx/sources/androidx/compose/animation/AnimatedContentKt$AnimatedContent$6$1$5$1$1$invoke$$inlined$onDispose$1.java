package androidx.compose.animation;

import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.compose.ComposeLifecycleOwner;
import androidx.lifecycle.compose.RememberLifecycleOwnerKt$$ExternalSyntheticLambda0;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider$$ExternalSyntheticLambda1;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1 implements DisposableEffectResult {
    public final /* synthetic */ Object $currentlyVisible$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $rootScope$inlined;
    public final /* synthetic */ Object $stateForContent$inlined;

    public /* synthetic */ AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(int i, Object obj, Object obj2, Object obj3) {
        this.$r8$classId = i;
        this.$currentlyVisible$inlined = obj;
        this.$stateForContent$inlined = obj2;
        this.$rootScope$inlined = obj3;
    }

    @Override // androidx.compose.runtime.DisposableEffectResult
    public final void dispose() {
        Lifecycle lifecycle;
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
            case 2:
                LifecycleOwner lifecycleOwner = (LifecycleOwner) obj3;
                if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
                    lifecycle.removeObserver((RememberLifecycleOwnerKt$$ExternalSyntheticLambda0) obj2);
                }
                ComposeLifecycleOwner composeLifecycleOwner = (ComposeLifecycleOwner) obj;
                Lifecycle.Event event = Lifecycle.Event.ON_DESTROY;
                composeLifecycleOwner.getClass();
                composeLifecycleOwner.parentLifecycleState = event.getTargetState();
                composeLifecycleOwner.updateLifecycleState();
                break;
            default:
                AutoCloseable autoCloseable = (ViewModelStoreProvider$$ExternalSyntheticLambda1) obj3;
                if (!(autoCloseable instanceof AutoCloseable)) {
                    if (!(autoCloseable instanceof ExecutorService)) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                        break;
                    } else {
                        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
                    }
                } else {
                    autoCloseable.close();
                }
                if (((LifecycleRegistry) ((Lifecycle) obj2)).state.compareTo(Lifecycle.State.CREATED) >= 0) {
                    ViewModelStoreProvider viewModelStoreProvider = (ViewModelStoreProvider) obj;
                    ViewModelStoreProvider.Entry entry = (ViewModelStoreProvider.Entry) viewModelStoreProvider.getStateHolder().entries.get(ViewModelStoreProvider.ProviderMarkerKey.INSTANCE);
                    if (entry == null || entry.refCount <= 0) {
                        viewModelStoreProvider.getStateHolder().onCleared();
                        break;
                    }
                }
                break;
        }
    }
}
