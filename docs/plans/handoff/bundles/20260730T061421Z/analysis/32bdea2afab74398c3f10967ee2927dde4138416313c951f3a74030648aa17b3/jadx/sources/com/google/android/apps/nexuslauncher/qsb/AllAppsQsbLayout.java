package com.google.android.apps.nexuslauncher.qsb;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.ImageView;
import b.e.d.a;
import b.l.W;
import c.b.a.b.b.l.A;
import c.b.a.b.b.l.C;
import c.b.a.b.b.l.C0391e;
import c.b.a.b.b.l.D;
import c.b.a.b.b.l.H;
import c.b.a.b.b.l.y;
import c.b.a.b.b.l.z;
import c.b.a.b.b.n.n;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.SearchUiManager;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.qsb.AllAppsQsbLayout;

@TargetApi(24)
/* loaded from: classes.dex */
public class AllAppsQsbLayout extends H implements SearchUiManager, WallpaperColorInfo.OnChangeListener, SharedPreferences.OnSharedPreferenceChangeListener {
    public final int R;
    public int S;
    public Bitmap T;
    public boolean U;
    public boolean V;
    public FallbackAppsSearchView W;
    public int a0;
    public AllAppsContainerView b0;

    public AllAppsQsbLayout(Context context) {
        this(context, null);
    }

    public final void A(boolean z) {
        if (this.U != z) {
            x();
            this.U = z;
            ((ImageView) findViewById(R.id.g_icon)).setImageResource(this.U ? R.drawable.ic_allapps_search : R.drawable.ic_super_g_color);
            this.q.setAlpha(this.U ? RecentsState.NO_OFFSET : 1.0f);
            if (this.U) {
                u();
                this.W.setHint(R.string.all_apps_search_bar_hint);
            }
        }
    }

    public final void B(SharedPreferences sharedPreferences) {
        if (this.V) {
            return;
        }
        A((sharedPreferences.getInt("pref_persistent_flags", 24) & (getResources().getConfiguration().orientation == 2 ? 16 : 8)) == 0);
    }

