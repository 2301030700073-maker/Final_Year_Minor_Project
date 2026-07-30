package c.b.a.b.b.l;

import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.WindowId;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.graphics.NinePatchDrawHelper;
import com.android.launcher3.icons.ShadowGenerator;
import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$TaskSwitcherContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.util.TransformingTouchDelegate;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.qsb.AllAppsQsbLayout;
import java.util.List;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public abstract class A extends FrameLayout implements Insettable, View.OnLongClickListener, O {
    public static final Rect F = new Rect();
    public static final FloatProperty G = new C0404s("shadowProgress");
    public static final FloatProperty H = new C0405t("backgroundPaddingProgress");
    public int A;
    public float B;
    public WindowId.FocusObserver C;
    public int D;
    public float E;

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f2617a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f2618b;

    /* renamed from: c, reason: collision with root package name */
    public final NinePatchDrawHelper f2619c;

    /* renamed from: d, reason: collision with root package name */
    public final TransformingTouchDelegate f2620d;
    public final ActivityContext e;
    public final P f;
    public final int g;
    public final int h;
    public final int i;
    public final boolean j;
    public final int k;
    public final int l;
    public final int m;
    public final boolean n;
    public boolean o;
    public Paint p;
    public View q;
    public float r;
    public Paint s;
    public y t;
    public y u;
    public float v;
    public C0408w w;
    public TextView x;
    public String y;
    public boolean z;

    public A(Context context) {
        this(context, null);
    }

    public static void m(A a2, Bitmap bitmap, Canvas canvas, int i) {
        int paddingRight;
        int i2;
        int width = (bitmap.getWidth() - (a2.j() + 20)) / 2;
        int paddingTop = a2.getPaddingTop() - ((bitmap.getHeight() - a2.j()) / 2);
        if (a2.j) {
            i2 = a2.getPaddingLeft() - width;
            paddingRight = a2.g() + a2.getPaddingLeft() + width;
        } else {
            int paddingRight2 = ((i - a2.getPaddingRight()) - a2.g()) - width;
            paddingRight = width + (i - a2.getPaddingRight());
            i2 = paddingRight2;
        }
        a2.f2619c.draw(bitmap, canvas, i2, paddingTop, paddingRight);
    }

    @Override // c.b.a.b.b.l.O
    public void a() {
        float applyDimension = TypedValue.applyDimension(1, this.f.f.getFloat("pixel_2018_qsb_mic_stroke_width_dp", RecentsState.NO_OFFSET), getResources().getDisplayMetrics());
        this.r = applyDimension;
        if (applyDimension > RecentsState.NO_OFFSET) {
            if (this.s == null) {
                this.s = new Paint(1);
            }
            this.s.setStrokeWidth(this.r);
            this.s.setStyle(Paint.Style.STROKE);
            this.s.setColor(-4341306);
        }
        this.z = this.f.f.getBoolean("pixel_2018_qsb_hint_is_for_assistant", false);
        String string = this.f.f.getString("pixel_2017_qsb_hint_text_value", "");
        String charSequence = (TextUtils.isEmpty(string) || !b()) ? string : TextUtils.ellipsize(string, this.f2617a, this.m, TextUtils.TruncateAt.END).toString();
        this.y = charSequence;
        this.x.setText(charSequence);
        int i = 17;
        if (b()) {
            i = 8388629;
            if (this.j) {
                this.x.setPadding(f(), 0, 0, 0);
            } else {
                this.x.setPadding(0, 0, f(), 0);
            }
        }
        this.x.setGravity(i);
        ((FrameLayout.LayoutParams) this.x.getLayoutParams()).gravity = i;
        this.x.setContentDescription(string);
        ColorStateList valueOf = ColorStateList.valueOf(b.l.W.getAttrColor(getContext(), R.attr.hotseatQsbFeedbackColor));
        this.w = new C0408w(valueOf, null, new C0409x(this.B));
        r();
        setBackground(new InsetDrawable((Drawable) this.w, this.l));
        RippleDrawable rippleDrawable = new RippleDrawable(valueOf, null, new C0409x(this.B));
        int i2 = this.l;
        rippleDrawable.setLayerInset(0, 0, i2, 0, i2);
        this.q.setBackground(rippleDrawable);
        this.q.getLayoutParams().width = g();
        this.q.setPadding(this.j ? 0 : g() - this.i, 0, this.j ? g() - this.i : 0, 0);
        this.q.requestLayout();
        invalidate();
    }

    public boolean b() {
        return this.z || this.o;
    }

    public void c(Bitmap bitmap, Canvas canvas, int i) {
        int width = (bitmap.getWidth() - (j() + 20)) / 2;
        int paddingTop = getPaddingTop() - ((bitmap.getHeight() - j()) / 2);
        int paddingLeft = getPaddingLeft() - width;
        int paddingRight = (i - getPaddingRight()) + width;
        if (this.j) {
            paddingLeft += k();
        } else {
            paddingRight -= k();
        }
        float f = (1.0f - this.E) * this.D * 0.5f;
        this.f2619c.draw(bitmap, canvas, (int) (paddingLeft + f), paddingTop, (int) (paddingRight - f));
    }

    public Bitmap d(float f, float f2, int i) {
        int j = j();
        int i2 = j + 20;
        ShadowGenerator.Builder builder = new ShadowGenerator.Builder(i);
        builder.shadowBlur = f;
        builder.keyShadowDistance = f2;
        if (this.n) {
            builder.ambientShadowAlpha *= 2;
        }
        builder.keyShadowAlpha = builder.ambientShadowAlpha;
        float f3 = this.B;
        if (f3 < RecentsState.NO_OFFSET) {
            f3 = j / 2.0f;
        }
        return builder.createPill(i2, j, f3);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int width = getWidth();
        n();
        this.t.a(canvas, width);
        y yVar = this.u;
        if (yVar != null) {
            yVar.a(canvas, width);
        }
        if (this.r > RecentsState.NO_OFFSET && this.q.getVisibility() == 0) {
            int paddingLeft = this.j ? getPaddingLeft() : (getWidth() - getPaddingRight()) - g();
            int paddingTop = getPaddingTop();
            int g = this.j ? g() + getPaddingLeft() : getWidth() - getPaddingRight();
            int paddingBottom = LauncherAppState.getIDP(getContext()).iconBitmapSize - getPaddingBottom();
            float f = (paddingBottom - paddingTop) * 0.5f;
            int i = (int) (this.r / 2.0f);
            if (!this.o) {
                if (this.p == null) {
                    this.p = new Paint(1);
                }
                this.p.setColor(this.t.f2700c);
                canvas.drawRoundRect(paddingLeft + i, paddingTop + i, g - i, (paddingBottom - i) + 1, f, f, this.p);
            }
            canvas.drawRoundRect(paddingLeft + i, paddingTop + i, g - i, (paddingBottom - i) + 1, f, f, this.s);
        }
        super.draw(canvas);
    }

    public int e(DeviceProfile deviceProfile, int i, int i2) {
        int i3;
        int i4;
        AllAppsQsbLayout allAppsQsbLayout = (AllAppsQsbLayout) this;
        if (deviceProfile.isVerticalBarLayout()) {
            i3 = deviceProfile.availableWidthPx - allAppsQsbLayout.b0.getActiveRecyclerView().getPaddingLeft();
            i4 = allAppsQsbLayout.b0.getActiveRecyclerView().getPaddingRight();
        } else {
            Rect hotseatLayoutPadding = deviceProfile.getHotseatLayoutPadding();
            i3 = deviceProfile.widthPx - hotseatLayoutPadding.left;
            i4 = hotseatLayoutPadding.right;
        }
        int i5 = i3 - i4;
        return getPaddingRight() + getPaddingLeft() + (i5 - ((i5 / i2) - i));
    }

    public int f() {
        if (this.o) {
            return this.i;
        }
        return this.g + this.i;
    }

    public int g() {
        return (!this.o || TextUtils.isEmpty(this.y)) ? this.i : ((int) this.f2617a.measureText(this.y)) + this.g + this.i;
    }

    public NexusLauncherActivity h() {
        return (NexusLauncherActivity) Launcher.cast(this.e);
    }

    public final Bitmap i(int i, SparseArray sparseArray) {
        Bitmap bitmap = (Bitmap) this.f2618b.get(i);
        if (bitmap == null) {
            bitmap = (Bitmap) sparseArray.get(i);
        }
        if (bitmap == null) {
            float f = LauncherAppState.getIDP(getContext()).iconBitmapSize;
            bitmap = d(0.010416667f * f, f * 0.020833334f, i);
        }
        this.f2618b.put(i, bitmap);
        return bitmap;
    }

    public int j() {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.qsb_widget_height);
        int i = this.l;
        return (dimensionPixelSize - i) - i;
    }

    public int k() {
        if (this.o) {
            return g() + this.h;
        }
        return 0;
    }

    public boolean l() {
        return false;
    }

    public final void n() {
        if (this.t.f2701d != null) {
            return;
        }
        SparseArray clone = this.f2618b.clone();
        this.f2618b.clear();
        y yVar = this.t;
        yVar.f2701d = i(yVar.f2699b, clone);
        y yVar2 = this.t;
        yVar2.e = i(yVar2.f2700c, clone);
        y yVar3 = this.u;
        if (yVar3 != null) {
            yVar3.f2701d = i(yVar3.f2699b, clone);
            y yVar4 = this.u;
            yVar4.e = i(yVar4.f2700c, clone);
        }
    }

    public void o(View view) {
        NexusLauncherActivity h = h();
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        int i = ((LauncherState) h.getStateManager().mState).containerType;
        int i2 = 4;
        if (i != 1) {
            if (i == 4) {
                LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer = LauncherAtom$AllAppsContainer.DEFAULT_INSTANCE;
                newBuilder.copyOnWrite();
                LauncherAtom$ContainerInfo.access$4700((LauncherAtom$ContainerInfo) newBuilder.instance, launcherAtom$AllAppsContainer);
            } else if (i == 12) {
                i2 = 3;
                LauncherAtom$TaskSwitcherContainer launcherAtom$TaskSwitcherContainer = LauncherAtom$TaskSwitcherContainer.DEFAULT_INSTANCE;
                newBuilder.copyOnWrite();
                LauncherAtom$ContainerInfo.access$7500((LauncherAtom$ContainerInfo) newBuilder.instance, launcherAtom$TaskSwitcherContainer);
            }
            h.getStatsLogManager().logger().withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).withSrcState(i2).withDstState(1).log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_TAP);
            q("", this.A);
        }
        LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
        newBuilder2.setPageIndex(h.mWorkspace.getCurrentPage());
        newBuilder.copyOnWrite();
        LauncherAtom$ContainerInfo.access$3600((LauncherAtom$ContainerInfo) newBuilder.instance, newBuilder2);
        i2 = 2;
        h.getStatsLogManager().logger().withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).withSrcState(i2).withDstState(1).log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_TAP);
        q("", this.A);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2620d.mDelegateView = this.q;
        this.f.f2636a.add(this);
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f.f2636a.remove(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.q = findViewById(R.id.mic_icon);
        this.x = (TextView) findViewById(R.id.qsb_hint);
        a();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.q.getHitRect(F);
        if (this.j) {
            F.left -= this.l;
        } else {
            F.right += this.l;
        }
        TransformingTouchDelegate transformingTouchDelegate = this.f2620d;
        Rect rect = F;
        transformingTouchDelegate.mBounds.set(rect.left, rect.top, rect.right, rect.bottom);
        transformingTouchDelegate.mTouchCheckBounds.set(transformingTouchDelegate.mBounds);
        transformingTouchDelegate.mTouchCheckBounds.inset(-0.0f, -0.0f);
        r();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view != this) {
            return false;
        }
        if (!getWindowId().isFocused()) {
            getWindowId().registerFocusObserver(this.C);
        }
        return p();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        DeviceProfile deviceProfile = this.e.getDeviceProfile();
        int size = View.MeasureSpec.getSize(i2);
        int round = Math.round(deviceProfile.iconSizePx * 0.92f);
        int round2 = Math.round(deviceProfile.allAppsIconSizePx * 0.92f);
        int e = e(deviceProfile, round, deviceProfile.inv.numHotseatIcons);
        int e2 = e(deviceProfile, round2, deviceProfile.inv.numAllAppsColumns);
        if (getResources().getConfiguration().orientation == 2) {
            e = e2;
            round = round2;
        }
        this.D = e2 - e;
        setMeasuredDimension(e2, size);
        int min = Math.min(round2, round);
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            measureChildWithMargins(childAt, i, 0, i2, 0);
            if (childAt.getMeasuredWidth() <= min || (!(childAt instanceof TextView) && !(childAt instanceof c.b.a.b.b.f.f))) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int measuredWidth = (this.D / 2) + ((min - childAt.getMeasuredWidth()) / 2);
                layoutParams.rightMargin = measuredWidth;
                layoutParams.leftMargin = measuredWidth;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004b, code lost:
    
        if (r2 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004e, code lost:
    
        r3 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
    
        r4.A = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (java.lang.Float.compare(r5.getX(), l() ? r4.k : r0.getRight()) <= 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
    
        if (java.lang.Float.compare(r5.getX(), l() ? getWidth() - r4.k : r0.getLeft()) >= 0) goto L12;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getActionMasked()
            if (r0 != 0) goto L51
            r0 = 2131296418(0x7f0900a2, float:1.8210752E38)
            android.view.View r0 = r4.findViewById(r0)
            boolean r1 = r4.j
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L32
            boolean r1 = r4.l()
            if (r1 == 0) goto L21
            int r0 = r4.getWidth()
            int r1 = r4.k
            int r0 = r0 - r1
            goto L25
        L21:
            int r0 = r0.getLeft()
        L25:
            float r0 = (float) r0
            float r1 = r5.getX()
            int r0 = java.lang.Float.compare(r1, r0)
            if (r0 < 0) goto L4b
        L30:
            r2 = r3
            goto L4b
        L32:
            boolean r1 = r4.l()
            if (r1 == 0) goto L3b
            int r0 = r4.k
            goto L3f
        L3b:
            int r0 = r0.getRight()
        L3f:
            float r0 = (float) r0
            float r1 = r5.getX()
            int r0 = java.lang.Float.compare(r1, r0)
            if (r0 > 0) goto L4b
            goto L30
        L4b:
            if (r2 == 0) goto L4e
            goto L4f
        L4e:
            r3 = 2
        L4f:
            r4.A = r3
        L51:
            boolean r4 = super.onTouchEvent(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.l.A.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean p() {
        String str;
        ClipData primaryClip = ((ClipboardManager) getContext().getSystemService(ClipboardManager.class)).getPrimaryClip();
        if (primaryClip != null) {
            for (int i = 0; i < primaryClip.getItemCount(); i++) {
                CharSequence coerceToText = primaryClip.getItemAt(i).coerceToText(getContext());
                if (!TextUtils.isEmpty(coerceToText)) {
                    str = coerceToText.toString();
                    break;
                }
            }
        }
        str = null;
        Intent addFlags = new Intent("com.google.android.apps.gsa.nowoverlayservice.PIXEL_DOODLE_QSB_SETTINGS").setPackage("com.google.android.googlequicksearchbox").addFlags(268435456);
        List<ResolveInfo> queryBroadcastReceivers = ((H) this).getContext().getPackageManager().queryBroadcastReceivers(addFlags, 0);
        Intent intent = queryBroadcastReceivers != null && !queryBroadcastReceivers.isEmpty() ? addFlags : null;
        if (TextUtils.isEmpty(str) && intent == null) {
            return false;
        }
        startActionMode(new ActionModeCallbackC0407v(this, str, intent), 1);
        return true;
    }

    public abstract void q(String str, int i);

    public void r() {
        if (this.w == null) {
            return;
        }
        int i = (int) (((1.0f - this.E) * this.D) / 2.0f);
        this.w.setLayerInset(0, i + (this.j ? k() : 0), 0, i + (this.j ? 0 : k()), 0);
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        requestLayout();
    }

    public A(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public A(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2617a = new TextPaint();
        this.f2618b = new SparseArray(2);
        this.f2619c = new NinePatchDrawHelper();
        this.t = new y(this, new C0391e(this), 0, 0);
        this.u = null;
        this.v = RecentsState.NO_OFFSET;
        this.A = 0;
        this.D = 0;
        this.E = RecentsState.NO_OFFSET;
        this.e = ActivityContext.lookupContext(context);
        this.f = (P) P.l.b(context);
        this.n = b.l.W.getAttrBoolean(context, R.attr.isWorkspaceDarkText);
        this.C = new C0406u(this);
        setOnLongClickListener(this);
        this.k = getResources().getDimensionPixelSize(R.dimen.qsb_doodle_tap_target_logo_width);
        this.i = getResources().getDimensionPixelSize(R.dimen.qsb_mic_width);
        this.g = getResources().getDimensionPixelSize(R.dimen.qsb_text_spacing);
        this.h = getResources().getDimensionPixelSize(R.dimen.qsb_two_bubble_gap);
        this.f2617a.setTextSize(getResources().getDimensionPixelSize(R.dimen.qsb_hint_text_size));
        this.l = getResources().getDimensionPixelSize(R.dimen.qsb_shadow_margin);
        this.m = getResources().getDimensionPixelSize(R.dimen.qsb_max_hint_length);
        this.j = Utilities.isRtl(getResources());
        SparseArray sparseArray = IconShape.sInstance.mAttrs;
        TypedValue typedValue = sparseArray != null ? (TypedValue) sparseArray.get(R.attr.qsbEdgeRadius) : null;
        this.B = typedValue == null ? -1.0f : typedValue.getDimension(getResources().getDisplayMetrics());
        TransformingTouchDelegate transformingTouchDelegate = new TransformingTouchDelegate(this);
        this.f2620d = transformingTouchDelegate;
        setTouchDelegate(transformingTouchDelegate);
        setOnClickListener(new View.OnClickListener() { // from class: c.b.a.b.b.l.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                A.this.o(view);
            }
        });
    }
}
