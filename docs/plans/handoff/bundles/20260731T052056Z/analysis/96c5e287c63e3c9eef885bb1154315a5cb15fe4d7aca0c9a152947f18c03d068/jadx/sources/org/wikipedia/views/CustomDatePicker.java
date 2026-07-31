package org.wikipedia.views;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Calendar;
import java.util.Date;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/views/CustomDatePicker;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "org/wikipedia/feed/onthisday/OnThisDayFragment", "DiffLinesAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CustomDatePicker extends DialogFragment {
    public SVGAndroidRenderer _binding;
    public OnThisDayFragment callback;
    public final Calendar today = Calendar.getInstance();
    public final Calendar selectedDay = Calendar.getInstance();
    public final Calendar callbackDay = Calendar.getInstance();

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.date_picker_dialog, (ViewGroup) null, false);
        int i2 = R.id.calendar_day;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.calendar_day);
        if (textView != null) {
            i2 = R.id.calendar_grid;
            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.calendar_grid);
            if (recyclerView != null) {
                i2 = R.id.current_month;
                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.current_month);
                if (textView2 != null) {
                    i2 = R.id.next_month;
                    ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.next_month);
                    if (imageView != null) {
                        i2 = R.id.previous_month;
                        ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.previous_month);
                        if (imageView2 != null) {
                            this._binding = new SVGAndroidRenderer((LinearLayout) inflate, textView, recyclerView, textView2, imageView, imageView2);
                            requireContext();
                            recyclerView.setLayoutManager(new GridLayoutManager(7));
                            SVGAndroidRenderer sVGAndroidRenderer = this._binding;
                            sVGAndroidRenderer.getClass();
                            ((RecyclerView) sVGAndroidRenderer.state).setAdapter(new DiffUtil$DiffLinesAdapter(12, this));
                            setMonthString();
                            setDayString();
                            SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
                            sVGAndroidRenderer2.getClass();
                            final int i3 = 1;
                            ((ImageView) sVGAndroidRenderer2.matrixStack).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.views.CustomDatePicker$$ExternalSyntheticLambda2
                                public final /* synthetic */ CustomDatePicker f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    int i4 = i3;
                                    CustomDatePicker customDatePicker = this.f$0;
                                    switch (i4) {
                                        case 0:
                                            Calendar calendar = customDatePicker.selectedDay;
                                            int i5 = calendar.get(2);
                                            calendar.set(2016, i5 == 11 ? 0 : i5 + 1, 1);
                                            customDatePicker.setMonthString();
                                            break;
                                        default:
                                            Calendar calendar2 = customDatePicker.selectedDay;
                                            int i6 = calendar2.get(2);
                                            calendar2.set(2016, i6 != 0 ? i6 - 1 : 11, 1);
                                            customDatePicker.setMonthString();
                                            break;
                                    }
                                }
                            });
                            SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
                            sVGAndroidRenderer3.getClass();
                            ((ImageView) sVGAndroidRenderer3.parentStack).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.views.CustomDatePicker$$ExternalSyntheticLambda2
                                public final /* synthetic */ CustomDatePicker f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    int i4 = i;
                                    CustomDatePicker customDatePicker = this.f$0;
                                    switch (i4) {
                                        case 0:
                                            Calendar calendar = customDatePicker.selectedDay;
                                            int i5 = calendar.get(2);
                                            calendar.set(2016, i5 == 11 ? 0 : i5 + 1, 1);
                                            customDatePicker.setMonthString();
                                            break;
                                        default:
                                            Calendar calendar2 = customDatePicker.selectedDay;
                                            int i6 = calendar2.get(2);
                                            calendar2.set(2016, i6 != 0 ? i6 - 1 : 11, 1);
                                            customDatePicker.setMonthString();
                                            break;
                                    }
                                }
                            });
                            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity(), 0);
                            SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
                            sVGAndroidRenderer4.getClass();
                            ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = (LinearLayout) sVGAndroidRenderer4.canvas;
                            materialAlertDialogBuilder.setPositiveButton(R.string.custom_date_picker_dialog_ok_button_text, new PageFragment$$ExternalSyntheticLambda28(16, this));
                            materialAlertDialogBuilder.setNegativeButton(R.string.custom_date_picker_dialog_cancel_button_text, new TextInputDialog$$ExternalSyntheticLambda2(11));
                            return materialAlertDialogBuilder.create();
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        super.onDestroyView();
    }

    public final void setDayString() {
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        TextView textView = (TextView) sVGAndroidRenderer.document;
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        Calendar calendar = this.selectedDay;
        calendar.getClass();
        Date time = calendar.getTime();
        time.getClass();
        textView.setText(DateUtil.getDateStringWithSkeletonPattern("MMM d", time));
    }

    public final void setMonthString() {
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        TextView textView = (TextView) sVGAndroidRenderer.stateStack;
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        Date time = this.selectedDay.getTime();
        time.getClass();
        textView.setText(DateUtil.getDateStringWithSkeletonPattern("MMMM", time));
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        RecyclerView.Adapter adapter = ((RecyclerView) sVGAndroidRenderer2.state).getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }
}
