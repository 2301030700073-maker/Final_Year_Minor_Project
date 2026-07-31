package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.BiasAbsoluteAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.PopupLayout$Content$4;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbsoluteAlignment {
    public static final BiasAbsoluteAlignment TopLeft = new BiasAbsoluteAlignment(-1.0f);
    public static final BiasAbsoluteAlignment TopRight = new BiasAbsoluteAlignment(1.0f);
    public static final BiasAbsoluteAlignment.Horizontal Left = new BiasAbsoluteAlignment.Horizontal(-1.0f);
    public static final BiasAbsoluteAlignment.Horizontal Right = new BiasAbsoluteAlignment.Horizontal(1.0f);

    public static final Modifier materializeImpl(Composer composer, Modifier modifier) {
        if (modifier.all(ComposedModifierKt$materializeImpl$1.INSTANCE)) {
            return modifier;
        }
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceableGroup(1219399079);
        Modifier modifier2 = (Modifier) modifier.foldIn(Modifier.Companion.$$INSTANCE, new PopupLayout$Content$4(2, gapComposer));
        gapComposer.end(false);
        return modifier2;
    }

    public static final Modifier materializeModifier(Composer composer, Modifier modifier) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(439770924);
        Modifier materializeImpl = materializeImpl(gapComposer, modifier);
        gapComposer.end(false);
        return materializeImpl;
    }
}
