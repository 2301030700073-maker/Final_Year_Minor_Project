package androidx.compose.ui;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposedModifierKt$materializeImpl$1 extends Lambda implements Function1 {
    public static final ComposedModifierKt$materializeImpl$1 INSTANCE = new ComposedModifierKt$materializeImpl$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(!(((Modifier.Element) obj) instanceof ComposedModifier));
    }
}
