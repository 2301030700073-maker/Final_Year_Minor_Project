package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.node.DelegatableNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface IndicationNodeFactory {
    DelegatableNode create(InteractionSource interactionSource);

    int hashCode();

    void rememberUpdatedInstance(InteractionSource interactionSource, GapComposer gapComposer);
}
