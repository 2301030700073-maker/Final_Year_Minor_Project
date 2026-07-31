package androidx.compose.ui.graphics.layer;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GraphicsLayer$clipDrawBlock$1 extends Lambda implements Function1 {
    final /* synthetic */ GraphicsLayer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphicsLayer$clipDrawBlock$1(GraphicsLayer graphicsLayer) {
        super(1);
        this.this$0 = graphicsLayer;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        DrawScope drawScope = (DrawScope) obj;
        GraphicsLayer graphicsLayer = this.this$0;
        AndroidPath androidPath = graphicsLayer.outlinePath;
        if (graphicsLayer.usePathForClip && graphicsLayer.clip && androidPath != null) {
            ProcessFinisher drawContext = drawScope.getDrawContext();
            long m729getSizeNHjbRc = drawContext.m729getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                ((ProcessFinisher) ((PopupMenu$1) drawContext.context).this$0).getCanvas().mo210clipPathmtrdDE(androidPath);
                graphicsLayer.drawWithChildTracking(drawScope);
            } finally {
                drawContext.getCanvas().restore();
                drawContext.m730setSizeuvyYCjk(m729getSizeNHjbRc);
            }
        } else {
            graphicsLayer.drawWithChildTracking(drawScope);
        }
        return Unit.INSTANCE;
    }
}
