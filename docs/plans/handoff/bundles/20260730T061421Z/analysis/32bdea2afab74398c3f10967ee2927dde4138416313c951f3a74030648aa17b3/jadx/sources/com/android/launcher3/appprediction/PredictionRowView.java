package com.android.launcher3.appprediction;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.UserManager;
import android.util.AttributeSet;
import android.util.IntProperty;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import b.l.W;
import c.a.a.Y0.e;
import c.a.a.Y0.h;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.FloatingHeaderRow;
import com.android.launcher3.allapps.FloatingHeaderView;
import com.android.launcher3.anim.AlphaUpdateListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.keyboard.FocusIndicatorHelper;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogUtils$LogContainerProvider;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.views.ArrowTipView;
import com.android.quickstep.AnimatedFloat;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;

@TargetApi(28)
/* loaded from: classes.dex */
public class PredictionRowView extends LinearLayout implements StatsLogUtils$LogContainerProvider, DeviceProfile.OnDeviceProfileChangeListener, FloatingHeaderRow {
    public final AnimatedFloat mContentAlphaFactor;
    public final FocusIndicatorHelper mFocusHelper;
    public int mIconCurrentTextAlpha;
    public final int mIconFullTextAlpha;
    public int mIconLastSetTextAlpha;
    public final int mIconTextColor;
    public final Launcher mLauncher;
    public int mNumPredictedAppsPerRow;
    public final AnimatedFloat mOverviewScrollFactor;
    public FloatingHeaderView mParent;
    public final List mPredictedAppComponents;
    public final ArrayList mPredictedApps;
    public final PredictionUiStateManager mPredictionUiStateManager;
    public boolean mPredictionsEnabled;
    public float mScrollTranslation;
    public boolean mScrolledOut;
    public static final IntProperty TEXT_ALPHA = new IntProperty("textAlpha") { // from class: com.android.launcher3.appprediction.PredictionRowView.1
        @Override // android.util.Property
        public Integer get(Object obj) {
            return Integer.valueOf(((PredictionRowView) obj).mIconLastSetTextAlpha);
        }

        @Override // android.util.IntProperty
        public void setValue(Object obj, int i) {
            ((PredictionRowView) obj).setTextAlpha(i);
        }
    };
    public static final Interpolator ALPHA_FACTOR_INTERPOLATOR = new Interpolator() { // from class: c.a.a.F0.j
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return PredictionRowView.b(f);
        }
    };
    public static final View.OnClickListener PREDICTION_CLICK_LISTENER = new e(AppLaunchTracker.CONTAINER_PREDICTIONS);

    public PredictionRowView(Context context) {
        this(context, null);
    }

    public static /* synthetic */ float b(float f) {
        return f < 0.8f ? RecentsState.NO_OFFSET : (f - 0.8f) / 0.2f;
    }

    public final void applyPredictionApps() {
        if (getChildCount() != this.mNumPredictedAppsPerRow) {
            while (getChildCount() > this.mNumPredictedAppsPerRow) {
                removeViewAt(0);
            }
            LayoutInflater layoutInflater = this.mLauncher.mAppsView.getLayoutInflater();
            while (getChildCount() < this.mNumPredictedAppsPerRow) {
                BubbleTextView bubbleTextView = (BubbleTextView) layoutInflater.inflate(R.layout.all_apps_icon, (ViewGroup) this, false);
                bubbleTextView.setOnClickListener(PREDICTION_CLICK_LISTENER);
                View.OnLongClickListener onLongClickListener = ItemLongClickListener.INSTANCE_ALL_APPS;
                bubbleTextView.setOnLongClickListener(h.f1712a);
                bubbleTextView.mLongPressHelper.mLongPressTimeoutFactor = 1.0f;
                bubbleTextView.setOnFocusChangeListener(this.mFocusHelper);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) bubbleTextView.getLayoutParams();
                layoutParams.height = this.mLauncher.getDeviceProfile().allAppsCellHeightPx;
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                addView(bubbleTextView);
            }
        }
        int size = this.mPredictedApps.size();
        int colorAlphaBound = GraphicsUtils.setColorAlphaBound(this.mIconTextColor, this.mIconCurrentTextAlpha);
        int i = 0;
        while (true) {
            if (i >= getChildCount()) {
                break;
            }
            BubbleTextView bubbleTextView2 = (BubbleTextView) getChildAt(i);
            bubbleTextView2.reset();
            if (size > i) {
                bubbleTextView2.setVisibility(0);
                if (this.mPredictedApps.get(i) instanceof AppInfo) {
                    bubbleTextView2.applyFromApplicationInfo((AppInfo) this.mPredictedApps.get(i));
                } else if (this.mPredictedApps.get(i) instanceof WorkspaceItemInfo) {
                    bubbleTextView2.applyFromWorkspaceItem((WorkspaceItemInfo) this.mPredictedApps.get(i));
                }
                bubbleTextView2.setTextColor(colorAlphaBound);
            } else {
                bubbleTextView2.setVisibility(size != 0 ? 4 : 8);
            }
            i++;
        }
        boolean z = size > 0;
        if (z != this.mPredictionsEnabled) {
            this.mPredictionsEnabled = z;
            this.mLauncher.reapplyUi(false);
            setVisibility(this.mPredictionsEnabled ? 0 : 8);
        }
        this.mParent.onHeightUpdated();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.mFocusHelper.draw(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        int i = 0;
        while (true) {
            if (i >= this.mPredictedApps.size()) {
                break;
            }
            if (((ItemInfoWithIcon) this.mPredictedApps.get(i)) == itemInfo) {
                launcherLogProto$Target.predictedRank = i;
                break;
            }
            i++;
        }
        arrayList.add(LoggerUtils.newContainerTarget(7));
        LauncherLogProto$Target newTarget = LoggerUtils.newTarget(3);
        LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().mState;
        if (launcherState == LauncherState.ALL_APPS) {
            newTarget.containerType = 4;
        } else if (launcherState == LauncherState.OVERVIEW) {
            newTarget.containerType = 12;
        }
        arrayList.add(newTarget);
    }

    public final AllAppsStore getAppsStore() {
        return this.mLauncher.mAppsView.mAllAppsStore;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public int getExpectedHeight() {
        if (getVisibility() == 8) {
            return 0;
        }
        return getPaddingBottom() + getPaddingTop() + Launcher.getLauncher(getContext()).getDeviceProfile().allAppsCellHeightPx;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public Class getTypeClass() {
        return PredictionRowView.class;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public boolean hasVisibleContent() {
        return this.mPredictionsEnabled;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mPredictionUiStateManager.setTargetAppsView(this.mLauncher.mAppsView);
        getAppsStore().registerIconContainer(this);
        final Launcher launcher = this.mLauncher;
        if (launcher.getSharedPrefs().getBoolean("launcher.all_apps_tip_seen", false)) {
            return;
        }
        StateManager stateManager = launcher.getStateManager();
        stateManager.mListeners.add(new StateManager.StateListener() { // from class: com.android.launcher3.appprediction.AllAppsTipView$1
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionComplete(Object obj) {
                if (((LauncherState) obj) == LauncherState.ALL_APPS) {
                    final Launcher launcher2 = Launcher.this;
                    FloatingHeaderView floatingHeaderView = launcher2.mAppsView.mHeader;
                    boolean z = false;
                    if (floatingHeaderView.hasVisibleContent() && AbstractFloatingView.getOpenView(launcher2, 96) == null && launcher2.isInState(LauncherState.ALL_APPS) && !launcher2.getSharedPrefs().getBoolean("launcher.all_apps_tip_seen", false) && !((UserManager) launcher2.getSystemService(UserManager.class)).isDemoUser() && !Utilities.IS_RUNNING_IN_TEST_HARNESS) {
                        int[] iArr = new int[2];
                        ((PredictionRowView) floatingHeaderView.findFixedRowByType(PredictionRowView.class)).getLocationOnScreen(iArr);
                        ArrowTipView arrowTipView = new ArrowTipView(launcher2);
                        arrowTipView.mOnClosed = new Runnable() { // from class: c.a.a.F0.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                Launcher launcher3 = Launcher.this;
                                launcher3.getSharedPrefs().edit().putBoolean("launcher.all_apps_tip_seen", true).apply();
                                launcher3.getUserEventDispatcher().logActionTip(1, 2);
                            }
                        };
                        z = true;
                        arrowTipView.show(launcher2.getString(R.string.all_apps_prediction_tip), iArr[1]);
                    }
                    if (z) {
                        Launcher.this.getStateManager().mListeners.remove(this);
                    }
                }
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPredictionUiStateManager.setTargetAppsView(null);
        getAppsStore().mIconContainers.remove(this);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.mNumPredictedAppsPerRow = deviceProfile.inv.numAllAppsColumns;
        removeAllViews();
        applyPredictionApps();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getExpectedHeight(), 1073741824));
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        super.setAlpha(f);
        setTextAlpha(this.mIconLastSetTextAlpha);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setContentVisibility(boolean z, boolean z2, PropertySetter propertySetter, Interpolator interpolator, Interpolator interpolator2) {
        propertySetter.setInt(this, TEXT_ALPHA, (z && z2) ? this.mIconFullTextAlpha : 0, interpolator2);
        propertySetter.setFloat(this.mOverviewScrollFactor, AnimatedFloat.VALUE, (!z || z2) ? 0.0f : 1.0f, Interpolators.LINEAR);
        propertySetter.setFloat(this.mContentAlphaFactor, AnimatedFloat.VALUE, z ? 1.0f : 0.0f, interpolator);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setInsets(Rect rect, DeviceProfile deviceProfile) {
        int i = deviceProfile.desiredWorkspaceLeftRightMarginPx + deviceProfile.cellLayoutPaddingLeftRightPx;
        setPadding(i, getPaddingTop(), i, getPaddingBottom());
    }

    public void setTextAlpha(int i) {
        this.mIconLastSetTextAlpha = i;
        if (getAlpha() < 1.0f && i > 0) {
            i = this.mIconFullTextAlpha;
        }
        this.mIconCurrentTextAlpha = i;
        int colorAlphaBound = GraphicsUtils.setColorAlphaBound(this.mIconTextColor, i);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            ((BubbleTextView) getChildAt(i2)).setTextColor(colorAlphaBound);
        }
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setVerticalScroll(int i, boolean z) {
        this.mScrolledOut = z;
        updateTranslationAndAlpha();
        if (z) {
            return;
        }
        this.mScrollTranslation = i;
        updateTranslationAndAlpha();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setup(FloatingHeaderView floatingHeaderView, FloatingHeaderRow[] floatingHeaderRowArr, boolean z) {
        this.mParent = floatingHeaderView;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public boolean shouldDraw() {
        return getVisibility() != 8;
    }

    public final void updateTranslationAndAlpha() {
        if (this.mPredictionsEnabled) {
            setTranslationY((1.0f - this.mOverviewScrollFactor.value) * this.mScrollTranslation);
            float interpolation = ALPHA_FACTOR_INTERPOLATOR.getInterpolation(this.mOverviewScrollFactor.value);
            setAlpha(this.mContentAlphaFactor.value * (((1.0f - interpolation) * (!this.mScrolledOut ? 1 : 0)) + interpolation));
            AlphaUpdateListener.updateVisibility(this);
        }
    }

    public PredictionRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPredictedAppComponents = new ArrayList();
        this.mPredictedApps = new ArrayList();
        this.mScrollTranslation = RecentsState.NO_OFFSET;
        this.mContentAlphaFactor = new AnimatedFloat(new Runnable() { // from class: c.a.a.F0.i
            @Override // java.lang.Runnable
            public final void run() {
                PredictionRowView.this.updateTranslationAndAlpha();
            }
        });
        this.mOverviewScrollFactor = new AnimatedFloat(new Runnable() { // from class: c.a.a.F0.i
            @Override // java.lang.Runnable
            public final void run() {
                PredictionRowView.this.updateTranslationAndAlpha();
            }
        });
        this.mPredictionsEnabled = false;
        setOrientation(0);
        this.mFocusHelper = new FocusIndicatorHelper.SimpleFocusIndicatorHelper(this);
        this.mNumPredictedAppsPerRow = LauncherAppState.getIDP(context).numAllAppsColumns;
        Launcher launcher = Launcher.getLauncher(context);
        this.mLauncher = launcher;
        launcher.addOnDeviceProfileChangeListener(this);
        this.mPredictionUiStateManager = (PredictionUiStateManager) PredictionUiStateManager.INSTANCE.b(context);
        int attrColor = W.getAttrColor(context, android.R.attr.textColorSecondary);
        this.mIconTextColor = attrColor;
        int alpha = Color.alpha(attrColor);
        this.mIconFullTextAlpha = alpha;
        this.mIconCurrentTextAlpha = alpha;
        setVisibility(this.mPredictionsEnabled ? 0 : 8);
    }
}
