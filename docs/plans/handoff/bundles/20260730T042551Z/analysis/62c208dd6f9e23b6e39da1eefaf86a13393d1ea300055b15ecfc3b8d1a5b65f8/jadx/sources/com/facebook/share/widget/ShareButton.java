package com.facebook.share.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.joeykrim.rootcheck.R;
import defpackage.AD;
import defpackage.C3645ro;
import defpackage.DD;

/* loaded from: classes.dex */
public final class ShareButton extends AD {
    public ShareButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, AnalyticsEvents.EVENT_SHARE_BUTTON_CREATE, AnalyticsEvents.EVENT_SHARE_BUTTON_DID_TAP);
    }

    @Override // defpackage.AD, defpackage.AbstractC2882hh
    /* renamed from: do */
    public final void mo55do(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo55do(context, attributeSet, i, i2);
        setCompoundDrawablesWithIntrinsicBounds(C3645ro.m7997extends(getContext(), R.drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    @Override // defpackage.AbstractC2882hh
    /* renamed from: for */
    public final int mo5533for() {
        return CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
    }

    @Override // defpackage.AbstractC2882hh
    /* renamed from: new */
    public final int mo5534new() {
        return R.style.com_facebook_button_share;
    }

    @Override // defpackage.AD
    /* renamed from: this */
    public final DD mo56this() {
        CrashShieldHandler.isObjectCrashing(this);
        CrashShieldHandler.isObjectCrashing(this);
        DD dd = new DD(m6831if(), this.f53try);
        dd.setCallbackManager(null);
        return dd;
    }

    public ShareButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, AnalyticsEvents.EVENT_SHARE_BUTTON_CREATE, AnalyticsEvents.EVENT_SHARE_BUTTON_DID_TAP);
    }
}
