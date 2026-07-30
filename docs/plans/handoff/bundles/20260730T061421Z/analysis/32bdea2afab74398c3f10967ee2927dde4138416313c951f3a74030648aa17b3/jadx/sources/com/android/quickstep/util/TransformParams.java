package com.android.quickstep.util;

import android.util.FloatProperty;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;
import com.android.systemui.shared.system.TransactionCompat;

/* loaded from: classes.dex */
public class TransformParams {
    public static FloatProperty PROGRESS = new FloatProperty("progress") { // from class: com.android.quickstep.util.TransformParams.1
        @Override // android.util.Property
        public Float get(TransformParams transformParams) {
            return Float.valueOf(transformParams.getProgress());
        }

        @Override // android.util.FloatProperty
        public void setValue(TransformParams transformParams, float f) {
            transformParams.setProgress(f);
        }
    };
    public static FloatProperty TARGET_ALPHA = new FloatProperty("targetAlpha") { // from class: com.android.quickstep.util.TransformParams.2
        @Override // android.util.Property
        public Float get(TransformParams transformParams) {
            return Float.valueOf(transformParams.getTargetAlpha());
        }

        @Override // android.util.FloatProperty
        public void setValue(TransformParams transformParams, float f) {
            transformParams.setTargetAlpha(f);
        }
    };
    public BuilderProxy mBaseBuilderProxy;
    public float mCornerRadius;
    public BuilderProxy mHomeBuilderProxy;
    public float mProgress;
    public SurfaceTransactionApplier mSyncTransactionApplier;
    public float mTargetAlpha;
    public RemoteAnimationTargets mTargetSet;

    @FunctionalInterface
    public interface BuilderProxy {
        public static final BuilderProxy NO_OP = new BuilderProxy() { // from class: c.a.b.c2.n
            @Override // com.android.quickstep.util.TransformParams.BuilderProxy
            public final void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
            }
        };
        public static final BuilderProxy ALWAYS_VISIBLE = new BuilderProxy() { // from class: c.a.b.c2.m
            @Override // com.android.quickstep.util.TransformParams.BuilderProxy
            public final void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
                builder.withAlpha(1.0f);
            }
        };

        void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams);
    }

    public TransformParams() {
        BuilderProxy builderProxy = BuilderProxy.ALWAYS_VISIBLE;
        this.mHomeBuilderProxy = builderProxy;
        this.mBaseBuilderProxy = builderProxy;
        this.mProgress = RecentsState.NO_OFFSET;
        this.mTargetAlpha = 1.0f;
        this.mCornerRadius = -1.0f;
    }

    public void applySurfaceParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr) {
        SurfaceTransactionApplier surfaceTransactionApplier = this.mSyncTransactionApplier;
        if (surfaceTransactionApplier != null) {
            surfaceTransactionApplier.scheduleApply(surfaceParamsArr);
            return;
        }
        TransactionCompat transactionCompat = new TransactionCompat();
        for (SyncRtSurfaceTransactionApplierCompat.SurfaceParams surfaceParams : surfaceParamsArr) {
            SyncRtSurfaceTransactionApplierCompat.applyParams(transactionCompat, surfaceParams);
        }
        transactionCompat.apply();
    }

    public SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] createSurfaceParams(BuilderProxy builderProxy) {
        RemoteAnimationTargets remoteAnimationTargets = this.mTargetSet;
        SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[remoteAnimationTargets.unfilteredApps.length];
        int i = 0;
        while (true) {
            RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr = remoteAnimationTargets.unfilteredApps;
            if (i >= remoteAnimationTargetCompatArr.length) {
                return surfaceParamsArr;
            }
            RemoteAnimationTargetCompat remoteAnimationTargetCompat = remoteAnimationTargetCompatArr[i];
            SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder(remoteAnimationTargetCompat.leash);
            if (remoteAnimationTargetCompat.mode == remoteAnimationTargets.targetMode) {
                int i2 = remoteAnimationTargetCompat.activityType;
                if (i2 == 2) {
                    this.mHomeBuilderProxy.onBuildTargetParams(builder, remoteAnimationTargetCompat, this);
                } else {
                    if (i2 == 4 && remoteAnimationTargetCompat.isNotInRecents) {
                        builder.withAlpha(1.0f - Interpolators.DEACCEL_2_5.getInterpolation(Utilities.boundToRange(getProgress(), RecentsState.NO_OFFSET, 1.0f)));
                    } else {
                        builder.withAlpha(getTargetAlpha());
                    }
                    builderProxy.onBuildTargetParams(builder, remoteAnimationTargetCompat, this);
                }
            } else {
                this.mBaseBuilderProxy.onBuildTargetParams(builder, remoteAnimationTargetCompat, this);
            }
            surfaceParamsArr[i] = builder.build();
            i++;
        }
    }

    public float getCornerRadius() {
        return this.mCornerRadius;
    }

    public float getProgress() {
        return this.mProgress;
    }

    public float getTargetAlpha() {
        return this.mTargetAlpha;
    }

    public RemoteAnimationTargets getTargetSet() {
        return this.mTargetSet;
    }

    public TransformParams setBaseBuilderProxy(BuilderProxy builderProxy) {
        this.mBaseBuilderProxy = builderProxy;
        return this;
    }

    public TransformParams setCornerRadius(float f) {
        this.mCornerRadius = f;
        return this;
    }

    public TransformParams setHomeBuilderProxy(BuilderProxy builderProxy) {
        this.mHomeBuilderProxy = builderProxy;
        return this;
    }

    public TransformParams setProgress(float f) {
        this.mProgress = f;
        return this;
    }

    public TransformParams setSyncTransactionApplier(SurfaceTransactionApplier surfaceTransactionApplier) {
        this.mSyncTransactionApplier = surfaceTransactionApplier;
        return this;
    }

    public TransformParams setTargetAlpha(float f) {
        this.mTargetAlpha = f;
        return this;
    }

    public TransformParams setTargetSet(RemoteAnimationTargets remoteAnimationTargets) {
        this.mTargetSet = remoteAnimationTargets;
        return this;
    }
}
