package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;
import com.facebook.internal.NativeProtocol;
import defpackage.CT;

/* loaded from: classes.dex */
public final /* synthetic */ class zzi implements CT {
    public final /* synthetic */ String zza;

    @Override // defpackage.CT
    public final void zza(JsonWriter jsonWriter) {
        Object obj = zzl.f9738do;
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        String str = this.zza;
        if (str != null) {
            jsonWriter.name(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION).value(str);
        }
        jsonWriter.endObject();
    }
}
