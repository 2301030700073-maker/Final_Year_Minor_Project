package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.view.View;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.InstrumentManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import defpackage.C0332Kt;
import defpackage.C0577Wb;
import defpackage.C0774bq;
import defpackage.C2619dB;

/* renamed from: package, reason: invalid class name */
/* loaded from: classes3.dex */
public final /* synthetic */ class Cpackage implements InterfaceC3314m9, FeatureManager.Callback, C2619dB.Cdo, C0332Kt.Cdo, C0774bq.Cdo, InterfaceC0487Rv, C0577Wb.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14940do;

    public /* synthetic */ Cpackage(int i) {
        this.f14940do = i;
    }

    @Override // defpackage.C2619dB.Cdo
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        C0823cg c0823cg = C2619dB.f12436do;
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    @Override // defpackage.C0332Kt.Cdo
    /* renamed from: do */
    public void mo1220do(ValueAnimator valueAnimator, View view) {
        view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0032, code lost:
    
        if (r4.equals(com.facebook.internal.FacebookRequestErrorClassification.KEY_NAME) == false) goto L19;
     */
    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo2065else(android.util.JsonReader r8) {
        /*
            r7 = this;
            lp r0 = defpackage.C0577Wb.f4389do
            r8.beginObject()
            r0 = 0
            r1 = 0
            r2 = 0
            r1 = r0
            r2 = 0
            r3 = 0
        Lb:
            boolean r4 = r8.hasNext()
            r5 = 1
            if (r4 == 0) goto L74
            java.lang.String r4 = r8.nextName()
            r4.getClass()
            int r6 = r4.hashCode()
            switch(r6) {
                case -1266514778: goto L35;
                case 3373707: goto L2c;
                case 2125650548: goto L21;
                default: goto L20;
            }
        L20:
            goto L40
        L21:
            java.lang.String r5 = "importance"
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L2a
            goto L40
        L2a:
            r5 = 2
            goto L41
        L2c:
            java.lang.String r6 = "name"
            boolean r4 = r4.equals(r6)
            if (r4 != 0) goto L41
            goto L40
        L35:
            java.lang.String r5 = "frames"
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L3e
            goto L40
        L3e:
            r5 = 0
            goto L41
        L40:
            r5 = -1
        L41:
            switch(r5) {
                case 0: goto L5f;
                case 1: goto L50;
                case 2: goto L48;
                default: goto L44;
            }
        L44:
            r8.skipValue()
            goto Lb
        L48:
            int r3 = r8.nextInt()
            r2 = r2 | 1
            byte r2 = (byte) r2
            goto Lb
        L50:
            java.lang.String r0 = r8.nextString()
            if (r0 == 0) goto L57
            goto Lb
        L57:
            java.lang.NullPointerException r8 = new java.lang.NullPointerException
            java.lang.String r0 = "Null name"
            r8.<init>(r0)
            throw r8
        L5f:
            sh r1 = new sh
            r4 = 4
            r1.<init>(r4)
            java.util.List r1 = defpackage.C0577Wb.m2741new(r8, r1)
            if (r1 == 0) goto L6c
            goto Lb
        L6c:
            java.lang.NullPointerException r8 = new java.lang.NullPointerException
            java.lang.String r0 = "Null frames"
            r8.<init>(r0)
            throw r8
        L74:
            r8.endObject()
            if (r2 != r5) goto L84
            if (r0 == 0) goto L84
            if (r1 != 0) goto L7e
            goto L84
        L7e:
            K3 r8 = new K3
            r8.<init>(r0, r3, r1)
            return r8
        L84:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            if (r0 != 0) goto L90
            java.lang.String r0 = " name"
            r8.append(r0)
        L90:
            r0 = r5 & r2
            if (r0 != 0) goto L99
            java.lang.String r0 = " importance"
            r8.append(r0)
        L99:
            if (r1 != 0) goto La0
            java.lang.String r0 = " frames"
            r8.append(r0)
        La0:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Missing required properties:"
            java.lang.String r8 = defpackage.V1.m2502goto(r1, r8)
            r0.<init>(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Cpackage.mo2065else(android.util.JsonReader):java.lang.Object");
    }

    @Override // defpackage.C0774bq.Cdo
    /* renamed from: if */
    public String mo2067if(Context context) {
        int i = Build.VERSION.SDK_INT;
        return context.getPackageManager().hasSystemFeature("android.hardware.type.television") ? "tv" : context.getPackageManager().hasSystemFeature("android.hardware.type.watch") ? "watch" : (i < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (i < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : "embedded" : "auto";
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public void onCompleted(boolean z) {
        switch (this.f14940do) {
            case 0:
                if (z) {
                    C3756th.f15755for = true;
                    break;
                }
                break;
            default:
                InstrumentManager.m5457start$lambda2(z);
                break;
        }
    }

    @Override // defpackage.InterfaceC0487Rv
    public void onFailure(Exception exc) {
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public Object mo1186try(Xz xz) {
        Cdefault lambda$getComponents$0;
        switch (this.f14940do) {
            case 0:
                lambda$getComponents$0 = AbtRegistrar.lambda$getComponents$0(xz);
                return lambda$getComponents$0;
            default:
                return ExecutorsRegistrar.f11872if.get();
        }
    }
}
