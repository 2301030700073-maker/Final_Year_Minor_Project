package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
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
import androidx.core.app.NotificationManagerCompat;
import androidx.media3.common.C;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.NotificationHandlerActivity;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.net.HttpHeaders;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzegj extends zzbva {
    final Map zza = new HashMap();
    private final Context zzb;
    private final zzdvi zzc;
    private final com.google.android.gms.ads.internal.util.client.zzu zzd;
    private final zzefy zze;
    private String zzf;
    private String zzg;

    public zzegj(Context context, zzefy zzefyVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzdvi zzdviVar) {
        this.zzb = context;
        this.zzc = zzdviVar;
        this.zzd = zzuVar;
        this.zze = zzefyVar;
    }

    public static void zzd(Context context, zzdvi zzdviVar, zzefy zzefyVar, String str, String str2) {
        zzk(context, zzdviVar, zzefyVar, str, str2, new HashMap());
    }

    public static void zzk(Context context, zzdvi zzdviVar, zzefy zzefyVar, String str, String str2, Map map) {
        String str3;
        String str4 = true != com.google.android.gms.ads.internal.zzt.zzh().zzs(context) ? "offline" : "online";
        if (zzdviVar != null) {
            zzdvh zza = zzdviVar.zza();
            zza.zzc("gqi", str);
            zza.zzc("action", str2);
            zza.zzc("device_connectivity", str4);
            zza.zzc("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                zza.zzc((String) entry.getKey(), (String) entry.getValue());
            }
            str3 = zza.zzg();
        } else {
            str3 = "";
        }
        zzefyVar.zze(new zzega(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis(), str, str3, 2));
    }

    public static final PendingIntent zzr(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str3);
        if (Build.VERSION.SDK_INT >= 29 && str.equals("offline_notification_clicked")) {
            intent.setClassName(context, NotificationHandlerActivity.CLASS_NAME);
            return zzgjf.zza(context, 0, intent, 201326592);
        }
        intent.setClassName(context, AdService.CLASS_NAME);
        ClipData clipData = zzgjf.zza;
        return zzgjf.zzb(context, 0, intent, 1140850688, 0);
    }

    private final void zzs(final Activity activity, final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        com.google.android.gms.ads.internal.zzt.zzc();
        if (NotificationManagerCompat.from(activity).areNotificationsEnabled()) {
            zzt();
            zzu(activity, zzmVar);
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 12345);
                zzw(this.zzf, "asnpdi", zzgph.zza());
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            AlertDialog.Builder zzO = com.google.android.gms.ads.internal.util.zzs.zzO(activity);
            zzO.setTitle(zzx(R.string.notifications_permission_title, "Allow app to send you notifications?")).setPositiveButton(zzx(R.string.notifications_permission_confirm, HttpHeaders.ALLOW), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzege
                @Override // android.content.DialogInterface.OnClickListener
                public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
                    zzegj.this.zzo(activity, zzmVar, dialogInterface, i);
                }
            }).setNegativeButton(zzx(R.string.notifications_permission_decline, "Don't allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzegf
                @Override // android.content.DialogInterface.OnClickListener
                public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
                    zzegj.this.zzp(zzmVar, dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzegg
                @Override // android.content.DialogInterface.OnCancelListener
                public final /* synthetic */ void onCancel(DialogInterface dialogInterface) {
                    zzegj.this.zzq(zzmVar, dialogInterface);
                }
            });
            zzO.create().show();
            zzw(this.zzf, "rtsdi", zzgph.zza());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzt() {
        /*
            r7 = this;
            com.google.android.gms.ads.internal.zzt.zzc()     // Catch: android.os.RemoteException -> L3e
            android.content.Context r0 = r7.zzb     // Catch: android.os.RemoteException -> L3e
            com.google.android.gms.ads.internal.util.zzbo r1 = com.google.android.gms.ads.internal.util.zzs.zzD(r0)     // Catch: android.os.RemoteException -> L3e
            com.google.android.gms.dynamic.IObjectWrapper r2 = com.google.android.gms.dynamic.ObjectWrapper.wrap(r0)     // Catch: android.os.RemoteException -> L3e
            com.google.android.gms.ads.internal.offline.buffering.zza r3 = new com.google.android.gms.ads.internal.offline.buffering.zza     // Catch: android.os.RemoteException -> L3e
            java.lang.String r4 = r7.zzg     // Catch: android.os.RemoteException -> L3e
            java.lang.String r5 = r7.zzf     // Catch: android.os.RemoteException -> L3e
            java.util.Map r6 = r7.zza     // Catch: android.os.RemoteException -> L3e
            java.lang.Object r6 = r6.get(r5)     // Catch: android.os.RemoteException -> L3e
            com.google.android.gms.internal.ads.zzefq r6 = (com.google.android.gms.internal.ads.zzefq) r6     // Catch: android.os.RemoteException -> L3e
            if (r6 != 0) goto L20
            java.lang.String r6 = ""
            goto L24
        L20:
            java.lang.String r6 = r6.zzb()     // Catch: android.os.RemoteException -> L3e
        L24:
            r3.<init>(r4, r5, r6)     // Catch: android.os.RemoteException -> L3e
            boolean r2 = r1.zzg(r2, r3)     // Catch: android.os.RemoteException -> L3e
            if (r2 != 0) goto L3c
            com.google.android.gms.dynamic.IObjectWrapper r0 = com.google.android.gms.dynamic.ObjectWrapper.wrap(r0)     // Catch: android.os.RemoteException -> L3a
            java.lang.String r3 = r7.zzg     // Catch: android.os.RemoteException -> L3a
            java.lang.String r4 = r7.zzf     // Catch: android.os.RemoteException -> L3a
            boolean r0 = r1.zze(r0, r3, r4)     // Catch: android.os.RemoteException -> L3a
            goto L48
        L3a:
            r0 = move-exception
            goto L40
        L3c:
            r0 = 1
            goto L48
        L3e:
            r0 = move-exception
            r2 = 0
        L40:
            int r1 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r1 = "Failed to schedule offline notification poster."
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r1, r0)
            r0 = r2
        L48:
            if (r0 != 0) goto L5c
            com.google.android.gms.internal.ads.zzefy r0 = r7.zze
            java.lang.String r1 = r7.zzf
            r0.zzd(r1)
            java.lang.String r0 = r7.zzf
            java.lang.String r1 = "offline_notification_worker_not_scheduled"
            com.google.android.gms.internal.ads.zzgph r2 = com.google.android.gms.internal.ads.zzgph.zza()
            r7.zzw(r0, r1, r2)
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzegj.zzt():void");
    }

    private final void zzu(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        AlertDialog zzv = zzv(activity, zzmVar);
        zzv.show();
        Timer timer = new Timer();
        timer.schedule(new zzegb(this, zzv, timer, zzmVar), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    private final AlertDialog zzv(Activity activity, final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        com.google.android.gms.ads.internal.zzt.zzc();
        AlertDialog.Builder onCancelListener = com.google.android.gms.ads.internal.util.zzs.zzO(activity).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzegh
            @Override // android.content.DialogInterface.OnCancelListener
            public final /* synthetic */ void onCancel(DialogInterface dialogInterface) {
                com.google.android.gms.ads.internal.overlay.zzm zzmVar2 = com.google.android.gms.ads.internal.overlay.zzm.this;
                if (zzmVar2 != null) {
                    zzmVar2.zzb();
                }
            }
        });
        XmlResourceParser zzy = zzy(R.layout.offline_ads_dialog);
        if (zzy == null) {
            onCancelListener.setMessage(zzx(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            return onCancelListener.create();
        }
        try {
            View inflate = activity.getLayoutInflater().inflate(zzy, (ViewGroup) null);
            onCancelListener.setView(inflate);
            String zzz = zzz();
            if (!TextUtils.isEmpty(zzz)) {
                TextView textView = (TextView) inflate.findViewById(R.id.offline_dialog_advertiser_name);
                textView.setVisibility(0);
                textView.setText(zzz);
            }
            zzefq zzefqVar = (zzefq) this.zza.get(this.zzf);
            Drawable zzc = zzefqVar != null ? zzefqVar.zzc() : null;
            if (zzc != null) {
                ((ImageView) inflate.findViewById(R.id.offline_dialog_image)).setImageDrawable(zzc);
            }
            AlertDialog create = onCancelListener.create();
            create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            return create;
        } catch (Resources.NotFoundException unused) {
            onCancelListener.setMessage(zzx(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            return onCancelListener.create();
        }
    }

    private final void zzw(String str, String str2, Map map) {
        zzk(this.zzb, this.zzc, this.zze, str, str2, map);
    }

    private static String zzx(int i, String str) {
        Resources zzf = com.google.android.gms.ads.internal.zzt.zzh().zzf();
        if (zzf == null) {
            return str;
        }
        try {
            return zzf.getString(i);
        } catch (Resources.NotFoundException unused) {
            return str;
        }
    }

    private static XmlResourceParser zzy(int i) {
        Resources zzf = com.google.android.gms.ads.internal.zzt.zzh().zzf();
        if (zzf == null) {
            return null;
        }
        try {
            return zzf.getLayout(i);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    private final String zzz() {
        zzefq zzefqVar = (zzefq) this.zza.get(this.zzf);
        return zzefqVar == null ? "" : zzefqVar.zza();
    }

    public final void zzc(String str, zzdlq zzdlqVar) {
        String zzQ = zzdlqVar.zzQ();
        String zzB = zzdlqVar.zzB();
        String str2 = "";
        if (TextUtils.isEmpty(zzQ)) {
            zzQ = zzB != null ? zzB : "";
        }
        zzbii zzD = zzdlqVar.zzD();
        if (zzD != null) {
            try {
                str2 = zzD.zzc().toString();
            } catch (RemoteException unused) {
            }
        }
        zzbii zzP = zzdlqVar.zzP();
        Drawable drawable = null;
        if (zzP != null) {
            try {
                IObjectWrapper zzb = zzP.zzb();
                if (zzb != null) {
                    drawable = (Drawable) ObjectWrapper.unwrap(zzb);
                }
            } catch (RemoteException unused2) {
            }
        }
        this.zza.put(str, new zzefn(zzQ, str2, drawable));
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final void zze(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra != null) {
            if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
                String stringExtra2 = intent.getStringExtra("gws_query_id");
                String stringExtra3 = intent.getStringExtra("uri");
                Context context = this.zzb;
                boolean zzs = com.google.android.gms.ads.internal.zzt.zzh().zzs(context);
                HashMap hashMap = new HashMap();
                if (stringExtra.equals("offline_notification_clicked")) {
                    hashMap.put("offline_notification_action", "offline_notification_clicked");
                    r9 = true == zzs ? (char) 1 : (char) 2;
                    hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                    hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                    try {
                        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                        if (launchIntentForPackage == null) {
                            launchIntentForPackage = new Intent("android.intent.action.VIEW");
                            launchIntentForPackage.setData(Uri.parse(stringExtra3));
                        }
                        launchIntentForPackage.addFlags(268435456);
                        context.startActivity(launchIntentForPackage);
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
                    if (r9 == 1) {
                        this.zze.zzb(writableDatabase, this.zzd, stringExtra2);
                    } else {
                        zzefy.zzi(writableDatabase, stringExtra2);
                    }
                } catch (SQLiteException e) {
                    String concat = "Failed to get writable offline buffering database: ".concat(e.toString());
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf(concat);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final void zzf(IObjectWrapper iObjectWrapper, String str, String str2) {
        zzj(iObjectWrapper, new com.google.android.gms.ads.internal.offline.buffering.zza(str, str2, ""));
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final void zzg() {
        final com.google.android.gms.ads.internal.util.client.zzu zzuVar = this.zzd;
        this.zze.zza(new zzfjx() { // from class: com.google.android.gms.internal.ads.zzefw
            @Override // com.google.android.gms.internal.ads.zzfjx
            public final /* synthetic */ Object zza(Object obj) {
                zzefy.zzf(com.google.android.gms.ads.internal.util.client.zzu.this, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final void zzh(IObjectWrapper iObjectWrapper) {
        zzegl zzeglVar = (zzegl) ObjectWrapper.unwrap(iObjectWrapper);
        final Activity zza = zzeglVar.zza();
        final com.google.android.gms.ads.internal.overlay.zzm zzb = zzeglVar.zzb();
        this.zzf = zzeglVar.zzc();
        this.zzg = zzeglVar.zzd();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjp)).booleanValue()) {
            zzs(zza, zzb);
            return;
        }
        zzw(this.zzf, "dialog_impression", zzgph.zza());
        com.google.android.gms.ads.internal.zzt.zzc();
        AlertDialog.Builder zzO = com.google.android.gms.ads.internal.util.zzs.zzO(zza);
        zzO.setTitle(zzx(R.string.offline_opt_in_title, "Open ad when you're back online.")).setMessage(zzx(R.string.offline_opt_in_message, "We'll send you a notification with a link to the advertiser site.")).setPositiveButton(zzx(R.string.offline_opt_in_confirm, "OK"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzegi
            @Override // android.content.DialogInterface.OnClickListener
            public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
                zzegj.this.zzl(zza, zzb, dialogInterface, i);
            }
        }).setNegativeButton(zzx(R.string.offline_opt_in_decline, "No thanks"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzegc
            @Override // android.content.DialogInterface.OnClickListener
            public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
                zzegj.this.zzm(zzb, dialogInterface, i);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzegd
            @Override // android.content.DialogInterface.OnCancelListener
            public final /* synthetic */ void onCancel(DialogInterface dialogInterface) {
                zzegj.this.zzn(zzb, dialogInterface);
            }
        });
        zzO.create().show();
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final void zzi(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals("android.permission.POST_NOTIFICATIONS")) {
                zzegl zzeglVar = (zzegl) ObjectWrapper.unwrap(iObjectWrapper);
                Activity zza = zzeglVar.zza();
                com.google.android.gms.ads.internal.overlay.zzm zzb = zzeglVar.zzb();
                HashMap hashMap = new HashMap();
                if (iArr[i] == 0) {
                    hashMap.put("dialog_action", "confirm");
                    zzt();
                    zzu(zza, zzb);
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

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|1|(1:3)(1:28)|4|(9:8|9|(2:21|22)|11|12|13|14|15|16)|27|(0)|11|12|13|14|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00da, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00db, code lost:
    
        r9.put("notification_not_shown_reason", r8.getMessage());
        r8 = "offline_notification_failed";
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbvb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(com.google.android.gms.dynamic.IObjectWrapper r8, com.google.android.gms.ads.internal.offline.buffering.zza r9) {
        /*
            r7 = this;
            java.lang.Object r8 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r8)
            android.content.Context r8 = (android.content.Context) r8
            java.lang.String r0 = r9.zza
            java.lang.String r1 = r9.zzb
            java.lang.String r9 = r9.zzc
            java.lang.String r2 = r7.zzz()
            com.google.android.gms.ads.internal.util.zzz r3 = com.google.android.gms.ads.internal.zzt.zzf()
            java.lang.String r4 = "offline_notification_channel"
            java.lang.String r5 = "AdMob Offline Notifications"
            r3.zzg(r8, r4, r5)
            java.lang.String r3 = "offline_notification_clicked"
            android.app.PendingIntent r3 = zzr(r8, r3, r1, r0)
            java.lang.String r5 = "offline_notification_dismissed"
            android.app.PendingIntent r0 = zzr(r8, r5, r1, r0)
            androidx.core.app.NotificationCompat$Builder r5 = new androidx.core.app.NotificationCompat$Builder
            r5.<init>(r8, r4)
            boolean r4 = android.text.TextUtils.isEmpty(r2)
            if (r4 != 0) goto L46
            int r4 = com.google.android.gms.ads.impl.R.string.offline_notification_title_with_advertiser
            java.lang.String r6 = "You are back online! Continue learning about %s"
            java.lang.String r4 = zzx(r4, r6)
            java.lang.Object[] r2 = new java.lang.Object[]{r2}
            java.lang.String r2 = java.lang.String.format(r4, r2)
            r5.setContentTitle(r2)
            goto L51
        L46:
            int r2 = com.google.android.gms.ads.impl.R.string.offline_notification_title
            java.lang.String r4 = "You are back online! Let's pick up where we left off"
            java.lang.String r2 = zzx(r2, r4)
            r5.setContentTitle(r2)
        L51:
            r2 = 1
            androidx.core.app.NotificationCompat$Builder r2 = r5.setAutoCancel(r2)
            androidx.core.app.NotificationCompat$Builder r0 = r2.setDeleteIntent(r0)
            androidx.core.app.NotificationCompat$Builder r0 = r0.setContentIntent(r3)
            android.content.pm.ApplicationInfo r2 = r8.getApplicationInfo()
            int r2 = r2.icon
            androidx.core.app.NotificationCompat$Builder r0 = r0.setSmallIcon(r2)
            com.google.android.gms.internal.ads.zzbel r2 = com.google.android.gms.internal.ads.zzbeu.zzjq
            com.google.android.gms.internal.ads.zzbes r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.zzd(r2)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            r0.setPriority(r2)
            com.google.android.gms.internal.ads.zzbel r0 = com.google.android.gms.internal.ads.zzbeu.zzjs
            com.google.android.gms.internal.ads.zzbes r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r2.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 0
            if (r0 == 0) goto La6
            boolean r0 = r9.isEmpty()
            if (r0 != 0) goto La6
            java.net.URL r0 = new java.net.URL     // Catch: java.io.IOException -> La6
            r0.<init>(r9)     // Catch: java.io.IOException -> La6
            java.net.URLConnection r9 = r0.openConnection()     // Catch: java.io.IOException -> La6
            java.io.InputStream r9 = r9.getInputStream()     // Catch: java.io.IOException -> La6
            android.graphics.Bitmap r9 = android.graphics.BitmapFactory.decodeStream(r9)     // Catch: java.io.IOException -> La6
            goto La7
        La6:
            r9 = r2
        La7:
            if (r9 == 0) goto Lc0
            androidx.core.app.NotificationCompat$Builder r0 = r5.setLargeIcon(r9)     // Catch: android.content.res.Resources.NotFoundException -> Lc0
            androidx.core.app.NotificationCompat$BigPictureStyle r3 = new androidx.core.app.NotificationCompat$BigPictureStyle     // Catch: android.content.res.Resources.NotFoundException -> Lc0
            r3.<init>()     // Catch: android.content.res.Resources.NotFoundException -> Lc0
            androidx.core.app.NotificationCompat$BigPictureStyle r9 = r3.bigPicture(r9)     // Catch: android.content.res.Resources.NotFoundException -> Lc0
            r3 = r2
            android.graphics.Bitmap r3 = (android.graphics.Bitmap) r3     // Catch: android.content.res.Resources.NotFoundException -> Lc0
            androidx.core.app.NotificationCompat$BigPictureStyle r9 = r9.bigLargeIcon(r2)     // Catch: android.content.res.Resources.NotFoundException -> Lc0
            r0.setStyle(r9)     // Catch: android.content.res.Resources.NotFoundException -> Lc0
        Lc0:
            java.lang.String r9 = "notification"
            java.lang.Object r8 = r8.getSystemService(r9)
            android.app.NotificationManager r8 = (android.app.NotificationManager) r8
            java.util.HashMap r9 = new java.util.HashMap
            r9.<init>()
            android.app.Notification r0 = r5.build()     // Catch: java.lang.IllegalArgumentException -> Lda
            r2 = 54321(0xd431, float:7.612E-41)
            r8.notify(r1, r2, r0)     // Catch: java.lang.IllegalArgumentException -> Lda
            java.lang.String r8 = "offline_notification_impression"
            goto Le6
        Lda:
            r8 = move-exception
            java.lang.String r0 = "notification_not_shown_reason"
            java.lang.String r8 = r8.getMessage()
            r9.put(r0, r8)
            java.lang.String r8 = "offline_notification_failed"
        Le6:
            r7.zzw(r1, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzegj.zzj(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza):void");
    }

    final /* synthetic */ void zzl(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "confirm");
        zzw(this.zzf, "dialog_click", hashMap);
        zzs(activity, zzmVar);
    }

    final /* synthetic */ void zzm(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        this.zze.zzd(this.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzw(this.zzf, "dialog_click", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    final /* synthetic */ void zzn(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface) {
        this.zze.zzd(this.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzw(this.zzf, "dialog_click", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    final /* synthetic */ void zzo(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "confirm");
        zzw(this.zzf, "rtsdc", hashMap);
        activity.startActivity(com.google.android.gms.ads.internal.zzt.zzf().zzi(activity));
        zzt();
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    final /* synthetic */ void zzp(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        this.zze.zzd(this.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzw(this.zzf, "rtsdc", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    final /* synthetic */ void zzq(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface) {
        this.zze.zzd(this.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzw(this.zzf, "rtsdc", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }
}
