package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.NotificationHandlerActivity;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.impl.R;
import defpackage.BinderC3652rv;
import defpackage.C3181jv;
import defpackage.C3692sc;
import defpackage.InterfaceC0456Qm;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

/* loaded from: classes.dex */
public final class zzebv extends zzbsw {
    final Map zza = new HashMap();
    private final Context zzb;
    private final zzdrw zzc;
    private final com.google.android.gms.ads.internal.util.client.zzu zzd;
    private final zzebk zze;
    private String zzf;
    private String zzg;

    public zzebv(Context context, zzebk zzebkVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzdrw zzdrwVar) {
        this.zzb = context;
        this.zzc = zzdrwVar;
        this.zzd = zzuVar;
        this.zze = zzebkVar;
    }

    public static void zzc(Context context, zzdrw zzdrwVar, zzebk zzebkVar, String str, String str2) {
        zzd(context, zzdrwVar, zzebkVar, str, str2, new HashMap());
    }

    public static void zzd(Context context, zzdrw zzdrwVar, zzebk zzebkVar, String str, String str2, Map map) {
        String str3;
        String str4 = true != com.google.android.gms.ads.internal.zzv.zzp().zzA(context) ? "offline" : C3692sc.ONLINE_EXTRAS_KEY;
        if (zzdrwVar != null) {
            zzdrv zza = zzdrwVar.zza();
            zza.zzb("gqi", str);
            zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, str2);
            zza.zzb("device_connectivity", str4);
            zza.zzb("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                zza.zzb((String) entry.getKey(), (String) entry.getValue());
            }
            str3 = zza.zze();
        } else {
            str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        zzebkVar.zzd(new zzebm(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis(), str, str3, 2));
    }

