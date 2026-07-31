package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import com.google.android.material.button.MaterialButton;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.ViewImageDetailBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lorg/wikipedia/views/ImageDetailView;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "binding", "Lorg/wikipedia/databinding/ViewImageDetailBinding;", "getBinding", "()Lorg/wikipedia/databinding/ViewImageDetailBinding;", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImageDetailView extends LinearLayout {
    public final ViewImageDetailBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageDetailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_image_detail, (ViewGroup) this, false);
        addView(inflate);
        int i = R.id.actionButton;
        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.actionButton);
        if (materialButton != null) {
            i = R.id.contentContainer;
            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.contentContainer);
            if (linearLayout != null) {
                i = R.id.contentText;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.contentText);
                if (textView != null) {
                    i = R.id.divider;
                    View findChildViewById = Room.findChildViewById(inflate, R.id.divider);
                    if (findChildViewById != null) {
                        i = R.id.editButton;
                        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.editButton);
                        if (imageView != null) {
                            i = R.id.externalLink;
                            ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.externalLink);
                            if (imageView2 != null) {
                                i = R.id.titleContainer;
                                LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.titleContainer);
                                if (linearLayout2 != null) {
                                    i = R.id.titleText;
                                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.titleText);
                                    if (textView2 != null) {
                                        this.binding = new ViewImageDetailBinding(materialButton, linearLayout, textView, findChildViewById, imageView, imageView2, linearLayout2, textView2);
                                        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
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

    public final ViewImageDetailBinding getBinding() {
        return this.binding;
    }
}
