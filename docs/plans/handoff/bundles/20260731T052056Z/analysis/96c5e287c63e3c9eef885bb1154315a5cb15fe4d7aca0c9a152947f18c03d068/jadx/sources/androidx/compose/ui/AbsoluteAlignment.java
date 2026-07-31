package androidx.compose.ui;

import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.BiasAbsoluteAlignment;
import androidx.compose.ui.Modifier;
import androidx.glance.layout.SpacerKt$Spacer$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbsoluteAlignment {
    public static final BiasAbsoluteAlignment TopLeft = new BiasAbsoluteAlignment(-1.0f);
    public static final BiasAbsoluteAlignment TopRight = new BiasAbsoluteAlignment(1.0f);
    public static final BiasAbsoluteAlignment.Horizontal Left = new BiasAbsoluteAlignment.Horizontal(-1.0f);
    public static final BiasAbsoluteAlignment.Horizontal Right = new BiasAbsoluteAlignment.Horizontal(1.0f);

    public static final Modifier materializeImpl(GapComposer gapComposer, Modifier modifier) {
        if (modifier.all(ComposedModifierKt$materializeImpl$1.INSTANCE)) {
            return modifier;
        }
        gapComposer.startReplaceableGroup(1219399079);
        Modifier modifier2 = (Modifier) modifier.foldIn(Modifier.Companion.$$INSTANCE, new SpacerKt$Spacer$3(2, gapComposer));
        gapComposer.end(false);
        return modifier2;
    }

    public static final Modifier materializeModifier(GapComposer gapComposer, Modifier modifier) {
        gapComposer.startReplaceGroup(439770924);
        Modifier materializeImpl = materializeImpl(gapComposer, modifier);
        gapComposer.end(false);
        return materializeImpl;
    }
}
