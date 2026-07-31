package org.wikipedia.usercontrib;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.databinding.ViewUserContribStatsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserContribStatsView extends ConstraintLayout {
    public final ViewUserContribStatsBinding binding;

    public UserContribStatsView(Context context) {
        super(context, null);
        LayoutInflater.from(context).inflate(R.layout.view_user_contrib_stats, this);
        int i = R.id.editCountsView;
        TextView textView = (TextView) Room.findChildViewById(this, R.id.editCountsView);
        if (textView != null) {
            i = R.id.userNameView;
            TextView textView2 = (TextView) Room.findChildViewById(this, R.id.userNameView);
            if (textView2 != null) {
                this.binding = new ViewUserContribStatsBinding(this, textView, textView2);
                setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                int roundedDpToPx = Okio__OkioKt.roundedDpToPx(16.0f);
                setPadding(roundedDpToPx, 0, roundedDpToPx, 0);
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final ViewUserContribStatsBinding getBinding() {
        return this.binding;
    }
}
