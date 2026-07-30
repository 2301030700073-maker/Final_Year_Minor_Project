package com.joeykrim.rootcheckp.Widget;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.V1;

/* loaded from: classes3.dex */
public class Config extends Activity {

    /* renamed from: do, reason: not valid java name */
    public SharedPreferences.Editor f12322do = null;

    /* renamed from: for, reason: not valid java name */
    public int f12323for;

    /* renamed from: new, reason: not valid java name */
    public int f12324new;

    /* renamed from: com.joeykrim.rootcheckp.Widget.Config$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ EditText f12325do;

        public Cdo(EditText editText) {
            this.f12325do = editText;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String obj = this.f12325do.getText().toString();
            Config config = Config.this;
            if (obj == null || obj.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                config.f12324new = 24;
            } else {
                config.f12324new = Integer.parseInt(obj);
            }
            config.f12322do.putInt(config.getString(R.string.widgetSharedPrefDefRefIntHrs), config.f12324new);
            config.f12322do.commit();
            int i = config.f12324new * 60 * 60 * 1000;
            AlarmManager alarmManager = Provider.f12328do;
            PendingIntent broadcast = PendingIntent.getBroadcast(config, 0, new Intent("ROOT_CHECK_PRO_WIDGET_UPDATE"), 67108864);
            AlarmManager alarmManager2 = (AlarmManager) config.getSystemService("alarm");
            alarmManager2.setRepeating(1, System.currentTimeMillis(), i, broadcast);
            Provider.f12328do = alarmManager2;
            Provider.f12329do = broadcast;
            Service.m6393do(config, AppWidgetManager.getInstance(config), config.f12323for, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            Intent intent = new Intent();
            intent.putExtra("appWidgetId", config.f12323for);
            config.setResult(-1, intent);
            Toast.makeText(config, config.getString(R.string.widgetStartRefresh, config.f12324new == 1 ? "hour" : V1.m2506this(new StringBuilder(), config.f12324new, " hours")), 1).show();
            config.finish();
        }
    }

    /* renamed from: com.joeykrim.rootcheckp.Widget.Config$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Config.this.finish();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f12323for = extras.getInt("appWidgetId", 0);
        }
        if (this.f12323for == 0) {
            finish();
        }
        Intent intent = new Intent();
        intent.putExtra("appWidgetId", this.f12323for);
        setResult(0, intent);
        setContentView(R.layout.rcp_appwidgetconfig);
        SharedPreferences sharedPreferences = getSharedPreferences("PrefFile", 0);
        this.f12322do = sharedPreferences.edit();
        EditText editText = (EditText) findViewById(R.id.setTimeInterval);
        int i = sharedPreferences.getInt("defaultRefreshIntervalHours", 24);
        this.f12324new = i;
        editText.setText(String.valueOf(i));
        ((Button) findViewById(R.id.btnOk)).setOnClickListener(new Cdo(editText));
        ((Button) findViewById(R.id.btnCancel)).setOnClickListener(new Cif());
    }
}
