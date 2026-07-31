package org.wikipedia.databinding;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.room.Room;
import com.google.android.material.textfield.TextInputLayout;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GroupCaptchaBinding {
    public final ImageView captchaImage;
    public final ProgressBar captchaImageProgress;
    public final Button captchaSubmitButton;
    public final TextInputLayout captchaText;
    public final TextView requestAccountText;
    public final LinearLayout rootView;

    public GroupCaptchaBinding(LinearLayout linearLayout, ImageView imageView, ProgressBar progressBar, Button button, TextInputLayout textInputLayout, TextView textView) {
        this.rootView = linearLayout;
        this.captchaImage = imageView;
        this.captchaImageProgress = progressBar;
        this.captchaSubmitButton = button;
        this.captchaText = textInputLayout;
        this.requestAccountText = textView;
    }

    public static GroupCaptchaBinding bind(View view) {
        int i = R.id.captcha_image;
        ImageView imageView = (ImageView) Room.findChildViewById(view, R.id.captcha_image);
        if (imageView != null) {
            i = R.id.captcha_image_progress;
            ProgressBar progressBar = (ProgressBar) Room.findChildViewById(view, R.id.captcha_image_progress);
            if (progressBar != null) {
                i = R.id.captcha_submit_button;
                Button button = (Button) Room.findChildViewById(view, R.id.captcha_submit_button);
                if (button != null) {
                    i = R.id.captcha_text;
                    TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(view, R.id.captcha_text);
                    if (textInputLayout != null) {
                        i = R.id.request_account_text;
                        TextView textView = (TextView) Room.findChildViewById(view, R.id.request_account_text);
                        if (textView != null) {
                            return new GroupCaptchaBinding((LinearLayout) view, imageView, progressBar, button, textInputLayout, textView);
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }
}
