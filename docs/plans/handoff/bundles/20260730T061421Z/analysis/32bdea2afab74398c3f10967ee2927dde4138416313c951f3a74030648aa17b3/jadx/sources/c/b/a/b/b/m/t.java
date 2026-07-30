package c.b.a.b.b.m;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import c.b.a.b.a.a.a.a.c.P;
import c.b.a.b.a.a.a.a.c.m0;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.model.WellbeingModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.ViewCache;
import com.android.launcher3.views.ArrowTipView;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.google.android.apps.nexuslauncher.overview.NexusOverviewActionsView;
import com.google.android.apps.nexuslauncher.quickstep.ProactiveSuggestionWrapper;
import com.google.android.apps.nexuslauncher.quickstep.TaskOverlayFactoryImpl;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class t extends TaskOverlayFactory.TaskOverlay implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2731a;

    /* renamed from: b, reason: collision with root package name */
    public final PointF f2732b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewCache f2733c;

    /* renamed from: d, reason: collision with root package name */
    public c.b.a.b.b.h.b f2734d;
    public m0 e;
    public c.b.a.b.b.h.a f;
    public ActionMode g;
    public PopupWindow h;
    public int i;
    public long j;
    public final Runnable k;
    public final u l;
    public final UserEventDispatcher m;
    public final StatsLogManager n;
    public final c.b.a.b.b.k.k o;
    public final BaseDraggingActivity p;
    public c.b.a.b.b.k.i q;
    public s r;
    public final c.b.a.b.b.k.j s;
    public boolean t;
    public boolean u;
    public final /* synthetic */ TaskOverlayFactoryImpl v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(TaskOverlayFactoryImpl taskOverlayFactoryImpl, TaskThumbnailView taskThumbnailView, o oVar) {
        super(taskThumbnailView);
        this.v = taskOverlayFactoryImpl;
        this.f2732b = new PointF();
        this.f = new c.b.a.b.b.h.a(new j(this));
        this.i = 0;
        this.k = new Runnable() { // from class: c.b.a.b.b.m.k
            @Override // java.lang.Runnable
            public final void run() {
                t tVar = t.this;
                if (tVar.e == null) {
                    return;
                }
                if (tVar.i == 1) {
                    tVar.a();
                    m0 m0Var = tVar.e;
                    PointF pointF = tVar.f2732b;
                    m0Var.f(pointF);
                    m0Var.l(pointF);
                    tVar.i = 2;
                    long longPressTimeout = (tVar.j + ViewConfiguration.getLongPressTimeout()) - SystemClock.elapsedRealtime();
                    if (longPressTimeout > 0) {
                        tVar.v.f3321b.postDelayed(tVar.k, longPressTimeout);
                        return;
                    }
                }
                if (tVar.i != 2 || tVar.e.f2486b.getParent() == null) {
                    return;
                }
                ViewGroup viewGroup = (ViewGroup) tVar.e.f2486b.getParent();
                viewGroup.performHapticFeedback(0);
                tVar.e.e();
                viewGroup.getParent().requestDisallowInterceptTouchEvent(true);
                tVar.i = 3;
                BaseActivity.fromContext(tVar.mThumbnailView.getContext()).getUserEventDispatcher().logActionOnControl(1, 15);
                tVar.b();
                tVar.c();
            }
        };
        this.l = new u(null);
        this.u = true;
        this.f2731a = taskThumbnailView.getContext();
        this.mThumbnailView.addOnAttachStateChangeListener(this);
        BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(this.f2731a);
        this.p = baseDraggingActivity;
        this.f2733c = baseDraggingActivity.getViewCache();
        this.m = this.p.getUserEventDispatcher();
        StatsLogManager statsLogManager = this.p.getStatsLogManager();
        this.n = statsLogManager;
        this.o = new c.b.a.b.b.k.k(this.m, statsLogManager);
        this.s = new c.b.a.b.b.k.j(taskOverlayFactoryImpl.f3320a);
    }

    public final void a() {
        FrameLayout frameLayout;
        m0 m0Var = this.e;
        if (m0Var == null || (frameLayout = m0Var.f2486b) == null || frameLayout.getParent() != null) {
            return;
        }
        m0 m0Var2 = this.e;
        boolean z = !this.u;
        m0Var2.w = z;
        m0Var2.s.f2460b.g = z;
        ViewGroup viewGroup = (ViewGroup) this.mThumbnailView.getParent();
        viewGroup.addView(this.e.f2486b, viewGroup.indexOfChild(this.mThumbnailView) + 1, this.mThumbnailView.getLayoutParams());
    }

    public final void b() {
        c.b.a.b.b.h.a aVar = this.f;
        if (aVar != null) {
            aVar.f2572b = true;
            this.f = null;
        }
    }

    public final void c() {
        TaskOverlayFactoryImpl.a("Clearing proactive suggestions.");
        ProactiveSuggestionWrapper proactiveSuggestionWrapper = (ProactiveSuggestionWrapper) this.mThumbnailView.getTaskView().clearContextualChip();
        if (proactiveSuggestionWrapper != null) {
            proactiveSuggestionWrapper.removeAllViews();
            this.f2733c.recycleView(proactiveSuggestionWrapper.f3319a, proactiveSuggestionWrapper);
        }
    }

    public final void d() {
        final FrameLayout frameLayout;
        m0 m0Var = this.e;
        if (m0Var == null || (frameLayout = m0Var.f2486b) == null) {
            return;
        }
        m0Var.d();
        final ViewGroup viewGroup = (ViewGroup) frameLayout.getParent();
        if (viewGroup != null) {
            viewGroup.setOnTouchListener(null);
            frameLayout.setVisibility(4);
            this.v.f3321b.post(new Runnable() { // from class: c.b.a.b.b.m.i
                @Override // java.lang.Runnable
                public final void run() {
                    t tVar = t.this;
                    ViewGroup viewGroup2 = viewGroup;
                    View view = frameLayout;
                    Objects.requireNonNull(tVar);
                    viewGroup2.removeViewInLayout(view);
                    view.setVisibility(0);
                    tVar.f2733c.recycleView(R.layout.suggest_view, view);
                }
            });
        } else {
            this.f2733c.recycleView(R.layout.suggest_view, frameLayout);
        }
        this.e = null;
    }

    public final void e() {
        PopupWindow popupWindow = this.h;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.h = null;
        }
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public SystemShortcut getModalStateSystemShortcut(WorkspaceItemInfo workspaceItemInfo) {
        s sVar = this.r;
        if (sVar == null) {
            return null;
        }
        Objects.requireNonNull(sVar);
        return new q(sVar, R.drawable.ic_select, R.string.action_select, sVar.f2730b.p, workspaceItemInfo);
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public SystemShortcut getScreenshotShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        s sVar = this.r;
        if (sVar != null) {
            return new r(sVar, R.drawable.ic_screenshot, R.string.action_screenshot, sVar.f2730b.p, itemInfo);
        }
        return null;
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public void initOverlay(Task task, ThumbnailData thumbnailData, Matrix matrix, boolean z) {
        c.b.a.b.b.h.b bVar;
        n nVar;
        int i;
        boolean z2;
        Task task2;
        Bundle userRestrictions;
        if (task == null || thumbnailData == null) {
            reset();
            return;
        }
        u uVar = this.l;
        Objects.requireNonNull(uVar);
        int i2 = task.key.id;
        float f = thumbnailData.scale;
        RectF rectF = uVar.f2737a;
        Rect rect = thumbnailData.insets;
        rectF.set((-rect.left) * f, (-rect.top) * f, thumbnailData.thumbnail.getWidth(), thumbnailData.thumbnail.getHeight());
        u.f2735c.set(uVar.f2738b);
        matrix.mapRect(u.e, u.f2736d);
        uVar.f2738b.set(u.e.width() / u.f2736d.width(), u.e.height() / u.f2736d.height());
        this.t = true;
        UserHandle of = UserHandle.of(task.key.userId);
        int i3 = task.key.id;
        UserManager userManager = (UserManager) this.v.f3320a.getSystemService("user");
        this.u = (userManager == null || (userRestrictions = userManager.getUserRestrictions(of)) == null) ? true : !userRestrictions.getBoolean("no_cross_profile_copy_paste");
        boolean isRunningTask = this.mThumbnailView.getTaskView().isRunningTask();
        boolean isRealSnapshot = this.mThumbnailView.isRealSnapshot();
        Context context = this.v.f3320a;
        final TaskThumbnailView taskThumbnailView = this.mThumbnailView;
        Objects.requireNonNull(taskThumbnailView);
        n nVar2 = new n(context, new Supplier() { // from class: c.b.a.b.b.m.a
            @Override // java.util.function.Supplier
            public final Object get() {
                return TaskThumbnailView.this.getThumbnail();
            }
        }, this.p);
        c.b.a.b.b.k.b bVar2 = new c.b.a.b.b.k.b(nVar2, Utilities.IS_DEBUG_DEVICE);
        P c2 = this.v.c(of);
        if (getActionsView() != null) {
            boolean z3 = FeatureFlags.ENABLE_OVERVIEW_SELECTIONS.get() && FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(this.p) && c2 != null;
            RecentsView recentsView = (RecentsView) this.p.getOverviewPanel();
            Objects.requireNonNull(recentsView);
            m mVar = new m(recentsView);
            Task.TaskKey taskKey = task.key;
            c.b.a.b.b.k.j jVar = this.s;
            final TaskThumbnailView taskThumbnailView2 = this.mThumbnailView;
            Objects.requireNonNull(taskThumbnailView2);
            nVar = nVar2;
            i = i3;
            this.q = new c.b.a.b.b.k.i(taskKey, this, nVar2, jVar, bVar2, new Supplier() { // from class: c.b.a.b.b.m.a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return TaskThumbnailView.this.getThumbnail();
                }
            }, this.m, mVar, z3, isRealSnapshot, Utilities.getPrefs(this.p), z, this.n);
            bVar = null;
            s sVar = new s(this, null);
            this.r = sVar;
            c.b.a.b.b.k.i iVar = this.q;
            iVar.o = sVar;
            ((NexusOverviewActionsView) sVar.f2730b.getActionsView()).f3303c.setVisibility(iVar.i ? 0 : 8);
            s sVar2 = iVar.o;
            c.b.a.b.b.k.h hVar = iVar.p;
            ((NexusOverviewActionsView) sVar2.f2730b.getActionsView()).setCallbacks(hVar);
            sVar2.f2729a = hVar;
            ((NexusOverviewActionsView) iVar.o.f2730b.getActionsView()).updateDisabledFlags(2, iVar.l);
            if (!iVar.i || iVar.k.getBoolean("launcher.select_tip_seen", false)) {
                z2 = true;
            } else {
                NexusOverviewActionsView nexusOverviewActionsView = (NexusOverviewActionsView) iVar.o.f2730b.getActionsView();
                int[] iArr = new int[2];
                nexusOverviewActionsView.f3303c.getLocationOnScreen(iArr);
                ArrowTipView arrowTipView = new ArrowTipView(nexusOverviewActionsView.getContext());
                z2 = true;
                arrowTipView.show(nexusOverviewActionsView.getResources().getString(R.string.select_tooltip), 8388611, (nexusOverviewActionsView.f3303c.getWidth() / 2) + iArr[0], iArr[1]);
                arrowTipView.bringToFront();
                iVar.k.edit().putBoolean("launcher.select_tip_seen", true).apply();
            }
        } else {
            bVar = null;
            nVar = nVar2;
            i = i3;
            z2 = true;
        }
        if (c2 == null) {
            reset();
            return;
        }
        if (FeatureFlags.ENABLE_SUGGESTED_ACTIONS_OVERVIEW.get() && this.v.f3322c && isRealSnapshot) {
            b();
            this.f = new c.b.a.b.b.h.a(new j(this));
            u uVar2 = this.l;
            RectF rectF2 = uVar2.f2737a;
            PointF pointF = uVar2.f2738b;
            long currentTimeMillis = System.currentTimeMillis();
            task2 = task;
            ComponentName componentName = task2.topActivity;
            if (componentName == null) {
                componentName = new ComponentName("", "");
            }
            c2.d(rectF2, pointF, currentTimeMillis, null, i, null, componentName, this.f, nVar, isRunningTask);
        } else {
            task2 = task;
        }
        c.b.a.b.b.h.b bVar3 = this.f2734d;
        if (bVar3 != null) {
            bVar3.f2574b = z2;
            this.f2734d = bVar;
        }
        if (FeatureFlags.ENABLE_OVERVIEW_SELECTIONS.get() && isRealSnapshot) {
            this.f2734d = new c.b.a.b.b.h.b(new Consumer() { // from class: c.b.a.b.b.m.h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    t tVar = t.this;
                    m0 m0Var = (m0) obj;
                    tVar.d();
                    tVar.e = m0Var;
                    m0Var.k(tVar);
                    tVar.e.j(tVar);
                    tVar.e.z = tVar.mThumbnailView.getTaskView().getTaskCornerRadius();
                    tVar.e.f2486b.setLayoutDirection(0);
                    ((ViewGroup) tVar.mThumbnailView.getParent()).setOnTouchListener(tVar);
                }
            });
            FrameLayout frameLayout = (FrameLayout) this.f2733c.getView(R.layout.suggest_view, this.mThumbnailView.getContext(), (ViewGroup) this.mThumbnailView.getParent());
            u uVar3 = this.l;
            RectF rectF3 = uVar3.f2737a;
            PointF pointF2 = uVar3.f2738b;
            long currentTimeMillis2 = System.currentTimeMillis();
            ComponentName componentName2 = task2.topActivity;
            if (componentName2 == null) {
                componentName2 = new ComponentName("", "");
            }
            c2.e(frameLayout, rectF3, pointF2, currentTimeMillis2, null, i, null, componentName2, this.f2734d, nVar, this.o, new c.b.a.b.b.k.e(this.f2731a), this.t);
        }
        WellbeingModel.INSTANCE.b(this.v.f3320a);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        c.b.a.b.b.k.i iVar;
        e();
        if (this.e == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.v.f3321b.removeCallbacks(this.k);
            if (this.t) {
                this.f2732b.set(motionEvent.getX() - this.mThumbnailView.getLeft(), motionEvent.getY() - this.mThumbnailView.getTop());
                this.j = SystemClock.elapsedRealtime();
                this.i = 1;
                this.v.f3321b.postDelayed(this.k, ViewConfiguration.getLongPressTimeout() / 2);
            } else {
                this.i = 0;
            }
        }
        if (this.i == 3) {
            motionEvent.setAction(3);
            view.onTouchEvent(motionEvent);
            motionEvent.setAction(action);
            this.i = 4;
        }
        if (this.i != 4 && ((iVar = this.q) == null || !iVar.n)) {
            view.onTouchEvent(motionEvent);
        }
        if (action == 1 || action == 3) {
            if (this.i == 2) {
                this.e.d();
            }
            this.i = 0;
            this.v.f3321b.removeCallbacks(this.k);
        }
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        e();
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public void reset() {
        this.t = false;
        c.b.a.b.b.k.i iVar = this.q;
        if (iVar != null) {
            iVar.a();
        }
        c.b.a.b.b.h.b bVar = this.f2734d;
        if (bVar != null) {
            bVar.f2574b = true;
            this.f2734d = null;
        }
        b();
        c();
        d();
        e();
    }

    @Override // com.android.quickstep.TaskOverlayFactory.TaskOverlay
    public void resetModalVisuals() {
        c.b.a.b.b.k.i iVar = this.q;
        if (iVar != null) {
            iVar.a();
        }
    }
}
