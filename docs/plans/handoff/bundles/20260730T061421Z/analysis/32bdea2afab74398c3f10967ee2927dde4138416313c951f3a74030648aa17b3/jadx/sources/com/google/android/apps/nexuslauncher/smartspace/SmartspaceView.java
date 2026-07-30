package com.google.android.apps.nexuslauncher.smartspace;

import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Process;
import android.provider.CalendarContract;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import b.l.W;
import c.b.a.b.b.p.e;
import c.b.a.b.b.p.h;
import c.b.a.b.b.p.k;
import c.b.a.b.b.p.l;
import c.b.a.b.b.p.m;
import c.b.a.b.b.p.o.c;
import c.b.a.b.b.p.o.d;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.userevent.nano.LauncherLogExtensions$TargetExtension;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.OptionsPopupView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.FirstScreenWidget;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.graphics.DoubleShadowTextView;
import com.google.android.apps.nexuslauncher.graphics.IcuDateTextView;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import com.google.android.apps.nexuslauncher.smartspace.SmartspaceView;
import java.util.Collections;
import java.util.Objects;

/* loaded from: classes.dex */
public class SmartspaceView extends FrameLayout implements m, ValueAnimator.AnimatorUpdateListener, View.OnClickListener, View.OnLongClickListener, Runnable, PluginListener {

    /* renamed from: a, reason: collision with root package name */
    public final int f3334a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3335b;

    /* renamed from: c, reason: collision with root package name */
    public FirstScreenWidget f3336c;

    /* renamed from: d, reason: collision with root package name */
    public DoubleShadowTextView f3337d;
    public DoubleShadowTextView e;
    public DoubleShadowTextView f;
    public DoubleShadowTextView g;
    public ImageView h;
    public ViewGroup i;
    public ViewGroup j;
    public IcuDateTextView k;
    public final Handler l;
    public final k m;
    public final TextPaint n;
    public l o;
    public boolean p;
    public InvariantDeviceProfile q;
    public final DisplayMetrics r;
    public final StatsLogManager s;
    public Paint t;
    public Rect u;
    public float v;
    public float w;
    public final int x;
    public final int y;
    public boolean z;

