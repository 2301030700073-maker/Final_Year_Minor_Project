package org.wikipedia.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.R$styleable;
import org.wikipedia.util.StringUtil;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\f¨\u0006\u000f"}, d2 = {"Lorg/wikipedia/views/ImageDetailHorizontalView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "title", "", "setTitleText", "(Ljava/lang/String;)V", "detail", "setDetailText", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImageDetailHorizontalView extends LinearLayout {
    public final OkHttpCall.AnonymousClass1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageDetailHorizontalView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_image_detail_horizontal, this);
        int i = R.id.detailText;
        AppTextView appTextView = (AppTextView) Room.findChildViewById(this, R.id.detailText);
        if (appTextView != null) {
            i = R.id.titleText;
            TextView textView = (TextView) Room.findChildViewById(this, R.id.titleText);
            if (textView != null) {
                this.binding = new OkHttpCall.AnonymousClass1(this, appTextView, textView, 13);
                if (attributeSet != null) {
                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ImageDetailHorizontalView, 0, 0);
                    textView.setText(obtainStyledAttributes.getString(1));
                    setDetailText(obtainStyledAttributes.getString(0));
                    obtainStyledAttributes.recycle();
                }
                setOrientation(0);
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final void setDetailText(String detail) {
        if (detail == null || detail.length() == 0) {
            return;
        }
        AppTextView appTextView = (AppTextView) this.binding.val$callback;
        StringUtil stringUtil = StringUtil.INSTANCE;
        appTextView.setText(StringUtil.removeHTMLTags(detail));
    }

    public final void setTitleText(String title) {
        title.getClass();
        ((TextView) this.binding.this$0).setText(title);
    }
}
