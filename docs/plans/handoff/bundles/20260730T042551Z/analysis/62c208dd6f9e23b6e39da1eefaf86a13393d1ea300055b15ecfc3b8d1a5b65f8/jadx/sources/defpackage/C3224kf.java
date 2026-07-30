package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.Cdo;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import java.util.WeakHashMap;

/* renamed from: kf, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3224kf extends AbstractC2704eg {

    /* renamed from: do, reason: not valid java name */
    public final int f14020do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f14021do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f14022do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f14023do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AccessibilityManager f14024do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AutoCompleteTextView f14025do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewOnFocusChangeListenerC2645df f14026do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2703ef f14027do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewOnClickListenerC2823gh f14028do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14029do;

    /* renamed from: for, reason: not valid java name */
    public boolean f14030for;

    /* renamed from: if, reason: not valid java name */
    public final int f14031if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ValueAnimator f14032if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f14033if;

    /* JADX WARN: Type inference failed for: r0v1, types: [df] */
    public C3224kf(Cdo cdo) {
        super(cdo);
        this.f14028do = new ViewOnClickListenerC2823gh(this, 2);
        this.f14026do = new View.OnFocusChangeListener() { // from class: df
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                C3224kf c3224kf = C3224kf.this;
                c3224kf.f14029do = z;
                c3224kf.m6574while();
                if (z) {
                    return;
                }
                c3224kf.m7274public(false);
                c3224kf.f14033if = false;
            }
        };
        this.f14027do = new C2703ef(this);
        this.f14021do = Long.MAX_VALUE;
        this.f14031if = C0222Ft.m649for(cdo.getContext(), R.attr.motionDurationShort3, 67);
        this.f14020do = C0222Ft.m649for(cdo.getContext(), R.attr.motionDurationShort3, 50);
        this.f14022do = C0222Ft.m651new(cdo.getContext(), R.attr.motionEasingLinearInterpolator, C2785g1.f13028do);
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: break */
    public final boolean mo6569break() {
        return this.f14029do;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: case */
    public final View.OnClickListener mo121case() {
        return this.f14028do;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: class */
    public final boolean mo123class() {
        return this.f14030for;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: const */
    public final void mo124const(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f14025do = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: gf
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                C3224kf c3224kf = C3224kf.this;
                c3224kf.getClass();
                if (motionEvent.getAction() == 1) {
                    long currentTimeMillis = System.currentTimeMillis() - c3224kf.f14021do;
                    if (currentTimeMillis < 0 || currentTimeMillis > 300) {
                        c3224kf.f14033if = false;
                    }
                    c3224kf.m7275return();
                    c3224kf.f14033if = true;
                    c3224kf.f14021do = System.currentTimeMillis();
                }
                return false;
            }
        });
        this.f14025do.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: hf
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                C3224kf c3224kf = C3224kf.this;
                c3224kf.f14033if = true;
                c3224kf.f14021do = System.currentTimeMillis();
                c3224kf.m7274public(false);
            }
        });
        this.f14025do.setThreshold(0);
        TextInputLayout textInputLayout = ((AbstractC2704eg) this).f12695do;
        Cdo cdo = textInputLayout.f11644do;
        CheckableImageButton checkableImageButton = cdo.f11706do;
        checkableImageButton.setImageDrawable(null);
        cdo.m6006catch();
        C2946in.m6932do(cdo.f11707do, checkableImageButton, cdo.f11699do, cdo.f11700do);
        if (!(editText.getInputType() != 0) && this.f14024do.isTouchExplorationEnabled()) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            ((AbstractC2704eg) this).f12694do.setImportantForAccessibility(2);
        }
        textInputLayout.f11644do.m6012goto(true);
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: do */
    public final void mo4882do() {
        int i = 1;
        if (this.f14024do.isTouchExplorationEnabled()) {
            if ((this.f14025do.getInputType() != 0) && !((AbstractC2704eg) this).f12694do.hasFocus()) {
                this.f14025do.dismissDropDown();
            }
        }
        this.f14025do.post(new LH(this, i));
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: final */
    public final void mo6570final(C3893w c3893w) {
        if (!(this.f14025do.getInputType() != 0)) {
            c3893w.m8495break(Spinner.class.getName());
        }
        if (Build.VERSION.SDK_INT >= 26 ? c3893w.f16161do.isShowingHintText() : c3893w.m8508try(4)) {
            c3893w.m8499const(null);
        }
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: for */
    public final int mo125for() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: goto */
    public final Cinstanceof mo6571goto() {
        return this.f14027do;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: import */
    public final void mo127import() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f14022do;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.f14031if);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ff
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C3224kf c3224kf = C3224kf.this;
                c3224kf.getClass();
                ((AbstractC2704eg) c3224kf).f12694do.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f14032if = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(this.f14020do);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ff
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C3224kf c3224kf = C3224kf.this;
                c3224kf.getClass();
                ((AbstractC2704eg) c3224kf).f12694do.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f14023do = ofFloat2;
        ofFloat2.addListener(new C3165jf(this));
        this.f14024do = (AccessibilityManager) ((AbstractC2704eg) this).f12693do.getSystemService("accessibility");
    }

    @Override // defpackage.AbstractC2704eg
    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: native */
    public final void mo128native() {
        AutoCompleteTextView autoCompleteTextView = this.f14025do;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f14025do.setOnDismissListener(null);
        }
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: new */
    public final int mo129new() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m7274public(boolean z) {
        if (this.f14030for != z) {
            this.f14030for = z;
            this.f14032if.cancel();
            this.f14023do.start();
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final void m7275return() {
        if (this.f14025do == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f14021do;
        if (currentTimeMillis < 0 || currentTimeMillis > 300) {
            this.f14033if = false;
        }
        if (this.f14033if) {
            this.f14033if = false;
            return;
        }
        m7274public(!this.f14030for);
        if (!this.f14030for) {
            this.f14025do.dismissDropDown();
        } else {
            this.f14025do.requestFocus();
            this.f14025do.showDropDown();
        }
    }

    @Override // defpackage.AbstractC2704eg
    @SuppressLint({"WrongConstant"})
    /* renamed from: super */
    public final void mo6572super(AccessibilityEvent accessibilityEvent) {
        if (this.f14024do.isEnabled()) {
            boolean z = false;
            if (this.f14025do.getInputType() != 0) {
                return;
            }
            if ((accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f14030for && !this.f14025do.isPopupShowing()) {
                z = true;
            }
            if (accessibilityEvent.getEventType() == 1 || z) {
                m7275return();
                this.f14033if = true;
                this.f14021do = System.currentTimeMillis();
            }
        }
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: this */
    public final boolean mo6573this(int i) {
        return i != 0;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: try */
    public final View.OnFocusChangeListener mo4887try() {
        return this.f14026do;
    }
}