    public SmartspaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.t = new Paint();
        this.u = new Rect();
        this.m = (k) k.j.b(context);
        this.l = new Handler();
        this.f3335b = this.m.d();
        this.f3334a = R.drawable.bg_smartspace;
        this.n = new TextPaint();
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.disableTransitionType(0);
        layoutTransition.disableTransitionType(1);
        setLayoutTransition(layoutTransition);
        this.q = ActivityContext.lookupContext(context).getDeviceProfile().inv;
        this.r = context.getResources().getDisplayMetrics();
        this.w = this.q.getAttrValue(R.attr.smartspaceClockSize).getDimension(this.r);
        this.v = context.getResources().getDimension(R.dimen.smartspace_title_min_size);
        this.x = getResources().getDimensionPixelSize(R.dimen.smartspace_horizontal_padding);
        this.y = getResources().getDimensionPixelSize(R.dimen.smartspace_title_icon_size_5x5);
        this.s = StatsLogManager.newInstance(context);
    }

    public static boolean e(SmartspaceView smartspaceView, View view) {
        Objects.requireNonNull(smartspaceView);
        view.getContext().startActivity(k.a());
        return true;
    }

    @Override // c.b.a.b.b.p.m
    public void a() {
        this.f3335b = this.m.d();
        j(true);
    }

    @Override // c.b.a.b.b.p.m
    public void b(l lVar, boolean z) {
        this.o = lVar;
        boolean b2 = lVar.b();
        if (this.p != b2) {
            this.p = b2;
            k();
        }
        n(z);
    }

    public final void c(boolean z) {
        LayoutTransition layoutTransition = this.i.getLayoutTransition();
        if (z && layoutTransition == null) {
            this.i.setLayoutTransition(new LayoutTransition());
        } else if (!z && layoutTransition != null) {
            this.i.setLayoutTransition(null);
        }
        setBackgroundResource(0);
        m(this.k, 1);
    }

    public final void d() {
        this.i = (ViewGroup) findViewById(R.id.smartspace_content);
        IcuDateTextView icuDateTextView = (IcuDateTextView) findViewById(R.id.clock);
        this.k = icuDateTextView;
        if (icuDateTextView != null) {
            this.t.set(icuDateTextView.getPaint());
        }
        this.f = (DoubleShadowTextView) findViewById(R.id.title_weather_text);
        this.g = (DoubleShadowTextView) findViewById(R.id.subtitle_weather_text);
        this.h = (ImageView) findViewById(R.id.weather_icon);
        this.f3337d = (DoubleShadowTextView) findViewById(R.id.title_text);
        this.j = (ViewGroup) findViewById(R.id.subtitle_line);
        this.e = (DoubleShadowTextView) findViewById(R.id.subtitle_text);
    }

    public /* synthetic */ void f() {
        k();
        if (this.o != null) {
            n(false);
        }
    }

    public final void g(int i) {
        UserEventDispatcherImpl userEventDispatcherImpl = (UserEventDispatcherImpl) Launcher.getLauncher(getContext()).getUserEventDispatcher();
        Objects.requireNonNull(userEventDispatcherImpl);
        LauncherLogProto$Action newTouchAction = LoggerUtils.newTouchAction(0);
        LauncherLogExtensions$TargetExtension launcherLogExtensions$TargetExtension = new LauncherLogExtensions$TargetExtension();
        LauncherLogProto$Target launcherLogProto$Target = new LauncherLogProto$Target();
        launcherLogProto$Target.type = 1;
        launcherLogProto$Target.extension = launcherLogExtensions$TargetExtension;
        LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(newTouchAction, launcherLogProto$Target);
        newLauncherEvent.srcTarget[0].extension.smartspaceType = i;
        userEventDispatcherImpl.dispatchUserEvent(newLauncherEvent, null);
    }

    public void h(FirstScreenWidget firstScreenWidget) {
        this.f3336c = firstScreenWidget;
        firstScreenWidget.onWidgetUpdated(this);
    }

    public void i() {
        this.f3336c = null;
    }

    public final void j(boolean z) {
        this.m.b();
        l lVar = this.o;
        if (lVar != null) {
            b(lVar, z);
        }
    }

    public final void k() {
        View inflate;
        int indexOfChild = indexOfChild(this.i);
        removeView(this.i);
        int i = this.q.getAttrValue(R.attr.smartspaceClockWeatherLayoutId).resourceId;
        int i2 = this.q.getAttrValue(R.attr.smartspaceCardWeatherLayoutId).resourceId;
        if (this.p) {
            inflate = LayoutInflater.from(getContext()).inflate(i2, (ViewGroup) this, false);
            if (this.q.numColumns == 3) {
                View findViewById = inflate.findViewById(R.id.smartspace_content);
                View findViewById2 = inflate.findViewById(R.id.weather_container);
                DeviceProfile deviceProfile = this.q.getDeviceProfile(getContext());
                int i3 = (deviceProfile.getCellSize().x - deviceProfile.iconSizePx) / 2;
                findViewById.setPaddingRelative(i3, 0, i3, 0);
                findViewById2.setMinimumWidth(deviceProfile.iconSizePx);
            }
        } else {
            inflate = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false);
        }
        addView(inflate, indexOfChild);
        d();
    }

    public final void l(float f) {
        IcuDateTextView icuDateTextView = this.k;
        if (icuDateTextView != null && ((int) icuDateTextView.getTextSize()) != ((int) f)) {
            this.k.setTextSize(0, f);
        }
        DoubleShadowTextView doubleShadowTextView = this.f;
        if (doubleShadowTextView == null || ((int) doubleShadowTextView.getTextSize()) == ((int) f)) {
            return;
        }
        this.f.setTextSize(0, f);
    }

    public final void m(View view, int i) {
        view.setTag(R.id.smart_space_content_type, Integer.valueOf(i));
        view.setOnClickListener(this);
        if (!this.f3335b) {
            this = null;
        }
        view.setOnLongClickListener(this);
    }

    public final void n(boolean z) {
        long j;
        String str;
        String str2;
        if (this.o.b()) {
            m(this, 3);
        } else {
            setClickable(false);
            setOnClickListener(null);
        }
        String str3 = "";
        if (this.p) {
            l lVar = this.o;
            setBackgroundResource(this.f3334a);
            h hVar = lVar.f2816b;
            e d2 = hVar.d();
            if (!TextUtils.isEmpty(d2.f2798c.f2833a)) {
                if (hVar.e()) {
                    DoubleShadowTextView doubleShadowTextView = this.f3337d;
                    e d3 = this.o.f2816b.d();
                    int width = (((getWidth() - getPaddingLeft()) - getPaddingRight()) - this.x) * this.f3337d.getMaxLines();
                    this.n.setTextSize(this.f3337d.getTextSize());
                    float measureText = this.n.measureText(d3.d(""));
                    if (d3.f2798c.f2835c != null) {
                        int i = 0;
                        while (true) {
                            d[] dVarArr = d3.f2798c.f2835c;
                            if (i >= dVarArr.length) {
                                break;
                            }
                            if (dVarArr[i].f2830b != 0) {
                                str2 = dVarArr[i].f2829a;
                                break;
                            }
                            i++;
                        }
                    }
                    str2 = "";
                    doubleShadowTextView.a(d3.d(TextUtils.ellipsize(str2, this.n, width - measureText, TextUtils.TruncateAt.END).toString()), null);
                } else {
                    this.f3337d.a(d2.toString(), null);
                }
                this.f3337d.setEllipsize(d2.b());
                this.f3337d.setVisibility(0);
            }
            if (this.q.getDeviceProfile(getContext()).isVerticalBarLayout() && this.q.numColumns > 3) {
                this.e.setVisibility(8);
            } else if (!TextUtils.isEmpty(hVar.c().f2804b.toString()) || hVar.h != null) {
                DoubleShadowTextView doubleShadowTextView2 = this.e;
                boolean z2 = hVar.g && ((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(getContext())).mExtractionInfo.supportsDarkText;
                if ((doubleShadowTextView2.f3293d.getColorFilter() != null) != z2) {
                    if (z2) {
                        doubleShadowTextView2.f3293d.setColorFilter(new PorterDuffColorFilter(W.getAttrColor(doubleShadowTextView2.getContext(), R.attr.workspaceTextColor), PorterDuff.Mode.SRC_IN));
                    } else {
                        doubleShadowTextView2.f3293d.setColorFilter(null);
                    }
                }
                DoubleShadowTextView doubleShadowTextView3 = this.e;
                int width2 = getWidth();
                DoubleShadowTextView doubleShadowTextView4 = this.e;
                int i2 = width2 - (doubleShadowTextView4.f3292c + doubleShadowTextView4.f3291b);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) doubleShadowTextView4.getLayoutParams();
                int marginEnd = i2 - (marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart());
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.j.getLayoutParams();
                int marginEnd2 = marginEnd - (marginLayoutParams2.getMarginEnd() + marginLayoutParams2.getMarginStart());
                DoubleShadowTextView doubleShadowTextView5 = this.g;
                if (doubleShadowTextView5 != null && doubleShadowTextView5.getVisibility() == 0) {
                    marginEnd2 -= this.g.getWidth();
                }
                this.n.setTextSize(this.e.getTextSize());
                e eVar = this.o.f2816b.c().f2804b;
                doubleShadowTextView3.a(TextUtils.ellipsize(eVar.toString(), this.n, marginEnd2, eVar.b()), hVar.h);
                m(this.e, 3);
            }
        } else {
            c(z);
        }
        l lVar2 = this.o;
        DoubleShadowTextView doubleShadowTextView6 = this.f;
        if (doubleShadowTextView6 == null) {
            doubleShadowTextView6 = this.q.getDeviceProfile(getContext()).isVerticalBarLayout() ? null : this.g;
        }
        if (doubleShadowTextView6 != null) {
            if (lVar2.c()) {
                doubleShadowTextView6.setVisibility(0);
                m(doubleShadowTextView6, 2);
                h hVar2 = lVar2.f2815a;
                String eVar2 = hVar2.d().toString();
                c cVar = hVar2.f2808d.g;
                if (cVar != null && (str = cVar.f2828d) != null) {
                    str3 = str;
                }
                if (eVar2.isEmpty()) {
                    eVar2 = str3;
                } else if (!str3.isEmpty()) {
                    eVar2 = hVar2.f.getString(R.string.weather_description, str3, eVar2);
                }
                doubleShadowTextView6.setContentDescription(eVar2);
                if (this.h == null) {
                    doubleShadowTextView6.a(lVar2.f2815a.d().toString(), lVar2.f2815a.h);
                } else {
                    doubleShadowTextView6.a(lVar2.f2815a.d().toString(), null);
                    this.h.setBackground(new BitmapDrawable(lVar2.f2815a.h));
                    m(this.h, 2);
                }
            } else {
                doubleShadowTextView6.setVisibility(8);
            }
        }
        FirstScreenWidget firstScreenWidget = this.f3336c;
        if (firstScreenWidget != null) {
            firstScreenWidget.onWidgetUpdated(this);
        }
        this.l.removeCallbacks(this);
        if (this.o.b() && this.o.f2816b.e()) {
            e d4 = this.o.f2816b.d();
            if (d4.c()) {
                for (d dVar : d4.f2798c.f2835c) {
                    int i3 = dVar.f2831c;
                    if (i3 == 1 || i3 == 2) {
                        j = d4.a(dVar);
                        break;
                    }
                }
            }
            j = 0;
            long currentTimeMillis = 61000 - (System.currentTimeMillis() % 60000);
            if (j > 0) {
                currentTimeMillis = Math.min(currentTimeMillis, j);
            }
            this.l.postDelayed(this, currentTimeMillis);
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).mPluginManager.addPluginListener((PluginListener) this, FirstScreenWidget.class, false);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l lVar;
        Object tag = view.getTag(R.id.smart_space_content_type);
        if (tag instanceof Integer) {
            int intValue = ((Integer) tag).intValue();
            if (intValue == 1) {
                try {
                    this.s.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SMARTSPACE_DATE_TAP);
                    g(1);
                    Launcher.getLauncher(getContext()).k(view, new Intent("android.intent.action.VIEW").setData(ContentUris.appendId(CalendarContract.CONTENT_URI.buildUpon().appendPath("time"), System.currentTimeMillis()).build()).addFlags(270532608), null, null);
                    return;
                } catch (ActivityNotFoundException unused) {
                    ((LauncherApps) getContext().getSystemService(LauncherApps.class)).startAppDetailsActivity(new ComponentName("com.google.android.calendar", ""), Process.myUserHandle(), null, null);
                    return;
                }
            }
            if (intValue != 2) {
                if (intValue == 3 && (lVar = this.o) != null && lVar.b()) {
                    this.s.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SMARTSPACE_CARD_TAP);
                    g(3);
                    this.o.f2816b.f(view);
                    return;
                }
                return;
            }
            l lVar2 = this.o;
            if (lVar2 == null || !lVar2.c()) {
                return;
            }
            this.s.logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SMARTSPACE_WEATHER_TAP);
            g(2);
            this.o.f2815a.f(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).mPluginManager.removePluginListener(this);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        d();
        k();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        IcuDateTextView icuDateTextView = this.k;
        TextView textView = (icuDateTextView == null || icuDateTextView.getVisibility() != 0) ? this.f3337d : this.k;
        if (textView == null) {
            return false;
        }
        Rect rect = new Rect();
        Launcher launcher = Launcher.getLauncher(getContext());
        launcher.mDragLayer.getDescendantRectRelativeToSelf(textView, rect);
        Paint.FontMetrics fontMetrics = textView.getPaint().getFontMetrics();
        float f = fontMetrics.bottom - fontMetrics.top;
        float height = ((textView.getHeight() - f) - ((fontMetrics.leading + f) * (textView.getLineCount() - 1))) / 2.0f;
        RectF rectF = new RectF();
        float exactCenterX = rect.exactCenterX();
        rectF.right = exactCenterX;
        rectF.left = exactCenterX;
        rectF.top = RecentsState.NO_OFFSET;
        rectF.bottom = rect.bottom - height;
        OptionsPopupView.show(launcher, rectF, Collections.singletonList(new OptionsPopupView.OptionItem(R.string.smartspace_preferences, R.drawable.ic_smartspace_preferences, NexusLauncherEvent.LAUNCHER_GOOGLE_SMARTSPACE_PREFERENCES_TAP_OR_LONGPRESS, new View.OnLongClickListener() { // from class: c.b.a.b.b.p.c
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                SmartspaceView.e(SmartspaceView.this, view2);
                return true;
            }
        })));
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        DoubleShadowTextView doubleShadowTextView;
        int size = View.MeasureSpec.getSize(i);
        if (this.k != null) {
            if (this.p || (doubleShadowTextView = this.f) == null || doubleShadowTextView.getVisibility() != 0) {
                l(this.w);
            } else {
                float f = this.w;
                String str = this.k.getText().toString() + this.f.getText().toString();
                int i3 = size - this.x;
                while (true) {
                    this.t.setTextSize(f);
                    this.t.getTextBounds(str, 0, str.length(), this.u);
                    if (getPaddingRight() + getPaddingLeft() + this.y + this.f.getPaddingRight() + this.f.getPaddingLeft() + this.k.getPaddingRight() + this.k.getPaddingLeft() + this.u.width() <= i3) {
                        break;
                    }
                    float f2 = f - 2.0f;
                    if (f2 < this.v) {
                        break;
                    } else {
                        f = f2;
                    }
                }
                l(f);
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public /* bridge */ /* synthetic */ void onPluginConnected(Plugin plugin, Context context) {
        h((FirstScreenWidget) plugin);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public /* bridge */ /* synthetic */ void onPluginDisconnected(Plugin plugin) {
        i();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new Runnable() { // from class: c.b.a.b.b.p.d
            @Override // java.lang.Runnable
            public final void run() {
                SmartspaceView.this.f();
            }
        });
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (!this.z && z) {
            this.z = true;
            k kVar = this.m;
            kVar.h.add(this);
            l lVar = kVar.f;
            if (lVar != null) {
                b(lVar, false);
            }
        } else if (this.z && !z) {
            this.z = false;
            this.m.h.remove(this);
        }
        if (z) {
            j(false);
        } else {
            this.l.removeCallbacks(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        j(true);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }
}
