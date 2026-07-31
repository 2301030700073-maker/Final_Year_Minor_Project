package androidx.compose.runtime.saveable;

import androidx.cardview.widget.CardView;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import coil3.util.UtilsKt;
import java.util.Arrays;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SaverKt {
    public static final CardView.AnonymousClass1 AutoSaver = new CardView.AnonymousClass1(12, new SaversKt$$ExternalSyntheticLambda0(21), new SaversKt$$ExternalSyntheticLambda2(5));

    public static final String generateCannotBeSavedErrorMessage(Object obj) {
        return obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
    }

    public static final CardView.AnonymousClass1 listSaver(Function2 function2, Function1 function1) {
        HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = new HintHandler$$ExternalSyntheticLambda0(22, function2);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, function1);
        return new CardView.AnonymousClass1(12, hintHandler$$ExternalSyntheticLambda0, function1);
    }

    public static final Object rememberSaveable(Object[] objArr, Saver saver, Function0 function0, GapComposer gapComposer, int i, int i2) {
        Object[] objArr2;
        Saver saver2;
        Object obj;
        Object consumeRestored;
        long j = gapComposer.compositeKeyHashCode;
        UtilsKt.checkRadix(36);
        String l = Long.toString(j, 36);
        l.getClass();
        saver.getClass();
        SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(SaveableStateRegistryKt.LocalSaveableStateRegistry);
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj2 = Composer$Companion.Empty;
        if (rememberedValue == obj2) {
            Object restore = (saveableStateRegistry == null || (consumeRestored = saveableStateRegistry.consumeRestored(l)) == null) ? null : saver.restore(consumeRestored);
            if (restore == null) {
                restore = function0.invoke();
            }
            objArr2 = objArr;
            saver2 = saver;
            Object saveableHolder = new SaveableHolder(saver2, saveableStateRegistry, l, restore, objArr2);
            gapComposer.updateRememberedValue(saveableHolder);
            rememberedValue = saveableHolder;
        } else {
            objArr2 = objArr;
            saver2 = saver;
        }
        SaveableHolder saveableHolder2 = (SaveableHolder) rememberedValue;
        Object obj3 = Arrays.equals(objArr2, saveableHolder2.inputs) ? saveableHolder2.value : null;
        if (obj3 == null) {
            obj3 = function0.invoke();
        }
        boolean changedInstance = gapComposer.changedInstance(saveableHolder2) | ((((i & 112) ^ 48) > 32 && gapComposer.changedInstance(saver2)) || (i & 48) == 32) | gapComposer.changedInstance(saveableStateRegistry) | gapComposer.changed(l) | gapComposer.changedInstance(obj3) | gapComposer.changedInstance(objArr2);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue2 == obj2) {
            Object[] objArr3 = objArr2;
            obj = obj3;
            Object rememberSaveableKt$$ExternalSyntheticLambda0 = new RememberSaveableKt$$ExternalSyntheticLambda0(saveableHolder2, saver2, saveableStateRegistry, l, obj, objArr3, 0);
            gapComposer.updateRememberedValue(rememberSaveableKt$$ExternalSyntheticLambda0);
            rememberedValue2 = rememberSaveableKt$$ExternalSyntheticLambda0;
        } else {
            obj = obj3;
        }
        Updater.SideEffect((Function0) rememberedValue2, gapComposer);
        return obj;
    }

    public static final SaveableStateHolderImpl rememberSaveableStateHolder(GapComposer gapComposer) {
        gapComposer.startReplaceGroup(1967007413);
        Object[] objArr = new Object[0];
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new Worker$$ExternalSyntheticLambda1(12);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) rememberSaveable(objArr, SaveableStateHolderImpl.Saver, (Function0) rememberedValue, gapComposer, 384);
        saveableStateHolderImpl.parentSaveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(SaveableStateRegistryKt.LocalSaveableStateRegistry);
        gapComposer.end(false);
        return saveableStateHolderImpl;
    }

    public static final Object rememberSaveable(Object[] objArr, Saver saver, Function0 function0, GapComposer gapComposer, int i) {
        return rememberSaveable(Arrays.copyOf(objArr, objArr.length), saver, function0, gapComposer, 384 | ((i << 3) & 7168), 0);
    }

    public static final Object rememberSaveable(Object[] objArr, Function0 function0, GapComposer gapComposer) {
        return rememberSaveable(Arrays.copyOf(objArr, objArr.length), AutoSaver, function0, gapComposer, 3456, 0);
    }
}
