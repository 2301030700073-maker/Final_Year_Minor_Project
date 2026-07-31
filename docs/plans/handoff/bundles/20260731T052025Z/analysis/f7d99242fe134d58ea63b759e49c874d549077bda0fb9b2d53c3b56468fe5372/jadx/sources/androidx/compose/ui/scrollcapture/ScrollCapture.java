package androidx.compose.ui.scrollcapture;

import android.content.ClipData;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import android.view.ScrollCaptureTarget;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticApiModelOutline0;
import androidx.core.view.ContentInfoCompat;
import androidx.work.OperationKt;
import com.tokenautocomplete.TokenCompleteTextView$$ExternalSyntheticLambda0;
import java.util.Arrays;
import java.util.function.Consumer;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollCapture implements ContentInfoCompat.BuilderCompat, ContentInfoCompat.Compat {
    public final /* synthetic */ int $r8$classId;
    public final Object scrollCaptureInProgress$delegate;

    public ScrollCapture() {
        this.$r8$classId = 0;
        this.scrollCaptureInProgress$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
    }

    @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
    public ContentInfoCompat build() {
        return new ContentInfoCompat(new ScrollCapture(((ContentInfo.Builder) this.scrollCaptureInProgress$delegate).build()));
    }

    @Override // androidx.core.view.ContentInfoCompat.Compat
    public ClipData getClip() {
        return ((ContentInfo) this.scrollCaptureInProgress$delegate).getClip();
    }

    @Override // androidx.core.view.ContentInfoCompat.Compat
    public int getFlags() {
        return ((ContentInfo) this.scrollCaptureInProgress$delegate).getFlags();
    }

    @Override // androidx.core.view.ContentInfoCompat.Compat
    public int getSource() {
        return ((ContentInfo) this.scrollCaptureInProgress$delegate).getSource();
    }

    @Override // androidx.core.view.ContentInfoCompat.Compat
    public ContentInfo getWrapped() {
        return (ContentInfo) this.scrollCaptureInProgress$delegate;
    }

    public void onScrollCaptureSearch(AndroidComposeView androidComposeView, SemanticsOwner semanticsOwner, CoroutineContext coroutineContext, Consumer consumer) {
        MutableVector mutableVector = new MutableVector(new ScrollCaptureCandidate[16]);
        OperationKt.visitScrollCaptureCandidates(semanticsOwner.getUnmergedRootSemanticsNode(), 0, new ScrollCapture$onScrollCaptureSearch$1(1, mutableVector, MutableVector.class, "add", "add(Ljava/lang/Object;)Z", 8, 0));
        Arrays.sort(mutableVector.content, 0, mutableVector.size, new TokenCompleteTextView$$ExternalSyntheticLambda0(3, new Function1[]{ScrollCapture$onScrollCaptureSearch$2.INSTANCE, ScrollCapture$onScrollCaptureSearch$2.INSTANCE$2}));
        int i = mutableVector.size;
        ScrollCaptureCandidate scrollCaptureCandidate = (ScrollCaptureCandidate) (i == 0 ? null : mutableVector.content[i - 1]);
        if (scrollCaptureCandidate == null) {
            return;
        }
        IntRect intRect = scrollCaptureCandidate.viewportBoundsInWindow;
        ComposeScrollCaptureCallback composeScrollCaptureCallback = new ComposeScrollCaptureCallback(scrollCaptureCandidate.node, intRect, JobKt.CoroutineScope(coroutineContext), this, androidComposeView);
        NodeCoordinator nodeCoordinator = scrollCaptureCandidate.coordinates;
        Rect localBoundingBoxOf = RulerKt.findRootCoordinates(nodeCoordinator).localBoundingBoxOf(nodeCoordinator, true);
        long m763getTopLeftnOccac = intRect.m763getTopLeftnOccac();
        ScrollCaptureTarget scrollCaptureTarget = new ScrollCaptureTarget(androidComposeView, ColorKt.toAndroidRect(IntRectKt.roundToIntRect(localBoundingBoxOf)), new Point((int) (m763getTopLeftnOccac >> 32), (int) (m763getTopLeftnOccac & 4294967295L)), composeScrollCaptureCallback);
        scrollCaptureTarget.setScrollBounds(ColorKt.toAndroidRect(intRect));
        consumer.r(scrollCaptureTarget);
    }

    @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
    public void setExtras(Bundle bundle) {
        ((ContentInfo.Builder) this.scrollCaptureInProgress$delegate).setExtras(bundle);
    }

    @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
    public void setFlags(int i) {
        ((ContentInfo.Builder) this.scrollCaptureInProgress$delegate).setFlags(i);
    }

    @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
    public void setLinkUri(Uri uri) {
        ((ContentInfo.Builder) this.scrollCaptureInProgress$delegate).setLinkUri(uri);
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 2:
                return "ContentInfoCompat{" + ((ContentInfo) this.scrollCaptureInProgress$delegate) + "}";
            default:
                return super.toString();
        }
    }

    public ScrollCapture(ContentInfo contentInfo) {
        this.$r8$classId = 2;
        contentInfo.getClass();
        this.scrollCaptureInProgress$delegate = contentInfo;
    }

    public ScrollCapture(ClipData clipData, int i) {
        this.$r8$classId = 1;
        this.scrollCaptureInProgress$delegate = TypefaceCompat$$ExternalSyntheticApiModelOutline0.m(clipData, i);
    }
}
