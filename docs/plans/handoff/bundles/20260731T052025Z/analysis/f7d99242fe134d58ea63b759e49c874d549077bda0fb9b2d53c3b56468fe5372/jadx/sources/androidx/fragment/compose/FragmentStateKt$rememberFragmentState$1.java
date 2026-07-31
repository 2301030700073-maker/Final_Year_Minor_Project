package androidx.fragment.compose;

import androidx.compose.runtime.Updater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FragmentStateKt$rememberFragmentState$1 extends Lambda implements Function0 {
    public static final FragmentStateKt$rememberFragmentState$1 INSTANCE = new FragmentStateKt$rememberFragmentState$1(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new FragmentState(Updater.mutableStateOf$default(null));
    }
}
