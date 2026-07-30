package com.joeykrim.rootcheck.gcm;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import defpackage.C0766bi;
import defpackage.C2680eE;
import defpackage.C2957iz;
import defpackage.C3299lv;
import defpackage.C3772tx;
import defpackage.VJ;

/* loaded from: classes3.dex */
public class MyFirebaseMessagingService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    /* renamed from: new */
    public final void mo6096new(RemoteMessage remoteMessage) {
        Object f;
        try {
            if (((C2680eE) remoteMessage.f()).f12632for <= 0 || (f = remoteMessage.f()) == null || ((C2680eE) f).getOrDefault("notificationType", null) == null || ((C2680eE) f).getOrDefault("notificationType", null).toString().isEmpty()) {
                return;
            }
            int intValue = Integer.valueOf(((C2680eE) f).getOrDefault("notificationType", null).toString()).intValue();
            if (1 == intValue || (2 == intValue && C3772tx.m8349this(this))) {
                C3299lv.m7401if(this, intValue, ((C2680eE) f).getOrDefault("title", null) != null ? ((C2680eE) f).getOrDefault("title", null).toString() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, ((C2680eE) f).getOrDefault("message", null) != null ? ((C2680eE) f).getOrDefault("message", null).toString() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, ((C2680eE) f).getOrDefault("analyticsName", null) != null ? ((C2680eE) f).getOrDefault("analyticsName", null).toString() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, ((C2680eE) f).getOrDefault("tabName", null) != null ? ((C2680eE) f).getOrDefault("tabName", null).toString() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
        } catch (Exception e) {
            try {
                C0766bi.m4854do().m4855for(e);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    /* renamed from: try */
    public final void mo6097try(String str) {
        if (str != null) {
            try {
                if (!C3772tx.m8337if(this).equals(str)) {
                    C2957iz.m6986if(this, VJ.m2560class(), str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                }
            } catch (Exception e) {
                e.printStackTrace();
                C0766bi.m4854do().m4855for(e);
            }
        }
    }
}
