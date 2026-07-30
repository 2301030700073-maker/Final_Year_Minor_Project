package com.like;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.joeykrim.rootcheck.R;
import defpackage.C0466Ra;
import defpackage.C0745bK;
import defpackage.C2888hn;
import defpackage.C4122zt;
import defpackage.Cpublic;
import defpackage.InterfaceC0509Sv;
import defpackage.O4;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class LikeButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC0509Sv f12366do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AnimatorSet f12367do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f12368do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ImageView f12369do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CircleView f12370do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DotsView f12371do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2888hn f12372do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12373do;

    /* renamed from: for, reason: not valid java name */
    public int f12374for;

    /* renamed from: if, reason: not valid java name */
    public Drawable f12375if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f12376if;

    /* renamed from: new, reason: not valid java name */
    public int f12377new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final DecelerateInterpolator f12364do = new DecelerateInterpolator();

    /* renamed from: do, reason: not valid java name */
    public static final AccelerateDecelerateInterpolator f12363do = new AccelerateDecelerateInterpolator();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final OvershootInterpolator f12365do = new OvershootInterpolator(4.0f);

    /* renamed from: com.like.LikeButton$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            LikeButton likeButton = LikeButton.this;
            CircleView circleView = likeButton.f12370do;
            circleView.f12340if = 0.0f;
            circleView.postInvalidate();
            likeButton.f12370do.m6394do(0.0f);
            likeButton.f12371do.m6395do(0.0f);
            likeButton.f12369do.setScaleX(1.0f);
            likeButton.f12369do.setScaleY(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            DecelerateInterpolator decelerateInterpolator = LikeButton.f12364do;
            LikeButton.this.getClass();
        }
    }

    public LikeButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6396do(int i) {
        this.f12368do = C0466Ra.getDrawable(getContext(), i);
        if (this.f12377new != 0) {
            Context context = getContext();
            Drawable drawable = this.f12368do;
            int i2 = this.f12377new;
            this.f12368do = C0745bK.m4829for(context, drawable, i2, i2);
        }
        if (this.f12373do) {
            this.f12369do.setImageDrawable(this.f12368do);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6397for(int i) {
        this.f12375if = C0466Ra.getDrawable(getContext(), i);
        if (this.f12377new != 0) {
            Context context = getContext();
            Drawable drawable = this.f12375if;
            int i2 = this.f12377new;
            this.f12375if = C0745bK.m4829for(context, drawable, i2, i2);
        }
        if (this.f12373do) {
            return;
        }
        this.f12369do.setImageDrawable(this.f12375if);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6398if(Boolean bool) {
        if (bool.booleanValue()) {
            this.f12373do = true;
            this.f12369do.setImageDrawable(this.f12368do);
        } else {
            this.f12373do = false;
            this.f12369do.setImageDrawable(this.f12375if);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f12376if) {
            boolean z = !this.f12373do;
            this.f12373do = z;
            this.f12369do.setImageDrawable(z ? this.f12368do : this.f12375if);
            InterfaceC0509Sv interfaceC0509Sv = this.f12366do;
            if (interfaceC0509Sv != null) {
                if (this.f12373do) {
                    interfaceC0509Sv.mo145do();
                } else {
                    interfaceC0509Sv.mo146if();
                }
            }
            AnimatorSet animatorSet = this.f12367do;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            if (this.f12373do) {
                this.f12369do.animate().cancel();
                this.f12369do.setScaleX(0.0f);
                this.f12369do.setScaleY(0.0f);
                CircleView circleView = this.f12370do;
                circleView.f12340if = 0.0f;
                circleView.postInvalidate();
                this.f12370do.m6394do(0.0f);
                this.f12371do.m6395do(0.0f);
                this.f12367do = new AnimatorSet();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f12370do, CircleView.f12331do, 0.1f, 1.0f);
                ofFloat.setDuration(250L);
                DecelerateInterpolator decelerateInterpolator = f12364do;
                ofFloat.setInterpolator(decelerateInterpolator);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f12370do, CircleView.f12330do, 0.1f, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setStartDelay(200L);
                ofFloat2.setInterpolator(decelerateInterpolator);
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f12369do, (Property<ImageView, Float>) ImageView.SCALE_Y, 0.2f, 1.0f);
                ofFloat3.setDuration(350L);
                ofFloat3.setStartDelay(250L);
                OvershootInterpolator overshootInterpolator = f12365do;
                ofFloat3.setInterpolator(overshootInterpolator);
                ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.f12369do, (Property<ImageView, Float>) ImageView.SCALE_X, 0.2f, 1.0f);
                ofFloat4.setDuration(350L);
                ofFloat4.setStartDelay(250L);
                ofFloat4.setInterpolator(overshootInterpolator);
                ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.f12371do, DotsView.f12344do, 0.0f, 1.0f);
                ofFloat5.setDuration(900L);
                ofFloat5.setStartDelay(50L);
                ofFloat5.setInterpolator(f12363do);
                this.f12367do.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5);
                this.f12367do.addListener(new Cdo());
                this.f12367do.start();
            }
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f12376if) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            boolean z = false;
            if (action == 1) {
                ViewPropertyAnimator duration = this.f12369do.animate().scaleX(0.7f).scaleY(0.7f).setDuration(150L);
                DecelerateInterpolator decelerateInterpolator = f12364do;
                duration.setInterpolator(decelerateInterpolator);
                this.f12369do.animate().scaleX(1.0f).scaleY(1.0f).setInterpolator(decelerateInterpolator);
                if (isPressed()) {
                    performClick();
                    setPressed(false);
                }
            } else if (action == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (x > 0.0f && x < getWidth() && y > 0.0f && y < getHeight()) {
                    z = true;
                }
                if (isPressed() != z) {
                    setPressed(z);
                }
            } else if (action == 3) {
                setPressed(false);
            }
        } else {
            setPressed(true);
        }
        return true;
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        this.f12376if = z;
    }

    public LikeButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        LayoutInflater.from(getContext()).inflate(R.layout.likeview, (ViewGroup) this, true);
        this.f12369do = (ImageView) findViewById(R.id.icon);
        this.f12371do = (DotsView) findViewById(R.id.dots);
        this.f12370do = (CircleView) findViewById(R.id.circle);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O4.f2537do, i, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(5, -1);
        this.f12377new = dimensionPixelSize;
        if (dimensionPixelSize == -1) {
            this.f12377new = 40;
        }
        String string = obtainStyledAttributes.getString(6);
        int resourceId = obtainStyledAttributes.getResourceId(8, -1);
        Drawable drawable = -1 != resourceId ? C0466Ra.getDrawable(getContext(), resourceId) : null;
        this.f12368do = drawable;
        if (drawable != null) {
            this.f12368do = drawable;
            if (this.f12377new != 0) {
                Context context2 = getContext();
                int i2 = this.f12377new;
                this.f12368do = C0745bK.m4829for(context2, drawable, i2, i2);
            }
            if (this.f12373do) {
                this.f12369do.setImageDrawable(this.f12368do);
            }
        }
        int resourceId2 = obtainStyledAttributes.getResourceId(10, -1);
        Drawable drawable2 = -1 != resourceId2 ? C0466Ra.getDrawable(getContext(), resourceId2) : null;
        this.f12375if = drawable2;
        if (drawable2 != null) {
            this.f12375if = drawable2;
            if (this.f12377new != 0) {
                Context context3 = getContext();
                int i3 = this.f12377new;
                this.f12375if = C0745bK.m4829for(context3, drawable2, i3, i3);
            }
            if (!this.f12373do) {
                this.f12369do.setImageDrawable(this.f12375if);
            }
        }
        if (string != null && !string.isEmpty()) {
            Iterator it = C0745bK.m4828do().iterator();
            while (it.hasNext()) {
                C2888hn c2888hn = (C2888hn) it.next();
                if (Cpublic.m7815break(c2888hn.f13357for).toLowerCase().equals(string.toLowerCase())) {
                    this.f12372do = c2888hn;
                }
            }
            throw new IllegalArgumentException("Correct icon type not specified.");
        }
        int color = obtainStyledAttributes.getColor(2, 0);
        if (color != 0) {
            CircleView circleView = this.f12370do;
            circleView.f12339for = color;
            circleView.invalidate();
        }
        int color2 = obtainStyledAttributes.getColor(1, 0);
        if (color2 != 0) {
            CircleView circleView2 = this.f12370do;
            circleView2.f12342new = color2;
            circleView2.invalidate();
        }
        this.f12374for = obtainStyledAttributes.getColor(3, 0);
        int color3 = obtainStyledAttributes.getColor(4, 0);
        int i4 = this.f12374for;
        if (i4 != 0 && color3 != 0) {
            DotsView dotsView = this.f12371do;
            dotsView.f12354for = i4;
            dotsView.f12359new = color3;
            dotsView.f12362try = i4;
            dotsView.f12347case = color3;
            dotsView.invalidate();
        }
        if (this.f12368do == null && this.f12375if == null) {
            C2888hn c2888hn2 = this.f12372do;
            if (c2888hn2 == null) {
                Iterator it2 = C0745bK.m4828do().iterator();
                while (it2.hasNext()) {
                    C2888hn c2888hn3 = (C2888hn) it2.next();
                    if (C4122zt.m8822do(c2888hn3.f13357for, 1)) {
                        this.f12372do = c2888hn3;
                        m6396do(c2888hn3.f13356do);
                        m6397for(this.f12372do.f13358if);
                        this.f12369do.setImageDrawable(this.f12375if);
                    }
                }
                throw new IllegalArgumentException("Correct icon type not specified.");
            }
            m6396do(c2888hn2.f13356do);
            m6397for(this.f12372do.f13358if);
            this.f12369do.setImageDrawable(this.f12375if);
        }
        setEnabled(obtainStyledAttributes.getBoolean(7, true));
        Boolean valueOf = Boolean.valueOf(obtainStyledAttributes.getBoolean(9, false));
        float f = obtainStyledAttributes.getFloat(0, 3.0f);
        int i5 = this.f12377new;
        if (i5 != 0) {
            DotsView dotsView2 = this.f12371do;
            int i6 = (int) (i5 * f);
            dotsView2.f12352else = i6;
            dotsView2.f12356goto = i6;
            dotsView2.invalidate();
            CircleView circleView3 = this.f12370do;
            int i7 = this.f12377new;
            circleView3.f12343try = i7;
            circleView3.f12332case = i7;
            circleView3.invalidate();
        }
        m6398if(valueOf);
        setOnClickListener(this);
        obtainStyledAttributes.recycle();
    }
}