    @Override // c.b.a.b.b.l.H, c.b.a.b.b.l.A, c.b.a.b.b.l.O
    public void a() {
        onExtractedColorsChanged((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(getContext()));
        super.a();
    }

    @Override // c.b.a.b.b.l.A, android.view.View
    public void draw(Canvas canvas) {
        int i = this.S;
        if (i > 0 && this.T != null) {
            this.f2619c.paint.setAlpha(i);
            c(this.T, canvas, getWidth());
            this.f2619c.paint.setAlpha(255);
        }
        super.draw(canvas);
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public float getScrollRangeDelta(Rect rect) {
        if (this.e.getDeviceProfile().isVerticalBarLayout()) {
            return RecentsState.NO_OFFSET;
        }
        DeviceProfile deviceProfile = this.e.getDeviceProfile();
        return getLayoutParams().height + Math.max(-this.a0, rect.top - this.R) + this.a0 + rect.bottom + ((int) (((deviceProfile.hotseatBarSizePx - deviceProfile.hotseatCellHeightPx) - getLayoutParams().height) * 0.325f));
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public void initialize(AllAppsContainerView allAppsContainerView) {
        this.b0 = allAppsContainerView;
        C c2 = new C(this, null);
        int i = 0;
        if (!allAppsContainerView.mUsingTabs) {
            allAppsContainerView.mAH[0].recyclerView.addOnScrollListener(c2);
        }
        while (true) {
            AllAppsContainerView.AdapterHolder[] adapterHolderArr = allAppsContainerView.mAH;
            if (i >= adapterHolderArr.length) {
                return;
            }
            adapterHolderArr[i].applyVerticalFadingEdgeEnabled(true);
            i++;
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public boolean isQsbVisible(int i) {
        return ((i & 2) == 0 && (i & 4) == 0) ? false : true;
    }

    @Override // c.b.a.b.b.l.H, c.b.a.b.b.l.A, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WallpaperColorInfo wallpaperColorInfo = (WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(getContext());
        wallpaperColorInfo.mListeners.add(this);
        onExtractedColorsChanged(wallpaperColorInfo);
        SharedPreferences devicePrefs = Utilities.getDevicePrefs(getContext());
        B(devicePrefs);
        devicePrefs.registerOnSharedPreferenceChangeListener(this);
    }

    @Override // c.b.a.b.b.l.A, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(getContext())).mListeners.remove(this);
        Utilities.getDevicePrefs(getContext()).unregisterOnSharedPreferenceChangeListener(this);
        super.onDetachedFromWindow();
    }

    @Override // com.android.launcher3.uioverrides.WallpaperColorInfo.OnChangeListener
    public void onExtractedColorsChanged(WallpaperColorInfo wallpaperColorInfo) {
        int i = this.f.f.getInt("pixel_2017_qsb_background_color", this.I);
        int colorAlphaBound = GraphicsUtils.setColorAlphaBound(i, this.f.f.getInt("pixel_2018_qsb_mic_opacity", Color.alpha(i)));
        int f = a.f(a.f(W.getAttrBoolean(getContext(), R.attr.isMainColorDark) ? -650362813 : -855638017, W.getAttrColor(getContext(), R.attr.allAppsScrimColor)), wallpaperColorInfo.mExtractionInfo.mainColor);
        this.t = new y(this, new C0391e(this), i, f);
        boolean z = this.f.f.getBoolean("pixel_2018_qsb_use_two_bubbles", false);
        this.o = z;
        this.u = z ? new y(this, new z() { // from class: c.b.a.b.b.l.a
            @Override // c.b.a.b.b.l.z
            public final void a(Bitmap bitmap, Canvas canvas, int i2) {
                A.m(A.this, bitmap, canvas, i2);
            }
        }, colorAlphaBound, f) : null;
        n();
        invalidate();
    }

    @Override // c.b.a.b.b.l.A, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = (View) getParent();
        setTranslationX((((((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) - (i3 - i)) / 2) + view.getPaddingLeft()) - i);
        offsetTopAndBottom(this.a0);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("pref_persistent_flags".equals(str)) {
            B(sharedPreferences);
        }
    }

    @Override // c.b.a.b.b.l.A
    public boolean p() {
        if (this.W != null) {
            return false;
        }
        return super.p();
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public void preDispatchKeyEvent(KeyEvent keyEvent) {
    }

    @Override // c.b.a.b.b.l.H, c.b.a.b.b.l.A
    public void q(final String str, final int i) {
        final NexusLauncherActivity h = h();
        final RecentsView recentsView = (RecentsView) h.getOverviewPanel();
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get()) {
            recentsView.switchToScreenshot(null, new Runnable() { // from class: c.b.a.b.b.l.c
                @Override // java.lang.Runnable
                public final void run() {
                    AllAppsQsbLayout.this.w(recentsView, h, str, i);
                }
            });
        } else {
            v(h, str, i);
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public void resetSearch() {
        y(0);
        if (!this.U) {
            x();
            return;
        }
        FallbackAppsSearchView fallbackAppsSearchView = this.W;
        if (fallbackAppsSearchView != null) {
            fallbackAppsSearchView.reset();
            this.W.clearSearchResult();
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public void setContentVisibility(int i, PropertySetter propertySetter, Interpolator interpolator) {
        boolean z = (i & 16) != 0;
        propertySetter.setFloat(this, A.G, z ? 1.0f : 0.0f, Interpolators.LINEAR);
        propertySetter.setFloat(this, H.P, z ? 0.0f : 1.0f, Interpolators.LINEAR);
        propertySetter.setFloat(this, A.H, z ? 1.0f : 0.0f, Interpolators.LINEAR);
        propertySetter.setViewAlpha(this, isQsbVisible(i) ? 1.0f : 0.0f, interpolator);
    }

    @Override // c.b.a.b.b.l.A, com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        B(Utilities.getDevicePrefs(getContext()));
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).topMargin = Math.max(-this.a0, rect.top - this.R);
        requestLayout();
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public EditText setTextSearchEnabled(boolean z) {
        this.V = z;
        A(z);
        return this.W;
    }

    public final void u() {
        setOnClickListener(null);
        FallbackAppsSearchView fallbackAppsSearchView = (FallbackAppsSearchView) LayoutInflater.from(getContext()).inflate(R.layout.all_apps_google_search_fallback, (ViewGroup) this, false);
        this.W = fallbackAppsSearchView;
        if (!this.V) {
            AllAppsContainerView allAppsContainerView = this.b0;
            fallbackAppsSearchView.f3309c = this;
            fallbackAppsSearchView.f3308b = allAppsContainerView.getApps();
            fallbackAppsSearchView.f3310d = allAppsContainerView;
            fallbackAppsSearchView.f3307a.initialize(new n(fallbackAppsSearchView.getContext()), fallbackAppsSearchView, Launcher.getLauncher(fallbackAppsSearchView.getContext()), fallbackAppsSearchView);
        }
        addView(this.W);
    }

    public /* synthetic */ void w(RecentsView recentsView, final NexusLauncherActivity nexusLauncherActivity, final String str, final int i) {
        recentsView.finishRecentsAnimation(true, new Runnable() { // from class: c.b.a.b.b.l.b
            @Override // java.lang.Runnable
            public final void run() {
                AllAppsQsbLayout.this.v(nexusLauncherActivity, str, i);
            }
        });
    }

    public final void x() {
        FallbackAppsSearchView fallbackAppsSearchView = this.W;
        if (fallbackAppsSearchView != null) {
            fallbackAppsSearchView.clearSearchResult();
            setOnClickListener(new View.OnClickListener() { // from class: c.b.a.b.b.l.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AllAppsQsbLayout.this.o(view);
                }
            });
            removeView(this.W);
            this.W = null;
        }
    }

    public void y(int i) {
        int boundToRange = Utilities.boundToRange(i, 0, 255);
        if (this.S != boundToRange) {
            this.S = boundToRange;
            if (boundToRange > 0 && this.T == null) {
                this.T = d(getResources().getDimension(R.dimen.hotseat_qsb_scroll_shadow_blur_radius), getResources().getDimension(R.dimen.hotseat_qsb_scroll_key_shadow_offset), 0);
            }
            invalidate();
        }
    }

    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final void v(NexusLauncherActivity nexusLauncherActivity, String str, int i) {
        if (!nexusLauncherActivity.isInState(LauncherState.ALL_APPS)) {
            super.q(str, i);
        }
        if (this.U) {
            this.W.setText(str);
            return;
        }
        D d2 = new D(this, true, str, i);
        if (nexusLauncherActivity.mOverlayManager.startSearch(d2.a(), d2.e)) {
            nexusLauncherActivity.f3288a.f2534b.b();
        } else {
            if (this.W == null) {
                u();
            }
            this.W.showKeyboard();
        }
        this.A = 0;
    }

    public AllAppsQsbLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AllAppsQsbLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.S = 0;
        this.R = getResources().getDimensionPixelSize(R.dimen.qsb_margin_top_adjusting);
        this.a0 = getResources().getDimensionPixelSize(R.dimen.all_apps_search_vertical_offset);
    }
}
