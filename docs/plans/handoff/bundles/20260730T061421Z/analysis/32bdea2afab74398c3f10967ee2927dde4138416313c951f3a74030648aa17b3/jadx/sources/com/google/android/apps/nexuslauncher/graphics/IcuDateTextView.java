package com.google.android.apps.nexuslauncher.graphics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.util.AttributeSet;
import c.b.a.b.b.i.b;
import com.android.systemui.shared.R;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public class IcuDateTextView extends DoubleShadowTextView {
    public DateFormat i;
    public boolean j;
    public String k;
    public final BroadcastReceiver l;

    public IcuDateTextView(Context context) {
        this(context, null);
    }

    public final void c(boolean z) {
        if (this.i == null || z) {
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(getContext().getString(R.string.icu_abbrev_wday_month_day_no_year), Locale.getDefault());
            this.i = instanceForSkeleton;
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        }
        String format = this.i.format(Long.valueOf(System.currentTimeMillis()));
        if (Objects.equals(this.k, format)) {
            return;
        }
        this.k = format;
        setText(format);
        setContentDescription(format);
    }

    @Override // android.widget.TextView, android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (this.j || !z) {
            if (!this.j || z) {
                return;
            }
            getContext().unregisterReceiver(this.l);
            this.j = false;
            return;
        }
        this.j = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        getContext().registerReceiver(this.l, intentFilter);
        c(true);
    }

    public IcuDateTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.l = new b(this);
    }
}
