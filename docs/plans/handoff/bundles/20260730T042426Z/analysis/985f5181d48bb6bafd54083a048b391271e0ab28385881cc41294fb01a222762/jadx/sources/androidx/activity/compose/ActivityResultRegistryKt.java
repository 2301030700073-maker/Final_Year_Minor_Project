package androidx.activity.compose;

import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: ActivityResultRegistry.kt */
/* loaded from: classes.dex */
public abstract class ActivityResultRegistryKt {
    public static final ManagedActivityResultLauncher rememberLauncherForActivityResult(ActivityResultContract activityResultContract, Function1 function1, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1408504823, i, -1, "androidx.activity.compose.rememberLauncherForActivityResult (ActivityResultRegistry.kt:82)");
        }
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(activityResultContract, composer, i & 14);
        State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(function1, composer, (i >> 3) & 14);
        String str = (String) RememberSaveableKt.rememberSaveable(new Object[0], null, null, new Function0() { // from class: androidx.activity.compose.ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return UUID.randomUUID().toString();
            }
        }, composer, 3072, 6);
        ActivityResultRegistryOwner current = LocalActivityResultRegistryOwner.INSTANCE.getCurrent(composer, 6);
        if (current == null) {
            throw new IllegalStateException("No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner");
        }
        ActivityResultRegistry activityResultRegistry = current.getActivityResultRegistry();
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = new ActivityResultLauncherHolder();
            composer.updateRememberedValue(rememberedValue);
        }
        ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) rememberedValue;
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new ManagedActivityResultLauncher(activityResultLauncherHolder, rememberUpdatedState);
            composer.updateRememberedValue(rememberedValue2);
        }
        ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) rememberedValue2;
        boolean changedInstance = composer.changedInstance(activityResultLauncherHolder) | composer.changedInstance(activityResultRegistry) | composer.changed(str) | composer.changedInstance(activityResultContract) | composer.changed(rememberUpdatedState2);
        Object rememberedValue3 = composer.rememberedValue();
        if (changedInstance || rememberedValue3 == companion.getEmpty()) {
            Object activityResultRegistryKt$rememberLauncherForActivityResult$1$1 = new ActivityResultRegistryKt$rememberLauncherForActivityResult$1$1(activityResultLauncherHolder, activityResultRegistry, str, activityResultContract, rememberUpdatedState2);
            composer.updateRememberedValue(activityResultRegistryKt$rememberLauncherForActivityResult$1$1);
            rememberedValue3 = activityResultRegistryKt$rememberLauncherForActivityResult$1$1;
        }
        EffectsKt.DisposableEffect(activityResultRegistry, str, activityResultContract, (Function1) rememberedValue3, composer, (i << 6) & 896);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return managedActivityResultLauncher;
    }
}
