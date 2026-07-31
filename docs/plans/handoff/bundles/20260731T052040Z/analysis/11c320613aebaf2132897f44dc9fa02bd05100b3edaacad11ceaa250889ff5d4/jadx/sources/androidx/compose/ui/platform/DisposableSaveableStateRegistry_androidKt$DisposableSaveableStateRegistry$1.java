package androidx.compose.ui.platform;

import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1 extends Lambda implements Function0 {
    final /* synthetic */ SavedStateRegistry $androidxRegistry;
    final /* synthetic */ String $key;
    final /* synthetic */ boolean $registered;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(boolean z, SavedStateRegistry savedStateRegistry, String str) {
        super(0);
        this.$registered = z;
        this.$androidxRegistry = savedStateRegistry;
        this.$key = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        if (this.$registered) {
            SavedStateRegistry savedStateRegistry = this.$androidxRegistry;
            String str = this.$key;
            savedStateRegistry.getClass();
            str.getClass();
            SavedStateRegistryImpl savedStateRegistryImpl = savedStateRegistry.impl;
            synchronized (savedStateRegistryImpl.lock) {
            }
        }
        return Unit.INSTANCE;
    }
}
