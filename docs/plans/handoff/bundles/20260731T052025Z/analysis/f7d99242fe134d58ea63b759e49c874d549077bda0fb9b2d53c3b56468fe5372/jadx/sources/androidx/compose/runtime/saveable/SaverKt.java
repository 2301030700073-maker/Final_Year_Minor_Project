package androidx.compose.runtime.saveable;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import java.util.Arrays;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.CharsKt__CharKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SaverKt {
    public static final WeakCache AutoSaver = new WeakCache(3, new SaversKt$$ExternalSyntheticLambda0(15), new TextKt$$ExternalSyntheticLambda1(23));

    public static final String generateCannotBeSavedErrorMessage(Object obj) {
        return obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
    }

    public static final WeakCache listSaver(Function2 function2, Function1 function1) {
        ListSaverKt$$ExternalSyntheticLambda0 listSaverKt$$ExternalSyntheticLambda0 = new ListSaverKt$$ExternalSyntheticLambda0(0, function2);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function1);
        return new WeakCache(3, listSaverKt$$ExternalSyntheticLambda0, function1);
    }

    public static final Object rememberSaveable(Object[] objArr, Saver saver, Function0 function0, Composer composer, int i, int i2) {
        Object[] objArr2;
        Saver saver2;
        Object obj;
        Object consumeRestored;
        GapComposer gapComposer = (GapComposer) composer;
        long j = gapComposer.compositeKeyHashCode;
        CharsKt__CharKt.checkRadix(36);
        String l = Long.toString(j, 36);
        l.getClass();
        saver.getClass();
        SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(SaveableStateRegistryKt.LocalSaveableStateRegistry);
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            Object restore = (saveableStateRegistry == null || (consumeRestored = saveableStateRegistry.consumeRestored(l)) == null) ? null : saver.restore(consumeRestored);
            if (restore == null) {
                restore = function0.invoke();
            }
            objArr2 = objArr;
            saver2 = saver;
            SaveableHolder saveableHolder = new SaveableHolder(saver2, saveableStateRegistry, l, restore, objArr2);
            gapComposer.updateRememberedValue(saveableHolder);
            rememberedValue = saveableHolder;
        } else {
            objArr2 = objArr;
            saver2 = saver;
        }
        SaveableHolder saveableHolder2 = (SaveableHolder) rememberedValue;
        Object obj2 = Arrays.equals(objArr2, saveableHolder2.inputs) ? saveableHolder2.value : null;
        if (obj2 == null) {
            obj2 = function0.invoke();
        }
        boolean changedInstance = gapComposer.changedInstance(saveableHolder2) | ((((i & 112) ^ 48) > 32 && gapComposer.changedInstance(saver2)) || (i & 48) == 32) | gapComposer.changedInstance(saveableStateRegistry) | gapComposer.changed(l) | gapComposer.changedInstance(obj2) | gapComposer.changedInstance(objArr2);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue2 == neverEqualPolicy) {
            Object[] objArr3 = objArr2;
            obj = obj2;
            RememberSaveableKt$$ExternalSyntheticLambda2 rememberSaveableKt$$ExternalSyntheticLambda2 = new RememberSaveableKt$$ExternalSyntheticLambda2(saveableHolder2, saver2, saveableStateRegistry, l, obj, objArr3, 0);
            gapComposer.updateRememberedValue(rememberSaveableKt$$ExternalSyntheticLambda2);
            rememberedValue2 = rememberSaveableKt$$ExternalSyntheticLambda2;
        } else {
            obj = obj2;
        }
        Updater.SideEffect((Function0) rememberedValue2, gapComposer);
        return obj;
    }

    public static final SaveableStateHolderImpl rememberSaveableStateHolder(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(1967007413);
        Object[] objArr = new Object[0];
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new TextKt$$ExternalSyntheticLambda4(15);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) rememberSaveable(objArr, SaveableStateHolderImpl.Saver, (Function0) rememberedValue, gapComposer, 384);
        saveableStateHolderImpl.parentSaveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(SaveableStateRegistryKt.LocalSaveableStateRegistry);
        gapComposer.end(false);
        return saveableStateHolderImpl;
    }

    public static final Object rememberSaveable(Object[] objArr, Saver saver, Function0 function0, Composer composer, int i) {
        return rememberSaveable(Arrays.copyOf(objArr, objArr.length), saver, function0, composer, 384 | ((i << 3) & 7168), 0);
    }

    public static final Object rememberSaveable(Object[] objArr, Function0 function0, Composer composer, int i) {
        return rememberSaveable(Arrays.copyOf(objArr, objArr.length), AutoSaver, function0, composer, ((i << 6) & 7168) | 384, 0);
    }
}
