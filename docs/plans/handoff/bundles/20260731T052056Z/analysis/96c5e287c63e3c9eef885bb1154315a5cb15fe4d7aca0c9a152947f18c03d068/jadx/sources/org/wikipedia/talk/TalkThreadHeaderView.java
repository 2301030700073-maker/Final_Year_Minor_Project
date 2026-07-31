package org.wikipedia.talk;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import com.google.android.material.button.MaterialButton;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkThreadHeaderView extends ConstraintLayout {
    public final DefaultSocket binding;
    public Callback callback;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public TalkThreadHeaderView(Context context) {
        super(context, null);
        LayoutInflater.from(context).inflate(R.layout.item_talk_thread_header, this);
        int i = R.id.otherContentText;
        TextView textView = (TextView) Room.findChildViewById(this, R.id.otherContentText);
        if (textView != null) {
            i = R.id.pageTitleText;
            TextView textView2 = (TextView) Room.findChildViewById(this, R.id.pageTitleText);
            if (textView2 != null) {
                i = R.id.subscribeButton;
                MaterialButton materialButton = (MaterialButton) Room.findChildViewById(this, R.id.subscribeButton);
                if (materialButton != null) {
                    i = R.id.threadTitleText;
                    TextView textView3 = (TextView) Room.findChildViewById(this, R.id.threadTitleText);
                    if (textView3 != null) {
                        this.binding = new DefaultSocket(this, textView, textView2, materialButton, textView3, 21);
                        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                        materialButton.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(25, this));
                        return;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }
}
