package androidx.compose.foundation.text;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.AnnotatedString;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AnnotatedStringResolveInlineContentKt {
    public static final Pair EmptyInlineContent;

    static {
        EmptyList emptyList = EmptyList.INSTANCE;
        EmptyInlineContent = new Pair(emptyList, emptyList);
    }

    public static final void InlineChildren(AnnotatedString annotatedString, List list, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1794596951);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(annotatedString) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        char c = ' ';
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(list) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            int size = list.size();
            int i3 = 0;
            while (i3 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i3);
                Function3 function3 = (Function3) range.item;
                int i4 = range.start;
                int i5 = range.end;
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = EmptyMeasurePolicy.INSTANCE$1;
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
                long j = gapComposer.compositeKeyHashCode;
                int i6 = (int) (j ^ (j >>> c));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, Modifier.Companion.$$INSTANCE);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m380setimpl(gapComposer, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                function3.invoke(annotatedString.subSequence(i4, i5).text, gapComposer, 0);
                gapComposer.end(true);
                i3++;
                c = ' ';
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 5, annotatedString, list);
        }
    }
}
