package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChipKt$AnimatingChipContent$1$2$3 implements Function3 {
    public static final ChipKt$AnimatingChipContent$1$2$3 INSTANCE = new ChipKt$AnimatingChipContent$1$2$3();
    public final /* synthetic */ int $r8$classId = 1;

    public /* synthetic */ ChipKt$AnimatingChipContent$1$2$3() {
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                ((Number) obj3).intValue();
                ChipKt.m283trailingContentRPmYEkk(gapComposer);
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = Updater.mutableStateOf$default(null);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
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
                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                }
                Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                Function2 function2 = (Function2) mutableState.getValue();
                if (function2 == null) {
                    gapComposer.startReplaceGroup(-2101783313);
                } else {
                    gapComposer.startReplaceGroup(-344894126);
                    function2.invoke(gapComposer, 0);
                }
                gapComposer.end(false);
                gapComposer.end(true);
                break;
            default:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue = ((Number) obj3).intValue();
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
                break;
        }
        return unit;
    }

    public ChipKt$AnimatingChipContent$1$2$3(long j) {
    }
}
