package androidx.work;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.os.Build;
import android.util.Size;
import android.view.Display;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.view.PreviewTransformation;
import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.SharingConfig;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WorkRequest {
    public final UUID id;
    public final Set tags;
    public final WorkSpec workSpec;

    public WorkRequest(UUID uuid, WorkSpec workSpec, Set set) {
        uuid.getClass();
        workSpec.getClass();
        set.getClass();
        this.id = uuid;
        this.workSpec = workSpec;
        this.tags = set;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Builder {
        public boolean backoffCriteriaSet;
        public Object id;
        public Object tags;
        public Object workSpec;

        public Builder(Class cls) {
            UUID randomUUID = UUID.randomUUID();
            randomUUID.getClass();
            this.id = randomUUID;
            String uuid = ((UUID) this.id).toString();
            uuid.getClass();
            this.workSpec = new WorkSpec(uuid, (WorkInfo.State) null, cls.getName(), (String) null, (Data) null, (Data) null, 0L, 0L, 0L, (Constraints) null, 0, (BackoffPolicy) null, 0L, 0L, 0L, 0L, false, (OutOfQuotaPolicy) null, 0, 0L, 0, 0, (String) null, (Boolean) null, 33554426);
            this.tags = Validate.mutableSetOf(cls.getName());
        }

        public abstract void apply(SharingConfig sharingConfig);

        public WorkRequest build() {
            WorkRequest buildInternal$work_runtime_release = buildInternal$work_runtime_release();
            Constraints constraints = ((WorkSpec) this.workSpec).constraints;
            boolean z = (Build.VERSION.SDK_INT >= 24 && constraints.hasContentUriTriggers()) || constraints.requiresBatteryNotLow || constraints.requiresCharging || constraints.requiresDeviceIdle;
            WorkSpec workSpec = (WorkSpec) this.workSpec;
            if (workSpec.expedited) {
                if (z) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Expedited jobs only support network and storage constraints");
                    return null;
                }
                if (workSpec.initialDelay > 0) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Expedited jobs cannot be delayed");
                    return null;
                }
            }
            String str = workSpec.traceTag;
            if (str == null) {
                List split$default = StringsKt.split$default(workSpec.workerClassName, new String[]{"."}, 6);
                String str2 = split$default.size() == 1 ? (String) split$default.get(0) : (String) CollectionsKt.last(split$default);
                if (str2.length() > 127) {
                    str2 = StringsKt.take(str2, 127);
                }
                workSpec.traceTag = str2;
            } else if (str.length() > 127) {
                ((WorkSpec) this.workSpec).traceTag = StringsKt.take(str, 127);
            }
            UUID randomUUID = UUID.randomUUID();
            randomUUID.getClass();
            this.id = randomUUID;
            String uuid = randomUUID.toString();
            uuid.getClass();
            WorkSpec workSpec2 = (WorkSpec) this.workSpec;
            workSpec2.getClass();
            this.workSpec = new WorkSpec(uuid, workSpec2.state, workSpec2.workerClassName, workSpec2.inputMergerClassName, new Data(workSpec2.input), new Data(workSpec2.output), workSpec2.initialDelay, workSpec2.intervalDuration, workSpec2.flexDuration, new Constraints(workSpec2.constraints), workSpec2.runAttemptCount, workSpec2.backoffPolicy, workSpec2.backoffDelayDuration, workSpec2.lastEnqueueTime, workSpec2.minimumRetentionDuration, workSpec2.scheduleRequestedAt, workSpec2.expedited, workSpec2.outOfQuotaPolicy, workSpec2.periodCount, workSpec2.nextScheduleTimeOverride, workSpec2.nextScheduleTimeOverrideGeneration, workSpec2.stopReason, workSpec2.traceTag, workSpec2.backOffOnSystemInterruptions, 524288);
            return buildInternal$work_runtime_release;
        }

        public abstract WorkRequest buildInternal$work_runtime_release();

        public abstract String getClassName();

        public abstract View getPreview();

        public abstract Bitmap getPreviewBitmap();

        public abstract Builder getThisObject$work_runtime_release();

        public abstract void onAttachedToWindow();

        public abstract void onDetachedFromWindow();

        public abstract void onSurfaceRequested(SurfaceRequest surfaceRequest, PreviewView$1$$ExternalSyntheticLambda2 previewView$1$$ExternalSyntheticLambda2);

        public void redrawPreview() {
            FrameLayout frameLayout = (FrameLayout) this.workSpec;
            View preview = getPreview();
            if (preview == null || !this.backoffCriteriaSet) {
                return;
            }
            PreviewTransformation previewTransformation = (PreviewTransformation) this.tags;
            Size size = new Size(frameLayout.getWidth(), frameLayout.getHeight());
            int layoutDirection = frameLayout.getLayoutDirection();
            previewTransformation.getClass();
            if (size.getHeight() == 0 || size.getWidth() == 0) {
                Utf8.SafeProcessor.w("PreviewTransform", "Transform not applied due to PreviewView size: " + size);
                return;
            }
            if (previewTransformation.isTransformationInfoReady()) {
                if (preview instanceof TextureView) {
                    ((TextureView) preview).setTransform(previewTransformation.getTextureViewCorrectionMatrix());
                } else {
                    Display display = preview.getDisplay();
                    boolean z = false;
                    boolean z2 = (!previewTransformation.mHasCameraTransform || display == null || display.getRotation() == previewTransformation.mTargetRotation) ? false : true;
                    boolean z3 = previewTransformation.mHasCameraTransform;
                    if (!z3) {
                        if ((!z3 ? previewTransformation.mPreviewRotationDegrees : -IntOffsetKt.surfaceRotationToDegrees(previewTransformation.mTargetRotation)) != 0) {
                            z = true;
                        }
                    }
                    if (z2 || z) {
                        Utf8.SafeProcessor.e("PreviewTransform", "Custom rotation not supported with SurfaceView/PERFORMANCE mode.");
                    }
                }
                RectF transformedSurfaceRect = previewTransformation.getTransformedSurfaceRect(layoutDirection, size);
                preview.setPivotX(0.0f);
                preview.setPivotY(0.0f);
                preview.setScaleX(transformedSurfaceRect.width() / previewTransformation.mResolution.getWidth());
                preview.setScaleY(transformedSurfaceRect.height() / previewTransformation.mResolution.getHeight());
                preview.setTranslationX(transformedSurfaceRect.left - preview.getLeft());
                preview.setTranslationY(transformedSurfaceRect.top - preview.getTop());
            }
        }

        public Builder setBackoffCriteria(BackoffPolicy backoffPolicy) {
            TimeUnit.MINUTES.getClass();
            this.backoffCriteriaSet = true;
            WorkSpec workSpec = (WorkSpec) this.workSpec;
            workSpec.backoffPolicy = backoffPolicy;
            String str = WorkSpec.TAG;
            workSpec.backoffDelayDuration = RangesKt.coerceIn(300000L, 10000L, 18000000L);
            return getThisObject$work_runtime_release();
        }

        public Builder setInitialDelay(long j, TimeUnit timeUnit) {
            timeUnit.getClass();
            ((WorkSpec) this.workSpec).initialDelay = timeUnit.toMillis(j);
            if (Long.MAX_VALUE - System.currentTimeMillis() > ((WorkSpec) this.workSpec).initialDelay) {
                return getThisObject$work_runtime_release();
            }
            UriKt$$ExternalSyntheticBUOutline0.m("The given initial delay is too large and will cause an overflow!");
            return null;
        }

        public abstract ListenableFuture waitForNextFrame();

        public Builder(FrameLayout frameLayout, PreviewTransformation previewTransformation) {
            this.backoffCriteriaSet = false;
            this.workSpec = frameLayout;
            this.tags = previewTransformation;
        }
    }
}
