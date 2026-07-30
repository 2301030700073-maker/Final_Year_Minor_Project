package c.b.a.c.d;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Person;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.graphics.drawable.IconCompat;
import b.e.b.h;
import b.e.b.i;
import b.e.b.j;
import b.e.b.k;
import b.e.b.l;
import b.i.b.ActivityC0124t;
import b.i.b.X;
import c.b.a.c.d.j.x;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.google.android.gms.common.ErrorDialogFragment;
import com.google.android.gms.common.SupportErrorDialogFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f2871b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final b f2872c = new b();

    private final String zza() {
        synchronized (f2871b) {
        }
        return null;
    }

    @Override // c.b.a.c.d.c
    public Intent a(Context context, int i, String str) {
        return super.a(context, i, str);
    }

    @Override // c.b.a.c.d.c
    public PendingIntent b(Context context, int i, int i2, String str) {
        return super.b(context, i, i2, null);
    }

    public boolean d(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog create;
        x xVar = new x(super.a(activity, i, "d"), activity, i2);
        if (i == 0) {
            create = null;
        } else {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
            if (builder == null) {
                builder = new AlertDialog.Builder(activity);
            }
            builder.setMessage(c.b.a.c.d.j.w.f(activity, i));
            builder.setOnCancelListener(onCancelListener);
            Resources resources = activity.getResources();
            String string = i != 1 ? i != 2 ? i != 3 ? resources.getString(R.string.ok) : resources.getString(com.android.systemui.shared.R.string.common_google_play_services_enable_button) : resources.getString(com.android.systemui.shared.R.string.common_google_play_services_update_button) : resources.getString(com.android.systemui.shared.R.string.common_google_play_services_install_button);
            if (string != null) {
                builder.setPositiveButton(string, xVar);
            }
            String b2 = c.b.a.c.d.j.w.b(activity, i);
            if (b2 != null) {
                builder.setTitle(b2);
            }
            create = builder.create();
        }
        if (create == null) {
            return false;
        }
        if (activity instanceof ActivityC0124t) {
            X supportFragmentManager = ((ActivityC0124t) activity).getSupportFragmentManager();
            SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
            c.b.a.c.b.a.S(create, "Cannot display null dialog");
            create.setOnCancelListener(null);
            create.setOnDismissListener(null);
            supportErrorDialogFragment.f3368a = create;
            supportErrorDialogFragment.f3369b = onCancelListener;
            supportErrorDialogFragment.show(supportFragmentManager, "GooglePlayServicesErrorDialog");
        } else {
            FragmentManager fragmentManager = activity.getFragmentManager();
            ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
            c.b.a.c.b.a.S(create, "Cannot display null dialog");
            create.setOnCancelListener(null);
            create.setOnDismissListener(null);
            errorDialogFragment.f3364a = create;
            errorDialogFragment.f3365b = onCancelListener;
            errorDialogFragment.show(fragmentManager, "GooglePlayServicesErrorDialog");
        }
        return true;
    }

    public void e(Context context, int i) {
        g(context, i, super.b(context, i, 0, "n"));
    }

    @TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
    public final String f(Context context, NotificationManager notificationManager) {
        String zza = zza();
        if (zza == null) {
            zza = "com.google.android.gms.availability";
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            String a2 = c.b.a.c.d.j.w.a(context);
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", a2, 4));
            } else if (!a2.equals(notificationChannel.getName())) {
                notificationChannel.setName(a2);
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
        return zza;
    }

    @TargetApi(20)
    public final void g(Context context, int i, PendingIntent pendingIntent) {
        Notification notification;
        int i2;
        if (i == 18) {
            new a(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String c2 = i == 6 ? c.b.a.c.d.j.w.c(context, "common_google_play_services_resolution_required_title") : c.b.a.c.d.j.w.b(context, i);
        if (c2 == null) {
            c2 = context.getResources().getString(com.android.systemui.shared.R.string.common_google_play_services_notification_ticker);
        }
        String d2 = i == 6 ? c.b.a.c.d.j.w.d(context, "common_google_play_services_resolution_required_text", c.b.a.c.d.j.w.e(context)) : c.b.a.c.d.j.w.f(context, i);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (c.b.a.c.b.a.E0(context)) {
            Notification.Builder addAction = new Notification.Builder(context).setSmallIcon(context.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(c2).setStyle(new Notification.BigTextStyle().bigText(d2)).addAction(com.android.systemui.shared.R.drawable.common_full_open_on_phone, resources.getString(com.android.systemui.shared.R.string.common_open_on_phone), pendingIntent);
            addAction.setChannelId(f(context, notificationManager));
            notification = addAction.build();
        } else {
            j jVar = new j(context);
            jVar.s.icon = R.drawable.stat_sys_warning;
            jVar.s.tickerText = j.a(resources.getString(com.android.systemui.shared.R.string.common_google_play_services_notification_ticker));
            long currentTimeMillis = System.currentTimeMillis();
            Notification notification2 = jVar.s;
            notification2.when = currentTimeMillis;
            notification2.flags |= 16;
            jVar.g = pendingIntent;
            jVar.e = j.a(c2);
            jVar.f = j.a(d2);
            jVar.k = true;
            i iVar = new i();
            iVar.f669c = j.a(d2);
            if (jVar.j != iVar) {
                jVar.j = iVar;
                iVar.a(jVar);
            }
            jVar.o = f(context, notificationManager);
            new ArrayList();
            Bundle bundle = new Bundle();
            Notification.Builder builder = new Notification.Builder(jVar.f670a, jVar.o);
            Notification notification3 = jVar.s;
            builder.setWhen(notification3.when).setSmallIcon(notification3.icon, notification3.iconLevel).setContent(notification3.contentView).setTicker(notification3.tickerText, null).setVibrate(notification3.vibrate).setLights(notification3.ledARGB, notification3.ledOnMS, notification3.ledOffMS).setOngoing((notification3.flags & 2) != 0).setOnlyAlertOnce((notification3.flags & 8) != 0).setAutoCancel((notification3.flags & 16) != 0).setDefaults(notification3.defaults).setContentTitle(jVar.e).setContentText(jVar.f).setContentInfo(null).setContentIntent(jVar.g).setDeleteIntent(notification3.deleteIntent).setFullScreenIntent(null, (notification3.flags & 128) != 0).setLargeIcon((Bitmap) null).setNumber(0).setProgress(0, 0, false);
            builder.setSubText(null).setUsesChronometer(false).setPriority(0);
            Iterator it = jVar.f671b.iterator();
            while (it.hasNext()) {
                IconCompat iconCompat = ((h) it.next()).f666a;
                Notification.Action.Builder builder2 = new Notification.Action.Builder((Icon) null, (CharSequence) null, (PendingIntent) null);
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("android.support.allowGeneratedReplies", false);
                builder2.setAllowGeneratedReplies(false);
                bundle2.putInt("android.support.action.semanticAction", 0);
                builder2.setSemanticAction(0);
                builder2.setContextual(false);
                bundle2.putBoolean("android.support.action.showsUserInterface", false);
                builder2.addExtras(bundle2);
                builder.addAction(builder2.build());
            }
            Bundle bundle3 = jVar.l;
            if (bundle3 != null) {
                bundle.putAll(bundle3);
            }
            builder.setShowWhen(jVar.i);
            builder.setLocalOnly(jVar.k).setGroup(null).setGroupSummary(false).setSortKey(null);
            builder.setCategory(null).setColor(0).setVisibility(0).setPublicVersion(null).setSound(notification3.sound, notification3.audioAttributes);
            ArrayList arrayList = jVar.t;
            if (arrayList != null && !arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    builder.addPerson((String) it2.next());
                }
            }
            if (jVar.f673d.size() > 0) {
                if (jVar.l == null) {
                    jVar.l = new Bundle();
                }
                Bundle bundle4 = jVar.l.getBundle("android.car.EXTENSIONS");
                if (bundle4 == null) {
                    bundle4 = new Bundle();
                }
                Bundle bundle5 = new Bundle();
                for (int i3 = 0; i3 < jVar.f673d.size(); i3++) {
                    bundle5.putBundle(Integer.toString(i3), k.a((h) jVar.f673d.get(i3)));
                }
                bundle4.putBundle("invisible_actions", bundle5);
                if (jVar.l == null) {
                    jVar.l = new Bundle();
                }
                jVar.l.putBundle("android.car.EXTENSIONS", bundle4);
                bundle.putBundle("android.car.EXTENSIONS", bundle4);
            }
            builder.setExtras(jVar.l).setRemoteInputHistory(null);
            builder.setBadgeIconType(0).setShortcutId(null).setTimeoutAfter(0L).setGroupAlertBehavior(0);
            if (!TextUtils.isEmpty(jVar.o)) {
                builder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
            Iterator it3 = jVar.f672c.iterator();
            while (it3.hasNext()) {
                Objects.requireNonNull((l) it3.next());
                builder.addPerson(new Person.Builder().setName(null).setIcon(null).setUri(null).setKey(null).setBot(false).setImportant(false).build());
            }
            builder.setAllowSystemGeneratedContextualActions(jVar.r);
            builder.setBubbleMetadata(null);
            i iVar2 = jVar.j;
            if (iVar2 != null) {
                new Notification.BigTextStyle(builder).setBigContentTitle(null).bigText(iVar2.f669c);
            }
            Notification build = builder.build();
            if (iVar2 != null) {
                Objects.requireNonNull(jVar.j);
            }
            if (iVar2 != null) {
                Bundle bundle6 = build.extras;
            }
            notification = build;
        }
        if (i == 1 || i == 2 || i == 3) {
            i2 = 10436;
            e.f2875b.set(false);
        } else {
            i2 = 39789;
        }
        notificationManager.notify(i2, notification);
    }
}
