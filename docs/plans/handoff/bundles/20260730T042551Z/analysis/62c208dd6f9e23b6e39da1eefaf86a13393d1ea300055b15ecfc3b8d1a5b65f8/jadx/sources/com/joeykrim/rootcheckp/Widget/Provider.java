package com.joeykrim.rootcheckp.Widget;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheckp.MainActivity;
import defpackage.C0766bi;

/* loaded from: classes3.dex */
public class Provider extends AppWidgetProvider {

    /* renamed from: do, reason: not valid java name */
    public static AlarmManager f12328do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static PendingIntent f12329do;

    @Override // android.appwidget.AppWidgetProvider
    public final void onDeleted(Context context, int[] iArr) {
        super.onDeleted(context, iArr);
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onDisabled(Context context) {
        PendingIntent pendingIntent;
        super.onDisabled(context);
        AlarmManager alarmManager = f12328do;
        if (alarmManager != null && (pendingIntent = f12329do) != null) {
            alarmManager.cancel(pendingIntent);
        }
        context.stopService(new Intent(context, (Class<?>) Service.class));
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onEnabled(Context context) {
        super.onEnabled(context);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i;
        Bundle extras = intent.getExtras();
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        if (intent.getAction().equals("ROOT_CHECK_PRO_WIDGET_UPDATE")) {
            if (extras != null) {
                onUpdate(context, appWidgetManager, appWidgetManager.getAppWidgetIds(new ComponentName(context, Provider.class.getName())));
            }
        } else if (!"android.appwidget.action.APPWIDGET_DELETED".equals(intent.getAction())) {
            super.onReceive(context, intent);
        } else {
            if (extras == null || (i = extras.getInt("appWidgetId", 0)) == 0) {
                return;
            }
            onDeleted(context, new int[]{i});
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            try {
                RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.rcp_appwidgetlayout);
                remoteViews.setOnClickPendingIntent(R.id.widImgLogo, PendingIntent.getActivity(context, 0, new Intent(context, (Class<?>) MainActivity.class), 201326592));
                Intent intent = new Intent(context, (Class<?>) Service.class);
                intent.putExtra("appWidgetId", iArr[i]);
                intent.setData(Uri.parse(intent.toUri(1)));
                remoteViews.setOnClickPendingIntent(R.id.widTextViewLayout, PendingIntent.getService(context.getApplicationContext(), 0, intent, 201326592));
                appWidgetManager.updateAppWidget(iArr[i], remoteViews);
                context.startService(intent);
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
                return;
            }
        }
    }
}
