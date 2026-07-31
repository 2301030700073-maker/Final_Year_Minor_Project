package androidx.camera.camera2.compat;

import android.app.job.JobScheduler;
import android.content.Context;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.widget.TextView;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import java.util.LinkedHashMap;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api34Compat {
    public static final void addVisibleLineBounds(CursorAnchorInfo.Builder builder, TextLayoutResult textLayoutResult, Rect rect) {
        if (rect.isEmpty()) {
            return;
        }
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        int i = multiParagraph.lineCount - 1;
        if (i < 0) {
            i = 0;
        }
        int coerceIn = RangesKt.coerceIn(multiParagraph.getLineForVerticalPosition(rect.top), 0, i);
        int coerceIn2 = RangesKt.coerceIn(multiParagraph.getLineForVerticalPosition(rect.bottom), 0, i);
        if (coerceIn > coerceIn2) {
            return;
        }
        while (true) {
            builder.addVisibleLineBounds(textLayoutResult.getLineLeft(coerceIn), multiParagraph.getLineTop(coerceIn), textLayoutResult.getLineRight(coerceIn), multiParagraph.getLineBottom(coerceIn));
            if (coerceIn == coerceIn2) {
                return;
            } else {
                coerceIn++;
            }
        }
    }

    public static Context createDeviceContext(Context context, int i) {
        return context.createDeviceContext(i);
    }

    public static JobScheduler forNamespace(JobScheduler jobScheduler) {
        JobScheduler forNamespace = jobScheduler.forNamespace("androidx.work.systemjobscheduler");
        forNamespace.getClass();
        return forNamespace;
    }

    public static AccessibilityNodeInfo.AccessibilityAction getActionScrollInDirection() {
        return AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION;
    }

    public static float getAxisVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getAxisVelocity(i);
    }

    public static void getBoundsInWindow(AccessibilityNodeInfo accessibilityNodeInfo, android.graphics.Rect rect) {
        accessibilityNodeInfo.getBoundsInWindow(rect);
    }

    public static CharSequence getContainerTitle(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getContainerTitle();
    }

    public static int getDeviceId(Context context) {
        context.getClass();
        return context.getDeviceId();
    }

    public static int getScaledMaximumFlingVelocity(ViewConfiguration viewConfiguration, int i, int i2, int i3) {
        return viewConfiguration.getScaledMaximumFlingVelocity(i, i2, i3);
    }

    public static int getScaledMinimumFlingVelocity(ViewConfiguration viewConfiguration, int i, int i2, int i3) {
        return viewConfiguration.getScaledMinimumFlingVelocity(i, i2, i3);
    }

    public static boolean isAccessibilityDataSensitive(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isAccessibilityDataSensitive();
    }

    public static boolean isRequestFromAccessibilityTool(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isRequestFromAccessibilityTool();
    }

    public static final void onReadoutStarted(CameraCaptureSession.CaptureCallback captureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
        captureCallback.onReadoutStarted(cameraCaptureSession, captureRequest, j, j2);
    }

    public static void setAccessibilityDataSensitive(AccessibilityEvent accessibilityEvent, boolean z) {
        accessibilityEvent.setAccessibilityDataSensitive(z);
    }

    public static void setLineHeight(TextView textView, int i, float f) {
        textView.setLineHeight(i, f);
    }

    public static final void setSettingsOverrideZoom(LinkedHashMap linkedHashMap) {
        linkedHashMap.put(CaptureRequest.CONTROL_SETTINGS_OVERRIDE, 1);
    }

    public static void setAccessibilityDataSensitive(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
        accessibilityNodeInfo.setAccessibilityDataSensitive(z);
    }
}
