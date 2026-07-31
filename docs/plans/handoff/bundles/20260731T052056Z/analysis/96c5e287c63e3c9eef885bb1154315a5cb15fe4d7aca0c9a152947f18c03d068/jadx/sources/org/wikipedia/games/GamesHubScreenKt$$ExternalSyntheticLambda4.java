package org.wikipedia.games;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeElement;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.ColorFilter;
import androidx.glance.GlanceModifier;
import androidx.glance.TintColorFilterParams;
import androidx.glance.color.DayNightColorProvider;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.RegexKt;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda4(long j, Function2 function2, int i) {
        this.$r8$classId = 2;
        this.f$1 = j;
        this.f$0 = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier then;
        int i = this.$r8$classId;
        long j = this.f$1;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(str, null, this.f$1, null, 0L, FontWeight.Medium, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer, 1572864, 0, 129978);
                    break;
                }
            case 1:
                Modifier modifier = (Modifier) obj3;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else if (j == 9205357640488583168L) {
                    gapComposer2.startReplaceGroup(-1243644858);
                    AndroidCursorHandle_androidKt.DefaultCursorHandle(modifier, gapComposer2, 0, 0);
                    gapComposer2.end(false);
                    break;
                } else {
                    gapComposer2.startReplaceGroup(-1244013944);
                    then = modifier.then(new SizeElement(DpSize.m712getWidthD9Ej5fM(j), (r13 & 2) != 0 ? Float.NaN : DpSize.m711getHeightD9Ej5fM(j), (r13 & 4) != 0 ? Float.NaN : RecyclerView.DECELERATION_RATE, (r13 & 8) != 0 ? Float.NaN : RecyclerView.DECELERATION_RATE, false));
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopCenter, false);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i2 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    AndroidCursorHandle_androidKt.DefaultCursorHandle(null, gapComposer2, 0, 1);
                    gapComposer2.end(true);
                    gapComposer2.end(false);
                    break;
                }
            case 2:
                ((Integer) obj2).getClass();
                LayoutUtilKt.m316DecorationIv8Zu3U(j, (Function2) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                RegexKt.m837CircularArrowProgressIndicatorRPmYEkk((FloatProducer) obj3, j, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    ContextsKt.m787ImageGCr5PR4(new AndroidResourceImageProvider(R.drawable.widget_shape_background), DpKt.fillMaxSize(GlanceModifier.Companion.$$INSTANCE), 0, new ColorFilter(new TintColorFilterParams(new DayNightColorProvider(j, j))), gapComposer3, 32816, 8);
                    composableLambdaImpl.invoke((Object) gapComposer3, (Object) 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda4(int i, long j, Object obj) {
        this.$r8$classId = i;
        this.f$1 = j;
        this.f$0 = obj;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda4(FloatProducer floatProducer, long j, int i) {
        this.$r8$classId = 3;
        this.f$0 = floatProducer;
        this.f$1 = j;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda4(String str, long j) {
        this.$r8$classId = 0;
        this.f$0 = str;
        this.f$1 = j;
    }
}
