package org.wikipedia.usercontrib;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserContribItemView extends FrameLayout {
    public final Retrofit binding;
    public Listener listener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Listener {
    }

    public UserContribItemView(Context context) {
        super(context);
        View inflate = LayoutInflater.from(context).inflate(R.layout.item_user_contrib, (ViewGroup) this, false);
        addView(inflate);
        int i = R.id.articleTitle;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.articleTitle);
        if (textView != null) {
            i = R.id.clickTargetView;
            ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.clickTargetView);
            if (constraintLayout != null) {
                i = R.id.currentIndicator;
                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.currentIndicator);
                if (textView2 != null) {
                    i = R.id.diffText;
                    TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.diffText);
                    if (textView3 != null) {
                        i = R.id.editHistoryTimeText;
                        TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.editHistoryTimeText);
                        if (textView4 != null) {
                            i = R.id.editSummary;
                            TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.editSummary);
                            if (textView5 != null) {
                                this.binding = new Retrofit(textView, constraintLayout, textView2, textView3, textView4, textView5);
                                setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                                constraintLayout.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(28, this));
                                return;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    public final Listener getListener() {
        return this.listener;
    }

    public final void setListener(Listener listener) {
        this.listener = listener;
    }
}
