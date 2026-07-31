package org.wikipedia.page.campaign;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.room.Room;
import com.google.android.material.button.MaterialButton;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CampaignDialogView extends FrameLayout {
    public final FragmentNewsBinding binding;
    public Callback callback;
    public boolean showNeutralButton;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public CampaignDialogView(AppCompatActivity appCompatActivity) {
        super(appCompatActivity);
        View inflate = LayoutInflater.from(appCompatActivity).inflate(R.layout.dialog_campaign, (ViewGroup) this, false);
        addView(inflate);
        int i = R.id.buttonsContainer;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.buttonsContainer);
        if (linearLayout != null) {
            i = R.id.closeButton;
            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.closeButton);
            if (imageView != null) {
                i = R.id.contentText;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.contentText);
                if (textView != null) {
                    i = R.id.footerBorder;
                    View findChildViewById = Room.findChildViewById(inflate, R.id.footerBorder);
                    if (findChildViewById != null) {
                        i = R.id.footerText;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.footerText);
                        if (textView2 != null) {
                            i = R.id.negativeButton;
                            MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.negativeButton);
                            if (materialButton != null) {
                                i = R.id.neutralButton;
                                MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.neutralButton);
                                if (materialButton2 != null) {
                                    i = R.id.positiveButton;
                                    MaterialButton materialButton3 = (MaterialButton) Room.findChildViewById(inflate, R.id.positiveButton);
                                    if (materialButton3 != null) {
                                        this.binding = new FragmentNewsBinding(linearLayout, imageView, textView, findChildViewById, textView2, materialButton, materialButton2, materialButton3);
                                        this.showNeutralButton = true;
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final boolean getShowNeutralButton() {
        return this.showNeutralButton;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setShowNeutralButton(boolean z) {
        this.showNeutralButton = z;
    }
}
