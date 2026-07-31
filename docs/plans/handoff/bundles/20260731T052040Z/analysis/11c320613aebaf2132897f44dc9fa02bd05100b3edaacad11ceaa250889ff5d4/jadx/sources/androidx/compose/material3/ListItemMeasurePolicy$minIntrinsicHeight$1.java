package androidx.compose.material3;

import androidx.compose.ui.layout.Measurable;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListItemMeasurePolicy$minIntrinsicHeight$1 extends FunctionReferenceImpl implements Function2 {
    public static final ListItemMeasurePolicy$minIntrinsicHeight$1 INSTANCE = new ListItemMeasurePolicy$minIntrinsicHeight$1(2, Measurable.class, "minIntrinsicHeight", "minIntrinsicHeight(I)I", 0);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return Integer.valueOf(((Measurable) obj).minIntrinsicHeight(((Number) obj2).intValue()));
    }
}
