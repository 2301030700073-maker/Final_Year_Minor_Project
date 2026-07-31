package androidx.compose.runtime.saveable;

import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SaveableHolder implements RememberObserver {
    public SaveableStateRegistry.Entry entry;
    public Object[] inputs;
    public String key;
    public SaveableStateRegistry registry;
    public Saver saver;
    public Object value;
    public final NavBackStackEntry$$ExternalSyntheticLambda0 valueProvider = new NavBackStackEntry$$ExternalSyntheticLambda0(24, this);

    public SaveableHolder(Saver saver, SaveableStateRegistry saveableStateRegistry, String str, Object obj, Object[] objArr) {
        this.saver = saver;
        this.registry = saveableStateRegistry;
        this.key = str;
        this.value = obj;
        this.inputs = objArr;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry != null) {
            ((SVG) entry).unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry != null) {
            ((SVG) entry).unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        register$1();
    }

    public final void register$1() {
        String generateCannotBeSavedErrorMessage;
        SaveableStateRegistry saveableStateRegistry = this.registry;
        if (this.entry != null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m(this.entry, ") is not null", "entry(");
            return;
        }
        if (saveableStateRegistry != null) {
            NavBackStackEntry$$ExternalSyntheticLambda0 navBackStackEntry$$ExternalSyntheticLambda0 = this.valueProvider;
            Object invoke = navBackStackEntry$$ExternalSyntheticLambda0.invoke();
            if (invoke == null || saveableStateRegistry.canBeSaved(invoke)) {
                this.entry = saveableStateRegistry.registerProvider(this.key, navBackStackEntry$$ExternalSyntheticLambda0);
                return;
            }
            if (invoke instanceof SnapshotMutableState) {
                SnapshotMutableState snapshotMutableState = (SnapshotMutableState) invoke;
                if (snapshotMutableState.getPolicy() == NeverEqualPolicy.INSTANCE || snapshotMutableState.getPolicy() == NeverEqualPolicy.INSTANCE$3 || snapshotMutableState.getPolicy() == NeverEqualPolicy.INSTANCE$1) {
                    generateCannotBeSavedErrorMessage = "MutableState containing " + snapshotMutableState.getValue() + " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable().";
                } else {
                    generateCannotBeSavedErrorMessage = "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver";
                }
            } else {
                generateCannotBeSavedErrorMessage = SaverKt.generateCannotBeSavedErrorMessage(invoke);
            }
            throw new IllegalArgumentException(generateCannotBeSavedErrorMessage);
        }
    }
}
