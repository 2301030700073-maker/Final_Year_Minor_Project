package com.android.launcher3.allapps;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Process;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import androidx.recyclerview.widget.LinearLayoutManager;
import b.h.a.D;
import b.h.a.v;
import b.h.a.y;
import b.l.W;
import b.m.b.C0191o;
import c.a.a.a1.o;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Insettable;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.allapps.WorkModeSwitch;
import com.android.launcher3.keyboard.FocusedItemDecorator;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.views.ArrowTipView;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.launcher3.views.SpringRelativeLayout;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.TaskMenuView;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class AllAppsContainerView extends SpringRelativeLayout implements DragSource, Insettable, DeviceProfile.OnDeviceProfileChangeListener {
    public final AdapterHolder[] mAH;
    public final AllAppsStore mAllAppsStore;
    public final Point mFastScrollerOffset;
    public FloatingHeaderView mHeader;
    public Rect mInsets;
    public final BaseDraggingActivity mLauncher;
    public final MultiValueAlpha mMultiValueAlpha;
    public int mNavBarScrimHeight;
    public final Paint mNavBarScrimPaint;
    public final ItemInfoMatcher mPersonalMatcher;
    public View mSearchContainer;
    public boolean mSearchModeWhileUsingTabs;
    public SpannableStringBuilder mSearchQueryBuilder;
    public SearchUiManager mSearchUiManager;
    public RecyclerViewFastScroller mTouchHandler;
    public boolean mUsingTabs;
    public AllAppsPagedView mViewPager;
    public final ItemInfoMatcher mWorkMatcher;
    public WorkModeSwitch mWorkModeSwitch;

    /* renamed from: com.android.launcher3.allapps.AllAppsContainerView$1, reason: invalid class name */
    public class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {
        public boolean shouldSpring = true;
        public final /* synthetic */ float val$velocity;

        public AnonymousClass1(float f) {
            this.val$velocity = f;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.shouldSpring || valueAnimator.getAnimatedFraction() < 0.55f) {
                return;
            }
            final int id = AllAppsContainerView.this.mSearchContainer.getId();
            AllAppsContainerView.this.addSpringView(id);
            AllAppsContainerView allAppsContainerView = AllAppsContainerView.this;
            float f = this.val$velocity * 135.0f;
            v vVar = new v() { // from class: c.a.a.D0.a
                @Override // b.h.a.v
                public final void onAnimationEnd(y yVar, boolean z, float f2, float f3) {
                    AllAppsContainerView.AnonymousClass1 anonymousClass1 = AllAppsContainerView.AnonymousClass1.this;
                    int i = id;
                    AllAppsContainerView allAppsContainerView2 = AllAppsContainerView.this;
                    allAppsContainerView2.mSpringViews.delete(i);
                    allAppsContainerView2.invalidate();
                }
            };
            allAppsContainerView.setDampedScrollShift(1.0f);
            D d2 = allAppsContainerView.mSpring;
            if (!d2.k.contains(vVar)) {
                d2.k.add(vVar);
            }
            D d3 = allAppsContainerView.mSpring;
            d3.f820a = f;
            d3.f821b = allAppsContainerView.mDampedScrollShift;
            d3.f822c = true;
            d3.i();
            this.shouldSpring = false;
        }
    }

    public class AdapterHolder {
        public final AllAppsGridAdapter adapter;
        public final AlphabeticalAppsList appsList;
        public final LinearLayoutManager layoutManager;
        public ItemInfoMatcher mInfoMatcher;
        public final boolean mIsWork;
        public View mOverlay;
        public boolean mWorkDisabled;
        public final Rect padding = new Rect();
        public AllAppsRecyclerView recyclerView;
        public boolean verticalFadingEdge;

        public AdapterHolder(boolean z) {
            this.mIsWork = z;
            this.appsList = new AlphabeticalAppsList(AllAppsContainerView.this.mLauncher, AllAppsContainerView.this.mAllAppsStore, z);
            AllAppsGridAdapter allAppsGridAdapter = new AllAppsGridAdapter(AllAppsContainerView.this.mLauncher, AllAppsContainerView.this.getLayoutInflater(), this.appsList);
            this.adapter = allAppsGridAdapter;
            this.appsList.mAdapter = allAppsGridAdapter;
            this.layoutManager = allAppsGridAdapter.mGridLayoutMgr;
        }

        public void applyPadding() {
            if (this.recyclerView != null) {
                Resources resources = AllAppsContainerView.this.getResources();
                int calculateTextHeight = Utilities.calculateTextHeight(resources.getDimension(R.dimen.work_profile_footer_text_size)) + (resources.getDimensionPixelSize(R.dimen.work_profile_footer_padding) * 2) + AllAppsContainerView.this.mInsets.bottom;
                if (AllAppsContainerView.this.mWorkModeSwitch == null || !this.mIsWork) {
                    calculateTextHeight = 0;
                }
                AllAppsRecyclerView allAppsRecyclerView = this.recyclerView;
                Rect rect = this.padding;
                allAppsRecyclerView.setPadding(rect.left, rect.top, rect.right, rect.bottom + calculateTextHeight);
            }
        }

        public void applyVerticalFadingEdgeEnabled(boolean z) {
            this.verticalFadingEdge = z;
            AllAppsContainerView allAppsContainerView = AllAppsContainerView.this;
            boolean z2 = false;
            AllAppsRecyclerView allAppsRecyclerView = allAppsContainerView.mAH[0].recyclerView;
            if (!allAppsContainerView.mUsingTabs && z) {
                z2 = true;
            }
            allAppsRecyclerView.setVerticalFadingEdgeEnabled(z2);
        }

        public final View getOverlayView() {
            if (this.mOverlay == null) {
                this.mOverlay = AllAppsContainerView.this.mLauncher.getLayoutInflater().inflate(R.layout.work_apps_paused, (ViewGroup) null);
            }
            return this.mOverlay;
        }

        public void setup(View view, ItemInfoMatcher itemInfoMatcher) {
            this.mInfoMatcher = itemInfoMatcher;
            AlphabeticalAppsList alphabeticalAppsList = this.appsList;
            alphabeticalAppsList.mItemFilter = itemInfoMatcher;
            alphabeticalAppsList.onAppsUpdated();
            AllAppsRecyclerView allAppsRecyclerView = (AllAppsRecyclerView) view;
            this.recyclerView = allAppsRecyclerView;
            AllAppsContainerView allAppsContainerView = AllAppsContainerView.this;
            Objects.requireNonNull(allAppsContainerView);
            allAppsRecyclerView.setEdgeEffectFactory(new SpringRelativeLayout.SpringEdgeEffectFactory(null));
            AllAppsRecyclerView allAppsRecyclerView2 = this.recyclerView;
            allAppsRecyclerView2.mApps = this.appsList;
            allAppsRecyclerView2.setLayoutManager(this.layoutManager);
            this.recyclerView.setAdapter(this.adapter);
            this.recyclerView.setHasFixedSize(true);
            this.recyclerView.setItemAnimator(null);
            FocusedItemDecorator focusedItemDecorator = new FocusedItemDecorator(this.recyclerView);
            this.recyclerView.addItemDecoration(focusedItemDecorator);
            this.adapter.mIconFocusListener = focusedItemDecorator.mHelper;
            applyVerticalFadingEdgeEnabled(this.verticalFadingEdge);
            applyPadding();
            setupOverlay();
        }

        public void setupOverlay() {
            boolean hasModelFlag;
            if (!this.mIsWork || this.recyclerView == null || this.mWorkDisabled == (hasModelFlag = AllAppsContainerView.this.mAllAppsStore.hasModelFlag(2))) {
                return;
            }
            this.recyclerView.setContentDescription(hasModelFlag ? AllAppsContainerView.this.mLauncher.getString(R.string.work_apps_paused_content_description) : null);
            View overlayView = getOverlayView();
            this.recyclerView.setItemAnimator(new C0191o());
            if (hasModelFlag) {
                overlayView.setAlpha(RecentsState.NO_OFFSET);
                AllAppsRecyclerView allAppsRecyclerView = this.recyclerView;
                allAppsRecyclerView.mAutoSizedOverlays.add(overlayView);
                allAppsRecyclerView.getOverlay().add(overlayView);
                allAppsRecyclerView.onSizeChanged(allAppsRecyclerView.getWidth(), allAppsRecyclerView.getHeight(), allAppsRecyclerView.getWidth(), allAppsRecyclerView.getHeight());
                overlayView.animate().alpha(1.0f).withEndAction(new Runnable() { // from class: c.a.a.D0.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AllAppsContainerView.AdapterHolder adapterHolder = AllAppsContainerView.AdapterHolder.this;
                        AlphabeticalAppsList alphabeticalAppsList = adapterHolder.appsList;
                        alphabeticalAppsList.mItemFilter = new ItemInfoMatcher() { // from class: c.a.a.D0.e
                            @Override // com.android.launcher3.util.ItemInfoMatcher
                            public final boolean matches(ItemInfo itemInfo, ComponentName componentName) {
                                return false;
                            }
                        };
                        alphabeticalAppsList.onAppsUpdated();
                        adapterHolder.recyclerView.setItemAnimator(null);
                    }
                }).start();
            } else {
                ItemInfoMatcher itemInfoMatcher = this.mInfoMatcher;
                if (itemInfoMatcher != null) {
                    AlphabeticalAppsList alphabeticalAppsList = this.appsList;
                    alphabeticalAppsList.mItemFilter = itemInfoMatcher;
                    alphabeticalAppsList.onAppsUpdated();
                    overlayView.animate().alpha(RecentsState.NO_OFFSET).withEndAction(new Runnable() { // from class: c.a.a.D0.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            AllAppsContainerView.AdapterHolder adapterHolder = AllAppsContainerView.AdapterHolder.this;
                            adapterHolder.recyclerView.setItemAnimator(null);
                            AllAppsRecyclerView allAppsRecyclerView2 = adapterHolder.recyclerView;
                            Iterator it = allAppsRecyclerView2.mAutoSizedOverlays.iterator();
                            while (it.hasNext()) {
                                allAppsRecyclerView2.getOverlay().remove((View) it.next());
                            }
                            allAppsRecyclerView2.mAutoSizedOverlays.clear();
                        }
                    }).start();
                }
            }
            this.mWorkDisabled = hasModelFlag;
        }
    }

    public AllAppsContainerView(Context context) {
        this(context, null);
    }

    public /* synthetic */ void a(View view, boolean z) {
        if (!z || getActiveRecyclerView() == null) {
            return;
        }
        getActiveRecyclerView().requestFocus();
    }

    public /* synthetic */ void b(View view) {
        this.mViewPager.snapToPage(0);
    }

    public /* synthetic */ void c(View view) {
        this.mViewPager.snapToPage(1);
    }

    public /* synthetic */ void d() {
        this.mAH[1].applyPadding();
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        if (Utilities.ATLEAST_Q) {
            this.mNavBarScrimHeight = windowInsets.getTappableElementInsets().bottom;
        } else {
            this.mNavBarScrimHeight = windowInsets.getStableInsetBottom();
        }
        return super.dispatchApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mNavBarScrimHeight > 0) {
            canvas.drawRect(RecentsState.NO_OFFSET, getHeight() - this.mNavBarScrimHeight, getWidth(), getHeight(), this.mNavBarScrimPaint);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        this.mSearchUiManager.preDispatchKeyEvent(keyEvent);
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        arrayList.add(LoggerUtils.newContainerTarget(getApps().hasFilter() ? 8 : 4));
    }

    public AllAppsRecyclerView getActiveRecyclerView() {
        return (!this.mUsingTabs || this.mViewPager.getNextPage() == 0) ? this.mAH[0].recyclerView : this.mAH[1].recyclerView;
    }

    public MultiValueAlpha.AlphaProperty getAlphaProperty(int i) {
        return this.mMultiValueAlpha.mMyProperties[i];
    }

    public AlphabeticalAppsList getApps() {
        return this.mAH[0].appsList;
    }

    @Override // com.android.launcher3.views.SpringRelativeLayout
    public int getCanvasClipTopForOverscroll() {
        if (this.mSpringViews.get(this.mSearchContainer.getId())) {
            return 0;
        }
        return this.mHeader.getTop();
    }

    public View getContentView() {
        AllAppsPagedView allAppsPagedView = this.mViewPager;
        return allAppsPagedView == null ? getActiveRecyclerView() : allAppsPagedView;
    }

    @Override // android.view.View
    public void getDrawingRect(Rect rect) {
        super.getDrawingRect(rect);
        rect.offset(0, (int) getTranslationY());
    }

    public LayoutInflater getLayoutInflater() {
        return LayoutInflater.from(getContext());
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        View overlayView = this.mAH[1].getOverlayView();
        int i = configuration.orientation == 2 ? 8 : 0;
        overlayView.findViewById(R.id.work_apps_paused_title).setVisibility(i);
        overlayView.findViewById(R.id.work_apps_paused_content).setVisibility(i);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        for (AdapterHolder adapterHolder : this.mAH) {
            AllAppsRecyclerView allAppsRecyclerView = adapterHolder.recyclerView;
            if (allAppsRecyclerView != null) {
                allAppsRecyclerView.swapAdapter(allAppsRecyclerView.getAdapter(), true);
                adapterHolder.recyclerView.getRecycledViewPool().a();
            }
        }
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: c.a.a.D0.f
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                AllAppsContainerView.this.a(view, z);
            }
        });
        this.mHeader = (FloatingHeaderView) findViewById(R.id.all_apps_header);
        rebindAdapters(this.mUsingTabs, true);
        View findViewById = findViewById(R.id.search_container_all_apps);
        this.mSearchContainer = findViewById;
        SearchUiManager searchUiManager = (SearchUiManager) findViewById;
        this.mSearchUiManager = searchUiManager;
        searchUiManager.initialize(this);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            AllAppsRecyclerView activeRecyclerView = getActiveRecyclerView();
            if (activeRecyclerView == null || !activeRecyclerView.mScrollbar.isHitInParent(motionEvent.getX(), motionEvent.getY(), this.mFastScrollerOffset)) {
                this.mTouchHandler = null;
            } else {
                this.mTouchHandler = activeRecyclerView.mScrollbar;
            }
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.mTouchHandler;
        if (recyclerViewFastScroller != null) {
            return recyclerViewFastScroller.handleTouchEvent(motionEvent, this.mFastScrollerOffset);
        }
        return false;
    }

    public void onSearchResultsChanged() {
        int i;
        int i2 = 0;
        while (true) {
            AdapterHolder[] adapterHolderArr = this.mAH;
            if (i2 >= adapterHolderArr.length) {
                return;
            }
            if (adapterHolderArr[i2].recyclerView != null) {
                AllAppsRecyclerView allAppsRecyclerView = adapterHolderArr[i2].recyclerView;
                allAppsRecyclerView.scrollToTop();
                if (allAppsRecyclerView.mApps.hasNoFilteredResults()) {
                    if (allAppsRecyclerView.mEmptySearchBackground == null) {
                        AllAppsBackgroundDrawable allAppsBackgroundDrawable = new AllAppsBackgroundDrawable(allAppsRecyclerView.getContext());
                        allAppsRecyclerView.mEmptySearchBackground = allAppsBackgroundDrawable;
                        allAppsBackgroundDrawable.setAlpha(0);
                        allAppsRecyclerView.mEmptySearchBackground.setCallback(allAppsRecyclerView);
                        allAppsRecyclerView.updateEmptySearchBackgroundBounds();
                    }
                    AllAppsBackgroundDrawable allAppsBackgroundDrawable2 = allAppsRecyclerView.mEmptySearchBackground;
                    int i3 = (int) 255.0f;
                    if (allAppsBackgroundDrawable2.mHand.mAlpha != i3) {
                        ObjectAnimator objectAnimator = allAppsBackgroundDrawable2.mBackgroundAnim;
                        if (objectAnimator != null) {
                            objectAnimator.cancel();
                        }
                        allAppsBackgroundDrawable2.mBackgroundAnim = null;
                        ObjectAnimator ofInt = ObjectAnimator.ofInt(allAppsBackgroundDrawable2, LauncherAnimUtils.DRAWABLE_ALPHA, i3);
                        allAppsBackgroundDrawable2.mBackgroundAnim = ofInt;
                        ofInt.setDuration(TaskMenuView.REVEAL_OPEN_DURATION);
                        allAppsBackgroundDrawable2.mBackgroundAnim.start();
                    }
                } else {
                    AllAppsBackgroundDrawable allAppsBackgroundDrawable3 = allAppsRecyclerView.mEmptySearchBackground;
                    if (allAppsBackgroundDrawable3 != null && allAppsBackgroundDrawable3.mHand.mAlpha != (i = (int) RecentsState.NO_OFFSET)) {
                        ObjectAnimator objectAnimator2 = allAppsBackgroundDrawable3.mBackgroundAnim;
                        if (objectAnimator2 != null) {
                            objectAnimator2.cancel();
                        }
                        allAppsBackgroundDrawable3.mBackgroundAnim = null;
                        allAppsBackgroundDrawable3.setAlpha(i);
                    }
                }
            }
            i2++;
        }
    }

    public void onTabChanged(int i) {
        FloatingHeaderView floatingHeaderView = this.mHeader;
        boolean z = i == 0;
        floatingHeaderView.mCurrentRV = z ? floatingHeaderView.mMainRV : floatingHeaderView.mWorkRV;
        floatingHeaderView.mMainRVActive = z;
        AdapterHolder[] adapterHolderArr = this.mAH;
        if (adapterHolderArr[i].recyclerView != null) {
            adapterHolderArr[i].recyclerView.bindFastScrollbar();
        }
        reset(true);
        final WorkModeSwitch workModeSwitch = this.mWorkModeSwitch;
        if (workModeSwitch != null) {
            boolean z2 = i == 1 && this.mAllAppsStore.hasModelFlag(5);
            workModeSwitch.clearAnimation();
            if (!z2) {
                workModeSwitch.animate().alpha(RecentsState.NO_OFFSET).withEndAction(new Runnable() { // from class: c.a.a.D0.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkModeSwitch.this.a();
                    }
                }).start();
                return;
            }
            workModeSwitch.setVisibility(0);
            workModeSwitch.setAlpha(RecentsState.NO_OFFSET);
            workModeSwitch.animate().alpha(1.0f).start();
            Context context = workModeSwitch.getContext();
            SharedPreferences prefs = Utilities.getPrefs(context);
            int i2 = prefs.getInt("worked_tip_counter", 2);
            if (i2 < 0) {
                return;
            }
            if (i2 == 0) {
                new ArrowTipView(context).show(context.getString(R.string.work_switch_tip), workModeSwitch.getTop());
            }
            prefs.edit().putInt("worked_tip_counter", i2 - 1).apply();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            AllAppsRecyclerView activeRecyclerView = getActiveRecyclerView();
            if (activeRecyclerView == null || !activeRecyclerView.mScrollbar.isHitInParent(motionEvent.getX(), motionEvent.getY(), this.mFastScrollerOffset)) {
                this.mTouchHandler = null;
            } else {
                this.mTouchHandler = activeRecyclerView.mScrollbar;
            }
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.mTouchHandler;
        if (recyclerViewFastScroller == null) {
            return false;
        }
        recyclerViewFastScroller.handleTouchEvent(motionEvent, this.mFastScrollerOffset);
        return true;
    }

    public void rebindAdapters(boolean z, boolean z2) {
        if (z != this.mUsingTabs || z2) {
            int i = 0;
            while (true) {
                AdapterHolder[] adapterHolderArr = this.mAH;
                if (i >= adapterHolderArr.length) {
                    break;
                }
                if (adapterHolderArr[i].recyclerView != null) {
                    adapterHolderArr[i].recyclerView.setLayoutManager(null);
                }
                i++;
            }
            View view = this.mViewPager;
            if (view == null) {
                view = findViewById(R.id.apps_list_view);
            }
            int indexOfChild = indexOfChild(view);
            removeView(view);
            View inflate = getLayoutInflater().inflate(z ? R.layout.all_apps_tabs : R.layout.all_apps_rv_layout, (ViewGroup) this, false);
            addView(inflate, indexOfChild);
            if (z) {
                AllAppsPagedView allAppsPagedView = (AllAppsPagedView) inflate;
                this.mViewPager = allAppsPagedView;
                allAppsPagedView.initParentViews(this);
                ((PersonalWorkSlidingTabStrip) this.mViewPager.getPageIndicator()).mContainerView = this;
            } else {
                this.mViewPager = null;
            }
            this.mUsingTabs = z;
            this.mAllAppsStore.mIconContainers.remove(this.mAH[0].recyclerView);
            this.mAllAppsStore.mIconContainers.remove(this.mAH[1].recyclerView);
            if (this.mUsingTabs) {
                if (Utilities.ATLEAST_P) {
                    WorkModeSwitch workModeSwitch = (WorkModeSwitch) this.mLauncher.getLayoutInflater().inflate(R.layout.work_mode_switch, (ViewGroup) this, false);
                    this.mWorkModeSwitch = workModeSwitch;
                    addView(workModeSwitch);
                    this.mWorkModeSwitch.setInsets(this.mInsets);
                    this.mWorkModeSwitch.post(new Runnable() { // from class: c.a.a.D0.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            AllAppsContainerView.this.d();
                        }
                    });
                }
                this.mAH[0].setup(this.mViewPager.getChildAt(0), this.mPersonalMatcher);
                this.mAH[1].setup(this.mViewPager.getChildAt(1), this.mWorkMatcher);
                ((PersonalWorkSlidingTabStrip) this.mViewPager.getPageIndicator()).setActiveMarker(0);
                findViewById(R.id.tab_personal).setOnClickListener(new View.OnClickListener() { // from class: c.a.a.D0.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        AllAppsContainerView.this.b(view2);
                    }
                });
                findViewById(R.id.tab_work).setOnClickListener(new View.OnClickListener() { // from class: c.a.a.D0.h
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        AllAppsContainerView.this.c(view2);
                    }
                });
                onTabChanged(this.mViewPager.getNextPage());
            } else {
                this.mAH[0].setup(findViewById(R.id.apps_list_view), null);
                this.mAH[1].recyclerView = null;
                WorkModeSwitch workModeSwitch2 = this.mWorkModeSwitch;
                if (workModeSwitch2 != null) {
                    ((ViewGroup) workModeSwitch2.getParent()).removeView(this.mWorkModeSwitch);
                    this.mWorkModeSwitch = null;
                }
            }
            setupHeader();
            this.mAllAppsStore.registerIconContainer(this.mAH[0].recyclerView);
            this.mAllAppsStore.registerIconContainer(this.mAH[1].recyclerView);
        }
    }

    public void reset(boolean z) {
        boolean z2 = false;
        int i = 0;
        while (true) {
            AdapterHolder[] adapterHolderArr = this.mAH;
            if (i >= adapterHolderArr.length) {
                break;
            }
            if (adapterHolderArr[i].recyclerView != null) {
                adapterHolderArr[i].recyclerView.scrollToTop();
            }
            i++;
        }
        FloatingHeaderView floatingHeaderView = this.mHeader;
        if (floatingHeaderView != null && floatingHeaderView.getVisibility() == 0) {
            z2 = true;
        }
        if (z2) {
            this.mHeader.reset(z);
        }
        this.mSearchUiManager.resetSearch();
    }

    @Override // com.android.launcher3.views.SpringRelativeLayout
    public void setDampedScrollShift(float f) {
        float height = this.mSearchContainer.getHeight() / 2.0f;
        super.setDampedScrollShift(Utilities.boundToRange(f, -height, height));
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        this.mInsets.set(rect);
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        int i = deviceProfile.desiredWorkspaceLeftRightMarginPx + deviceProfile.cellLayoutPaddingLeftRightPx;
        int i2 = 0;
        while (true) {
            AdapterHolder[] adapterHolderArr = this.mAH;
            if (i2 >= adapterHolderArr.length) {
                break;
            }
            adapterHolderArr[i2].padding.bottom = rect.bottom;
            Rect rect2 = adapterHolderArr[i2].padding;
            adapterHolderArr[i2].padding.right = i;
            rect2.left = i;
            adapterHolderArr[i2].applyPadding();
            this.mAH[i2].setupOverlay();
            i2++;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        marginLayoutParams.leftMargin = rect.left;
        marginLayoutParams.rightMargin = rect.right;
        setLayoutParams(marginLayoutParams);
        if (deviceProfile.isVerticalBarLayout()) {
            Rect rect3 = deviceProfile.workspacePadding;
            setPadding(rect3.left, 0, rect3.right, 0);
        } else {
            setPadding(0, 0, 0, 0);
        }
        InsettableFrameLayout.dispatchInsets(this, rect);
    }

    public void setLastSearchQuery(String str) {
        int i = 0;
        while (true) {
            AdapterHolder[] adapterHolderArr = this.mAH;
            if (i >= adapterHolderArr.length) {
                break;
            }
            AllAppsGridAdapter allAppsGridAdapter = adapterHolderArr[i].adapter;
            allAppsGridAdapter.mEmptySearchMessage = allAppsGridAdapter.mLauncher.getResources().getString(R.string.all_apps_no_search_results, str);
            allAppsGridAdapter.mMarketSearchIntent = PackageManagerHelper.getMarketSearchIntent(allAppsGridAdapter.mLauncher, str);
            i++;
        }
        if (this.mUsingTabs) {
            this.mSearchModeWhileUsingTabs = true;
            rebindAdapters(false, false);
        }
    }

    public void setupHeader() {
        int paddingTop;
        int i = 0;
        this.mHeader.setVisibility(0);
        FloatingHeaderView floatingHeaderView = this.mHeader;
        AdapterHolder[] adapterHolderArr = this.mAH;
        boolean z = true;
        boolean z2 = adapterHolderArr[1].recyclerView == null;
        for (FloatingHeaderRow floatingHeaderRow : floatingHeaderView.mAllRows) {
            floatingHeaderRow.setup(floatingHeaderView, floatingHeaderView.mAllRows, z2);
        }
        floatingHeaderView.updateExpectedHeight();
        floatingHeaderView.mTabsHidden = z2;
        floatingHeaderView.mTabLayout.setVisibility(z2 ? 8 : 0);
        AllAppsRecyclerView allAppsRecyclerView = floatingHeaderView.mMainRV;
        AllAppsRecyclerView allAppsRecyclerView2 = adapterHolderArr[0].recyclerView;
        if (allAppsRecyclerView != allAppsRecyclerView2 && allAppsRecyclerView2 != null) {
            allAppsRecyclerView2.addOnScrollListener(floatingHeaderView.mOnScrollListener);
        }
        floatingHeaderView.mMainRV = allAppsRecyclerView2;
        AllAppsRecyclerView allAppsRecyclerView3 = floatingHeaderView.mWorkRV;
        AllAppsRecyclerView allAppsRecyclerView4 = adapterHolderArr[1].recyclerView;
        if (allAppsRecyclerView3 != allAppsRecyclerView4 && allAppsRecyclerView4 != null) {
            allAppsRecyclerView4.addOnScrollListener(floatingHeaderView.mOnScrollListener);
        }
        floatingHeaderView.mWorkRV = allAppsRecyclerView4;
        floatingHeaderView.mParent = (ViewGroup) floatingHeaderView.mMainRV.getParent();
        if (!floatingHeaderView.mMainRVActive && floatingHeaderView.mWorkRV != null) {
            z = false;
        }
        floatingHeaderView.mCurrentRV = z ? floatingHeaderView.mMainRV : floatingHeaderView.mWorkRV;
        floatingHeaderView.mMainRVActive = z;
        floatingHeaderView.reset(false);
        FloatingHeaderView floatingHeaderView2 = this.mHeader;
        if (floatingHeaderView2.mMaxTranslation == 0 && floatingHeaderView2.mTabsHidden) {
            paddingTop = floatingHeaderView2.getResources().getDimensionPixelSize(R.dimen.all_apps_search_bar_bottom_padding);
        } else {
            int i2 = floatingHeaderView2.mMaxTranslation;
            paddingTop = (i2 <= 0 || !floatingHeaderView2.mTabsHidden) ? floatingHeaderView2.mMaxTranslation : floatingHeaderView2.getPaddingTop() + i2;
        }
        while (true) {
            AdapterHolder[] adapterHolderArr2 = this.mAH;
            if (i >= adapterHolderArr2.length) {
                return;
            }
            adapterHolderArr2[i].padding.top = paddingTop;
            adapterHolderArr2[i].applyPadding();
            i++;
        }
    }

    public boolean shouldContainerScroll(MotionEvent motionEvent) {
        AllAppsRecyclerView activeRecyclerView;
        if (this.mLauncher.getDragLayer().isEventOverView(this.mSearchContainer, motionEvent) || (activeRecyclerView = getActiveRecyclerView()) == null) {
            return true;
        }
        if (activeRecyclerView.mScrollbar.mThumbOffsetY < 0 || !this.mLauncher.getDragLayer().isEventOverView(activeRecyclerView.mScrollbar, motionEvent)) {
            return activeRecyclerView.shouldContainerScroll(motionEvent, this.mLauncher.getDragLayer());
        }
        return false;
    }

    public AllAppsContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AllAppsContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        final o oVar = new o(Process.myUserHandle());
        this.mPersonalMatcher = oVar;
        this.mWorkMatcher = new ItemInfoMatcher() { // from class: c.a.a.a1.i
            @Override // com.android.launcher3.util.ItemInfoMatcher
            public final boolean matches(ItemInfo itemInfo, ComponentName componentName) {
                return !ItemInfoMatcher.this.matches(itemInfo, componentName);
            }
        };
        this.mAllAppsStore = new AllAppsStore();
        this.mNavBarScrimHeight = 0;
        this.mSearchQueryBuilder = null;
        this.mSearchModeWhileUsingTabs = false;
        this.mFastScrollerOffset = new Point();
        this.mInsets = new Rect();
        BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(context);
        this.mLauncher = baseDraggingActivity;
        baseDraggingActivity.addOnDeviceProfileChangeListener(this);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        this.mSearchQueryBuilder = spannableStringBuilder;
        Selection.setSelection(spannableStringBuilder, 0);
        AdapterHolder[] adapterHolderArr = new AdapterHolder[2];
        this.mAH = adapterHolderArr;
        adapterHolderArr[0] = new AdapterHolder(false);
        this.mAH[1] = new AdapterHolder(true);
        Paint paint = new Paint();
        this.mNavBarScrimPaint = paint;
        paint.setColor(W.getAttrColor(context, R.attr.allAppsNavBarScrimColor));
        AllAppsStore allAppsStore = this.mAllAppsStore;
        allAppsStore.mUpdateListeners.add(new AllAppsStore.OnUpdateListener() { // from class: c.a.a.D0.g
            @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
            public final void onAppsUpdated() {
                boolean z;
                AllAppsContainerView allAppsContainerView = AllAppsContainerView.this;
                AppInfo[] appInfoArr = allAppsContainerView.mAllAppsStore.mApps;
                int length = appInfoArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    }
                    if (allAppsContainerView.mWorkMatcher.matches(appInfoArr[i2], null)) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                allAppsContainerView.rebindAdapters(z, false);
                if (z) {
                    allAppsContainerView.mWorkModeSwitch.update(!allAppsContainerView.mAllAppsStore.hasModelFlag(2));
                    allAppsContainerView.mAH[1].setupOverlay();
                    allAppsContainerView.mAH[1].applyPadding();
                }
            }
        });
        addSpringView(R.id.all_apps_header);
        addSpringView(R.id.apps_list_view);
        addSpringView(R.id.all_apps_tabs_view_pager);
        this.mMultiValueAlpha = new MultiValueAlpha(this, 2);
    }
}
