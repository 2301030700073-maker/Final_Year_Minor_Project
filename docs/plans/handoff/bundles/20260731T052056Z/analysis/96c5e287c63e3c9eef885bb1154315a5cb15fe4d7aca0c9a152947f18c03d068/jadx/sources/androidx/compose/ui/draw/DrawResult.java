package androidx.compose.ui.draw;

import coil3.Image;
import coil3.UriKt;
import coil3.target.Target;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DrawResult implements Target {
    public Function1 block;

    public DrawResult(Function1 function1) {
        this.block = function1;
    }

    @Override // coil3.target.Target
    public void onSuccess(Image image) {
        this.block.invoke(UriKt.toBitmap$default(image));
    }

    @Override // coil3.target.Target
    public void onError(Image image) {
    }

    @Override // coil3.target.Target
    public void onStart(Image image) {
    }
}
