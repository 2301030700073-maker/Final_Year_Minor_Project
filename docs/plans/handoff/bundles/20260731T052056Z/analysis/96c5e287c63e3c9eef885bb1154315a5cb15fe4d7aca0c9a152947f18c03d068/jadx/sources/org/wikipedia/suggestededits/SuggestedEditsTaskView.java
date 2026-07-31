package org.wikipedia.suggestededits;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.button.MaterialButton;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsTaskView extends WikiCardView {
    public final SVGAndroidRenderer binding;

    public SuggestedEditsTaskView(Context context) {
        super(context, null);
        LayoutInflater.from(context).inflate(R.layout.view_suggested_edits_task_item, this);
        int i = R.id.primaryButton;
        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(this, R.id.primaryButton);
        if (materialButton != null) {
            i = R.id.secondaryButton;
            MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(this, R.id.secondaryButton);
            if (materialButton2 != null) {
                i = R.id.taskDescription;
                TextView textView = (TextView) Room.findChildViewById(this, R.id.taskDescription);
                if (textView != null) {
                    i = R.id.taskIcon;
                    ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.taskIcon);
                    if (imageView != null) {
                        i = R.id.taskTitle;
                        TextView textView2 = (TextView) Room.findChildViewById(this, R.id.taskTitle);
                        if (textView2 != null) {
                            i = R.id.taskTitleNewLabel;
                            TextView textView3 = (TextView) Room.findChildViewById(this, R.id.taskTitleNewLabel);
                            if (textView3 != null) {
                                this.binding = new SVGAndroidRenderer(this, materialButton, materialButton2, textView, imageView, textView2, textView3);
                                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
                                int dimension = (int) getResources().getDimension(R.dimen.activity_horizontal_margin);
                                int roundedDpToPx = Okio__OkioKt.roundedDpToPx(8.0f);
                                marginLayoutParams.setMargins(dimension, roundedDpToPx, dimension, roundedDpToPx);
                                setLayoutParams(marginLayoutParams);
                                return;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }
}
