package c.b.a.b.b.l.Y;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentCallbacks;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.view.DragEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import b.l.W;
import c.b.a.b.b.l.V;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.dragndrop.BaseItemDragListener;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragDriver;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.SystemUiController;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.qsb.longpopup.SearchOptionsPopup;

/* loaded from: classes.dex */
public class h extends Dialog implements View.OnDragListener, ViewTreeObserver.OnDrawListener, DialogInterface.OnDismissListener, DragOptions.PreDragCondition, DragController.DragListener, Application.ActivityLifecycleCallbacks, ComponentCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final NexusLauncherActivity f2659a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f2660b;

    /* renamed from: c, reason: collision with root package name */
    public final V f2661c;

    /* renamed from: d, reason: collision with root package name */
    public final Point f2662d;
    public final Handler e;
    public final SystemUiController f;
    public final Application g;
    public final Configuration h;
    public final DragController i;
    public final float j;
    public boolean k;
    public final g l;
    public final i m;
    public boolean n;

    public h(NexusLauncherActivity nexusLauncherActivity, V v, Rect rect, Point point, int i) {
        super(nexusLauncherActivity, i);
        this.f2659a = nexusLauncherActivity;
        this.f2661c = v;
        this.f2660b = new Rect(rect);
        this.f2662d = new Point(point);
        this.e = new Handler();
        this.h = new Configuration(this.f2659a.getResources().getConfiguration());
        this.j = nexusLauncherActivity.getResources().getDimension(R.dimen.deep_shortcuts_start_drag_threshold);
        NexusLauncherActivity nexusLauncherActivity2 = this.f2659a;
        this.i = nexusLauncherActivity2.mDragController;
        this.g = (Application) nexusLauncherActivity2.getApplicationContext();
        this.l = new g(this, getContext());
        this.m = new i(this, this.l);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.flags |= 8650752;
        attributes.dimAmount = RecentsState.NO_OFFSET;
        attributes.gravity = 3;
        attributes.type = 4;
        window.setAttributes(attributes);
        this.m.setOnDragListener(this);
        setContentView(this.m);
        this.m.setSystemUiVisibility(1792);
        SystemUiController systemUiController = new SystemUiController(window);
        this.f = systemUiController;
        systemUiController.updateUiState(0, W.getAttrBoolean(this.f2659a, R.attr.isWorkspaceDarkText));
        this.f.updateUiState(1, !W.getAttrBoolean(this.f2659a, R.attr.isMainColorDark));
        this.g.registerActivityLifecycleCallbacks(this);
        this.g.registerComponentCallbacks(this);
        setOnDismissListener(this);
        show();
        this.n = true;
        this.m.getViewTreeObserver().addOnDrawListener(this);
    }

    public static h b(NexusLauncherActivity nexusLauncherActivity, V v, Intent intent) {
        Point point;
        if (intent.getBooleanExtra("partial_long_press", false) && (point = (Point) intent.getParcelableExtra("icon_touch_offset")) != null) {
            return new h(nexusLauncherActivity, v, intent.getSourceBounds(), point, W.getActivityThemeRes(nexusLauncherActivity));
        }
        return null;
    }

    public void a() {
        if (this.k) {
            return;
        }
        this.e.post(new Runnable() { // from class: c.b.a.b.b.l.Y.e
            @Override // java.lang.Runnable
            public final void run() {
                h.this.dismiss();
            }
        });
    }

    public void c(BaseItemDragListener baseItemDragListener, View view) {
        this.f2659a.f3288a.f2534b.a(false);
        this.f2659a.mOverlayManager.hideOverlay(50);
        baseItemDragListener.init((Launcher) this.f2659a, true);
        view.startDragAndDrop(new ClipData(new ClipDescription("", new String[]{baseItemDragListener.getMimeType()}), new ClipData.Item("")), new f(this, view), null, 256);
        a();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (activity == this.f2659a) {
            a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (activity == this.f2659a) {
            a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (activity == this.f2659a) {
            a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (activity == this.f2659a) {
            a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (activity == this.f2659a) {
            a();
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if ((configuration.diff(this.h) & 1152) != 0) {
            a();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        ((c.b.a.b.b.e) this.f2659a.mOverlayManager).g = null;
        this.g.unregisterActivityLifecycleCallbacks(this);
        this.g.unregisterComponentCallbacks(this);
        this.i.mListeners.remove(this);
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(View view, DragEvent dragEvent) {
        if (dragEvent.getAction() != 1) {
            DragDriver dragDriver = this.i.mDragDriver;
            return dragDriver != null && dragDriver.onDragEvent(dragEvent);
        }
        V v = this.f2661c;
        v.mLauncher = this.f2659a;
        return v.onDragStart(dragEvent, this);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        this.k = false;
        a();
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        this.k = true;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        this.e.post(new Runnable() { // from class: c.b.a.b.b.l.Y.a
            @Override // java.lang.Runnable
            public final void run() {
                h hVar = h.this;
                hVar.m.getViewTreeObserver().removeOnDrawListener(hVar);
            }
        });
        this.e.post(new Runnable() { // from class: c.b.a.b.b.l.Y.b
            @Override // java.lang.Runnable
            public final void run() {
                h hVar = h.this;
                if (hVar.n) {
                    hVar.n = false;
                    Rect rect = new Rect(hVar.f2660b);
                    Point point = hVar.f2662d;
                    rect.offset(point.x, point.y);
                    int[] iArr = new int[2];
                    hVar.m.getLocationOnScreen(iArr);
                    rect.offset(-iArr[0], -iArr[1]);
                    rect.bottom = rect.width() + rect.top;
                    LauncherActivityInfo launcherActivityInfo = hVar.f2661c.f2646a;
                    AppInfo appInfo = new AppInfo(hVar.getContext(), launcherActivityInfo, launcherActivityInfo.getUser());
                    BubbleTextView bubbleTextView = (BubbleTextView) hVar.f2659a.getLayoutInflater().inflate(R.layout.all_apps_icon, (ViewGroup) null);
                    bubbleTextView.setTag(appInfo);
                    LauncherAppState.getInstance(hVar.f2659a).mIconCache.updateIconInBackground(bubbleTextView, appInfo);
                    ((c.b.a.b.b.e) hVar.f2659a.mOverlayManager).g = SearchOptionsPopup.g(bubbleTextView, hVar.m, hVar, rect);
                }
            }
        });
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public void onPreDragEnd(DropTarget.DragObject dragObject, boolean z) {
        if (z) {
            this.n = false;
            AbstractFloatingView.closeAllOpenViews(this.f2659a, false);
            this.f.updateUiState(1, 0);
            this.f2659a.mOverlayManager.hideOverlay(50);
            this.f2659a.f3288a.f2534b.a(false);
            this.i.mListeners.add(this);
        }
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public void onPreDragStart(DropTarget.DragObject dragObject) {
    }

    @Override // com.android.launcher3.dragndrop.DragOptions.PreDragCondition
    public boolean shouldStartDrag(double d2) {
        return d2 > ((double) this.j);
    }
}
