package org.wikipedia.descriptions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.room.Room;
import com.google.android.material.textview.MaterialTextView;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.page.LinkMovementMethodExt;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditLicenseView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;", "callback", "Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;", "getCallback", "()Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;", "setCallback", "(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditLicenseView extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final OkHttpCall.AnonymousClass1 binding;
    public Callback callback;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptionEditLicenseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_description_edit_license, this);
        int i = R.id.anonWarningText;
        TextView textView = (TextView) Room.findChildViewById(this, R.id.anonWarningText);
        if (textView != null) {
            i = R.id.licenseText;
            MaterialTextView materialTextView = (MaterialTextView) Room.findChildViewById(this, R.id.licenseText);
            if (materialTextView != null) {
                this.binding = new OkHttpCall.AnonymousClass1(this, textView, materialTextView, 11);
                LinkMovementMethodExt linkMovementMethodExt = new LinkMovementMethodExt(new TextLinkScope$$ExternalSyntheticLambda3(3, this, context));
                setOrientation(1);
                if (isInEditMode()) {
                    return;
                }
                materialTextView.setMovementMethod(linkMovementMethodExt);
                textView.setMovementMethod(linkMovementMethodExt);
                buildLicenseNotice("defaultNotice", null);
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void buildLicenseNotice(java.lang.String r9, java.lang.String r10) {
        /*
            r8 = this;
            java.lang.String r0 = "articleDescriptionNotice"
            boolean r1 = r9.equals(r0)
            r2 = 1
            r3 = 2
            r4 = 2131888554(0x7f1209aa, float:1.9411747E38)
            r5 = 0
            retrofit2.OkHttpCall$1 r6 = r8.binding
            if (r1 != 0) goto L18
            java.lang.String r1 = "defaultNotice"
            boolean r1 = r9.equals(r1)
            if (r1 == 0) goto L2d
        L18:
            if (r10 != 0) goto L1c
            java.lang.String r10 = ""
        L1c:
            java.lang.String r1 = "en"
            boolean r1 = r10.equals(r1)
            if (r1 != 0) goto L75
            java.lang.String r1 = "test"
            boolean r10 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r10, r1, r5)
            if (r10 == 0) goto L2d
            goto L75
        L2d:
            java.lang.Object r10 = r6.this$0
            com.google.android.material.textview.MaterialTextView r10 = (com.google.android.material.textview.MaterialTextView) r10
            org.wikipedia.util.StringUtil r1 = org.wikipedia.util.StringUtil.INSTANCE
            android.content.Context r1 = r8.getContext()
            boolean r0 = r9.equals(r0)
            if (r0 == 0) goto L41
            r9 = 2131888362(0x7f1208ea, float:1.9411357E38)
            goto L50
        L41:
            java.lang.String r0 = "imageCaptionNotice"
            boolean r9 = r9.equals(r0)
            if (r9 == 0) goto L4d
            r9 = 2131888315(0x7f1208bb, float:1.9411262E38)
            goto L50
        L4d:
            r9 = 2131886351(0x7f12010f, float:1.9407278E38)
        L50:
            android.content.Context r0 = r8.getContext()
            java.lang.String r0 = r0.getString(r4)
            android.content.Context r4 = r8.getContext()
            r7 = 2131886265(0x7f1200b9, float:1.9407104E38)
            java.lang.String r4 = r4.getString(r7)
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r5] = r0
            r3[r2] = r4
            java.lang.String r9 = r1.getString(r9, r3)
            android.text.Spanned r9 = org.wikipedia.util.StringUtil.fromHtml(r9)
            r10.setText(r9)
            goto La6
        L75:
            java.lang.Object r9 = r6.this$0
            com.google.android.material.textview.MaterialTextView r9 = (com.google.android.material.textview.MaterialTextView) r9
            org.wikipedia.util.StringUtil r10 = org.wikipedia.util.StringUtil.INSTANCE
            android.content.Context r10 = r8.getContext()
            android.content.Context r0 = r8.getContext()
            java.lang.String r0 = r0.getString(r4)
            android.content.Context r1 = r8.getContext()
            r4 = 2131886266(0x7f1200ba, float:1.9407106E38)
            java.lang.String r1 = r1.getString(r4)
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r5] = r0
            r3[r2] = r1
            r0 = 2131886505(0x7f1201a9, float:1.940759E38)
            java.lang.String r10 = r10.getString(r0, r3)
            android.text.Spanned r10 = org.wikipedia.util.StringUtil.fromHtml(r10)
            r9.setText(r10)
        La6:
            java.lang.Object r9 = r6.val$callback
            android.widget.TextView r9 = (android.widget.TextView) r9
            android.content.Context r8 = r8.getContext()
            r10 = 2131886486(0x7f120196, float:1.9407552E38)
            java.lang.String r8 = r8.getString(r10)
            android.text.Spanned r8 = org.wikipedia.util.StringUtil.fromHtml(r8)
            r9.setText(r8)
            java.lang.Object r8 = r6.val$callback
            android.widget.TextView r8 = (android.widget.TextView) r8
            boolean r9 = okhttp3.Headers.Companion.isLoggedIn()
            if (r9 != 0) goto Lc7
            goto Lc9
        Lc7:
            r5 = 8
        Lc9:
            r8.setVisibility(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.descriptions.DescriptionEditLicenseView.buildLicenseNotice(java.lang.String, java.lang.String):void");
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }
}
