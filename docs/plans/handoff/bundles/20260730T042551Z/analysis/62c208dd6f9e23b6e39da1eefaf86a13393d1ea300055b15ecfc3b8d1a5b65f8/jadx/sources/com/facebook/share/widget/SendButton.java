package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.joeykrim.rootcheck.R;
import defpackage.AD;
import defpackage.C0374Ms;
import defpackage.DD;

/* loaded from: classes.dex */
public final class SendButton extends AD {
    public SendButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, AnalyticsEvents.EVENT_SEND_BUTTON_CREATE, AnalyticsEvents.EVENT_SEND_BUTTON_DID_TAP);
    }

    @Override // defpackage.AbstractC2882hh
    /* renamed from: for, reason: not valid java name */
    public final int mo5533for() {
        return CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
    }

    @Override // defpackage.AbstractC2882hh
    /* renamed from: new, reason: not valid java name */
    public final int mo5534new() {
        return R.style.com_facebook_button_send;
    }

    @Override // defpackage.AD
    /* renamed from: this */
    public final DD mo56this() {
        CrashShieldHandler.isObjectCrashing(this);
        CrashShieldHandler.isObjectCrashing(this);
        C0374Ms c0374Ms = new C0374Ms(m6831if(), this.f53try);
        c0374Ms.setCallbackManager(null);
        return c0374Ms;
    }

    public SendButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, AnalyticsEvents.EVENT_SEND_BUTTON_CREATE, AnalyticsEvents.EVENT_SEND_BUTTON_DID_TAP);
    }
}
