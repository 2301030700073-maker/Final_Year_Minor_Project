package c.b.a.b.b.f;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.IntProperty;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import c.b.a.b.b.l.H;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.statemanager.StateManager;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* loaded from: classes.dex */
public class f extends View implements ViewGroup.OnHierarchyChangeListener, StateManager.StateListener {
    public static final boolean v = Utilities.isPropertyEnabled("DoodleLogging");
    public static final IntProperty w = new c("frameNumber");

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f2547a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f2548b;

    /* renamed from: c, reason: collision with root package name */
    public d.a.a.a.a.a.b f2549c;

    /* renamed from: d, reason: collision with root package name */
    public d.a.a.a.a.a.c f2550d;
    public int e;
    public int f;
    public final Rect g;
    public final RectF h;
    public final Path i;
    public float j;
    public AnimatorSet k;
    public Launcher l;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;
    public int q;
    public boolean r;
    public boolean s;
    public final BroadcastReceiver t;
    public final b u;

    public f(Context context) {
        super(context);
        this.g = new Rect();
        this.h = new RectF();
        this.i = new Path();
        this.o = false;
        this.p = 0;
        this.q = 0;
        this.s = false;
        this.t = new d(this);
        this.l = Launcher.getLauncher(context);
        this.m = Utilities.isRtl(getResources());
        this.f2547a = context.getSharedPreferences("pref_doodle_starts", 0);
        this.u = new b(context);
    }

    public static SharedPreferences d(Context context) {
        return context.getSharedPreferences("pref_doodle_starts", 0);
    }

    public final boolean a() {
        if (v) {
            StringBuilder f = c.a.c.a.a.f("canPlay#state=");
            f.append(((LauncherState) this.l.getStateManager().mState).ordinal);
            Log.d("DoodleView", f.toString());
        }
        return (this.l.isInState(LauncherState.NORMAL) || (this.f2549c.j && this.l.isInState(LauncherState.OVERVIEW))) && !this.r && isShown() && hasWindowFocus() && AbstractFloatingView.getTopOpenView(this.l) == null;
    }

    public final void b() {
        if (this.n) {
            b bVar = this.u;
            int i = this.e;
            Objects.requireNonNull(bVar);
            long currentTimeMillis = System.currentTimeMillis() - bVar.f2541b;
            bVar.f2540a.edit().putString(String.valueOf(bVar.f2541b), currentTimeMillis + "," + i).apply();
        }
        AnimatorSet animatorSet = this.k;
        if (animatorSet != null) {
            animatorSet.end();
        }
        this.n = false;
        this.o = false;
        this.f = 0;
        this.e = 0;
        this.r = false;
        invalidate();
    }

    public Animator c(H h, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(h, H.Q, z ? new float[]{RecentsState.NO_OFFSET, 1.0f} : new float[]{1.0f, RecentsState.NO_OFFSET});
        ofFloat.setInterpolator(Interpolators.LINEAR);
        ofFloat.setDuration(300L);
        return ofFloat;
    }

    public final void e() {
        if (v) {
            Log.d("DoodleView", "pause");
        }
        this.k.pause();
    }

    public final void f() {
        boolean a2 = a();
        if (v) {
            Log.d("DoodleView", "tryPlay#canPlay=" + a2 + ", hasStarted=" + this.n);
        }
        if (a2) {
            if (this.n) {
                this.k.resume();
            } else {
                postDelayed(new Runnable() { // from class: c.b.a.b.b.f.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        f fVar = f.this;
                        boolean z = false;
                        if (!fVar.o && !fVar.n && fVar.a()) {
                            fVar.o = true;
                            int i = fVar.p + 1;
                            d.a.a.a.a.a.e eVar = fVar.f2549c.i;
                            if (i <= eVar.f3538c) {
                                if (!(eVar.f3536a == 0) || !fVar.s) {
                                    fVar.s = true;
                                    int i2 = fVar.p;
                                    int i3 = fVar.q;
                                    if ((i2 + i3) % fVar.f2549c.i.f3537b != 0) {
                                        fVar.q = i3 + 1;
                                    } else {
                                        z = true;
                                    }
                                }
                            }
                        }
                        if (z) {
                            fVar.n = true;
                            fVar.p++;
                            b bVar = fVar.u;
                            Objects.requireNonNull(bVar);
                            bVar.f2541b = System.currentTimeMillis();
                            fVar.k.start();
                        }
                    }
                }, this.f2549c.h);
            }
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.l.mDragLayer.setOnHierarchyChangeListener(this);
        this.l.getStateManager().mListeners.add(this);
        this.l.registerReceiver(this.t, new IntentFilter("android.intent.action.SCREEN_ON"));
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (view2 instanceof AbstractFloatingView) {
            e();
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        f();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.l.mDragLayer.setOnHierarchyChangeListener(null);
        this.l.getStateManager().mListeners.remove(this);
        this.l.unregisterReceiver(this.t);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.i);
        d.a.a.a.a.a.d dVar = this.f2550d.f3532c[this.f];
        int length = dVar.f3534a.length;
        for (int i = 0; i < length; i++) {
            d.a.a.a.a.a.a aVar = dVar.f3534a[i];
            Rect rect = this.g;
            int i2 = aVar.f3524c;
            int i3 = aVar.f3525d;
            rect.set(i2, i3, aVar.e + i2, aVar.f + i3);
            float height = getHeight() / this.f2550d.f3531b;
            float f = aVar.e * height;
            float f2 = aVar.f3522a * height;
            float f3 = aVar.f3523b * height;
            float f4 = f2 + f;
            float f5 = (aVar.f * height) + f3;
            canvas.save();
            if (this.m) {
                if (aVar.g) {
                    canvas.translate(getWidth(), RecentsState.NO_OFFSET);
                    canvas.scale(-1.0f, 1.0f);
                } else {
                    f4 = getWidth() - f2;
                    f2 = f4 - f;
                }
            }
            this.h.set(f2, f3, f4, f5);
            canvas.drawBitmap(this.f2548b, this.g, this.h, (Paint) null);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.i.reset();
        int measuredHeight = getMeasuredHeight();
        float f = this.j;
        if (f < RecentsState.NO_OFFSET) {
            f = measuredHeight / 2.0f;
        }
        float f2 = f;
        this.i.addRoundRect(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, getMeasuredWidth(), measuredHeight, f2, f2, Path.Direction.CW);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        if (v) {
            StringBuilder f = c.a.c.a.a.f("onStateTransitionComplete#finalState=");
            f.append(launcherState.ordinal);
            Log.d("DoodleView", f.toString());
        }
        this.r = false;
        f();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionStart(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        if (v) {
            StringBuilder f = c.a.c.a.a.f("onStateTransitionStart#toState=");
            f.append(launcherState.ordinal);
            Log.d("DoodleView", f.toString());
        }
        this.r = true;
        e();
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (z) {
            f();
        } else {
            e();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (v) {
            Log.d("DoodleView", "onWindowFocusChanged#" + z);
        }
        if (z) {
            f();
        } else {
            e();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (v) {
            Log.d("DoodleView", "onWindowVisibilityChanged#visibility=" + i);
        }
        if (i != 0) {
            b();
            this.f2547a.edit().putInt("num_times_started", this.p).putInt("num_times_couldve_started", this.q).apply();
            if (v) {
                StringBuilder f = c.a.c.a.a.f("edit: numTimesStarted= ");
                f.append(this.p);
                f.append(", mNumTimesCouldHaveStarted=");
                f.append(this.q);
                Log.d("DoodleView", f.toString());
            }
        }
    }
}
