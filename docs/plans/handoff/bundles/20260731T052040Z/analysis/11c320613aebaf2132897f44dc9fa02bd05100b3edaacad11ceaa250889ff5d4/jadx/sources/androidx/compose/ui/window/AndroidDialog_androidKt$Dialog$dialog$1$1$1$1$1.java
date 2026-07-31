package androidx.compose.ui.window;

import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidDialog_androidKt$Dialog$dialog$1$1$1$1$1 extends Lambda implements Function1 {
    public static final AndroidDialog_androidKt$Dialog$dialog$1$1$1$1$1 INSTANCE = new AndroidDialog_androidKt$Dialog$dialog$1$1$1$1$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.IsDialog;
        Unit unit = Unit.INSTANCE;
        ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey, unit);
        return unit;
    }
}
