package com.joeykrim.rootcheckp.Widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheckp.MainActivity;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;

/* loaded from: classes3.dex */
public class Service extends android.app.Service {
    /* renamed from: do, reason: not valid java name */
    public static void m6393do(Context context, AppWidgetManager appWidgetManager, int i, String str, String str2) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.rcp_appwidgetlayout);
        remoteViews.setTextViewText(R.id.rootStatusResults, "Root: ".concat(str));
        remoteViews.setTextViewText(R.id.busyboxStatusResults, "BusyBox: ".concat(str2));
        if ("Installed!".equals(str)) {
            remoteViews.setTextColor(R.id.rootStatusResults, context.getResources().getColor(R.color.resultSuccessv2));
        } else {
            remoteViews.setTextColor(R.id.rootStatusResults, context.getResources().getColor(R.color.resultFailv2));
        }
        if ("Installed!".equals(str2)) {
            remoteViews.setTextColor(R.id.busyboxStatusResults, context.getResources().getColor(R.color.resultSuccessv2));
        } else {
            remoteViews.setTextColor(R.id.busyboxStatusResults, context.getResources().getColor(R.color.resultFailv2));
        }
        remoteViews.setOnClickPendingIntent(R.id.widImgLogo, PendingIntent.getActivity(context, 0, new Intent(context, (Class<?>) MainActivity.class), 201326592));
        Intent intent = new Intent(context, (Class<?>) Service.class);
        intent.putExtra("appWidgetId", i);
        intent.setData(Uri.parse(intent.toUri(1)));
        remoteViews.setOnClickPendingIntent(R.id.widTextViewLayout, PendingIntent.getService(context.getApplicationContext(), 0, intent, 201326592));
        appWidgetManager.updateAppWidget(i, remoteViews);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
        int i2;
        Toast.makeText(this, getString(R.string.widgetUpdating), 0).show();
        char c = 65535;
        try {
            Process exec = Runtime.getRuntime().exec("su");
            DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
            dataOutputStream.writeBytes("exec id\n");
            dataOutputStream.flush();
            i2 = exec.waitFor();
        } catch (Exception unused) {
            i2 = -1;
        }
        String str = i2 == 0 ? "Installed!" : "Not Installed!";
        try {
            Process exec2 = Runtime.getRuntime().exec("sh");
            DataOutputStream dataOutputStream2 = new DataOutputStream(exec2.getOutputStream());
            dataOutputStream2.writeBytes("exec busybox\n");
            dataOutputStream2.flush();
            StringBuffer stringBuffer = new StringBuffer();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec2.getInputStream()));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuffer.append(readLine + "\n");
                }
            } catch (Exception e) {
                e.getMessage();
            }
            String stringBuffer2 = stringBuffer.toString();
            if (!stringBuffer2.equalsIgnoreCase(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                if (!stringBuffer2.contains("exec: busybox: permission denied")) {
                    c = 0;
                }
            }
        } catch (Exception unused2) {
        }
        m6393do(this, AppWidgetManager.getInstance(getApplicationContext()), intent.getIntExtra("appWidgetId", 0), str, c == 0 ? "Installed!" : "Not Installed!");
        stopSelf();
        super.onStart(intent, i);
    }
}
