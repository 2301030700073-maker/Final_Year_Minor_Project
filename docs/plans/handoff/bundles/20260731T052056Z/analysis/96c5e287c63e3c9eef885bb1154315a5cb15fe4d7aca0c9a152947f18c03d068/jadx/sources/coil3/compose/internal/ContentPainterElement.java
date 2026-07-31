package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import coil3.RealImageLoader;
import coil3.compose.AsyncImageModelEqualityDelegate$Companion$Default$1;
import coil3.compose.AsyncImagePainter;
import coil3.compose.AsyncImagePreviewHandler$Companion$Default$1;
import coil3.compose.ConstraintsSizeResolver;
import coil3.request.ImageRequest;
import coil3.size.SizeResolver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcoil3/compose/internal/ContentPainterElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Lcoil3/compose/internal/ContentPainterNode;", "coil-compose-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class ContentPainterElement extends ModifierNodeElement {
    public final Alignment alignment;
    public final String contentDescription;
    public final ContentScale contentScale;
    public final RealImageLoader imageLoader;
    public final AsyncImageModelEqualityDelegate$Companion$Default$1 modelEqualityDelegate;
    public final Function1 onState;
    public final AsyncImagePreviewHandler$Companion$Default$1 previewHandler;
    public final ImageRequest request;
    public final Function1 transform;

    public ContentPainterElement(ImageRequest imageRequest, RealImageLoader realImageLoader, AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1, Function1 function1, Function1 function12, Alignment alignment, ContentScale contentScale, AsyncImagePreviewHandler$Companion$Default$1 asyncImagePreviewHandler$Companion$Default$1, String str) {
        this.request = imageRequest;
        this.imageLoader = realImageLoader;
        this.modelEqualityDelegate = asyncImageModelEqualityDelegate$Companion$Default$1;
        this.transform = function1;
        this.onState = function12;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.previewHandler = asyncImagePreviewHandler$Companion$Default$1;
        this.contentDescription = str;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1 = this.modelEqualityDelegate;
        RealImageLoader realImageLoader = this.imageLoader;
        ImageRequest imageRequest = this.request;
        AsyncImagePainter.Input input = new AsyncImagePainter.Input(realImageLoader, imageRequest, asyncImageModelEqualityDelegate$Companion$Default$1);
        AsyncImagePainter asyncImagePainter = new AsyncImagePainter(input);
        asyncImagePainter.transform = this.transform;
        asyncImagePainter.onState = this.onState;
        asyncImagePainter.contentScale = this.contentScale;
        asyncImagePainter.previewHandler = this.previewHandler;
        asyncImagePainter.set_input$coil_compose_core(input);
        SizeResolver sizeResolver = imageRequest.sizeResolver;
        return new ContentPainterNode(asyncImagePainter, this.alignment, this.contentScale, this.contentDescription, sizeResolver instanceof ConstraintsSizeResolver ? (ConstraintsSizeResolver) sizeResolver : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ContentPainterElement) {
            ContentPainterElement contentPainterElement = (ContentPainterElement) obj;
            if (this.request.equals(contentPainterElement.request) && this.imageLoader == contentPainterElement.imageLoader && Intrinsics.areEqual(this.modelEqualityDelegate, contentPainterElement.modelEqualityDelegate) && Intrinsics.areEqual(this.transform, contentPainterElement.transform) && Intrinsics.areEqual(this.onState, contentPainterElement.onState) && Intrinsics.areEqual(this.alignment, contentPainterElement.alignment) && Intrinsics.areEqual(this.contentScale, contentPainterElement.contentScale) && Float.compare(1.0f, 1.0f) == 0 && Intrinsics.areEqual(this.previewHandler, contentPainterElement.previewHandler) && Intrinsics.areEqual(this.contentDescription, contentPainterElement.contentDescription)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.transform.hashCode() + ((this.modelEqualityDelegate.hashCode() + ((this.imageLoader.hashCode() + (this.request.hashCode() * 31)) * 31)) * 31)) * 31;
        Function1 function1 = this.onState;
        int floatToIntBits = (((Float.floatToIntBits(1.0f) + ((this.contentScale.hashCode() + ((this.alignment.hashCode() + ((((hashCode + (function1 == null ? 0 : function1.hashCode())) * 31) + 1) * 31)) * 31)) * 31)) * 961) + 1231) * 31;
        AsyncImagePreviewHandler$Companion$Default$1 asyncImagePreviewHandler$Companion$Default$1 = this.previewHandler;
        int hashCode2 = (floatToIntBits + (asyncImagePreviewHandler$Companion$Default$1 == null ? 0 : asyncImagePreviewHandler$Companion$Default$1.hashCode())) * 31;
        String str = this.contentDescription;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "ContentPainterElement(request=" + this.request + ", imageLoader=" + this.imageLoader + ", modelEqualityDelegate=" + this.modelEqualityDelegate + ", transform=" + this.transform + ", onState=" + this.onState + ", filterQuality=Low, alignment=" + this.alignment + ", contentScale=" + this.contentScale + ", alpha=1.0, colorFilter=null, clipToBounds=true, previewHandler=" + this.previewHandler + ", contentDescription=" + this.contentDescription + ")";
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        ContentPainterNode contentPainterNode = (ContentPainterNode) node;
        long mo493getIntrinsicSizeNHjbRc = contentPainterNode.painter.mo493getIntrinsicSizeNHjbRc();
        ConstraintsSizeResolver constraintsSizeResolver = contentPainterNode.constraintSizeResolver;
        AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1 = this.modelEqualityDelegate;
        RealImageLoader realImageLoader = this.imageLoader;
        ImageRequest imageRequest = this.request;
        AsyncImagePainter.Input input = new AsyncImagePainter.Input(realImageLoader, imageRequest, asyncImageModelEqualityDelegate$Companion$Default$1);
        AsyncImagePainter asyncImagePainter = contentPainterNode.painter;
        asyncImagePainter.transform = this.transform;
        asyncImagePainter.onState = this.onState;
        ContentScale contentScale = this.contentScale;
        asyncImagePainter.contentScale = contentScale;
        asyncImagePainter.previewHandler = this.previewHandler;
        asyncImagePainter.set_input$coil_compose_core(input);
        boolean m394equalsimpl0 = Size.m394equalsimpl0(mo493getIntrinsicSizeNHjbRc, asyncImagePainter.mo493getIntrinsicSizeNHjbRc());
        contentPainterNode.alignment = this.alignment;
        SizeResolver sizeResolver = imageRequest.sizeResolver;
        contentPainterNode.constraintSizeResolver = sizeResolver instanceof ConstraintsSizeResolver ? (ConstraintsSizeResolver) sizeResolver : null;
        contentPainterNode.contentScale = contentScale;
        contentPainterNode.alpha = 1.0f;
        contentPainterNode.clipToBounds = true;
        String str = contentPainterNode.contentDescription;
        String str2 = this.contentDescription;
        if (!Intrinsics.areEqual(str, str2)) {
            contentPainterNode.contentDescription = str2;
            HitTestResultKt.invalidateSemantics(contentPainterNode);
        }
        boolean areEqual = Intrinsics.areEqual(constraintsSizeResolver, contentPainterNode.constraintSizeResolver);
        if (!m394equalsimpl0 || !areEqual) {
            HitTestResultKt.invalidateMeasurement(contentPainterNode);
        }
        HitTestResultKt.invalidateDraw(contentPainterNode);
    }
}
