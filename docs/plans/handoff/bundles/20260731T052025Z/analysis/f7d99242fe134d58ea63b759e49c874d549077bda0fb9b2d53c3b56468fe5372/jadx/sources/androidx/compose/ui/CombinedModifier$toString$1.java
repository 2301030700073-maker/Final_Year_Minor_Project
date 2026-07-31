package androidx.compose.ui;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CombinedModifier$toString$1 extends Lambda implements Function2 {
    public static final CombinedModifier$toString$1 INSTANCE = new CombinedModifier$toString$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = (String) obj;
        Modifier.Element element = (Modifier.Element) obj2;
        if (str.length() == 0) {
            return element.toString();
        }
        return str + ", " + element;
    }
}
