package androidx.glance.appwidget;

import android.os.Build;
import android.widget.RemoteViews;
import androidx.glance.unit.Dimension;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ApplyModifiersApi31Impl {
    public static final ApplyModifiersApi31Impl INSTANCE = new ApplyModifiersApi31Impl();

    public final void applyRoundedCorners(RemoteViews remoteViews, int i, Dimension dimension) {
        remoteViews.getClass();
        if (Build.VERSION.SDK_INT < 31) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) "setClipToOutline is only available on SDK 31 and higher");
            return;
        }
        remoteViews.setBoolean(i, "setClipToOutline", true);
        if (dimension instanceof Dimension.Dp) {
            remoteViews.setViewOutlinePreferredRadius(i, ((Dimension.Dp) dimension).dp, 1);
        } else if (dimension instanceof Dimension.Resource) {
            remoteViews.setViewOutlinePreferredRadiusDimen(i, R.dimen.glance_component_button_corners);
        } else {
            ContextsKt$$ExternalSyntheticBUOutline0.m("Rounded corners should not be ", dimension.getClass().getCanonicalName());
        }
    }

    public final void setViewHeight(RemoteViews remoteViews, int i, Dimension dimension) {
        if (dimension instanceof Dimension.Wrap) {
            remoteViews.setViewLayoutHeight(i, -2.0f, 0);
            return;
        }
        if (dimension instanceof Dimension.Expand) {
            remoteViews.setViewLayoutHeight(i, RecyclerView.DECELERATION_RATE, 0);
            return;
        }
        if (dimension instanceof Dimension.Dp) {
            remoteViews.setViewLayoutHeight(i, ((Dimension.Dp) dimension).dp, 1);
            return;
        }
        if (dimension instanceof Dimension.Resource) {
            remoteViews.setViewLayoutHeightDimen(i, R.dimen.glance_component_button_corners);
        } else if (Intrinsics.areEqual(dimension, Dimension.Fill.INSTANCE)) {
            remoteViews.setViewLayoutHeight(i, -1.0f, 0);
        } else {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
        }
    }

    public final void setViewWidth(RemoteViews remoteViews, int i, Dimension dimension) {
        if (dimension instanceof Dimension.Wrap) {
            remoteViews.setViewLayoutWidth(i, -2.0f, 0);
            return;
        }
        if (dimension instanceof Dimension.Expand) {
            remoteViews.setViewLayoutWidth(i, RecyclerView.DECELERATION_RATE, 0);
            return;
        }
        if (dimension instanceof Dimension.Dp) {
            remoteViews.setViewLayoutWidth(i, ((Dimension.Dp) dimension).dp, 1);
            return;
        }
        if (dimension instanceof Dimension.Resource) {
            remoteViews.setViewLayoutWidthDimen(i, R.dimen.glance_component_button_corners);
        } else if (Intrinsics.areEqual(dimension, Dimension.Fill.INSTANCE)) {
            remoteViews.setViewLayoutWidth(i, -1.0f, 0);
        } else {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
        }
    }
}
