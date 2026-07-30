package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;

/* loaded from: classes.dex */
public abstract class AD extends AbstractC2882hh {

    /* renamed from: try, reason: not valid java name */
    public final int f53try;

    public AD(Context context, AttributeSet attributeSet, int i, String str, String str2) {
        super(context, attributeSet, i, str, str2);
        this.f53try = 0;
        this.f53try = isInEditMode() ? 0 : mo5533for();
        setEnabled(false);
    }

    @Override // defpackage.AbstractC2882hh
    /* renamed from: do, reason: not valid java name */
    public void mo55do(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo55do(context, attributeSet, i, i2);
        ViewOnClickListenerC4084zD viewOnClickListenerC4084zD = new ViewOnClickListenerC4084zD(this);
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.f13348if = viewOnClickListenerC4084zD;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    /* renamed from: this, reason: not valid java name */
    public abstract DD mo56this();
}
