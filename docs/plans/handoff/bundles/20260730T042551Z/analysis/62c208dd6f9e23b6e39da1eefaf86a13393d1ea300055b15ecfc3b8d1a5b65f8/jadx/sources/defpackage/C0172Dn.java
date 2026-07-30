package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: Dn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0172Dn {

    /* renamed from: case, reason: not valid java name */
    public int f654case;

    /* renamed from: do, reason: not valid java name */
    public final float f655do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f656do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Animator f657do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f658do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f659do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f660do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public FrameLayout f661do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LinearLayout f662do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AppCompatTextView f663do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextInputLayout f664do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f665do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f666do;

    /* renamed from: else, reason: not valid java name */
    public int f667else;

    /* renamed from: for, reason: not valid java name */
    public final int f668for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f669for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f670for;

    /* renamed from: goto, reason: not valid java name */
    public int f671goto;

    /* renamed from: if, reason: not valid java name */
    public final int f672if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f673if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f674if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public AppCompatTextView f675if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f676if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f677if;

    /* renamed from: new, reason: not valid java name */
    public int f678new;

    /* renamed from: this, reason: not valid java name */
    public int f679this;

    /* renamed from: try, reason: not valid java name */
    public int f680try;

    /* renamed from: Dn$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f681do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ TextView f683do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f684if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final /* synthetic */ TextView f685if;

        public Cdo(int i, TextView textView, int i2, TextView textView2) {
            this.f681do = i;
            this.f683do = textView;
            this.f684if = i2;
            this.f685if = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            AppCompatTextView appCompatTextView;
            int i = this.f681do;
            C0172Dn c0172Dn = C0172Dn.this;
            c0172Dn.f680try = i;
            c0172Dn.f657do = null;
            TextView textView = this.f683do;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f684if == 1 && (appCompatTextView = c0172Dn.f663do) != null) {
                    appCompatTextView.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f685if;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                textView2.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            TextView textView = this.f685if;
            if (textView != null) {
                textView.setVisibility(0);
                textView.setAlpha(0.0f);
            }
        }
    }

    public C0172Dn(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f659do = context;
        this.f664do = textInputLayout;
        this.f655do = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.f656do = C0222Ft.m649for(context, R.attr.motionDurationShort4, 217);
        this.f672if = C0222Ft.m649for(context, R.attr.motionDurationMedium4, 167);
        this.f668for = C0222Ft.m649for(context, R.attr.motionDurationShort4, 167);
        this.f658do = C0222Ft.m651new(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, C2785g1.f13029do);
        LinearInterpolator linearInterpolator = C2785g1.f13028do;
        this.f673if = C0222Ft.m651new(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, linearInterpolator);
        this.f669for = C0222Ft.m651new(context, R.attr.motionEasingLinearInterpolator, linearInterpolator);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m384case() {
        this.f665do = null;
        m387for();
        if (this.f680try == 1) {
            if (!this.f677if || TextUtils.isEmpty(this.f670for)) {
                this.f654case = 0;
            } else {
                this.f654case = 2;
            }
        }
        m391this(this.f680try, this.f654case, m388goto(this.f663do, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    /* renamed from: do, reason: not valid java name */
    public final void m385do(TextView textView, int i) {
        if (this.f662do == null && this.f661do == null) {
            Context context = this.f659do;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f662do = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f662do;
            TextInputLayout textInputLayout = this.f664do;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f661do = new FrameLayout(context);
            this.f662do.addView(this.f661do, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.f11639do != null) {
                m389if();
            }
        }
        if (i == 0 || i == 1) {
            this.f661do.setVisibility(0);
            this.f661do.addView(textView);
        } else {
            this.f662do.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f662do.setVisibility(0);
        this.f678new++;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m386else(TextView textView, int i) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f662do;
        if (linearLayout == null) {
            return;
        }
        boolean z = true;
        if (i != 0 && i != 1) {
            z = false;
        }
        if (!z || (frameLayout = this.f661do) == null) {
            linearLayout.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.f678new - 1;
        this.f678new = i2;
        LinearLayout linearLayout2 = this.f662do;
        if (i2 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m387for() {
        Animator animator = this.f657do;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m388goto(TextView textView, CharSequence charSequence) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        TextInputLayout textInputLayout = this.f664do;
        return textInputLayout.isLaidOut() && textInputLayout.isEnabled() && !(this.f654case == this.f680try && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: if, reason: not valid java name */
    public final void m389if() {
        LinearLayout linearLayout = this.f662do;
        TextInputLayout textInputLayout = this.f664do;
        if ((linearLayout == null || textInputLayout.f11639do == null) ? false : true) {
            EditText editText = textInputLayout.f11639do;
            Context context = this.f659do;
            boolean m3073try = C0659Zr.m3073try(context);
            LinearLayout linearLayout2 = this.f662do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            int paddingStart = editText.getPaddingStart();
            if (m3073try) {
                paddingStart = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
            }
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
            if (m3073try) {
                dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
            }
            int paddingEnd = editText.getPaddingEnd();
            if (m3073try) {
                paddingEnd = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
            }
            linearLayout2.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m390new(ArrayList arrayList, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            boolean z2 = i3 == i;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z2 ? 1.0f : 0.0f);
            int i4 = this.f668for;
            ofFloat.setDuration(z2 ? this.f672if : i4);
            ofFloat.setInterpolator(z2 ? this.f673if : this.f669for);
            if (i == i3 && i2 != 0) {
                ofFloat.setStartDelay(i4);
            }
            arrayList.add(ofFloat);
            if (i3 != i || i2 == 0) {
                return;
            }
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f655do, 0.0f);
            ofFloat2.setDuration(this.f656do);
            ofFloat2.setInterpolator(this.f658do);
            ofFloat2.setStartDelay(i4);
            arrayList.add(ofFloat2);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m391this(int i, int i2, boolean z) {
        TextView m392try;
        TextView m392try2;
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f657do = animatorSet;
            ArrayList arrayList = new ArrayList();
            m390new(arrayList, this.f677if, this.f675if, 2, i, i2);
            m390new(arrayList, this.f666do, this.f663do, 1, i, i2);
            C0315Kc.m1183throws(animatorSet, arrayList);
            animatorSet.addListener(new Cdo(i2, m392try(i), i, m392try(i2)));
            animatorSet.start();
        } else if (i != i2) {
            if (i2 != 0 && (m392try2 = m392try(i2)) != null) {
                m392try2.setVisibility(0);
                m392try2.setAlpha(1.0f);
            }
            if (i != 0 && (m392try = m392try(i)) != null) {
                m392try.setVisibility(4);
                if (i == 1) {
                    m392try.setText((CharSequence) null);
                }
            }
            this.f680try = i2;
        }
        TextInputLayout textInputLayout = this.f664do;
        textInputLayout.m5980extends();
        textInputLayout.m5990private(z, false);
        textInputLayout.m5994strictfp();
    }

    /* renamed from: try, reason: not valid java name */
    public final TextView m392try(int i) {
        if (i == 1) {
            return this.f663do;
        }
        if (i != 2) {
            return null;
        }
        return this.f675if;
    }
}
