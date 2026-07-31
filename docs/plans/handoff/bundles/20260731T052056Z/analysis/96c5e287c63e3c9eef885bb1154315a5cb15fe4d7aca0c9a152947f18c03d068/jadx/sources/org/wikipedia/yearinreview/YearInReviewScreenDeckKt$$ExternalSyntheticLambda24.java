package org.wikipedia.yearinreview;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.glance.session.SessionWorkerKt$runSession$6;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.wikipedia.compose.ComposeColors;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewScreenDeckKt$$ExternalSyntheticLambda24 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GraphicsLayer f$0;

    public /* synthetic */ YearInReviewScreenDeckKt$$ExternalSyntheticLambda24(GraphicsLayer graphicsLayer, int i) {
        this.$r8$classId = i;
        this.f$0 = graphicsLayer;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                final LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.getClass();
                final int i2 = 0;
                Function1 function1 = new Function1() { // from class: org.wikipedia.yearinreview.YearInReviewScreenDeckKt$$ExternalSyntheticLambda28
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        int i3 = i2;
                        Unit unit2 = Unit.INSTANCE;
                        LayoutNodeDrawScope layoutNodeDrawScope2 = layoutNodeDrawScope;
                        switch (i3) {
                            case 0:
                                ((DrawScope) obj2).getClass();
                                layoutNodeDrawScope2.drawContent();
                                break;
                            default:
                                DrawScope drawScope = (DrawScope) obj2;
                                drawScope.getClass();
                                Modifier.CC.m350drawRectnJ9OG0$default(drawScope, ComposeColors.White, 0L, RecyclerView.DECELERATION_RATE, null, 126);
                                layoutNodeDrawScope2.drawContent();
                                break;
                        }
                        return unit2;
                    }
                };
                long mo476getSizeNHjbRc = layoutNodeDrawScope.mo476getSizeNHjbRc();
                DrawModifierNode drawModifierNode = layoutNodeDrawScope.drawNode;
                LayoutDirection layoutDirection = layoutNodeDrawScope.getLayoutDirection();
                SessionWorkerKt$runSession$6 sessionWorkerKt$runSession$6 = new SessionWorkerKt$runSession$6(layoutNodeDrawScope, drawModifierNode, function1, 6);
                GraphicsLayer graphicsLayer = this.f$0;
                graphicsLayer.m477recordmLhObY(layoutNodeDrawScope, layoutDirection, (((int) Float.intBitsToFloat((int) (mo476getSizeNHjbRc >> 32))) << 32) | (4294967295L & ((int) Float.intBitsToFloat((int) (mo476getSizeNHjbRc & 4294967295L)))), sessionWorkerKt$runSession$6);
                graphicsLayer.draw$ui_graphics(layoutNodeDrawScope.getDrawContext().getCanvas(), (GraphicsLayer) layoutNodeDrawScope.getDrawContext().cssRules);
                break;
            default:
                final LayoutNodeDrawScope layoutNodeDrawScope2 = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope2.getClass();
                final int i3 = 1;
                Function1 function12 = new Function1() { // from class: org.wikipedia.yearinreview.YearInReviewScreenDeckKt$$ExternalSyntheticLambda28
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        int i32 = i3;
                        Unit unit2 = Unit.INSTANCE;
                        LayoutNodeDrawScope layoutNodeDrawScope22 = layoutNodeDrawScope2;
                        switch (i32) {
                            case 0:
                                ((DrawScope) obj2).getClass();
                                layoutNodeDrawScope22.drawContent();
                                break;
                            default:
                                DrawScope drawScope = (DrawScope) obj2;
                                drawScope.getClass();
                                Modifier.CC.m350drawRectnJ9OG0$default(drawScope, ComposeColors.White, 0L, RecyclerView.DECELERATION_RATE, null, 126);
                                layoutNodeDrawScope22.drawContent();
                                break;
                        }
                        return unit2;
                    }
                };
                long mo476getSizeNHjbRc2 = layoutNodeDrawScope2.mo476getSizeNHjbRc();
                this.f$0.m477recordmLhObY(layoutNodeDrawScope2, layoutNodeDrawScope2.getLayoutDirection(), (((int) Float.intBitsToFloat((int) (mo476getSizeNHjbRc2 >> 32))) << 32) | (4294967295L & ((int) Float.intBitsToFloat((int) (mo476getSizeNHjbRc2 & 4294967295L)))), new SessionWorkerKt$runSession$6(layoutNodeDrawScope2, layoutNodeDrawScope2.drawNode, function12, 6));
                break;
        }
        return unit;
    }
}
