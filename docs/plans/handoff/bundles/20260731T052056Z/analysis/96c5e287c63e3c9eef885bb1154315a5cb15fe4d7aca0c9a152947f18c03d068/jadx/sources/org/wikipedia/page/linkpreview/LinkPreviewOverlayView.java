package org.wikipedia.page.linkpreview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.room.Room;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.page.linkpreview.LinkPreviewOverlayView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinkPreviewOverlayView extends FrameLayout {
    public final MultipartBody.Builder binding;
    public Callback callback;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onPrimaryClick();

        void onSecondaryClick();

        void onTertiaryClick();
    }

    public LinkPreviewOverlayView(Context context) {
        super(context);
        final int i = 0;
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.view_link_preview_overlay, (ViewGroup) this, false);
        addView(inflate);
        int i2 = R.id.link_preview_primary_button;
        Button button = (Button) Room.findChildViewById(inflate, R.id.link_preview_primary_button);
        if (button != null) {
            i2 = R.id.link_preview_secondary_button;
            Button button2 = (Button) Room.findChildViewById(inflate, R.id.link_preview_secondary_button);
            if (button2 != null) {
                i2 = R.id.link_preview_tertiary_button;
                Button button3 = (Button) Room.findChildViewById(inflate, R.id.link_preview_tertiary_button);
                if (button3 != null) {
                    this.binding = new MultipartBody.Builder(button, button2, button3);
                    button.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.linkpreview.LinkPreviewOverlayView$$ExternalSyntheticLambda0
                        public final /* synthetic */ LinkPreviewOverlayView f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i3 = i;
                            LinkPreviewOverlayView linkPreviewOverlayView = this.f$0;
                            switch (i3) {
                                case 0:
                                    LinkPreviewOverlayView.Callback callback = linkPreviewOverlayView.callback;
                                    if (callback != null) {
                                        callback.onPrimaryClick();
                                        break;
                                    }
                                    break;
                                case 1:
                                    LinkPreviewOverlayView.Callback callback2 = linkPreviewOverlayView.callback;
                                    if (callback2 != null) {
                                        callback2.onSecondaryClick();
                                        break;
                                    }
                                    break;
                                default:
                                    LinkPreviewOverlayView.Callback callback3 = linkPreviewOverlayView.callback;
                                    if (callback3 != null) {
                                        callback3.onTertiaryClick();
                                        break;
                                    }
                                    break;
                            }
                        }
                    });
                    final int i3 = 1;
                    button2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.linkpreview.LinkPreviewOverlayView$$ExternalSyntheticLambda0
                        public final /* synthetic */ LinkPreviewOverlayView f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i32 = i3;
                            LinkPreviewOverlayView linkPreviewOverlayView = this.f$0;
                            switch (i32) {
                                case 0:
                                    LinkPreviewOverlayView.Callback callback = linkPreviewOverlayView.callback;
                                    if (callback != null) {
                                        callback.onPrimaryClick();
                                        break;
                                    }
                                    break;
                                case 1:
                                    LinkPreviewOverlayView.Callback callback2 = linkPreviewOverlayView.callback;
                                    if (callback2 != null) {
                                        callback2.onSecondaryClick();
                                        break;
                                    }
                                    break;
                                default:
                                    LinkPreviewOverlayView.Callback callback3 = linkPreviewOverlayView.callback;
                                    if (callback3 != null) {
                                        callback3.onTertiaryClick();
                                        break;
                                    }
                                    break;
                            }
                        }
                    });
                    final int i4 = 2;
                    button3.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.linkpreview.LinkPreviewOverlayView$$ExternalSyntheticLambda0
                        public final /* synthetic */ LinkPreviewOverlayView f$0;

                        {
                            this.f$0 = this;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i32 = i4;
                            LinkPreviewOverlayView linkPreviewOverlayView = this.f$0;
                            switch (i32) {
                                case 0:
                                    LinkPreviewOverlayView.Callback callback = linkPreviewOverlayView.callback;
                                    if (callback != null) {
                                        callback.onPrimaryClick();
                                        break;
                                    }
                                    break;
                                case 1:
                                    LinkPreviewOverlayView.Callback callback2 = linkPreviewOverlayView.callback;
                                    if (callback2 != null) {
                                        callback2.onSecondaryClick();
                                        break;
                                    }
                                    break;
                                default:
                                    LinkPreviewOverlayView.Callback callback3 = linkPreviewOverlayView.callback;
                                    if (callback3 != null) {
                                        callback3.onTertiaryClick();
                                        break;
                                    }
                                    break;
                            }
                        }
                    });
                    return;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        throw null;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final Button getSecondaryButtonView() {
        return (Button) this.binding.type;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setPrimaryButtonText(CharSequence charSequence) {
        ((Button) this.binding.boundary).setText(charSequence);
    }

    public final void setSecondaryButtonText(CharSequence charSequence) {
        ((Button) this.binding.type).setText(charSequence);
    }

    public final void setTertiaryButtonText(CharSequence charSequence) {
        ((Button) this.binding.parts).setText(charSequence);
    }
}
