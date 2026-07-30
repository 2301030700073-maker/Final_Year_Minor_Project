package androidx.compose.runtime;

import kotlin.jvm.functions.Function2;

/* compiled from: Composition.kt */
/* loaded from: classes.dex */
public interface ReusableComposition extends Composition {
    void deactivate();

    void setContentWithReuse(Function2 function2);
}
