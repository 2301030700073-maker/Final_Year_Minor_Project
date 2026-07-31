package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveableStateHolderImpl implements SaveableStateHolder {
    public static final WeakCache Saver = new WeakCache(3, new SaversKt$$ExternalSyntheticLambda0(14), new TextKt$$ExternalSyntheticLambda1(22));
    public final DiskLruCache$$ExternalSyntheticLambda0 canBeSaved;
    public SaveableStateRegistry parentSaveableStateRegistry;
    public final MutableScatterMap registries;
    public final Map savedStates;

    public SaveableStateHolderImpl(Map map) {
        this.savedStates = map;
        long[] jArr = ScatterMapKt.EmptyGroup;
        this.registries = new MutableScatterMap();
        this.canBeSaved = new DiskLruCache$$ExternalSyntheticLambda0(12, this);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void SaveableStateProvider(Object obj, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(533563200);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(this) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer.startReusableGroup(obj);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = this.canBeSaved;
                if (!((Boolean) diskLruCache$$ExternalSyntheticLambda0.invoke(obj)).booleanValue()) {
                    DBUtil$$ExternalSyntheticBUOutline0.m(obj, " is not supported. On Android you can only use types which can be stored inside the Bundle.", "Type of the key ");
                    return;
                }
                Map map = (Map) this.savedStates.get(obj);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.LocalSaveableStateRegistry;
                SaveableStateRegistryWrapper saveableStateRegistryWrapper = new SaveableStateRegistryWrapper(new SaveableStateRegistryImpl(map, diskLruCache$$ExternalSyntheticLambda0));
                gapComposer.updateRememberedValue(saveableStateRegistryWrapper);
                rememberedValue = saveableStateRegistryWrapper;
            }
            SaveableStateRegistryWrapper saveableStateRegistryWrapper2 = (SaveableStateRegistryWrapper) rememberedValue;
            Updater.CompositionLocalProvider(new ProvidedValue[]{SaveableStateRegistryKt.LocalSaveableStateRegistry.defaultProvidedValue$runtime(saveableStateRegistryWrapper2), LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner.defaultProvidedValue$runtime(saveableStateRegistryWrapper2)}, composableLambdaImpl, gapComposer, (i2 & 112) | 8);
            boolean changedInstance = gapComposer.changedInstance(this) | gapComposer.changedInstance(obj) | gapComposer.changedInstance(saveableStateRegistryWrapper2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new SimpleActor$$ExternalSyntheticLambda0(this, obj, saveableStateRegistryWrapper2, 18);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.DisposableEffect(Unit.INSTANCE, (Function1) rememberedValue2, gapComposer);
            if (gapComposer.reusing && gapComposer.reader.parent == gapComposer.reusingGroup) {
                gapComposer.reusingGroup = -1;
                gapComposer.reusing = false;
            }
            gapComposer.end(false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(this, obj, composableLambdaImpl, i, 13);
        }
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void removeState(Object obj) {
        if (this.registries.remove(obj) == null) {
            this.savedStates.remove(obj);
        }
    }
}
