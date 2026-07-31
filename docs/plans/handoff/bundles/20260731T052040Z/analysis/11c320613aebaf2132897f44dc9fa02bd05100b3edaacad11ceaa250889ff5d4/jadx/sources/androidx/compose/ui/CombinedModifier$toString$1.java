package androidx.compose.ui;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
