package androidx.compose.runtime.saveable;

import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SaveableHolder implements RememberObserver {
    public ProcessFinisher entry;
    public Object[] inputs;
    public String key;
    public SaveableStateRegistry registry;
    public Saver saver;
    public Object value;
    public final Worker$$ExternalSyntheticLambda0 valueProvider = new Worker$$ExternalSyntheticLambda0(this, 6);

    public SaveableHolder(Saver saver, SaveableStateRegistry saveableStateRegistry, String str, Object obj, Object[] objArr) {
        this.saver = saver;
        this.registry = saveableStateRegistry;
        this.key = str;
        this.value = obj;
        this.inputs = objArr;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        ProcessFinisher processFinisher = this.entry;
        if (processFinisher != null) {
            processFinisher.unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        ProcessFinisher processFinisher = this.entry;
        if (processFinisher != null) {
            processFinisher.unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        register();
    }

    public final void register() {
        String generateCannotBeSavedErrorMessage;
        SaveableStateRegistry saveableStateRegistry = this.registry;
        if (this.entry != null) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m$1(this.entry, ") is not null", "entry(");
            return;
        }
        if (saveableStateRegistry != null) {
            Worker$$ExternalSyntheticLambda0 worker$$ExternalSyntheticLambda0 = this.valueProvider;
            Object invoke = worker$$ExternalSyntheticLambda0.invoke();
            if (invoke == null || saveableStateRegistry.canBeSaved(invoke)) {
                this.entry = saveableStateRegistry.registerProvider(this.key, worker$$ExternalSyntheticLambda0);
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
