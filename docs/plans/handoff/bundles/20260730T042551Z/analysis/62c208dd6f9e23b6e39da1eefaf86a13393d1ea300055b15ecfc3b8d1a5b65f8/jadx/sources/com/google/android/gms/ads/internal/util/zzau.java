package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzdur;
import com.google.android.gms.internal.ads.zzduv;
import defpackage.Creturn;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzau {

    /* renamed from: do, reason: not valid java name */
    public int f9749do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f9750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PointF f9751do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f9752do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzaf f9753do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzduv f9754do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9755do;

    /* renamed from: for, reason: not valid java name */
    public String f9756for;

    /* renamed from: if, reason: not valid java name */
    public final int f9757if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public PointF f9758if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f9759if;

    /* renamed from: new, reason: not valid java name */
    public String f9760new;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.ads.internal.util.zzaf] */
    public zzau(Context context) {
        this.f9749do = 0;
        this.f9753do = new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzaf
            @Override // java.lang.Runnable
            public final void run() {
                zzau zzauVar = zzau.this;
                zzauVar.f9749do = 4;
                zzauVar.zzr();
            }
        };
        this.f9750do = context;
        this.f9757if = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzv.zzu().zzb();
        this.f9752do = com.google.android.gms.ads.internal.zzv.zzu().zza();
        this.f9754do = com.google.android.gms.ads.internal.zzv.zzt().zza();
    }

    /* renamed from: for, reason: not valid java name */
    public static final int m5562for(String str, ArrayList arrayList, boolean z) {
        if (!z) {
            return -1;
        }
        arrayList.add(str);
        return arrayList.size() - 1;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5563do(Context context) {
        ArrayList arrayList = new ArrayList();
        int m5562for = m5562for("None", arrayList, true);
        final int m5562for2 = m5562for("Shake", arrayList, true);
        final int m5562for3 = m5562for("Flick", arrayList, true);
        int ordinal = this.f9754do.zza().ordinal();
        final int i = ordinal != 1 ? ordinal != 2 ? m5562for : m5562for3 : m5562for2;
        com.google.android.gms.ads.internal.zzv.zzq();
        AlertDialog.Builder zzL = zzs.zzL(context);
        final AtomicInteger atomicInteger = new AtomicInteger(i);
        zzL.setTitle("Setup gesture");
        zzL.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzan
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                atomicInteger.set(i2);
            }
        });
        zzL.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzao
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                zzau.this.zzr();
            }
        });
        zzL.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzap
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                zzau zzauVar = zzau.this;
                AtomicInteger atomicInteger2 = atomicInteger;
                int i3 = i;
                int i4 = m5562for2;
                int i5 = m5562for3;
                zzauVar.getClass();
                if (atomicInteger2.get() != i3) {
                    int i6 = atomicInteger2.get();
                    zzduv zzduvVar = zzauVar.f9754do;
                    if (i6 == i4) {
                        zzduvVar.zzm(zzdur.SHAKE);
                    } else if (atomicInteger2.get() == i5) {
                        zzduvVar.zzm(zzdur.FLICK);
                    } else {
                        zzduvVar.zzm(zzdur.NONE);
                    }
                }
                zzauVar.zzr();
            }
        });
        zzL.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.ads.internal.util.zzaq
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzau.this.zzr();
            }
        });
        zzL.create().show();
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m5564if(float f, float f2, float f3, float f4) {
        float abs = Math.abs(this.f9751do.x - f);
        int i = this.f9757if;
        return abs < ((float) i) && Math.abs(this.f9751do.y - f2) < ((float) i) && Math.abs(this.f9758if.x - f3) < ((float) i) && Math.abs(this.f9758if.y - f4) < ((float) i);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f9755do);
        sb.append(",DebugSignal: ");
        sb.append(this.f9760new);
        sb.append(",AFMA Version: ");
        sb.append(this.f9756for);
        sb.append(",Ad Unit ID: ");
        return Creturn.m7984try(sb, this.f9759if, "}");
    }

    public final void zzm(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f9749do = 0;
            this.f9751do = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.f9749do;
        if (i == -1) {
            return;
        }
        zzaf zzafVar = this.f9753do;
        Handler handler = this.f9752do;
        if (i == 0) {
            if (actionMasked == 5) {
                this.f9749do = 5;
                this.f9758if = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                handler.postDelayed(zzafVar, ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeJ)).longValue());
                return;
            }
            return;
        }
        if (i == 5) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z = false;
                for (int i2 = 0; i2 < historySize; i2++) {
                    z |= !m5564if(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                }
                if (m5564if(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                    return;
                }
            }
            this.f9749do = -1;
            handler.removeCallbacks(zzafVar);
        }
    }

    public final void zzn(String str) {
        this.f9759if = str;
    }

    public final void zzo(String str) {
        this.f9756for = str;
    }

    public final void zzp(String str) {
        this.f9755do = str;
    }

    public final void zzq(String str) {
        this.f9760new = str;
    }

    public final void zzr() {
        Context context = this.f9750do;
        try {
            if (!(context instanceof Activity)) {
                zzo.zzi("Can not create dialog without Activity Context");
                return;
            }
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(com.google.android.gms.ads.internal.zzv.zzt().zzb())) {
                str = "Creative preview";
            }
            String str2 = true != com.google.android.gms.ads.internal.zzv.zzt().zzm() ? "Troubleshooting" : "Troubleshooting (enabled)";
            ArrayList arrayList = new ArrayList();
            final int m5562for = m5562for("Ad information", arrayList, true);
            final int m5562for2 = m5562for(str, arrayList, true);
            final int m5562for3 = m5562for(str2, arrayList, true);
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjc)).booleanValue();
            final int m5562for4 = m5562for("Open ad inspector", arrayList, booleanValue);
            final int m5562for5 = m5562for("Ad inspector settings", arrayList, booleanValue);
            com.google.android.gms.ads.internal.zzv.zzq();
            AlertDialog.Builder zzL = zzs.zzL(context);
            zzL.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzam
                /* JADX WARN: Code restructure failed: missing block: B:16:0x007f, code lost:
                
                    if (android.text.TextUtils.isEmpty(r0) != false) goto L16;
                 */
                @Override // android.content.DialogInterface.OnClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void onClick(android.content.DialogInterface r6, int r7) {
                    /*
                        Method dump skipped, instructions count: 272
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzam.onClick(android.content.DialogInterface, int):void");
                }
            });
            zzL.create().show();
        } catch (WindowManager.BadTokenException e) {
            zze.zzb(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    public zzau(Context context, String str) {
        this(context);
        this.f9755do = str;
    }
}
