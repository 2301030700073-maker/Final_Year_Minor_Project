package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.node.DelegatableNode;

/* compiled from: Indication.kt */
/* loaded from: classes.dex */
public interface IndicationNodeFactory extends Indication {
    DelegatableNode create(InteractionSource interactionSource);
}
