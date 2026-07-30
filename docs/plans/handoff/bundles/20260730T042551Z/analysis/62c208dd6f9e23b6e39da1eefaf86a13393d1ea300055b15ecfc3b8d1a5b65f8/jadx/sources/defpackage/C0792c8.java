package defpackage;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.Cdo;
import com.joeykrim.rootcheck.R;

/* renamed from: c8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0792c8 extends AbstractC2704eg {

    /* renamed from: do, reason: not valid java name */
    public final int f8489do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Y7 f8490do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Z7 f8491do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AnimatorSet f8492do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f8493do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f8494do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EditText f8495do;

    /* renamed from: if, reason: not valid java name */
    public final int f8496if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f8497if;

    /* JADX WARN: Type inference failed for: r0v0, types: [Y7] */
    /* JADX WARN: Type inference failed for: r0v1, types: [Z7] */
    public C0792c8(Cdo cdo) {
        super(cdo);
        this.f8490do = new View.OnClickListener() { // from class: Y7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0792c8 c0792c8 = C0792c8.this;
                EditText editText = c0792c8.f8495do;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                c0792c8.m6574while();
            }
        };
        this.f8491do = new View.OnFocusChangeListener() { // from class: Z7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                C0792c8 c0792c8 = C0792c8.this;
                c0792c8.m4884public(c0792c8.m4885return());
            }
        };
        this.f8489do = C0222Ft.m649for(cdo.getContext(), R.attr.motionDurationShort3, 100);
        this.f8496if = C0222Ft.m649for(cdo.getContext(), R.attr.motionDurationShort3, 150);
        this.f8493do = C0222Ft.m651new(cdo.getContext(), R.attr.motionEasingLinearInterpolator, C2785g1.f13028do);
        this.f8497if = C0222Ft.m651new(cdo.getContext(), R.attr.motionEasingEmphasizedInterpolator, C2785g1.f13029do);
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: case */
    public final View.OnClickListener mo121case() {
        return this.f8490do;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: const */
    public final void mo124const(EditText editText) {
        this.f8495do = editText;
        ((AbstractC2704eg) this).f12695do.f11644do.m6012goto(m4885return());
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: do, reason: not valid java name */
    public final void mo4882do() {
        if (((AbstractC2704eg) this).f12696do.f11711do != null) {
            return;
        }
        m4884public(m4885return());
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: else, reason: not valid java name */
    public final View.OnFocusChangeListener mo4883else() {
        return this.f8491do;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: for */
    public final int mo125for() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: import */
    public final void mo127import() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(this.f8497if);
        ofFloat.setDuration(this.f8496if);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: W7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C0792c8 c0792c8 = C0792c8.this;
                c0792c8.getClass();
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CheckableImageButton checkableImageButton = ((AbstractC2704eg) c0792c8).f12694do;
                checkableImageButton.setScaleX(floatValue);
                checkableImageButton.setScaleY(floatValue);
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f8493do;
        ofFloat2.setInterpolator(timeInterpolator);
        int i = this.f8489do;
        ofFloat2.setDuration(i);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: X7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C0792c8 c0792c8 = C0792c8.this;
                c0792c8.getClass();
                ((AbstractC2704eg) c0792c8).f12694do.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f8492do = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.f8492do.addListener(new C0673a8(this));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(i);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: X7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C0792c8 c0792c8 = C0792c8.this;
                c0792c8.getClass();
                ((AbstractC2704eg) c0792c8).f12694do.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f8494do = ofFloat3;
        ofFloat3.addListener(new C0733b8(this));
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: native */
    public final void mo128native() {
        EditText editText = this.f8495do;
        if (editText != null) {
            editText.post(new RunnableC0651Zj(this, 5));
        }
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: new */
    public final int mo129new() {
        return R.drawable.mtrl_ic_cancel;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m4884public(boolean z) {
        boolean z2 = ((AbstractC2704eg) this).f12696do.m6014new() == z;
        if (z && !this.f8492do.isRunning()) {
            this.f8494do.cancel();
            this.f8492do.start();
            if (z2) {
                this.f8492do.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.f8492do.cancel();
        this.f8494do.start();
        if (z2) {
            this.f8494do.end();
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final boolean m4885return() {
        EditText editText = this.f8495do;
        return editText != null && (editText.hasFocus() || ((AbstractC2704eg) this).f12694do.hasFocus()) && this.f8495do.getText().length() > 0;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: throw, reason: not valid java name */
    public final void mo4886throw(boolean z) {
        if (((AbstractC2704eg) this).f12696do.f11711do == null) {
            return;
        }
        m4884public(z);
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: try, reason: not valid java name */
    public final View.OnFocusChangeListener mo4887try() {
        return this.f8491do;
    }
}
