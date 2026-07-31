package androidx.compose.ui;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
