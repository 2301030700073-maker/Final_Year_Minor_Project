package org.wikipedia.compose.components;

import android.content.Context;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WikiTopAppBarKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ WikiTopAppBarKt$$ExternalSyntheticLambda1(Context context, Function0 function0, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Function0 function0 = this.f$1;
        Context context = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer.changedInstance(context) | gapComposer.changed(function0);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new RandomScreenKt$$ExternalSyntheticLambda4(context, function0, 2);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    CardKt.IconButton((Function0) rememberedValue, null, false, null, null, TabsBoxKt.f26lambda$1260496663, gapComposer, 1572864, 62);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance2 = gapComposer2.changedInstance(context) | gapComposer2.changed(function0);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new RandomScreenKt$$ExternalSyntheticLambda4(context, function0, 1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    CardKt.IconButton((Function0) rememberedValue2, null, false, null, null, TabsBoxKt.f27lambda$1520544837, gapComposer2, 1572864, 62);
                    break;
                }
            default:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer3, 0);
                    long j = gapComposer3.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, Modifier.Companion.$$INSTANCE);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m327setimpl(gapComposer3, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer3, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    String stringResource = UtilsKt.stringResource(R.string.home_feed_did_you_know_title, gapComposer3);
                    boolean changedInstance3 = gapComposer3.changedInstance(context) | gapComposer3.changed(function0);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new RandomScreenKt$$ExternalSyntheticLambda4(context, function0, 3);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    TabsBoxKt.m904WikiTopAppBarWHejsw(null, stringResource, (Function0) rememberedValue3, null, null, gapComposer3, 0, 57);
                    gapComposer3.end(true);
                    break;
                }
        }
        return unit;
    }
}
