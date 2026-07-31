package androidx.compose.ui.platform;

import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1 extends Lambda implements Function0 {
    final /* synthetic */ LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1(LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry) {
        super(0);
        this.this$0 = retainedValuesStoreEntry;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ManagedRetainedValuesStore managedRetainedValuesStore = (ManagedRetainedValuesStore) this.this$0._retainedValuesStore.this$0;
        if (!managedRetainedValuesStore.isDisposed) {
            if (managedRetainedValuesStore.isContentComposed) {
                PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
            }
            managedRetainedValuesStore.purgeUnusedExitedValues();
            managedRetainedValuesStore.isContentComposed = true;
        }
        return Unit.INSTANCE;
    }
}
