package com.google.android.gms.tasks;

import com.google.android.gms.common.annotation.KeepForSdk;
import defpackage.FG;
import defpackage.InterfaceC0399Nv;

@KeepForSdk
/* loaded from: classes3.dex */
public class NativeOnCompleteListener implements InterfaceC0399Nv<Object> {
    @KeepForSdk
    public native void nativeOnComplete(long j, Object obj, boolean z, boolean z2, String str);

    @Override // defpackage.InterfaceC0399Nv
    @KeepForSdk
    public final void onComplete(FG<Object> fg) {
        Object obj;
        String str;
        Exception mo591catch;
        if (fg.mo604throw()) {
            obj = fg.mo592class();
            str = null;
        } else if (fg.mo596final() || (mo591catch = fg.mo591catch()) == null) {
            obj = null;
            str = null;
        } else {
            str = mo591catch.getMessage();
            obj = null;
        }
        nativeOnComplete(0L, obj, fg.mo604throw(), fg.mo596final(), str);
    }
}