    public static final PendingIntent zzr(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str3);
        if (Build.VERSION.SDK_INT < 29 || !str.equals("offline_notification_clicked")) {
            intent.setClassName(context, AdService.CLASS_NAME);
            return zzfrk.zzb(context, 0, intent, zzfrk.zza | 1073741824, 0);
        }
        intent.setClassName(context, NotificationHandlerActivity.CLASS_NAME);
        return zzfrk.zza(context, 0, intent, 201326592);
    }

    private final AlertDialog zzs(Activity activity, final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        com.google.android.gms.ads.internal.zzv.zzq();
        AlertDialog.Builder onCancelListener = com.google.android.gms.ads.internal.util.zzs.zzL(activity).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzebn
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                com.google.android.gms.ads.internal.overlay.zzm zzmVar2 = com.google.android.gms.ads.internal.overlay.zzm.this;
                if (zzmVar2 != null) {
                    zzmVar2.zzb();
                }
            }
        });
        XmlResourceParser zzt = zzt(R.layout.offline_ads_dialog);
        if (zzt == null) {
            onCancelListener.setMessage(zzv(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            return onCancelListener.create();
        }
        try {
            View inflate = activity.getLayoutInflater().inflate(zzt, (ViewGroup) null);
            onCancelListener.setView(inflate);
            String zzu = zzu();
            if (!TextUtils.isEmpty(zzu)) {
                TextView textView = (TextView) inflate.findViewById(R.id.offline_dialog_advertiser_name);
                textView.setVisibility(0);
                textView.setText(zzu);
            }
            zzebc zzebcVar = (zzebc) this.zza.get(this.zzf);
            Drawable zza = zzebcVar != null ? zzebcVar.zza() : null;
            if (zza != null) {
                ((ImageView) inflate.findViewById(R.id.offline_dialog_image)).setImageDrawable(zza);
            }
            AlertDialog create = onCancelListener.create();
            create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            return create;
        } catch (Resources.NotFoundException unused) {
            onCancelListener.setMessage(zzv(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            return onCancelListener.create();
        }
    }

    private static XmlResourceParser zzt(int i) {
        Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
        if (zze == null) {
            return null;
        }
        try {
            return zze.getLayout(i);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    private final String zzu() {
        zzebc zzebcVar = (zzebc) this.zza.get(this.zzf);
        return zzebcVar == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : zzebcVar.zzb();
    }

    private static String zzv(int i, String str) {
        Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
        if (zze == null) {
            return str;
        }
        try {
            return zze.getString(i);
        } catch (Resources.NotFoundException unused) {
            return str;
        }
    }

    private final void zzw(String str, String str2, Map map) {
        zzd(this.zzb, this.zzc, this.zze, str, str2, map);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzx() {
        /*
            r6 = this;
            com.google.android.gms.ads.internal.zzv.zzq()     // Catch: android.os.RemoteException -> L42
            android.content.Context r0 = r6.zzb     // Catch: android.os.RemoteException -> L42
            com.google.android.gms.ads.internal.util.zzbr r0 = com.google.android.gms.ads.internal.util.zzs.zzA(r0)     // Catch: android.os.RemoteException -> L42
            android.content.Context r1 = r6.zzb     // Catch: android.os.RemoteException -> L42
            rv r2 = new rv     // Catch: android.os.RemoteException -> L42
            r2.<init>(r1)     // Catch: android.os.RemoteException -> L42
            com.google.android.gms.ads.internal.offline.buffering.zza r1 = new com.google.android.gms.ads.internal.offline.buffering.zza     // Catch: android.os.RemoteException -> L42
            java.lang.String r3 = r6.zzg     // Catch: android.os.RemoteException -> L42
            java.lang.String r4 = r6.zzf     // Catch: android.os.RemoteException -> L42
            java.util.Map r5 = r6.zza     // Catch: android.os.RemoteException -> L42
            java.lang.Object r5 = r5.get(r4)     // Catch: android.os.RemoteException -> L42
            com.google.android.gms.internal.ads.zzebc r5 = (com.google.android.gms.internal.ads.zzebc) r5     // Catch: android.os.RemoteException -> L42
            if (r5 != 0) goto L23
            java.lang.String r5 = ""
            goto L27
        L23:
            java.lang.String r5 = r5.zzc()     // Catch: android.os.RemoteException -> L42
        L27:
            r1.<init>(r3, r4, r5)     // Catch: android.os.RemoteException -> L42
            boolean r1 = r0.zzg(r2, r1)     // Catch: android.os.RemoteException -> L42
            if (r1 != 0) goto L49
            android.content.Context r2 = r6.zzb     // Catch: android.os.RemoteException -> L40
            rv r3 = new rv     // Catch: android.os.RemoteException -> L40
            r3.<init>(r2)     // Catch: android.os.RemoteException -> L40
            java.lang.String r2 = r6.zzg     // Catch: android.os.RemoteException -> L40
            java.lang.String r4 = r6.zzf     // Catch: android.os.RemoteException -> L40
            boolean r1 = r0.zzf(r3, r2, r4)     // Catch: android.os.RemoteException -> L40
            goto L49
        L40:
            r0 = move-exception
            goto L44
        L42:
            r0 = move-exception
            r1 = 0
        L44:
            java.lang.String r2 = "Failed to schedule offline notification poster."
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r2, r0)
        L49:
            if (r1 != 0) goto L5d
            com.google.android.gms.internal.ads.zzebk r0 = r6.zze
            java.lang.String r1 = r6.zzf
            r0.zzc(r1)
            java.lang.String r0 = r6.zzf
            java.lang.String r1 = "offline_notification_worker_not_scheduled"
            com.google.android.gms.internal.ads.zzfxq r2 = com.google.android.gms.internal.ads.zzfxq.zzd()
            r6.zzw(r0, r1, r2)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzebv.zzx():void");
    }

    private final void zzy(final Activity activity, final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        com.google.android.gms.ads.internal.zzv.zzq();
        if (new C3181jv(activity).m7177do()) {
            zzx();
            zzz(activity, zzmVar);
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 12345);
                zzw(this.zzf, "asnpdi", zzfxq.zzd());
                return;
            }
            com.google.android.gms.ads.internal.zzv.zzq();
            AlertDialog.Builder zzL = com.google.android.gms.ads.internal.util.zzs.zzL(activity);
            zzL.setTitle(zzv(R.string.notifications_permission_title, "Allow app to send you notifications?")).setPositiveButton(zzv(R.string.notifications_permission_confirm, "Allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzebo
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzebv.this.zzk(activity, zzmVar, dialogInterface, i);
                }
            }).setNegativeButton(zzv(R.string.notifications_permission_decline, "Don't allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzebp
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzebv.this.zzl(zzmVar, dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzebq
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    zzebv.this.zzm(zzmVar, dialogInterface);
                }
            });
            zzL.create().show();
            zzw(this.zzf, "rtsdi", zzfxq.zzd());
        }
    }

    private final void zzz(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        AlertDialog zzs = zzs(activity, zzmVar);
        zzs.show();
        Timer timer = new Timer();
        timer.schedule(new zzebu(this, zzs, timer, zzmVar), 3000L);
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zze(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            boolean zzA = com.google.android.gms.ads.internal.zzv.zzp().zzA(this.zzb);
            HashMap hashMap = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                r8 = true == zzA ? (char) 1 : (char) 2;
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Intent launchIntentForPackage = this.zzb.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.VIEW");
                        launchIntentForPackage.setData(Uri.parse(stringExtra3));
                    }
                    launchIntentForPackage.addFlags(268435456);
                    this.zzb.startActivity(launchIntentForPackage);
                    hashMap.put("olaa", "olas");
                } catch (ActivityNotFoundException unused) {
                    hashMap.put("olaa", "olaf");
                }
            } else {
                hashMap.put("offline_notification_action", "offline_notification_dismissed");
            }
            zzw(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = this.zze.getWritableDatabase();
                if (r8 == 1) {
                    this.zze.zzg(writableDatabase, this.zzd, stringExtra2);
                } else {
                    zzebk.zzi(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to get writable offline buffering database: ".concat(e.toString()));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzf(String[] strArr, int[] iArr, InterfaceC0456Qm interfaceC0456Qm) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals("android.permission.POST_NOTIFICATIONS")) {
                zzebx zzebxVar = (zzebx) BinderC3652rv.o(interfaceC0456Qm);
                Activity zza = zzebxVar.zza();
                com.google.android.gms.ads.internal.overlay.zzm zzb = zzebxVar.zzb();
                HashMap hashMap = new HashMap();
                if (iArr[i] == 0) {
                    hashMap.put("dialog_action", "confirm");
                    zzx();
                    zzz(zza, zzb);
                } else {
                    hashMap.put("dialog_action", "dismiss");
                    if (zzb != null) {
                        zzb.zzb();
                    }
                }
                zzw(this.zzf, "asnpdc", hashMap);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzg(InterfaceC0456Qm interfaceC0456Qm) {
        zzebx zzebxVar = (zzebx) BinderC3652rv.o(interfaceC0456Qm);
        final Activity zza = zzebxVar.zza();
        final com.google.android.gms.ads.internal.overlay.zzm zzb = zzebxVar.zzb();
        this.zzf = zzebxVar.zzc();
        this.zzg = zzebxVar.zzd();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzip)).booleanValue()) {
            zzy(zza, zzb);
            return;
        }
        zzw(this.zzf, "dialog_impression", zzfxq.zzd());
        com.google.android.gms.ads.internal.zzv.zzq();
        AlertDialog.Builder zzL = com.google.android.gms.ads.internal.util.zzs.zzL(zza);
        zzL.setTitle(zzv(R.string.offline_opt_in_title, "Open ad when you're back online.")).setMessage(zzv(R.string.offline_opt_in_message, "We'll send you a notification with a link to the advertiser site.")).setPositiveButton(zzv(R.string.offline_opt_in_confirm, "OK"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzebr
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzebv.this.zzn(zza, zzb, dialogInterface, i);
            }
        }).setNegativeButton(zzv(R.string.offline_opt_in_decline, "No thanks"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzebs
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzebv.this.zzo(zzb, dialogInterface, i);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzebt
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzebv.this.zzp(zzb, dialogInterface);
            }
        });
        zzL.create().show();
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzh() {
        final com.google.android.gms.ads.internal.util.client.zzu zzuVar = this.zzd;
        this.zze.zze(new zzffr() { // from class: com.google.android.gms.internal.ads.zzebd
            @Override // com.google.android.gms.internal.ads.zzffr
            public final Object zza(Object obj) {
                zzebk.zzb(com.google.android.gms.ads.internal.util.client.zzu.this, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzi(InterfaceC0456Qm interfaceC0456Qm, String str, String str2) {
        zzj(interfaceC0456Qm, new com.google.android.gms.ads.internal.offline.buffering.zza(str, str2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|1|(1:3)(1:28)|4|(9:8|9|(2:21|22)|11|12|13|14|15|16)|27|(0)|11|12|13|14|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00dd, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00de, code lost:
    
        r11.put("notification_not_shown_reason", r10.getMessage());
        r10 = "offline_notification_failed";
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbsx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(defpackage.InterfaceC0456Qm r10, com.google.android.gms.ads.internal.offline.buffering.zza r11) {
        /*
            r9 = this;
            java.lang.Object r10 = defpackage.BinderC3652rv.o(r10)
            android.content.Context r10 = (android.content.Context) r10
            java.lang.String r0 = r11.zza
            java.lang.String r1 = r11.zzb
            java.lang.String r11 = r11.zzc
            java.lang.String r2 = r9.zzu()
            com.google.android.gms.ads.internal.util.zzaa r3 = com.google.android.gms.ads.internal.zzv.zzr()
            java.lang.String r4 = "AdMob Offline Notifications"
            java.lang.String r5 = "offline_notification_channel"
            r3.zzh(r10, r5, r4)
            java.lang.String r3 = "offline_notification_clicked"
            android.app.PendingIntent r3 = zzr(r10, r3, r1, r0)
            java.lang.String r4 = "offline_notification_dismissed"
            android.app.PendingIntent r0 = zzr(r10, r4, r1, r0)
            fv r4 = new fv
            r4.<init>(r10, r5)
            boolean r5 = android.text.TextUtils.isEmpty(r2)
            r6 = 1
            if (r5 != 0) goto L4b
            int r5 = com.google.android.gms.ads.impl.R.string.offline_notification_title_with_advertiser
            java.lang.String r7 = "You are back online! Continue learning about %s"
            java.lang.String r5 = zzv(r5, r7)
            java.lang.Object[] r7 = new java.lang.Object[r6]
            r8 = 0
            r7[r8] = r2
            java.lang.String r2 = java.lang.String.format(r5, r7)
            java.lang.CharSequence r2 = defpackage.C2778fv.m6684if(r2)
            r4.f13005do = r2
            goto L59
        L4b:
            int r2 = com.google.android.gms.ads.impl.R.string.offline_notification_title
            java.lang.String r5 = "You are back online! Let's pick up where we left off"
            java.lang.String r2 = zzv(r2, r5)
            java.lang.CharSequence r2 = defpackage.C2778fv.m6684if(r2)
            r4.f13005do = r2
        L59:
            r4.m6686for(r6)
            android.app.Notification r2 = r4.f12999do
            r2.deleteIntent = r0
            r4.f13000do = r3
            android.content.pm.ApplicationInfo r0 = r10.getApplicationInfo()
            int r0 = r0.icon
            r2.icon = r0
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zziq
            com.google.android.gms.internal.ads.zzbcj r2 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r0 = r2.zza(r0)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            r4.f13012if = r0
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzis
            com.google.android.gms.internal.ads.zzbcj r2 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r0 = r2.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 0
            if (r0 == 0) goto La8
            boolean r0 = r11.isEmpty()
            if (r0 != 0) goto La8
            java.net.URL r0 = new java.net.URL     // Catch: java.io.IOException -> La7
            r0.<init>(r11)     // Catch: java.io.IOException -> La7
            java.net.URLConnection r11 = r0.openConnection()     // Catch: java.io.IOException -> La7
            java.io.InputStream r11 = r11.getInputStream()     // Catch: java.io.IOException -> La7
            android.graphics.Bitmap r11 = android.graphics.BitmapFactory.decodeStream(r11)     // Catch: java.io.IOException -> La7
            goto La9
        La7:
        La8:
            r11 = r2
        La9:
            if (r11 == 0) goto Lc3
            r4.m6687new(r11)     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            dv r0 = new dv     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            r0.<init>()     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            androidx.core.graphics.drawable.IconCompat r3 = new androidx.core.graphics.drawable.IconCompat     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            r3.<init>(r6)     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            r3.f6525do = r11     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            r0.f12553do = r3     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            r0.f12555if = r2     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            r0.f12554do = r6     // Catch: android.content.res.Resources.NotFoundException -> Lc3
            r4.m6688try(r0)     // Catch: android.content.res.Resources.NotFoundException -> Lc3
        Lc3:
            java.lang.String r11 = "notification"
            java.lang.Object r10 = r10.getSystemService(r11)
            android.app.NotificationManager r10 = (android.app.NotificationManager) r10
            java.util.HashMap r11 = new java.util.HashMap
            r11.<init>()
            android.app.Notification r0 = r4.m6685do()     // Catch: java.lang.IllegalArgumentException -> Ldd
            r2 = 54321(0xd431, float:7.612E-41)
            r10.notify(r1, r2, r0)     // Catch: java.lang.IllegalArgumentException -> Ldd
            java.lang.String r10 = "offline_notification_impression"
            goto Le9
        Ldd:
            r10 = move-exception
            java.lang.String r0 = "notification_not_shown_reason"
            java.lang.String r10 = r10.getMessage()
            r11.put(r0, r10)
            java.lang.String r10 = "offline_notification_failed"
        Le9:
            r9.zzw(r1, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzebv.zzj(Qm, com.google.android.gms.ads.internal.offline.buffering.zza):void");
    }

    public final /* synthetic */ void zzk(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "confirm");
        zzw(this.zzf, "rtsdc", hashMap);
        activity.startActivity(com.google.android.gms.ads.internal.zzv.zzr().zzf(activity));
        zzx();
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final /* synthetic */ void zzl(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        this.zze.zzc(this.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzw(this.zzf, "rtsdc", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final /* synthetic */ void zzm(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface) {
        this.zze.zzc(this.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzw(this.zzf, "rtsdc", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final /* synthetic */ void zzn(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "confirm");
        zzw(this.zzf, "dialog_click", hashMap);
        zzy(activity, zzmVar);
    }

    public final /* synthetic */ void zzo(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        this.zze.zzc(this.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzw(this.zzf, "dialog_click", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final /* synthetic */ void zzp(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface) {
        this.zze.zzc(this.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzw(this.zzf, "dialog_click", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final void zzq(String str, zzdif zzdifVar) {
        String zzx = zzdifVar.zzx();
        String zzB = zzdifVar.zzB();
        boolean isEmpty = TextUtils.isEmpty(zzx);
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (isEmpty) {
            zzx = zzB != null ? zzB : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        zzbfw zzm = zzdifVar.zzm();
        if (zzm != null) {
            try {
                str2 = zzm.zze().toString();
            } catch (RemoteException unused) {
            }
        }
        zzbfw zzn = zzdifVar.zzn();
        Drawable drawable = null;
        if (zzn != null) {
            try {
                InterfaceC0456Qm zzf = zzn.zzf();
                if (zzf != null) {
                    drawable = (Drawable) BinderC3652rv.o(zzf);
                }
            } catch (RemoteException unused2) {
            }
        }
        this.zza.put(str, new zzeay(zzx, str2, drawable));
    }
}
