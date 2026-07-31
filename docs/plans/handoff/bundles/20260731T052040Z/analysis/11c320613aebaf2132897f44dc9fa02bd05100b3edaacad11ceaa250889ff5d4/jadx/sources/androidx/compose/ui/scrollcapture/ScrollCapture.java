package androidx.compose.ui.scrollcapture;

import android.content.ClipData;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import android.view.ScrollCaptureTarget;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.unit.IntRect;
import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticApiModelOutline0;
import androidx.core.os.BundleKt;
import androidx.core.view.ContentInfoCompat;
import java.util.Arrays;
import java.util.function.Consumer;
import kotlin.coroutines.CoroutineContext;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda8;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        BundleKt.visitScrollCaptureCandidates(semanticsOwner.getUnmergedRootSemanticsNode(), 0, new ScrollCapture$onScrollCaptureSearch$1(1, 8, MutableVector.class, mutableVector, "add", "add(Ljava/lang/Object;)Z"));
        Arrays.sort(mutableVector.content, 0, mutableVector.size, new ListHelper$$ExternalSyntheticLambda8(new Function1[]{ScrollCapture$onScrollCaptureSearch$2.INSTANCE, ScrollCapture$onScrollCaptureSearch$2.INSTANCE$2}, 2));
        int i = mutableVector.size;
        ScrollCaptureCandidate scrollCaptureCandidate = (ScrollCaptureCandidate) (i == 0 ? null : mutableVector.content[i - 1]);
        if (scrollCaptureCandidate == null) {
            return;
        }
        IntRect intRect = scrollCaptureCandidate.viewportBoundsInWindow;
        ComposeScrollCaptureCallback composeScrollCaptureCallback = new ComposeScrollCaptureCallback(scrollCaptureCandidate.node, intRect, JobKt.CoroutineScope(coroutineContext), this, androidComposeView);
        NodeCoordinator nodeCoordinator = scrollCaptureCandidate.coordinates;
        long j = (intRect.top & 4294967295L) | (intRect.left << 32);
        ScrollCaptureTarget scrollCaptureTarget = new ScrollCaptureTarget(androidComposeView, Brush.toAndroidRect(CloseableKt.roundToIntRect(RulerKt.findRootCoordinates(nodeCoordinator).localBoundingBoxOf(nodeCoordinator, true))), new Point((int) (j >> 32), (int) (j & 4294967295L)), composeScrollCaptureCallback);
        scrollCaptureTarget.setScrollBounds(Brush.toAndroidRect(intRect));
        consumer.s(scrollCaptureTarget);
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
