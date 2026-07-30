package defpackage;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.joeykrim.rootcheck.R;

@SuppressLint({"ResourceType"})
/* renamed from: hh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC2882hh extends Button {

    /* renamed from: break, reason: not valid java name */
    public final String f13343break;

    /* renamed from: catch, reason: not valid java name */
    public final String f13344catch;

    /* renamed from: do, reason: not valid java name */
    public View.OnClickListener f13345do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f13346do;

    /* renamed from: for, reason: not valid java name */
    public int f13347for;

    /* renamed from: if, reason: not valid java name */
    public View.OnClickListener f13348if;

    /* renamed from: new, reason: not valid java name */
    public int f13349new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC2882hh(Context context, AttributeSet attributeSet, int i, String str, String str2) {
        super(context, attributeSet, 0);
        C0173Do.m401try(context, "context");
        int mo5534new = mo5534new();
        mo55do(context, attributeSet, i, mo5534new == 0 ? R.style.com_facebook_button : mo5534new);
        this.f13343break = str;
        this.f13344catch = str2;
        setClickable(true);
        setFocusable(true);
    }

    @SuppressLint({"ResourceType"})
    /* renamed from: case, reason: not valid java name */
    public final void m6828case(Context context, AttributeSet attributeSet, int i, int i2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{android.R.attr.drawableLeft, android.R.attr.drawableTop, android.R.attr.drawableRight, android.R.attr.drawableBottom, android.R.attr.drawablePadding}, i, i2);
            C0173Do.m399new(obtainStyledAttributes, "context.theme.obtainStyledAttributes(attrs, attrsResources, defStyleAttr, defStyleRes)");
            try {
                setCompoundDrawablesWithIntrinsicBounds(obtainStyledAttributes.getResourceId(0, 0), obtainStyledAttributes.getResourceId(1, 0), obtainStyledAttributes.getResourceId(2, 0), obtainStyledAttributes.getResourceId(3, 0));
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(4, 0);
                obtainStyledAttributes.recycle();
                setCompoundDrawablePadding(dimensionPixelSize);
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* renamed from: do */
    public void mo55do(Context context, AttributeSet attributeSet, int i, int i2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(context, "context");
            m6832try(context, attributeSet, i, i2);
            m6828case(context, attributeSet, i, i2);
            m6829else(context, attributeSet, i, i2);
            m6830goto(context, attributeSet, i, i2);
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                super.setOnClickListener(new ViewOnClickListenerC2823gh(this, 0));
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m6829else(Context context, AttributeSet attributeSet, int i, int i2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{android.R.attr.paddingLeft, android.R.attr.paddingTop, android.R.attr.paddingRight, android.R.attr.paddingBottom}, i, i2);
            C0173Do.m399new(obtainStyledAttributes, "context.theme.obtainStyledAttributes(attrs, attrsResources, defStyleAttr, defStyleRes)");
            try {
                setPadding(obtainStyledAttributes.getDimensionPixelSize(0, 0), obtainStyledAttributes.getDimensionPixelSize(1, 0), obtainStyledAttributes.getDimensionPixelSize(2, 0), obtainStyledAttributes.getDimensionPixelSize(3, 0));
            } finally {
                obtainStyledAttributes.recycle();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: for */
    public abstract int mo5533for();

    @Override // android.widget.TextView
    public final int getCompoundPaddingLeft() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return this.f13346do ? this.f13347for : super.getCompoundPaddingLeft();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    @Override // android.widget.TextView
    public final int getCompoundPaddingRight() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return this.f13346do ? this.f13349new : super.getCompoundPaddingRight();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m6830goto(Context context, AttributeSet attributeSet, int i, int i2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{android.R.attr.textColor}, i, i2);
            C0173Do.m399new(obtainStyledAttributes, "context.theme.obtainStyledAttributes(attrs, colorResources, defStyleAttr, defStyleRes)");
            try {
                setTextColor(obtainStyledAttributes.getColorStateList(0));
                obtainStyledAttributes.recycle();
                obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{android.R.attr.gravity}, i, i2);
                C0173Do.m399new(obtainStyledAttributes, "context.theme.obtainStyledAttributes(attrs, gravityResources, defStyleAttr, defStyleRes)");
                try {
                    int i3 = obtainStyledAttributes.getInt(0, 17);
                    obtainStyledAttributes.recycle();
                    setGravity(i3);
                    obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{android.R.attr.textSize, android.R.attr.textStyle, android.R.attr.text}, i, i2);
                    C0173Do.m399new(obtainStyledAttributes, "context.theme.obtainStyledAttributes(attrs, attrsResources, defStyleAttr, defStyleRes)");
                    try {
                        setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(0, 0));
                        setTypeface(Typeface.create(getTypeface(), 1));
                        String string = obtainStyledAttributes.getString(2);
                        obtainStyledAttributes.recycle();
                        setText(string);
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Activity m6831if() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            Context context = getContext();
            while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (context instanceof Activity) {
                return (Activity) context;
            }
            throw new C3344mh("Unable to get Activity.");
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    /* renamed from: new */
    public int mo5534new() {
        CrashShieldHandler.isObjectCrashing(this);
        return 0;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onAttachedToWindow();
            if (isInEditMode()) {
                return;
            }
            Context context = getContext();
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                InternalAppEventsLogger.Companion.createInstance(context, null).logEventImplicitly(this.f13343break);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int ceil;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(canvas, "canvas");
            if ((getGravity() & 1) != 0) {
                int compoundPaddingLeft = getCompoundPaddingLeft();
                int compoundPaddingRight = getCompoundPaddingRight();
                int width = (getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight;
                String obj = getText().toString();
                if (!CrashShieldHandler.isObjectCrashing(this)) {
                    try {
                        ceil = (int) Math.ceil(getPaint().measureText(obj));
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                    int min = Math.min((width - ceil) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
                    this.f13347for = compoundPaddingLeft - min;
                    this.f13349new = compoundPaddingRight + min;
                    this.f13346do = true;
                }
                ceil = 0;
                int min2 = Math.min((width - ceil) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
                this.f13347for = compoundPaddingLeft - min2;
                this.f13349new = compoundPaddingRight + min2;
                this.f13346do = true;
            }
            super.onDraw(canvas);
            this.f13346do = false;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.f13345do = onClickListener;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m6832try(Context context, AttributeSet attributeSet, int i, int i2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (isInEditMode()) {
                return;
            }
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{android.R.attr.background}, i, i2);
            C0173Do.m399new(obtainStyledAttributes, "context.theme.obtainStyledAttributes(attrs, attrsResources, defStyleAttr, defStyleRes)");
            try {
                if (obtainStyledAttributes.hasValue(0)) {
                    int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        setBackgroundResource(resourceId);
                    } else {
                        setBackgroundColor(obtainStyledAttributes.getColor(0, 0));
                    }
                } else {
                    setBackgroundColor(C0466Ra.getColor(context, R.color.com_facebook_blue));
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
