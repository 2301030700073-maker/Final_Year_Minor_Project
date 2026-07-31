package androidx.fragment.compose;

import androidx.compose.runtime.MutableState;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FragmentStateKt$fragmentStateSaver$2 extends Lambda implements Function1 {
    public static final FragmentStateKt$fragmentStateSaver$2 INSTANCE = new FragmentStateKt$fragmentStateSaver$2(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new FragmentState((MutableState) obj);
    }
}
