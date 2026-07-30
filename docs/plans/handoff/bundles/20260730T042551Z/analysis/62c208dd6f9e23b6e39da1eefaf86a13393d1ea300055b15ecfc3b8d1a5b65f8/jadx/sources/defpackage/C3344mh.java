package defpackage;

import com.facebook.internal.FeatureManager;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Random;

/* renamed from: mh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3344mh extends RuntimeException {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f14380for = 0;

    public C3344mh() {
    }

    @Override // java.lang.Throwable
    public String toString() {
        String message = getMessage();
        return message == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : message;
    }

    public C3344mh(String str) {
        super(str);
        Random random = new Random();
        if (str == null || !C3756th.m8305this() || random.nextInt(100) <= 50) {
            return;
        }
        FeatureManager featureManager = FeatureManager.INSTANCE;
        FeatureManager.checkFeature(FeatureManager.Feature.ErrorReport, new TK(str));
    }

    public C3344mh(String str, Exception exc) {
        super(str, exc);
    }

    public C3344mh(Throwable th) {
        super(th);
    }
}
