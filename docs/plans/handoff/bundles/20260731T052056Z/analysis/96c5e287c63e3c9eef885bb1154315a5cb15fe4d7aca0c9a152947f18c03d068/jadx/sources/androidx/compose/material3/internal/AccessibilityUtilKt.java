package androidx.compose.material3.internal;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AccessibilityUtilKt {
    public static final Modifier IncreaseVerticalSemanticsBounds;

    static {
        AppBarKt$$ExternalSyntheticLambda7 appBarKt$$ExternalSyntheticLambda7 = new AppBarKt$$ExternalSyntheticLambda7(2);
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        OffsetKt.m134paddingVpY3zN4$default(SemanticsModifierKt.semantics(RulerKt.layout(companion, appBarKt$$ExternalSyntheticLambda7), true, new ChipKt$$ExternalSyntheticLambda2(25)), 10.0f, RecyclerView.DECELERATION_RATE, 2);
        IncreaseVerticalSemanticsBounds = OffsetKt.m134paddingVpY3zN4$default(SemanticsModifierKt.semantics(RulerKt.layout(companion, new AppBarKt$$ExternalSyntheticLambda7(3)), true, new ChipKt$$ExternalSyntheticLambda2(26)), RecyclerView.DECELERATION_RATE, 10.0f, 1);
    }
}
