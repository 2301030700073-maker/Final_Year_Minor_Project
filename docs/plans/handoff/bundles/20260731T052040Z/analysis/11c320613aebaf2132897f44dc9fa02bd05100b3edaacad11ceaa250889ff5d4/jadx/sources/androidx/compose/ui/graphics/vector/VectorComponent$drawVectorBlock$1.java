package androidx.compose.ui.graphics.vector;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class VectorComponent$drawVectorBlock$1 extends Lambda implements Function1 {
    final /* synthetic */ VectorComponent this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorComponent$drawVectorBlock$1(VectorComponent vectorComponent) {
        super(1);
        this.this$0 = vectorComponent;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DrawScope drawScope = (DrawScope) obj;
        VectorComponent vectorComponent = this.this$0;
        GroupComponent groupComponent = vectorComponent.root;
        float f = vectorComponent.rootScaleX;
        float f2 = vectorComponent.rootScaleY;
        ProcessFinisher drawContext = drawScope.getDrawContext();
        long m729getSizeNHjbRc = drawContext.m729getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            ((PopupMenu$1) drawContext.context).m3scale0AR0LA0(f, f2, 0L);
            groupComponent.draw(drawScope);
            drawContext.getCanvas().restore();
            drawContext.m730setSizeuvyYCjk(m729getSizeNHjbRc);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            drawContext.getCanvas().restore();
            drawContext.m730setSizeuvyYCjk(m729getSizeNHjbRc);
            throw th;
        }
    }
}
