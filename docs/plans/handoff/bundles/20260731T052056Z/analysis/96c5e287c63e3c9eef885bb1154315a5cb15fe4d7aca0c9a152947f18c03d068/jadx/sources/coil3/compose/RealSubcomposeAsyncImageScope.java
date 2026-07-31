package coil3.compose;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealSubcomposeAsyncImageScope implements BoxScope {
    public final Alignment alignment;
    public final String contentDescription;
    public final ContentScale contentScale;
    public final AsyncImagePainter painter;
    public final BoxScope parentScope;

    public RealSubcomposeAsyncImageScope(BoxScope boxScope, AsyncImagePainter asyncImagePainter, String str, Alignment alignment, ContentScale contentScale) {
        this.parentScope = boxScope;
        this.painter = asyncImagePainter;
        this.contentDescription = str;
        this.alignment = alignment;
        this.contentScale = contentScale;
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    public final Modifier align(Modifier modifier, BiasAlignment biasAlignment) {
        return this.parentScope.align(Modifier.Companion.$$INSTANCE, biasAlignment);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RealSubcomposeAsyncImageScope) {
            RealSubcomposeAsyncImageScope realSubcomposeAsyncImageScope = (RealSubcomposeAsyncImageScope) obj;
            if (this.parentScope.equals(realSubcomposeAsyncImageScope.parentScope) && this.painter == realSubcomposeAsyncImageScope.painter && Intrinsics.areEqual(this.contentDescription, realSubcomposeAsyncImageScope.contentDescription) && Intrinsics.areEqual(this.alignment, realSubcomposeAsyncImageScope.alignment) && Intrinsics.areEqual(this.contentScale, realSubcomposeAsyncImageScope.contentScale) && Float.compare(1.0f, 1.0f) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.painter.hashCode() + (this.parentScope.hashCode() * 31)) * 31;
        String str = this.contentDescription;
        return ((Float.floatToIntBits(1.0f) + ((this.contentScale.hashCode() + ((this.alignment.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 961) + 1231;
    }

    public final String toString() {
        return "RealSubcomposeAsyncImageScope(parentScope=" + this.parentScope + ", painter=" + this.painter + ", contentDescription=" + this.contentDescription + ", alignment=" + this.alignment + ", contentScale=" + this.contentScale + ", alpha=1.0, colorFilter=null, clipToBounds=true)";
    }
}
