package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class YearGridAdapter extends RecyclerView.Adapter {
    public final MaterialCalendar materialCalendar;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ViewHolder extends RecyclerView.ViewHolder {
        public final TextView textView;

        public ViewHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }
    }

    public YearGridAdapter(MaterialCalendar materialCalendar) {
        this.materialCalendar = materialCalendar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.materialCalendar.calendarConstraints.yearSpan;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        MaterialCalendar materialCalendar = this.materialCalendar;
        final int i2 = materialCalendar.calendarConstraints.start.year + i;
        TextView textView = ((ViewHolder) viewHolder).textView;
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i2)));
        Context context = textView.getContext();
        textView.setContentDescription(UtcDates.getTodayCalendar().get(1) == i2 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i2)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i2)));
        FragmentNewsBinding fragmentNewsBinding = materialCalendar.calendarStyle;
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        RulerTrackingMap rulerTrackingMap = (RulerTrackingMap) (todayCalendar.get(1) == i2 ? fragmentNewsBinding.storyTextView : fragmentNewsBinding.headerImageView);
        Iterator it = materialCalendar.dateSelector.getSelectedDays().iterator();
        while (it.hasNext()) {
            todayCalendar.setTimeInMillis(((Long) it.next()).longValue());
            if (todayCalendar.get(1) == i2) {
                rulerTrackingMap = (RulerTrackingMap) fragmentNewsBinding.newsStoryItemsRecyclerview;
            }
        }
        rulerTrackingMap.styleItem(textView, null, null);
        if (!(textView.getForeground() instanceof FocusRingDrawable)) {
            Context context2 = textView.getContext();
            Drawable foreground = textView.getForeground();
            ColorDrawable colorDrawable = FocusRingDrawable.EMPTY_DRAWABLE;
            if (Build.VERSION.SDK_INT >= 24 && Operation$State.resolveBoolean(context2.getTheme(), R.attr.focusRingsEnabled, false)) {
                foreground = new FocusRingDrawable(context2, foreground);
            }
            if (foreground instanceof FocusRingDrawable) {
                FocusRingDrawable focusRingDrawable = (FocusRingDrawable) foreground;
                ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) rulerTrackingMap.newRulers;
                FocusRingDrawable.FocusRingState focusRingState = focusRingDrawable.state;
                focusRingState.ringShapeAppearance = shapeAppearanceModel;
                focusRingState.ringInset = ((Rect) rulerTrackingMap.rulers).top;
                textView.setForeground(focusRingDrawable);
            }
        }
        textView.setSelected(rulerTrackingMap == ((RulerTrackingMap) fragmentNewsBinding.newsStoryItemsRecyclerview));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.YearGridAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialCalendar materialCalendar2 = YearGridAdapter.this.materialCalendar;
                Month create = Month.create(i2, materialCalendar2.current.month);
                CalendarConstraints calendarConstraints = materialCalendar2.calendarConstraints;
                Month month = calendarConstraints.end;
                Month month2 = calendarConstraints.start;
                if (create.compareTo(month2) < 0) {
                    create = month2;
                } else if (create.compareTo(month) > 0) {
                    create = month;
                }
                materialCalendar2.setCurrentMonth(create);
                materialCalendar2.setSelector(MaterialCalendar.CalendarSelector.DAY);
                MaterialButton materialButton = materialCalendar2.monthDropSelect;
                if (materialButton != null) {
                    materialButton.sendAccessibilityEvent(8);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
