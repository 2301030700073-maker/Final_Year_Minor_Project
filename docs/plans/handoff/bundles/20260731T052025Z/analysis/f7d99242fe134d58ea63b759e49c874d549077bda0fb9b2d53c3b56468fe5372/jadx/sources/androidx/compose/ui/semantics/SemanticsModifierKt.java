package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SemanticsModifierKt {
    public static final AtomicInteger lastIdentifier = new AtomicInteger(0);

    public static final Modifier semantics(Modifier modifier, boolean z, Function1 function1) {
        return modifier.then(new AppendedSemanticsElement(function1, z));
    }
}
