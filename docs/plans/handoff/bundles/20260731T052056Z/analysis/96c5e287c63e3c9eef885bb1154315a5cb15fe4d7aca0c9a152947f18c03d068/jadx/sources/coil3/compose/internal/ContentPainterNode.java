package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import coil3.compose.AsyncImagePainter;
import coil3.compose.ConstraintsSizeResolver;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentPainterNode extends AbstractContentPainterNode {
    public final AsyncImagePainter painter;

    public ContentPainterNode(AsyncImagePainter asyncImagePainter, Alignment alignment, ContentScale contentScale, String str, ConstraintsSizeResolver constraintsSizeResolver) {
        super(alignment, contentScale, 1.0f, true, str, constraintsSizeResolver);
        this.painter = asyncImagePainter;
    }

    @Override // coil3.compose.internal.AbstractContentPainterNode
    public final Painter getPainter$1() {
        return this.painter;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        CoroutineScope coroutineScope = getCoroutineScope();
        AsyncImagePainter asyncImagePainter = this.painter;
        asyncImagePainter.scope = coroutineScope;
        asyncImagePainter.onRemembered();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        this.painter.onForgotten();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        this.painter.set_input$coil_compose_core(null);
    }
}
