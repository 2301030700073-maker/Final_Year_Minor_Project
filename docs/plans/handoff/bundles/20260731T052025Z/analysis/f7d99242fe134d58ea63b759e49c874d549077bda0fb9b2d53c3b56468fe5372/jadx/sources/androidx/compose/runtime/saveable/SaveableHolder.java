package androidx.compose.runtime.saveable;

import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.core.view.MenuHostHelper;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveableHolder implements RememberObserver {
    public SaveableStateRegistry.Entry entry;
    public Object[] inputs;
    public String key;
    public SaveableStateRegistry registry;
    public Saver saver;
    public Object value;
    public final ImageLoader$Builder$$ExternalSyntheticLambda1 valueProvider = new ImageLoader$Builder$$ExternalSyntheticLambda1(7, this);

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
            ((MenuHostHelper) entry).unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry != null) {
            ((MenuHostHelper) entry).unregister();
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
            DBUtil$$ExternalSyntheticBUOutline0.m(this.entry, ") is not null", "entry(");
            return;
        }
        if (saveableStateRegistry != null) {
            ImageLoader$Builder$$ExternalSyntheticLambda1 imageLoader$Builder$$ExternalSyntheticLambda1 = this.valueProvider;
            Object invoke = imageLoader$Builder$$ExternalSyntheticLambda1.invoke();
            if (invoke == null || saveableStateRegistry.canBeSaved(invoke)) {
                this.entry = saveableStateRegistry.registerProvider(this.key, imageLoader$Builder$$ExternalSyntheticLambda1);
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
