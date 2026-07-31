package coil3.compose.internal;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.lifecycle.LifecycleRegistry;
import coil3.UriKt;
import coil3.compose.AsyncImagePreviewHandler$Companion$Default$1;
import coil3.compose.ConstraintsSizeResolver;
import coil3.compose.LocalAsyncImagePreviewHandlerKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.size.SizeResolver;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long ZeroConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 5);

    public static final AsyncImagePreviewHandler$Companion$Default$1 previewHandler(GapComposer gapComposer) {
        if (!((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue()) {
            gapComposer.startReplaceGroup(2019088453);
            gapComposer.end(false);
            return null;
        }
        gapComposer.startReplaceGroup(2019030948);
        AsyncImagePreviewHandler$Companion$Default$1 asyncImagePreviewHandler$Companion$Default$1 = (AsyncImagePreviewHandler$Companion$Default$1) gapComposer.consume(LocalAsyncImagePreviewHandlerKt.LocalAsyncImagePreviewHandler);
        gapComposer.end(false);
        return asyncImagePreviewHandler$Companion$Default$1;
    }

    public static final SizeResolver rememberSizeResolver(ContentScale contentScale, GapComposer gapComposer) {
        Object obj;
        boolean areEqual = Intrinsics.areEqual(contentScale, ContentScale.Companion.None);
        boolean changed = gapComposer.changed(areEqual);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            if (areEqual) {
                obj = SizeResolver.ORIGINAL;
            } else {
                ConstraintsSizeResolver constraintsSizeResolver = new ConstraintsSizeResolver();
                constraintsSizeResolver.latestConstraints = ZeroConstraints;
                constraintsSizeResolver.continuations = new ArrayList();
                obj = constraintsSizeResolver;
            }
            rememberedValue = obj;
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (SizeResolver) rememberedValue;
    }

    public static final ImageRequest requestOf(Object obj, GapComposer gapComposer) {
        gapComposer.startReplaceGroup(1319639034);
        if (obj instanceof ImageRequest) {
            gapComposer.startReplaceGroup(1530875884);
            ImageRequest imageRequest = (ImageRequest) obj;
            gapComposer.end(false);
            gapComposer.end(false);
            return imageRequest;
        }
        gapComposer.startReplaceGroup(1530915130);
        Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
        boolean changed = gapComposer.changed(context) | gapComposer.changed(obj);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            ImageRequest.Builder builder = new ImageRequest.Builder(context);
            builder.data = obj;
            rememberedValue = builder.build();
            gapComposer.updateRememberedValue(rememberedValue);
        }
        ImageRequest imageRequest2 = (ImageRequest) rememberedValue;
        gapComposer.end(false);
        gapComposer.end(false);
        return imageRequest2;
    }

    public static final ImageRequest requestOfWithSizeResolver(Object obj, ContentScale contentScale, GapComposer gapComposer, int i) {
        gapComposer.startReplaceGroup(-329318062);
        boolean z = obj instanceof ImageRequest;
        Object obj2 = Composer$Companion.Empty;
        if (!z) {
            gapComposer.startReplaceGroup(-1008595950);
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            SizeResolver rememberSizeResolver = rememberSizeResolver(contentScale, gapComposer);
            boolean changed = gapComposer.changed(context) | gapComposer.changed(obj) | gapComposer.changed(rememberSizeResolver);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == obj2) {
                ImageRequest.Builder builder = new ImageRequest.Builder(context);
                builder.data = obj;
                builder.sizeResolver = rememberSizeResolver;
                rememberedValue = builder.build();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ImageRequest imageRequest = (ImageRequest) rememberedValue;
            gapComposer.end(false);
            gapComposer.end(false);
            return imageRequest;
        }
        gapComposer.startReplaceGroup(-1008942344);
        ImageRequest imageRequest2 = (ImageRequest) obj;
        if (imageRequest2.defined.sizeResolver != null) {
            gapComposer.startReplaceGroup(-1008902292);
            gapComposer.end(false);
            gapComposer.end(false);
            gapComposer.end(false);
            return imageRequest2;
        }
        gapComposer.startReplaceGroup(-1008854118);
        SizeResolver rememberSizeResolver2 = rememberSizeResolver(contentScale, gapComposer);
        boolean changed2 = gapComposer.changed(obj) | gapComposer.changed(rememberSizeResolver2);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed2 || rememberedValue2 == obj2) {
            ImageRequest.Builder newBuilder$default = ImageRequest.newBuilder$default(imageRequest2);
            newBuilder$default.sizeResolver = rememberSizeResolver2;
            rememberedValue2 = newBuilder$default.build();
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        ImageRequest imageRequest3 = (ImageRequest) rememberedValue2;
        Modifier.CC.m(gapComposer, false, false, false);
        return imageRequest3;
    }

    /* renamed from: toIntSize-uvyYCjk, reason: not valid java name */
    public static final long m781toIntSizeuvyYCjk(long j) {
        return (UnsignedKt.roundToInt(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L) | (UnsignedKt.roundToInt(Float.intBitsToFloat((int) (j >> 32))) << 32);
    }

    public static void unsupportedData$default(String str) {
        throw new IllegalArgumentException(ViewSizeResolver$CC.m("Unsupported type: ", str, ". ", Animation.CC.m("If you wish to display this ", str, ", use androidx.compose.foundation.Image.")));
    }

    public static final void validateRequest(ImageRequest imageRequest) {
        Object obj = imageRequest.data;
        if (obj instanceof ImageRequest.Builder) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?");
            return;
        }
        if (obj instanceof AndroidImageBitmap) {
            unsupportedData$default("ImageBitmap");
            throw null;
        }
        if (obj instanceof ImageVector) {
            unsupportedData$default("ImageVector");
            throw null;
        }
        if (obj instanceof Painter) {
            unsupportedData$default("Painter");
            throw null;
        }
        if (imageRequest.target != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("request.target must be null.");
        } else {
            if (((LifecycleRegistry) UriKt.getExtra(imageRequest, ImageRequests_androidKt.lifecycleKey)) == null) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("request.lifecycle must be null.");
        }
    }
}
