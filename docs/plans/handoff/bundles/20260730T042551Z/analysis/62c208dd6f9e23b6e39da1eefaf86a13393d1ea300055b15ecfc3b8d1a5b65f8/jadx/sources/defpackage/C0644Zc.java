package defpackage;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.joeykrim.rootcheck.R;
import java.util.Calendar;
import java.util.Locale;

/* renamed from: Zc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0644Zc extends BaseAdapter {

    /* renamed from: for, reason: not valid java name */
    public static final int f4878for;

    /* renamed from: do, reason: not valid java name */
    public final int f4879do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Calendar f4880do;

    /* renamed from: if, reason: not valid java name */
    public final int f4881if;

    static {
        f4878for = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public C0644Zc() {
        Calendar m1521this = NJ.m1521this(null);
        this.f4880do = m1521this;
        this.f4879do = m1521this.getMaximum(7);
        this.f4881if = m1521this.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f4879do;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        int i2 = this.f4879do;
        if (i >= i2) {
            return null;
        }
        int i3 = i + this.f4881if;
        if (i3 > i2) {
            i3 -= i2;
        }
        return Integer.valueOf(i3);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"WrongConstant"})
    public final View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i2 = i + this.f4881if;
        int i3 = this.f4879do;
        if (i2 > i3) {
            i2 -= i3;
        }
        Calendar calendar = this.f4880do;
        calendar.set(7, i2);
        textView.setText(calendar.getDisplayName(7, f4878for, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public C0644Zc(int i) {
        Calendar m1521this = NJ.m1521this(null);
        this.f4880do = m1521this;
        this.f4879do = m1521this.getMaximum(7);
        this.f4881if = i;
    }
}
