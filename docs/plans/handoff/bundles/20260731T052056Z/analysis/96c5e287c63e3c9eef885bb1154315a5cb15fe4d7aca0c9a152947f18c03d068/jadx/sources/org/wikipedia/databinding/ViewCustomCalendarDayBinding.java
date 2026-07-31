package org.wikipedia.databinding;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewCustomCalendarDayBinding {
    public final ImageView dayCircleBackground;
    public final TextView dayText;
    public final FrameLayout rootView;

    public /* synthetic */ ViewCustomCalendarDayBinding(FrameLayout frameLayout, ImageView imageView, TextView textView) {
        this.rootView = frameLayout;
        this.dayCircleBackground = imageView;
        this.dayText = textView;
    }

    public static ViewCustomCalendarDayBinding bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i = R.id.temp_account_info_icon;
        ImageView imageView = (ImageView) Room.findChildViewById(view, R.id.temp_account_info_icon);
        if (imageView != null) {
            i = R.id.temp_account_info_text;
            TextView textView = (TextView) Room.findChildViewById(view, R.id.temp_account_info_text);
            if (textView != null) {
                return new ViewCustomCalendarDayBinding(frameLayout, imageView, textView);
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public ViewCustomCalendarDayBinding(LinearLayout linearLayout, FrameLayout frameLayout, ImageView imageView, TextView textView) {
        this.rootView = frameLayout;
        this.dayCircleBackground = imageView;
        this.dayText = textView;
    }
}
