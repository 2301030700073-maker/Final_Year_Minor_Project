package org.schabi.newpipe.util.text;

import android.app.NotificationManager;
import android.text.SpannableStringBuilder;
import android.widget.TextView;
import androidx.transition.Transition;
import io.reactivex.rxjava3.functions.Consumer;
import us.shandian.giga.ui.adapter.MissionAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class TextLinkifier$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ TextLinkifier$$ExternalSyntheticLambda1(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                TextView textView = (TextView) obj3;
                java.util.function.Consumer consumer = (java.util.function.Consumer) obj2;
                textView.setText((SpannableStringBuilder) obj);
                textView.setVisibility(0);
                if (consumer != null) {
                    consumer.s(textView);
                    break;
                }
                break;
            default:
                Transition.Impl26.copyToClipboard(((MissionAdapter) obj3).mContext, (String) obj);
                ((NotificationManager) obj2).cancel(123790);
                break;
        }
    }
}
