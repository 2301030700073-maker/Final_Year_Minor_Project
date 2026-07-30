package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.util.Property;
import android.util.TypedValue;
import android.view.View;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimationRunner;
import com.android.launcher3.LauncherAppTransitionManagerImpl;
import com.android.launcher3.LauncherState;
import com.android.launcher3.QuickstepAppTransitionManagerImpl;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.pageindicators.WorkspacePageIndicator;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.util.DynamicResource;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.MultiValueUpdateListener;
import com.android.quickstep.util.RemoteAnimationProvider;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.system.ActivityCompat;
import com.android.systemui.shared.system.ActivityOptionsCompat;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.RemoteAnimationAdapterCompat;
import com.android.systemui.shared.system.RemoteAnimationDefinitionCompat;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;
import java.util.Objects;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public abstract class QuickstepAppTransitionManagerImpl extends LauncherAppTransitionManager implements DeviceProfile.OnDeviceProfileChangeListener {
    public WrappedAnimationRunnerImpl mAppLaunchRunner;
    public final float mClosingWindowTransY;
    public final float mContentTransY;
    public DeviceProfile mDeviceProfile;
    public final DragLayer mDragLayer;
    public final MultiValueAlpha.AlphaProperty mDragLayerAlpha;
    public final AnimatorListenerAdapter mForceInvisibleListener = new AnimatorListenerAdapter() { // from class: com.android.launcher3.QuickstepAppTransitionManagerImpl.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QuickstepAppTransitionManagerImpl.this.mLauncher.clearForceInvisibleFlag(2);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            QuickstepAppTransitionManagerImpl.this.mLauncher.addForceInvisibleFlag(2);
        }
    };
    public final Handler mHandler;
    public WrappedAnimationRunnerImpl mKeyguardGoingAwayRunner;
    public final BaseQuickstepLauncher mLauncher;
    public RemoteAnimationProvider mRemoteAnimationProvider;
    public WrappedAnimationRunnerImpl mWallpaperOpenRunner;

    /* renamed from: com.android.launcher3.QuickstepAppTransitionManagerImpl$3, reason: invalid class name */
    public class AnonymousClass3 extends AnimatorListenerAdapter {
        public AnonymousClass3() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseQuickstepLauncher baseQuickstepLauncher = QuickstepAppTransitionManagerImpl.this.mLauncher;
            baseQuickstepLauncher.mOnResumeCallbacks.add(new Launcher.OnResumeCallback() { // from class: c.a.a.b0
                @Override // com.android.launcher3.Launcher.OnResumeCallback
                public final void onLauncherResume() {
                    QuickstepAppTransitionManagerImpl.AnonymousClass3 anonymousClass3 = QuickstepAppTransitionManagerImpl.AnonymousClass3.this;
                    BaseQuickstepLauncher baseQuickstepLauncher2 = QuickstepAppTransitionManagerImpl.this.mLauncher;
                    ObjectAnimator.ofFloat(baseQuickstepLauncher2.mDepthController, DepthController.DEPTH, ((LauncherState) baseQuickstepLauncher2.getStateManager().mState).getDepth(QuickstepAppTransitionManagerImpl.this.mLauncher)).start();
                }
            });
        }
    }

    public class AppLaunchAnimationRunner implements WrappedAnimationRunnerImpl {
        public final Handler mHandler;
        public final View mV;

        public AppLaunchAnimationRunner(Handler handler, View view) {
            this.mHandler = handler;
            this.mV = view;
        }

        @Override // com.android.launcher3.WrappedAnimationRunnerImpl
        public Handler getHandler() {
            return this.mHandler;
        }

        /* JADX WARN: Removed duplicated region for block: B:51:0x01aa  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x01b2  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x01b9  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0200  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0224  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0233  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0297  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x02b8  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x02ea  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0307  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0299  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0236  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x022b  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x020a  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x01bc  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01b5  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x01ad  */
        @Override // com.android.launcher3.WrappedAnimationRunnerImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onCreateAnimation(final com.android.systemui.shared.system.RemoteAnimationTargetCompat[] r45, com.android.systemui.shared.system.RemoteAnimationTargetCompat[] r46, com.android.launcher3.LauncherAnimationRunner.AnimationResult r47) {
            /*
                Method dump skipped, instructions count: 812
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.QuickstepAppTransitionManagerImpl.AppLaunchAnimationRunner.onCreateAnimation(com.android.systemui.shared.system.RemoteAnimationTargetCompat[], com.android.systemui.shared.system.RemoteAnimationTargetCompat[], com.android.launcher3.LauncherAnimationRunner$AnimationResult):void");
        }
    }

    public class WallpaperOpenLauncherAnimationRunner implements WrappedAnimationRunnerImpl {
        public final boolean mFromUnlock;
        public final Handler mHandler;

        public WallpaperOpenLauncherAnimationRunner(Handler handler, boolean z) {
            this.mHandler = handler;
            this.mFromUnlock = z;
        }

        @Override // com.android.launcher3.WrappedAnimationRunnerImpl
        public Handler getHandler() {
            return this.mHandler;
        }

        @Override // com.android.launcher3.WrappedAnimationRunnerImpl
        public void onCreateAnimation(final RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, final RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, final LauncherAnimationRunner.AnimationResult animationResult) {
            if (QuickstepAppTransitionManagerImpl.this.mLauncher.isDestroyed()) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(QuickstepAppTransitionManagerImpl.this.getClosingWindowAnimators(remoteAnimationTargetCompatArr));
                animationResult.setAnimation(animatorSet, QuickstepAppTransitionManagerImpl.this.mLauncher.getApplicationContext());
                return;
            }
            if (!QuickstepAppTransitionManagerImpl.this.mLauncher.hasBeenResumed()) {
                QuickstepAppTransitionManagerImpl.this.mLauncher.mOnResumeCallbacks.add(new Launcher.OnResumeCallback() { // from class: c.a.a.e0
                    @Override // com.android.launcher3.Launcher.OnResumeCallback
                    public final void onLauncherResume() {
                        final QuickstepAppTransitionManagerImpl.WallpaperOpenLauncherAnimationRunner wallpaperOpenLauncherAnimationRunner = QuickstepAppTransitionManagerImpl.WallpaperOpenLauncherAnimationRunner.this;
                        final RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr3 = remoteAnimationTargetCompatArr;
                        final RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr4 = remoteAnimationTargetCompatArr2;
                        final LauncherAnimationRunner.AnimationResult animationResult2 = animationResult;
                        Utilities.postAsyncCallback(wallpaperOpenLauncherAnimationRunner.mHandler, new Runnable() { // from class: c.a.a.f0
                            @Override // java.lang.Runnable
                            public final void run() {
                                QuickstepAppTransitionManagerImpl.WallpaperOpenLauncherAnimationRunner.this.onCreateAnimation(remoteAnimationTargetCompatArr3, remoteAnimationTargetCompatArr4, animationResult2);
                            }
                        });
                    }
                });
                return;
            }
            if (QuickstepAppTransitionManagerImpl.this.mLauncher.hasSomeInvisibleFlag(8)) {
                QuickstepAppTransitionManagerImpl.this.mLauncher.addForceInvisibleFlag(4);
                QuickstepAppTransitionManagerImpl.this.mLauncher.getStateManager().moveToRestState();
            }
            RemoteAnimationProvider remoteAnimationProvider = QuickstepAppTransitionManagerImpl.this.mRemoteAnimationProvider;
            AnimatorSet createWindowAnimation = remoteAnimationProvider != null ? remoteAnimationProvider.createWindowAnimation(remoteAnimationTargetCompatArr, remoteAnimationTargetCompatArr2) : null;
            if (createWindowAnimation == null) {
                createWindowAnimation = new AnimatorSet();
                createWindowAnimation.play(this.mFromUnlock ? QuickstepAppTransitionManagerImpl.this.getUnlockWindowAnimator(remoteAnimationTargetCompatArr) : QuickstepAppTransitionManagerImpl.this.getClosingWindowAnimators(remoteAnimationTargetCompatArr));
                if (TaskUtils.taskIsATargetWithMode(remoteAnimationTargetCompatArr, QuickstepAppTransitionManagerImpl.this.mLauncher.getTaskId(), 0) || QuickstepAppTransitionManagerImpl.this.mLauncher.isForceInvisible()) {
                    QuickstepAppTransitionManagerImpl.this.mLauncher.getStateManager().setCurrentAnimation(createWindowAnimation, new Animator[0]);
                    if (QuickstepAppTransitionManagerImpl.this.mLauncher.isInState(LauncherState.ALL_APPS)) {
                        QuickstepAppTransitionManagerImpl quickstepAppTransitionManagerImpl = QuickstepAppTransitionManagerImpl.this;
                        final Pair launcherContentAnimator = quickstepAppTransitionManagerImpl.getLauncherContentAnimator(false, new float[]{-quickstepAppTransitionManagerImpl.mContentTransY, RecentsState.NO_OFFSET});
                        ((AnimatorSet) launcherContentAnimator.first).setStartDelay(100L);
                        createWindowAnimation.play((Animator) launcherContentAnimator.first);
                        createWindowAnimation.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.QuickstepAppTransitionManagerImpl.WallpaperOpenLauncherAnimationRunner.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ((Runnable) launcherContentAnimator.second).run();
                            }
                        });
                    } else {
                        createWindowAnimation.play(new StaggeredWorkspaceAnim(QuickstepAppTransitionManagerImpl.this.mLauncher, TypedValue.applyDimension(1, DynamicResource.provider(QuickstepAppTransitionManagerImpl.this.mLauncher).getDimension(R.dimen.unlock_staggered_velocity_dp_per_s), QuickstepAppTransitionManagerImpl.this.mLauncher.getResources().getDisplayMetrics()), false).getAnimators());
                    }
                }
            }
            QuickstepAppTransitionManagerImpl.this.mLauncher.clearForceInvisibleFlag(15);
            animationResult.setAnimation(createWindowAnimation, QuickstepAppTransitionManagerImpl.this.mLauncher);
        }
    }

    public QuickstepAppTransitionManagerImpl(Context context) {
        BaseQuickstepLauncher baseQuickstepLauncher = (BaseQuickstepLauncher) Launcher.getLauncher(context);
        this.mLauncher = baseQuickstepLauncher;
        DragLayer dragLayer = baseQuickstepLauncher.mDragLayer;
        this.mDragLayer = dragLayer;
        this.mDragLayerAlpha = dragLayer.getAlphaProperty(2);
        this.mHandler = new Handler(Looper.getMainLooper());
        Utilities.isRtl(this.mLauncher.getResources());
        this.mDeviceProfile = this.mLauncher.getDeviceProfile();
        Resources resources = this.mLauncher.getResources();
        this.mContentTransY = resources.getDimensionPixelSize(R.dimen.content_trans_y);
        resources.getDimensionPixelSize(R.dimen.workspace_trans_y);
        this.mClosingWindowTransY = resources.getDimensionPixelSize(R.dimen.closing_window_trans_y);
        this.mLauncher.addOnDeviceProfileChangeListener(this);
    }

    public void a(View view, View view2, View view3) {
        view.setTranslationY(RecentsState.NO_OFFSET);
        view2.setTranslationY(RecentsState.NO_OFFSET);
        view3.setTranslationY(RecentsState.NO_OFFSET);
        view.setLayerType(0, null);
        view2.setLayerType(0, null);
        view3.setLayerType(0, null);
        this.mDragLayerAlpha.setValue(1.0f);
        WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) this.mLauncher.mWorkspace.getPageIndicator();
        Objects.requireNonNull(workspacePageIndicator);
        for (int i = 0; i < 3; i++) {
            ValueAnimator[] valueAnimatorArr = workspacePageIndicator.mAnimators;
            if (valueAnimatorArr[i] != null) {
                valueAnimatorArr[i].end();
            }
        }
    }

    public /* synthetic */ void b(RemoteAnimationProvider remoteAnimationProvider) {
        if (remoteAnimationProvider == this.mRemoteAnimationProvider) {
            this.mRemoteAnimationProvider = null;
        }
    }

    @Override // com.android.launcher3.LauncherAppTransitionManager
    public ActivityOptions getActivityLaunchOptions(Launcher launcher, View view) {
        if (!hasControlRemoteAppTransitionPermission()) {
            return super.getActivityLaunchOptions(launcher, view);
        }
        boolean isLaunchingFromRecents = isLaunchingFromRecents(view, null);
        AppLaunchAnimationRunner appLaunchAnimationRunner = new AppLaunchAnimationRunner(this.mHandler, view);
        this.mAppLaunchRunner = appLaunchAnimationRunner;
        WrappedLauncherAnimationRunner wrappedLauncherAnimationRunner = new WrappedLauncherAnimationRunner(appLaunchAnimationRunner, true);
        long j = isLaunchingFromRecents ? 336L : 450L;
        return ActivityOptionsCompat.makeRemoteAnimation(new RemoteAnimationAdapterCompat(wrappedLauncherAnimationRunner, j, (j - 120) - 96));
    }

    public final Animator getClosingWindowAnimators(final RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr) {
        final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(this.mDragLayer);
        final Matrix matrix = new Matrix();
        final Point point = new Point();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        final float windowCornerRadius = this.mDeviceProfile.isMultiWindowMode ? RecentsState.NO_OFFSET : QuickStepContract.getWindowCornerRadius(this.mLauncher.getResources());
        ofFloat.setDuration(250);
        final int i = 250;
        ofFloat.addUpdateListener(new MultiValueUpdateListener() { // from class: com.android.launcher3.QuickstepAppTransitionManagerImpl.9
            public MultiValueUpdateListener.FloatProp mAlpha = new MultiValueUpdateListener.FloatProp(1.0f, RecentsState.NO_OFFSET, 25.0f, 125.0f, Interpolators.LINEAR);
            public MultiValueUpdateListener.FloatProp mDy;
            public MultiValueUpdateListener.FloatProp mScale;

            {
                float f = 250;
                this.mDy = new MultiValueUpdateListener.FloatProp(RecentsState.NO_OFFSET, QuickstepAppTransitionManagerImpl.this.mClosingWindowTransY, RecentsState.NO_OFFSET, f, Interpolators.DEACCEL_1_7);
                this.mScale = new MultiValueUpdateListener.FloatProp(1.0f, 1.0f, RecentsState.NO_OFFSET, f, Interpolators.DEACCEL_1_7);
            }

            @Override // com.android.quickstep.util.MultiValueUpdateListener
            public void onUpdate(float f) {
                RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2 = remoteAnimationTargetCompatArr;
                SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[remoteAnimationTargetCompatArr2.length];
                for (int length = remoteAnimationTargetCompatArr2.length - 1; length >= 0; length--) {
                    RemoteAnimationTargetCompat remoteAnimationTargetCompat = remoteAnimationTargetCompatArr[length];
                    SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder(remoteAnimationTargetCompat.leash);
                    Point point2 = point;
                    Point point3 = remoteAnimationTargetCompat.position;
                    point2.set(point3.x, point3.y);
                    Rect rect = remoteAnimationTargetCompat.localBounds;
                    if (rect != null) {
                        point.set(rect.left, rect.top);
                    }
                    if (remoteAnimationTargetCompat.mode == 1) {
                        Matrix matrix2 = matrix;
                        float f2 = this.mScale.value;
                        matrix2.setScale(f2, f2, remoteAnimationTargetCompat.screenSpaceBounds.centerX(), remoteAnimationTargetCompat.screenSpaceBounds.centerY());
                        matrix.postTranslate(RecentsState.NO_OFFSET, this.mDy.value);
                        Matrix matrix3 = matrix;
                        Point point4 = point;
                        matrix3.postTranslate(point4.x, point4.y);
                        builder.withMatrix(matrix).withAlpha(this.mAlpha.value).withCornerRadius(windowCornerRadius);
                    } else {
                        Matrix matrix4 = matrix;
                        Point point5 = point;
                        matrix4.setTranslate(point5.x, point5.y);
                        builder.withMatrix(matrix).withAlpha(1.0f);
                    }
                    Rect rect2 = new Rect(remoteAnimationTargetCompat.screenSpaceBounds);
                    rect2.offsetTo(0, 0);
                    surfaceParamsArr[length] = builder.withWindowCrop(rect2).build();
                }
                surfaceTransactionApplier.scheduleApply(surfaceParamsArr);
            }
        });
        return ofFloat;
    }

    public final Pair getLauncherContentAnimator(boolean z, float[] fArr) {
        Runnable runnable;
        AnimatorSet animatorSet = new AnimatorSet();
        float[] fArr2 = z ? new float[]{1.0f, RecentsState.NO_OFFSET} : new float[]{RecentsState.NO_OFFSET, 1.0f};
        if (this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            final AllAppsContainerView allAppsContainerView = this.mLauncher.mAppsView;
            final float alpha = allAppsContainerView.getAlpha();
            final float translationY = allAppsContainerView.getTranslationY();
            allAppsContainerView.setAlpha(fArr2[0]);
            allAppsContainerView.setTranslationY(fArr[0]);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(allAppsContainerView, (Property<AllAppsContainerView, Float>) View.ALPHA, fArr2);
            ofFloat.setDuration(217L);
            ofFloat.setInterpolator(Interpolators.LINEAR);
            allAppsContainerView.setLayerType(2, null);
            ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.QuickstepAppTransitionManagerImpl.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    allAppsContainerView.setLayerType(0, null);
                }
            });
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(allAppsContainerView, (Property<AllAppsContainerView, Float>) View.TRANSLATION_Y, fArr);
            ofFloat2.setInterpolator(Interpolators.AGGRESSIVE_EASE);
            ofFloat2.setDuration(350L);
            animatorSet.play(ofFloat);
            animatorSet.play(ofFloat2);
            runnable = new Runnable() { // from class: c.a.a.c0
                @Override // java.lang.Runnable
                public final void run() {
                    View view = allAppsContainerView;
                    float f = alpha;
                    float f2 = translationY;
                    view.setAlpha(f);
                    view.setTranslationY(f2);
                    view.setLayerType(0, null);
                }
            };
        } else if (this.mLauncher.isInState(LauncherState.OVERVIEW)) {
            AllAppsTransitionController allAppsTransitionController = this.mLauncher.mAllAppsController;
            animatorSet.play(ObjectAnimator.ofFloat(allAppsTransitionController, AllAppsTransitionController.ALL_APPS_PROGRESS, allAppsTransitionController.mProgress, 1.3059858f));
            final LauncherAppTransitionManagerImpl launcherAppTransitionManagerImpl = (LauncherAppTransitionManagerImpl) this;
            final RecentsView recentsView = (RecentsView) launcherAppTransitionManagerImpl.mLauncher.getOverviewPanel();
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(recentsView, RecentsView.CONTENT_ALPHA, fArr2);
            ofFloat3.setDuration(217L);
            ofFloat3.setInterpolator(Interpolators.LINEAR);
            animatorSet.play(ofFloat3);
            recentsView.setFreezeViewVisibility(true);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(recentsView, (Property<RecentsView, Float>) View.TRANSLATION_Y, fArr);
            ofFloat4.setInterpolator(Interpolators.AGGRESSIVE_EASE);
            ofFloat4.setDuration(350L);
            animatorSet.play(ofFloat4);
            runnable = new Runnable() { // from class: c.a.a.Q
                @Override // java.lang.Runnable
                public final void run() {
                    LauncherAppTransitionManagerImpl launcherAppTransitionManagerImpl2 = LauncherAppTransitionManagerImpl.this;
                    RecentsView recentsView2 = recentsView;
                    Objects.requireNonNull(launcherAppTransitionManagerImpl2);
                    recentsView2.setFreezeViewVisibility(false);
                    recentsView2.setTranslationY(RecentsState.NO_OFFSET);
                    launcherAppTransitionManagerImpl2.mLauncher.getStateManager().reapplyState(false);
                }
            };
        } else {
            this.mDragLayerAlpha.setValue(fArr2[0]);
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.mDragLayerAlpha, MultiValueAlpha.VALUE, fArr2);
            ofFloat5.setDuration(217L);
            ofFloat5.setInterpolator(Interpolators.LINEAR);
            animatorSet.play(ofFloat5);
            Workspace workspace = this.mLauncher.mWorkspace;
            final ShortcutAndWidgetContainer shortcutAndWidgetContainer = ((CellLayout) workspace.getChildAt(workspace.getCurrentPage())).mShortcutsAndWidgets;
            BaseQuickstepLauncher baseQuickstepLauncher = this.mLauncher;
            final Hotseat hotseat = baseQuickstepLauncher.mHotseat;
            final View findViewById = baseQuickstepLauncher.findViewById(R.id.search_container_all_apps);
            shortcutAndWidgetContainer.setLayerType(2, null);
            hotseat.setLayerType(2, null);
            findViewById.setLayerType(2, null);
            animatorSet.play(ObjectAnimator.ofFloat(shortcutAndWidgetContainer, (Property<ShortcutAndWidgetContainer, Float>) View.TRANSLATION_Y, fArr));
            animatorSet.play(ObjectAnimator.ofFloat(hotseat, (Property<Hotseat, Float>) View.TRANSLATION_Y, fArr));
            animatorSet.play(ObjectAnimator.ofFloat(findViewById, (Property<View, Float>) View.TRANSLATION_Y, fArr));
            WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) this.mLauncher.mWorkspace.getPageIndicator();
            Objects.requireNonNull(workspacePageIndicator);
            for (int i = 0; i < 3; i++) {
                ValueAnimator[] valueAnimatorArr = workspacePageIndicator.mAnimators;
                if (valueAnimatorArr[i] != null) {
                    valueAnimatorArr[i].pause();
                }
            }
            runnable = new Runnable() { // from class: c.a.a.d0
                @Override // java.lang.Runnable
                public final void run() {
                    QuickstepAppTransitionManagerImpl.this.a(shortcutAndWidgetContainer, hotseat, findViewById);
                }
            };
        }
        return new Pair(animatorSet, runnable);
    }

    public final Animator getUnlockWindowAnimator(final RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr) {
        final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(this.mDragLayer);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        ofFloat.setDuration(250L);
        final float windowCornerRadius = this.mDeviceProfile.isMultiWindowMode ? RecentsState.NO_OFFSET : QuickStepContract.getWindowCornerRadius(this.mLauncher.getResources());
        ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.QuickstepAppTransitionManagerImpl.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2 = remoteAnimationTargetCompatArr;
                SyncRtSurfaceTransactionApplierCompat.SurfaceParams[] surfaceParamsArr = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams[remoteAnimationTargetCompatArr2.length];
                for (int length = remoteAnimationTargetCompatArr2.length - 1; length >= 0; length--) {
                    RemoteAnimationTargetCompat remoteAnimationTargetCompat = remoteAnimationTargetCompatArr[length];
                    surfaceParamsArr[length] = new SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder(remoteAnimationTargetCompat.leash).withAlpha(1.0f).withWindowCrop(remoteAnimationTargetCompat.screenSpaceBounds).withCornerRadius(windowCornerRadius).build();
                }
                surfaceTransactionApplier.scheduleApply(surfaceParamsArr);
            }
        });
        return ofFloat;
    }

    public final boolean hasControlRemoteAppTransitionPermission() {
        return this.mLauncher.checkSelfPermission("android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS") == 0;
    }

    public abstract boolean isLaunchingFromRecents(View view, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr);

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.mDeviceProfile = deviceProfile;
    }

    @Override // com.android.launcher3.LauncherAppTransitionManager
    public void registerRemoteAnimations() {
        if (!FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get() && hasControlRemoteAppTransitionPermission()) {
            this.mWallpaperOpenRunner = new WallpaperOpenLauncherAnimationRunner(this.mHandler, false);
            RemoteAnimationDefinitionCompat remoteAnimationDefinitionCompat = new RemoteAnimationDefinitionCompat();
            remoteAnimationDefinitionCompat.addRemoteAnimation(13, 1, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(this.mWallpaperOpenRunner, false), 250L, 0L));
            if (FeatureFlags.KEYGUARD_ANIMATION.get()) {
                WallpaperOpenLauncherAnimationRunner wallpaperOpenLauncherAnimationRunner = new WallpaperOpenLauncherAnimationRunner(this.mHandler, true);
                this.mKeyguardGoingAwayRunner = wallpaperOpenLauncherAnimationRunner;
                remoteAnimationDefinitionCompat.addRemoteAnimation(21, new RemoteAnimationAdapterCompat(new WrappedLauncherAnimationRunner(wallpaperOpenLauncherAnimationRunner, true), 250L, 0L));
            }
            new ActivityCompat(this.mLauncher).registerRemoteAnimations(remoteAnimationDefinitionCompat);
        }
    }

    @Override // com.android.launcher3.LauncherAppTransitionManager
    public boolean supportsAdaptiveIconAnimation() {
        return hasControlRemoteAppTransitionPermission() && FeatureFlags.ADAPTIVE_ICON_WINDOW_ANIM.get();
    }

    @Override // com.android.launcher3.LauncherAppTransitionManager
    public void unregisterRemoteAnimations() {
        if (!FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get() && hasControlRemoteAppTransitionPermission()) {
            new ActivityCompat(this.mLauncher).unregisterRemoteAnimations();
            this.mWallpaperOpenRunner = null;
            this.mAppLaunchRunner = null;
            this.mKeyguardGoingAwayRunner = null;
        }
    }
}
