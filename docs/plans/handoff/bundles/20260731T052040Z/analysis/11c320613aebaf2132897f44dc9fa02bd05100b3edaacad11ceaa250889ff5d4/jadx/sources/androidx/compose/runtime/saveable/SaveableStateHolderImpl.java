package androidx.compose.runtime.saveable;

import androidx.cardview.widget.CardView;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.RendererCapabilities;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.newpipe.app.ComposeActivity$$ExternalSyntheticLambda2;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SaveableStateHolderImpl implements SaveableStateHolder {
    public static final CardView.AnonymousClass1 Saver = new CardView.AnonymousClass1(13, new SaversKt$$ExternalSyntheticLambda0(13), new SaversKt$$ExternalSyntheticLambda2(15), false);
    public final DiskLruCache$$ExternalSyntheticLambda0 canBeSaved;
    public SaveableStateRegistry parentSaveableStateRegistry;
    public final MutableScatterMap registries;
    public final Map savedStates;

    public SaveableStateHolderImpl(Map map) {
        this.savedStates = map;
        long[] jArr = ScatterMapKt.EmptyGroup;
        this.registries = new MutableScatterMap();
        this.canBeSaved = new DiskLruCache$$ExternalSyntheticLambda0(this, 17);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void SaveableStateProvider(Object obj, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(533563200);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer.changedInstance(this) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
            gapComposer.startReusableGroup(obj);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = this.canBeSaved;
                if (!((Boolean) diskLruCache$$ExternalSyntheticLambda0.invoke(obj)).booleanValue()) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$1(obj, " is not supported. On Android you can only use types which can be stored inside the Bundle.", "Type of the key ");
                    return;
                }
                Map map = (Map) this.savedStates.get(obj);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.LocalSaveableStateRegistry;
                SaveableStateRegistryWrapper saveableStateRegistryWrapper = new SaveableStateRegistryWrapper(new SaveableStateRegistryImpl(map, diskLruCache$$ExternalSyntheticLambda0));
                gapComposer.updateRememberedValue(saveableStateRegistryWrapper);
                rememberedValue = saveableStateRegistryWrapper;
            }
            SaveableStateRegistryWrapper saveableStateRegistryWrapper2 = (SaveableStateRegistryWrapper) rememberedValue;
            Updater.CompositionLocalProvider(new ProvidedValue[]{SaveableStateRegistryKt.LocalSaveableStateRegistry.defaultProvidedValue$runtime(saveableStateRegistryWrapper2), LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner.defaultProvidedValue$runtime(saveableStateRegistryWrapper2)}, composableLambdaImpl, gapComposer, (i2 & Token.ASSIGN_MOD) | 8);
            boolean changedInstance = gapComposer.changedInstance(this) | gapComposer.changedInstance(obj) | gapComposer.changedInstance(saveableStateRegistryWrapper2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ComposeActivity$$ExternalSyntheticLambda2(i3, this, obj, saveableStateRegistryWrapper2);
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
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda4(this, obj, composableLambdaImpl, i, 4);
        }
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public final void removeState(Object obj) {
        if (this.registries.remove(obj) == null) {
            this.savedStates.remove(obj);
        }
    }
}
