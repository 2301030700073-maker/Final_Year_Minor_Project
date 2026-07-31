package androidx.compose.runtime.saveable;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.cardview.widget.CardView;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import com.google.android.exoplayer2.RendererCapabilities;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import org.acra.util.ProcessFinisher;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SaverKt {
    public static final CardView.AnonymousClass1 AutoSaver = new CardView.AnonymousClass1(13, new SaversKt$$ExternalSyntheticLambda0(14), new SaversKt$$ExternalSyntheticLambda2(16), false);

    public static final String generateCannotBeSavedErrorMessage(Object obj) {
        return obj + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable().";
    }

    public static final Object rememberSaveable(Object[] objArr, Saver saver, Function0 function0, Composer composer, int i) {
        Object[] objArr2;
        Saver saver2;
        final Object obj;
        Object consumeRestored;
        GapComposer gapComposer = (GapComposer) composer;
        long j = gapComposer.compositeKeyHashCode;
        CharsKt.checkRadix(36);
        final String l = Long.toString(j, 36);
        l.getClass();
        saver.getClass();
        final SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(SaveableStateRegistryKt.LocalSaveableStateRegistry);
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
        final SaveableHolder saveableHolder2 = (SaveableHolder) rememberedValue;
        Object obj2 = Arrays.equals(objArr2, saveableHolder2.inputs) ? saveableHolder2.value : null;
        if (obj2 == null) {
            obj2 = function0.invoke();
        }
        boolean changedInstance = gapComposer.changedInstance(saveableHolder2) | ((((i & Token.ASSIGN_MOD) ^ 48) > 32 && gapComposer.changedInstance(saver2)) || (i & 48) == 32) | gapComposer.changedInstance(saveableStateRegistry) | gapComposer.changed(l) | gapComposer.changedInstance(obj2) | gapComposer.changedInstance(objArr2);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue2 == neverEqualPolicy) {
            final Object[] objArr3 = objArr2;
            obj = obj2;
            final Saver saver3 = saver2;
            Function0 function02 = new Function0() { // from class: androidx.compose.runtime.saveable.RememberSaveableKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    boolean z;
                    SaveableHolder saveableHolder3 = SaveableHolder.this;
                    SaveableStateRegistry saveableStateRegistry2 = saveableHolder3.registry;
                    SaveableStateRegistry saveableStateRegistry3 = saveableStateRegistry;
                    boolean z2 = true;
                    if (saveableStateRegistry2 != saveableStateRegistry3) {
                        saveableHolder3.registry = saveableStateRegistry3;
                        z = true;
                    } else {
                        z = false;
                    }
                    String str = saveableHolder3.key;
                    String str2 = l;
                    if (Intrinsics.areEqual(str, str2)) {
                        z2 = z;
                    } else {
                        saveableHolder3.key = str2;
                    }
                    saveableHolder3.saver = saver3;
                    saveableHolder3.value = obj;
                    saveableHolder3.inputs = objArr3;
                    ProcessFinisher processFinisher = saveableHolder3.entry;
                    if (processFinisher != null && z2) {
                        processFinisher.unregister();
                        saveableHolder3.entry = null;
                        saveableHolder3.register();
                    }
                    return Unit.INSTANCE;
                }
            };
            gapComposer.updateRememberedValue(function02);
            rememberedValue2 = function02;
        } else {
            obj = obj2;
        }
        Updater.SideEffect((Function0) rememberedValue2, gapComposer);
        return obj;
    }

    public static final Object rememberSaveable$1(Object[] objArr, Saver saver, Function0 function0, Composer composer, int i) {
        return rememberSaveable(Arrays.copyOf(objArr, objArr.length), saver, function0, composer, ((i << 3) & 7168) | RendererCapabilities.MODE_SUPPORT_MASK);
    }

    public static final SaveableStateHolderImpl rememberSaveableStateHolder(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(1967007413);
        Object[] objArr = new Object[0];
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(26);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) rememberSaveable$1(objArr, SaveableStateHolderImpl.Saver, (Function0) rememberedValue, gapComposer, RendererCapabilities.MODE_SUPPORT_MASK);
        saveableStateHolderImpl.parentSaveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(SaveableStateRegistryKt.LocalSaveableStateRegistry);
        gapComposer.end(false);
        return saveableStateHolderImpl;
    }
}
