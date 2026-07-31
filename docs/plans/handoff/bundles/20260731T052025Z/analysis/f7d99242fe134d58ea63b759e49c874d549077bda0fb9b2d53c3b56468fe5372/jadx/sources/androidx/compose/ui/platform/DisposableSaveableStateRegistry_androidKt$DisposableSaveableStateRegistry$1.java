package androidx.compose.ui.platform;

import androidx.savedstate.internal.SavedStateRegistryImpl;
import com.beetstra.jutf7.Base64Util;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1 extends Lambda implements Function0 {
    public final /* synthetic */ Base64Util $androidxRegistry;
    public final /* synthetic */ String $key;
    public final /* synthetic */ boolean $registered;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(boolean z, Base64Util base64Util, String str) {
        super(0);
        this.$registered = z;
        this.$androidxRegistry = base64Util;
        this.$key = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        if (this.$registered) {
            Base64Util base64Util = this.$androidxRegistry;
            String str = this.$key;
            SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) base64Util.alphabet;
            synchronized (savedStateRegistryImpl.lock) {
            }
        }
        return Unit.INSTANCE;
    }
}
